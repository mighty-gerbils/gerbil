(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712993623)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp198670
                   (let ((__obj198664
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
                       (gxc#optimizer-info:::init! __obj198664))
                     __obj198664)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp198670)))))
    (define gxc#optimize!
      (lambda (_%ctx198273%_)
        (let ((__tmp198673
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx198273%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx198273%_)
                 (let ((__tmp198675
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp198674
                        (##structure-ref
                         _%ctx198273%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp198675 __tmp198674 '#t))
                 (let ((_%code198276%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx198273%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx198273%_
                    _%code198276%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp198672 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp198671 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp198673
           gxc#current-compile-mutators
           __tmp198672
           gxc#current-compile-local-type
           __tmp198671))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx198259%_)
        (letrec ((_%load-it!198261%_
                  (lambda (_%id198271%_)
                    (if (let ((__tmp198676
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp198676 _%id198271%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id198271%_)
                          (let ((__tmp198677
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp198677 _%id198271%_ '#t)))))))
          (let* ((_%modid198263%_
                  (##structure-ref
                   _%ctx198259%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str198265%_ (symbol->string _%modid198263%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str198265%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str198265%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!198261%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!198261%_
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
      (lambda (_%ctx198196%_)
        (letrec* ((_%deps198198%_
                   (let* ((_%imports198249%_
                           (##structure-ref
                            _%ctx198196%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e198251%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx198196%_))))
                     (if _%$e198251%_
                         ((lambda (_%g198253198255%_)
                            (cons _%g198253198255%_ _%imports198249%_))
                          _%$e198251%_)
                         _%imports198249%_))))
          (let _%lp198200%_ ((_%rest198202%_ _%deps198198%_))
            (let* ((_%rest198203198211%_ _%rest198202%_)
                   (_%else198205198219%_ (lambda () '#!void))
                   (_%K198207198237%_
                    (lambda (_%rest198222%_ _%hd198223%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd198223%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp198679
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp198678
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd198223%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp198679 __tmp198678))
                                '#!void
                                (begin
                                  (let ((_%$e198226%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd198223%_))))
                                    (if _%$e198226%_
                                        ((lambda (_%pre198229%_)
                                           (_%lp198200%_
                                            (cons _%pre198229%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd198223%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e198226%_)
                                        (_%lp198200%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd198223%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd198223%_)))
                            (_%lp198200%_ _%rest198222%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd198223%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp198681
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp198680
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd198223%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp198681 __tmp198680))
                                    '#!void
                                    (begin
                                      (_%lp198200%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd198223%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd198223%_)))
                                (_%lp198200%_ _%rest198222%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd198223%_
                                     'gx#module-import::t))
                                  (_%lp198200%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd198223%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest198222%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd198223%_
                                         'gx#module-export::t))
                                      (_%lp198200%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd198223%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest198222%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd198223%_
                                             'gx#import-set::t))
                                          (_%lp198200%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd198223%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest198222%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd198223%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest198203198211%_))
                  (let ((_%hd198208198240%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest198203198211%_)))
                        (_%tl198209198242%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest198203198211%_))))
                    (let* ((_%hd198245%_ _%hd198208198240%_)
                           (_%rest198247%_ _%tl198209198242%_))
                      (_%K198207198237%_ _%rest198247%_ _%hd198245%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx198176%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx198176%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx198176%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht198178%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id198180%_
                    (##structure-ref
                     _%ctx198176%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod198182%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht198178%_ _%id198180%_)))
                   (_%$e198185%_ _%mod198182%_))
              (if _%$e198185%_
                  _%$e198185%_
                  (let* ((_%mod198188%_
                          (gxc#optimizer-import-ssxi _%ctx198176%_))
                         (_%val198193%_
                          (let ((_%$e198190%_ _%mod198188%_))
                            (if _%$e198190%_ _%$e198190%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht198178%_ _%id198180%_ _%val198193%_))
                    _%val198193%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx198174%_)
        (if (##structure-ref _%ctx198174%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx198174%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id198151%_)
        (letrec ((_%catch-e198153%_
                  (lambda (_%exn198172%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn198172%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn198172%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id198151%_))))
                    '#f))
                 (_%import-e198154%_
                  (lambda ()
                    (let* ((_%str-id198157%_
                            (let ((__tmp198682
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id198151%_))))
                              (declare (not safe))
                              (##string-append __tmp198682 '".ssxi")))
                           (_%artefact-path198165%_
                            (let ((_%odir198158198160%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir198158198160%_
                                  (let ((_%odir198163%_ _%odir198158198160%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id198157%_
                                        '".ss"))
                                     _%odir198163%_))
                                  '#f)))
                           (_%library-path198167%_
                            (let ((__tmp198683
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id198157%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp198683)))
                           (_%ssxi-path198169%_
                            (if (and _%artefact-path198165%_
                                     (file-exists? _%artefact-path198165%_))
                                _%artefact-path198165%_
                                _%library-path198167%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path198169%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path198169%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e198153%_ _%import-e198154%_)))))
    (define gxc#optimize-source
      (lambda (_%stx198142%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx198142%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx198142%_))
        (let* ((_%stx198144%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx198142%_)))
               (_%stx198146%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx198144%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx198146%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx198146%_))
          (let ()
            (declare (not safe))
            (gxc#apply-refine-type-info _%stx198146%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx198146%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx198146%_))
          (let ((_%stx198149%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx198146%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx198149%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp198685 (list gxc#::generate-runtime-empty::t))
            (__tmp198684 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp198685
         '()
         __tmp198684
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args198139%_
        (apply make-instance gxc#::generate-ssxi::t _%$args198139%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp198686
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
        (__make-promise __tmp198686)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx198131%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self198134%_
                (let ((__obj198666
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj198666))
               (__tmp198687
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self198134%_ _%stx198131%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp198687
           gxc#current-compile-method
           _%self198134%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self198091%_ _%stx198092%_)
        (let* ((_%g198094198104%_
                (lambda (_%g198095198101%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198095198101%_))))
               (_%g198093198128%_
                (lambda (_%g198095198107%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198095198107%_))
                      (let ((_%e198097198109%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198095198107%_))))
                        (let ((_%hd198098198112%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198097198109%_)))
                              (_%tl198099198114%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198097198109%_))))
                          ((lambda (_%L198117%_)
                             (let ((__tmp198690
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self198091%_
                                         _%stx198092%_))))
                                   (__tmp198688
                                    (let ((__tmp198689
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp198689 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp198690
                                gx#current-expander-phi
                                __tmp198688)))
                           _%tl198099198114%_)))
                      (_%g198094198104%_ _%g198095198107%_)))))
          (_%g198093198128%_ _%stx198092%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self198030%_ _%stx198031%_)
        (let* ((_%g198033198047%_
                (lambda (_%g198034198044%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198034198044%_))))
               (_%g198032198088%_
                (lambda (_%g198034198050%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198034198050%_))
                      (let ((_%e198037198052%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198034198050%_))))
                        (let ((_%hd198038198055%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198037198052%_)))
                              (_%tl198039198057%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198037198052%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198039198057%_))
                              (let ((_%e198040198060%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198039198057%_))))
                                (let ((_%hd198041198063%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198040198060%_)))
                                      (_%tl198042198065%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198040198060%_))))
                                  ((lambda (_%L198068%_ _%L198069%_)
                                     (let* ((_%ctx198082%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L198069%_)))
                                            (_%code198084%_
                                             (##structure-ref
                                              _%ctx198082%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp198691
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self198030%_
                                                  _%code198084%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp198691
                                        gx#current-expander-context
                                        _%ctx198082%_)))
                                   _%tl198042198065%_
                                   _%hd198041198063%_)))
                              (_%g198033198047%_ _%g198034198050%_))))
                      (_%g198033198047%_ _%g198034198050%_)))))
          (_%g198032198088%_ _%stx198031%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self197835%_ _%stx197836%_)
        (letrec ((_%generate-e197838%_
                  (lambda (_%id198015%_)
                    (let* ((_%sym198017%_
                            (if (let ((__tmp198692
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp198692))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id198015%_))
                                '#f))
                           (_%$e198019%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym198017%_))))
                      (if _%$e198019%_
                          ((lambda (_%klass198022%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym198017%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym198017%_
                                                     (cons (let ((__method198667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass198022%_ 'typedecl))))
                     (if __method198667
                         (let ()
                           (declare (not safe))
                           (__method198667 _%klass198022%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass198022%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym198017%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym198017%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e198019%_)
                          (let ((_%$e198024%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym198017%_))))
                            (if _%$e198024%_
                                ((lambda (_%type198027%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym198017%_
                                      '" "
                                      _%type198027%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type198027%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym198017%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym198017%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type198027%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym198017%_
                                                   (cons (let ((__method198668
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type198027%_ 'typedecl))))
                   (if __method198668
                       (let ()
                         (declare (not safe))
                         (__method198668 _%type198027%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type198027%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e198024%_)
                                '(begin))))))))
          (let* ((_%__stx198279198280%_ _%stx197836%_)
                 (_%g197841197879%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx198279198280%_)))))
            (let ((_%__kont198281198282%_
                   (lambda (_%L197997%_) (_%generate-e197838%_ _%L197997%_)))
                  (_%__kont198283198284%_
                   (lambda (_%L197932%_)
                     (let ((_%types197958%_
                            (map _%generate-e197838%_
                                 (let ((__tmp198693
                                        (lambda (_%g197950197953%_
                                                 _%g197951197955%_)
                                          (cons _%g197950197953%_
                                                _%g197951197955%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp198693 '() _%L197932%_)))))
                       (cons 'begin _%types197958%_)))))
              (let ((_%__match198334198335%_
                     (lambda (_%e197857197884%_
                              _%hd197858197887%_
                              _%tl197859197889%_
                              _%e197860197892%_
                              _%hd197861197895%_
                              _%tl197862197897%_
                              _%__splice198285198286%_
                              _%target197863197900%_
                              _%tl197865197902%_)
                       (letrec ((_%loop197866197905%_
                                 (lambda (_%hd197864197908%_
                                          _%id197870197910%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd197864197908%_))
                                       (let ((_%e197867197913%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd197864197908%_))))
                                         (let ((_%lp-tl197869197918%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e197867197913%_)))
                                               (_%lp-hd197868197916%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e197867197913%_))))
                                           (_%loop197866197905%_
                                            _%lp-tl197869197918%_
                                            (cons _%lp-hd197868197916%_
                                                  _%id197870197910%_))))
                                       (let ((_%id197871197921%_
                                              (reverse _%id197870197910%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl197862197897%_))
                                             (let ((_%e197872197924%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl197862197897%_))))
                                               (let ((_%tl197874197929%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e197872197924%_)))
                                                     (_%hd197873197927%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e197872197924%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl197874197929%_))
                                                     (_%__kont198283198284%_
                                                      _%id197871197921%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g197841197879%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g197841197879%_))))))))
                         (_%loop197866197905%_ _%target197863197900%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx198279198280%_))
                    (let ((_%e197844197965%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx198279198280%_))))
                      (let ((_%tl197846197970%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197844197965%_)))
                            (_%hd197845197968%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197844197965%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl197846197970%_))
                            (let ((_%e197847197973%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl197846197970%_))))
                              (let ((_%tl197849197978%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197847197973%_)))
                                    (_%hd197848197976%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197847197973%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd197848197976%_))
                                    (let ((_%e197850197981%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd197848197976%_))))
                                      (let ((_%tl197852197986%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197850197981%_)))
                                            (_%hd197851197984%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197850197981%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197852197986%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197849197978%_))
                                                (let ((_%e197853197989%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197849197978%_))))
                                                  (let ((_%tl197855197994%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197853197989%_)))
                                                        (_%hd197854197992%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197853197989%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197855197994%_))
                                                        (_%__kont198281198282%_
                                                         _%hd197851197984%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd197848197976%_))
                                                            (let ((_%__splice198285198286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd197848197976%_ '0))))
                      (let ((_%tl197865197902%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice198285198286%_ '1)))
                            (_%target197863197900%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice198285198286%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197865197902%_))
                            (_%__match198334198335%_
                             _%e197844197965%_
                             _%hd197845197968%_
                             _%tl197846197970%_
                             _%e197847197973%_
                             _%hd197848197976%_
                             _%tl197849197978%_
                             _%__splice198285198286%_
                             _%target197863197900%_
                             _%tl197865197902%_)
                            (let ()
                              (declare (not safe))
                              (_%g197841197879%_)))))
                    (let () (declare (not safe)) (_%g197841197879%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd197848197976%_))
                                                    (let ((_%__splice198285198286%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd197848197976%_
                                                              '0))))
                                                      (let ((_%tl197865197902%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice198285198286%_ '1)))
                    (_%target197863197900%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice198285198286%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl197865197902%_))
                    (_%__match198334198335%_
                     _%e197844197965%_
                     _%hd197845197968%_
                     _%tl197846197970%_
                     _%e197847197973%_
                     _%hd197848197976%_
                     _%tl197849197978%_
                     _%__splice198285198286%_
                     _%target197863197900%_
                     _%tl197865197902%_)
                    (let () (declare (not safe)) (_%g197841197879%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197841197879%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd197848197976%_))
                                                (let ((_%__splice198285198286%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd197848197976%_
                                                          '0))))
                                                  (let ((_%tl197865197902%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice198285198286%_
                                                            '1)))
                                                        (_%target197863197900%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice198285198286%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197865197902%_))
                                                        (_%__match198334198335%_
                                                         _%e197844197965%_
                                                         _%hd197845197968%_
                                                         _%tl197846197970%_
                                                         _%e197847197973%_
                                                         _%hd197848197976%_
                                                         _%tl197849197978%_
                                                         _%__splice198285198286%_
                                                         _%target197863197900%_
                                                         _%tl197865197902%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197841197879%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197841197879%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd197848197976%_))
                                        (let ((_%__splice198285198286%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd197848197976%_
                                                  '0))))
                                          (let ((_%tl197865197902%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice198285198286%_
                                                    '1)))
                                                (_%target197863197900%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice198285198286%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197865197902%_))
                                                (_%__match198334198335%_
                                                 _%e197844197965%_
                                                 _%hd197845197968%_
                                                 _%tl197846197970%_
                                                 _%e197847197973%_
                                                 _%hd197848197976%_
                                                 _%tl197849197978%_
                                                 _%__splice198285198286%_
                                                 _%target197863197900%_
                                                 _%tl197865197902%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197841197879%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g197841197879%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g197841197879%_)))))
                    (let () (declare (not safe)) (_%g197841197879%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self197388%_ _%stx197389%_)
        (let* ((_%__stx198337198338%_ _%stx197389%_)
               (_%g197393197495%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx198337198338%_)))))
          (let ((_%__kont198339198340%_
                 (lambda (_%L197785%_
                          _%L197786%_
                          _%L197787%_
                          _%L197788%_
                          _%L197789%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L197788%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L197787%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L197786%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L197785%_))
                                                 '())))))))
                (_%__kont198341198342%_
                 (lambda (_%L197611%_ _%L197612%_ _%L197613%_ _%L197614%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L197613%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L197612%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L197611%_))
                                           (cons '#f '())))))))
                (_%__kont198343198344%_ (lambda () '(begin))))
            (let ((_%__match198472198473%_
                   (lambda (_%e197400197657%_
                            _%hd197401197660%_
                            _%tl197402197662%_
                            _%e197403197665%_
                            _%hd197404197668%_
                            _%tl197405197670%_
                            _%e197406197673%_
                            _%hd197407197676%_
                            _%tl197408197678%_
                            _%e197409197681%_
                            _%hd197410197684%_
                            _%tl197411197686%_
                            _%e197412197689%_
                            _%hd197413197692%_
                            _%tl197414197694%_
                            _%e197415197697%_
                            _%hd197416197700%_
                            _%tl197417197702%_
                            _%e197418197705%_
                            _%hd197419197708%_
                            _%tl197420197710%_
                            _%e197421197713%_
                            _%hd197422197716%_
                            _%tl197423197718%_
                            _%e197424197721%_
                            _%hd197425197724%_
                            _%tl197426197726%_
                            _%e197427197729%_
                            _%hd197428197732%_
                            _%tl197429197734%_
                            _%e197430197737%_
                            _%hd197431197740%_
                            _%tl197432197742%_
                            _%e197433197745%_
                            _%hd197434197748%_
                            _%tl197435197750%_
                            _%e197436197753%_
                            _%hd197437197756%_
                            _%tl197438197758%_
                            _%e197439197761%_
                            _%hd197440197764%_
                            _%tl197441197766%_
                            _%e197442197769%_
                            _%hd197443197772%_
                            _%tl197444197774%_
                            _%e197445197777%_
                            _%hd197446197780%_
                            _%tl197447197782%_)
                     (let ((_%L197785%_ _%hd197446197780%_)
                           (_%L197786%_ _%hd197437197756%_)
                           (_%L197787%_ _%hd197428197732%_)
                           (_%L197788%_ _%hd197419197708%_)
                           (_%L197789%_ _%hd197410197684%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L197789%_
                              'bind-method!))
                           (_%__kont198339198340%_
                            _%L197785%_
                            _%L197786%_
                            _%L197787%_
                            _%L197788%_
                            _%L197789%_)
                           (_%__kont198343198344%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx198337198338%_))
                  (let ((_%e197400197657%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx198337198338%_))))
                    (let ((_%tl197402197662%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197400197657%_)))
                          (_%hd197401197660%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197400197657%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197402197662%_))
                          (let ((_%e197403197665%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl197402197662%_))))
                            (let ((_%tl197405197670%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197403197665%_)))
                                  (_%hd197404197668%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197403197665%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd197404197668%_))
                                  (let ((_%e197406197673%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197404197668%_))))
                                    (let ((_%tl197408197678%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197406197673%_)))
                                          (_%hd197407197676%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197406197673%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd197407197676%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd197407197676%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197408197678%_))
                                                  (let ((_%e197409197681%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197408197678%_))))
                                                    (let ((_%tl197411197686%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197409197681%_)))
                                                          (_%hd197410197684%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197409197681%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197411197686%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl197405197670%_))
                      (let ((_%e197412197689%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl197405197670%_))))
                        (let ((_%tl197414197694%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197412197689%_)))
                              (_%hd197413197692%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197412197689%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd197413197692%_))
                              (let ((_%e197415197697%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd197413197692%_))))
                                (let ((_%tl197417197702%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197415197697%_)))
                                      (_%hd197416197700%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197415197697%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd197416197700%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd197416197700%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197417197702%_))
                                              (let ((_%e197418197705%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197417197702%_))))
                                                (let ((_%tl197420197710%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197418197705%_)))
                                                      (_%hd197419197708%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197418197705%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197420197710%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl197414197694%_))
                                                          (let ((_%e197421197713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl197414197694%_))))
                    (let ((_%tl197423197718%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197421197713%_)))
                          (_%hd197422197716%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197421197713%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd197422197716%_))
                          (let ((_%e197424197721%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd197422197716%_))))
                            (let ((_%tl197426197726%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197424197721%_)))
                                  (_%hd197425197724%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197424197721%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd197425197724%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd197425197724%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl197426197726%_))
                                          (let ((_%e197427197729%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl197426197726%_))))
                                            (let ((_%tl197429197734%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e197427197729%_)))
                                                  (_%hd197428197732%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e197427197729%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl197429197734%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197423197718%_))
                                                      (let ((_%e197430197737%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl197423197718%_))))
                (let ((_%tl197432197742%_
                       (let () (declare (not safe)) (##cdr _%e197430197737%_)))
                      (_%hd197431197740%_
                       (let ()
                         (declare (not safe))
                         (##car _%e197430197737%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd197431197740%_))
                      (let ((_%e197433197745%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd197431197740%_))))
                        (let ((_%tl197435197750%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197433197745%_)))
                              (_%hd197434197748%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197433197745%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd197434197748%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd197434197748%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197435197750%_))
                                      (let ((_%e197436197753%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197435197750%_))))
                                        (let ((_%tl197438197758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197436197753%_)))
                                              (_%hd197437197756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197436197753%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197438197758%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197432197742%_))
                                                  (let ((_%e197439197761%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197432197742%_))))
                                                    (let ((_%tl197441197766%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197439197761%_)))
                                                          (_%hd197440197764%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197439197761%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd197440197764%_))
                                                          (let ((_%e197442197769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd197440197764%_))))
                    (let ((_%tl197444197774%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197442197769%_)))
                          (_%hd197443197772%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197442197769%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd197443197772%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd197443197772%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197444197774%_))
                                  (let ((_%e197445197777%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl197444197774%_))))
                                    (let ((_%tl197447197782%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197445197777%_)))
                                          (_%hd197446197780%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197445197777%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl197447197782%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197441197766%_))
                                              (_%__match198472198473%_
                                               _%e197400197657%_
                                               _%hd197401197660%_
                                               _%tl197402197662%_
                                               _%e197403197665%_
                                               _%hd197404197668%_
                                               _%tl197405197670%_
                                               _%e197406197673%_
                                               _%hd197407197676%_
                                               _%tl197408197678%_
                                               _%e197409197681%_
                                               _%hd197410197684%_
                                               _%tl197411197686%_
                                               _%e197412197689%_
                                               _%hd197413197692%_
                                               _%tl197414197694%_
                                               _%e197415197697%_
                                               _%hd197416197700%_
                                               _%tl197417197702%_
                                               _%e197418197705%_
                                               _%hd197419197708%_
                                               _%tl197420197710%_
                                               _%e197421197713%_
                                               _%hd197422197716%_
                                               _%tl197423197718%_
                                               _%e197424197721%_
                                               _%hd197425197724%_
                                               _%tl197426197726%_
                                               _%e197427197729%_
                                               _%hd197428197732%_
                                               _%tl197429197734%_
                                               _%e197430197737%_
                                               _%hd197431197740%_
                                               _%tl197432197742%_
                                               _%e197433197745%_
                                               _%hd197434197748%_
                                               _%tl197435197750%_
                                               _%e197436197753%_
                                               _%hd197437197756%_
                                               _%tl197438197758%_
                                               _%e197439197761%_
                                               _%hd197440197764%_
                                               _%tl197441197766%_
                                               _%e197442197769%_
                                               _%hd197443197772%_
                                               _%tl197444197774%_
                                               _%e197445197777%_
                                               _%hd197446197780%_
                                               _%tl197447197782%_)
                                              (_%__kont198343198344%_))
                                          (_%__kont198343198344%_))))
                                  (_%__kont198343198344%_))
                              (_%__kont198343198344%_))
                          (_%__kont198343198344%_))))
                  (_%__kont198343198344%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197432197742%_))
                                                      (if (let ((__tmp198694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp198694 'bind-method!))
                  (let ((_%L197611%_ _%hd197437197756%_)
                        (_%L197612%_ _%hd197428197732%_)
                        (_%L197613%_ _%hd197419197708%_)
                        (_%L197614%_ _%hd197410197684%_))
                    (_%__kont198341198342%_
                     _%L197611%_
                     _%L197612%_
                     _%L197613%_
                     _%L197614%_))
                  (_%__kont198343198344%_))
              (_%__kont198343198344%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont198343198344%_))))
                                      (_%__kont198343198344%_))
                                  (_%__kont198343198344%_))
                              (_%__kont198343198344%_))))
                      (_%__kont198343198344%_))))
              (_%__kont198343198344%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont198343198344%_))))
                                          (_%__kont198343198344%_))
                                      (_%__kont198343198344%_))
                                  (_%__kont198343198344%_))))
                          (_%__kont198343198344%_))))
                  (_%__kont198343198344%_))
              (_%__kont198343198344%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont198343198344%_))
                                          (_%__kont198343198344%_))
                                      (_%__kont198343198344%_))))
                              (_%__kont198343198344%_))))
                      (_%__kont198343198344%_))
                  (_%__kont198343198344%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont198343198344%_))
                                              (_%__kont198343198344%_))
                                          (_%__kont198343198344%_))))
                                  (_%__kont198343198344%_))))
                          (_%__kont198343198344%_))))
                  (_%__kont198343198344%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self197212%_ _%stx197213%_)
        (let* ((_%__stx198581198582%_ _%stx197213%_)
               (_%g197216197256%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx198581198582%_)))))
          (let ((_%__kont198583198584%_
                 (lambda (_%L197362%_ _%L197363%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L197363%_))
                               (cons _%L197362%_ '())))))
                (_%__kont198585198586%_
                 (lambda (_%L197285%_ _%L197286%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx198581198582%_))
                (let ((_%e197220197306%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx198581198582%_))))
                  (let ((_%tl197222197311%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197220197306%_)))
                        (_%hd197221197309%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197220197306%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197222197311%_))
                        (let ((_%e197223197314%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl197222197311%_))))
                          (let ((_%tl197225197319%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197223197314%_)))
                                (_%hd197224197317%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197223197314%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd197224197317%_))
                                (let ((_%e197226197322%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd197224197317%_))))
                                  (let ((_%tl197228197327%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197226197322%_)))
                                        (_%hd197227197325%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197226197322%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd197227197325%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd197227197325%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197228197327%_))
                                                (let ((_%e197229197330%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197228197327%_))))
                                                  (let ((_%tl197231197335%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197229197330%_)))
                                                        (_%hd197230197333%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197229197330%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197231197335%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl197225197319%_))
                                                            (let ((_%e197232197338%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197225197319%_))))
                      (let ((_%tl197234197343%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197232197338%_)))
                            (_%hd197233197341%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197232197338%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd197233197341%_))
                            (let ((_%e197235197346%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd197233197341%_))))
                              (let ((_%tl197237197351%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197235197346%_)))
                                    (_%hd197236197349%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197235197346%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd197236197349%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd197236197349%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197237197351%_))
                                            (let ((_%e197238197354%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl197237197351%_))))
                                              (let ((_%tl197240197359%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197238197354%_)))
                                                    (_%hd197239197357%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197238197354%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197240197359%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197234197343%_))
                                                        (_%__kont198583198584%_
                                                         _%hd197239197357%_
                                                         _%hd197230197333%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197216197256%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197234197343%_))
                                                        (_%__kont198585198586%_
                                                         _%hd197233197341%_
                                                         _%hd197224197317%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197216197256%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197234197343%_))
                                                (_%__kont198585198586%_
                                                 _%hd197233197341%_
                                                 _%hd197224197317%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197216197256%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197234197343%_))
                                            (_%__kont198585198586%_
                                             _%hd197233197341%_
                                             _%hd197224197317%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g197216197256%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197234197343%_))
                                        (_%__kont198585198586%_
                                         _%hd197233197341%_
                                         _%hd197224197317%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g197216197256%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl197234197343%_))
                                (_%__kont198585198586%_
                                 _%hd197233197341%_
                                 _%hd197224197317%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g197216197256%_))))))
                    (let () (declare (not safe)) (_%g197216197256%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl197225197319%_))
                    (let ((_%e197249197277%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197225197319%_))))
                      (let ((_%tl197251197282%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197249197277%_)))
                            (_%hd197250197280%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197249197277%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197251197282%_))
                            (_%__kont198585198586%_
                             _%hd197250197280%_
                             _%hd197224197317%_)
                            (let ()
                              (declare (not safe))
                              (_%g197216197256%_)))))
                    (let () (declare (not safe)) (_%g197216197256%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl197225197319%_))
                                                    (let ((_%e197249197277%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl197225197319%_))))
                                                      (let ((_%tl197251197282%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e197249197277%_)))
                    (_%hd197250197280%_
                     (let () (declare (not safe)) (##car _%e197249197277%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl197251197282%_))
                    (_%__kont198585198586%_
                     _%hd197250197280%_
                     _%hd197224197317%_)
                    (let () (declare (not safe)) (_%g197216197256%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197216197256%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197225197319%_))
                                                (let ((_%e197249197277%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197225197319%_))))
                                                  (let ((_%tl197251197282%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197249197277%_)))
                                                        (_%hd197250197280%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197249197277%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197251197282%_))
                                                        (_%__kont198585198586%_
                                                         _%hd197250197280%_
                                                         _%hd197224197317%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197216197256%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197216197256%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197225197319%_))
                                            (let ((_%e197249197277%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl197225197319%_))))
                                              (let ((_%tl197251197282%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197249197277%_)))
                                                    (_%hd197250197280%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197249197277%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197251197282%_))
                                                    (_%__kont198585198586%_
                                                     _%hd197250197280%_
                                                     _%hd197224197317%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197216197256%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197216197256%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl197225197319%_))
                                    (let ((_%e197249197277%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl197225197319%_))))
                                      (let ((_%tl197251197282%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197249197277%_)))
                                            (_%hd197250197280%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197249197277%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197251197282%_))
                                            (_%__kont198585198586%_
                                             _%hd197250197280%_
                                             _%hd197224197317%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g197216197256%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197216197256%_))))))
                        (let () (declare (not safe)) (_%g197216197256%_)))))
                (let () (declare (not safe)) (_%g197216197256%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self195406197197%_)
        (let* ((_%self197200%_ _%self195406197197%_)
               (_%self197202%_ _%self197200%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197202%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self195407196968%_)
        (let* ((_%self196971%_ _%self195407196968%_)
               (_%self196973%_ _%self196971%_)
               (_%self196982196998%_ _%self196973%_)
               (_%E196984197002%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self196982196998%_
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
               (_%K196985197017%_
                (lambda (_%methods197005%_
                         _%metaclass197006%_
                         _%system?197007%_
                         _%final?197008%_
                         _%struct?197009%_
                         _%constructor197010%_
                         _%fields197011%_
                         _%slots197012%_
                         _%precendence-list197013%_
                         _%super197014%_
                         _%id197015%_)
                  (cons '@class
                        (cons _%id197015%_
                              (cons _%super197014%_
                                    (cons _%precendence-list197013%_
                                          (cons _%slots197012%_
                                                (cons _%fields197011%_
                                                      (cons _%constructor197010%_
                                                            (cons _%struct?197009%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?197008%_
                                (cons _%system?197007%_
                                      (cons _%metaclass197006%_
                                            (cons (if _%methods197005%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods197005%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e196986197020%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196982196998%_ '1 '#f '#f)))
               (_%id197023%_ _%e196986197020%_)
               (_%e196987197025%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196982196998%_ '2 '#f '#f)))
               (_%super197028%_ _%e196987197025%_)
               (_%e196988197030%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196982196998%_ '3 '#f '#f)))
               (_%precendence-list197033%_ _%e196988197030%_)
               (_%e196989197035%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196982196998%_ '4 '#f '#f)))
               (_%slots197038%_ _%e196989197035%_)
               (_%e196990197040%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196982196998%_ '5 '#f '#f)))
               (_%fields197043%_ _%e196990197040%_)
               (_%e196991197045%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196982196998%_ '6 '#f '#f)))
               (_%constructor197048%_ _%e196991197045%_)
               (_%e196992197050%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196982196998%_ '7 '#f '#f)))
               (_%struct?197053%_ _%e196992197050%_)
               (_%e196993197055%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196982196998%_ '8 '#f '#f)))
               (_%final?197058%_ _%e196993197055%_)
               (_%e196994197060%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196982196998%_ '9 '#f '#f)))
               (_%system?197063%_ _%e196994197060%_)
               (_%e196995197065%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self196982196998%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass197068%_ _%e196995197065%_)
               (_%e196996197070%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self196982196998%_
                   '11
                   '#f
                   '#f)))
               (_%methods197073%_ _%e196996197070%_))
          (_%K196985197017%_
           _%methods197073%_
           _%metaclass197068%_
           _%system?197063%_
           _%final?197058%_
           _%struct?197053%_
           _%constructor197048%_
           _%fields197043%_
           _%slots197038%_
           _%precendence-list197033%_
           _%super197028%_
           _%id197023%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self195408196831%_)
        (let* ((_%self196834%_ _%self195408196831%_)
               (_%self196836%_ _%self196834%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196836%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self195409196694%_)
        (let* ((_%self196697%_ _%self195409196694%_)
               (_%self196699%_ _%self196697%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196699%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self195410196557%_)
        (let* ((_%self196560%_ _%self195410196557%_)
               (_%self196562%_ _%self196560%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196562%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self196562%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self196562%_
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
      (lambda (_%self195411196420%_)
        (let* ((_%self196423%_ _%self195411196420%_)
               (_%self196425%_ _%self196423%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196425%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self196425%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self196425%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self195412196283%_)
        (let* ((_%self196286%_ _%self195412196283%_)
               (_%self196288%_ _%self196286%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196288%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self196288%_
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
      (lambda (_%self195413196094%_)
        (let* ((_%self196097%_ _%self195413196094%_)
               (_%self196099%_ _%self196097%_)
               (_%self196108196117%_ _%self196099%_)
               (_%E196110196121%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self196108196117%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K196111196140%_
                (lambda (_%dispatch196124%_
                         _%arity196125%_
                         _%signature196126%_)
                  (if _%signature196126%_
                      (let ((_%signature196128%_ _%signature196126%_))
                        (cons '@lambda
                              (cons _%arity196125%_
                                    (cons _%dispatch196124%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature196128%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature196128%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature196128%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature196128%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature196128%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity196125%_
                                  (cons _%dispatch196124%_ '()))))))
               (_%e196112196143%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196108196117%_ '1 '#f '#f)))
               (_%e196113196146%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196108196117%_ '2 '#f '#f)))
               (_%signature196149%_ _%e196113196146%_)
               (_%e196114196151%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196108196117%_ '3 '#f '#f)))
               (_%arity196154%_ _%e196114196151%_)
               (_%e196115196156%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196108196117%_ '4 '#f '#f)))
               (_%dispatch196159%_ _%e196115196156%_))
          (_%K196111196140%_
           _%dispatch196159%_
           _%arity196154%_
           _%signature196149%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self195414195953%_)
        (let* ((_%self195956%_ _%self195414195953%_)
               (_%self195958%_ _%self195956%_))
          (letrec ((_%clause-e195968%_
                    (lambda (_%clause195970%_)
                      (cdr (let ((__method198669
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause195970%_
                                     'typedecl))))
                             (if __method198669
                                 (let ()
                                   (declare (not safe))
                                   (__method198669 _%clause195970%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause195970%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e195968%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self195958%_
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
      (lambda (_%self195415195816%_)
        (let* ((_%self195819%_ _%self195415195816%_)
               (_%self195821%_ _%self195819%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self195821%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self195821%_
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
      (lambda (_%self195416195679%_)
        (let* ((_%self195682%_ _%self195416195679%_)
               (_%self195684%_ _%self195682%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self195684%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self195684%_
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
      (lambda (_%self195417195542%_)
        (let* ((_%self195545%_ _%self195417195542%_)
               (_%self195547%_ _%self195545%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self195547%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
