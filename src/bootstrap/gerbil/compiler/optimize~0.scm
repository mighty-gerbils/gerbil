(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712997793)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp198800
                   (let ((__obj198794
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
                       (gxc#optimizer-info:::init! __obj198794))
                     __obj198794)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp198800)))))
    (define gxc#optimize!
      (lambda (_%ctx198403%_)
        (let ((__tmp198803
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx198403%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx198403%_)
                 (let ((__tmp198805
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp198804
                        (##structure-ref
                         _%ctx198403%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp198805 __tmp198804 '#t))
                 (let ((_%code198406%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx198403%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx198403%_
                    _%code198406%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp198802 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp198801 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp198803
           gxc#current-compile-mutators
           __tmp198802
           gxc#current-compile-local-type
           __tmp198801))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx198389%_)
        (letrec ((_%load-it!198391%_
                  (lambda (_%id198401%_)
                    (if (let ((__tmp198806
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp198806 _%id198401%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id198401%_)
                          (let ((__tmp198807
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp198807 _%id198401%_ '#t)))))))
          (let* ((_%modid198393%_
                  (##structure-ref
                   _%ctx198389%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str198395%_ (symbol->string _%modid198393%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str198395%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str198395%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!198391%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!198391%_
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
      (lambda (_%ctx198326%_)
        (letrec* ((_%deps198328%_
                   (let* ((_%imports198379%_
                           (##structure-ref
                            _%ctx198326%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e198381%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx198326%_))))
                     (if _%$e198381%_
                         ((lambda (_%g198383198385%_)
                            (cons _%g198383198385%_ _%imports198379%_))
                          _%$e198381%_)
                         _%imports198379%_))))
          (let _%lp198330%_ ((_%rest198332%_ _%deps198328%_))
            (let* ((_%rest198333198341%_ _%rest198332%_)
                   (_%else198335198349%_ (lambda () '#!void))
                   (_%K198337198367%_
                    (lambda (_%rest198352%_ _%hd198353%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd198353%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp198809
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp198808
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd198353%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp198809 __tmp198808))
                                '#!void
                                (begin
                                  (let ((_%$e198356%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd198353%_))))
                                    (if _%$e198356%_
                                        ((lambda (_%pre198359%_)
                                           (_%lp198330%_
                                            (cons _%pre198359%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd198353%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e198356%_)
                                        (_%lp198330%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd198353%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd198353%_)))
                            (_%lp198330%_ _%rest198352%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd198353%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp198811
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp198810
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd198353%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp198811 __tmp198810))
                                    '#!void
                                    (begin
                                      (_%lp198330%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd198353%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd198353%_)))
                                (_%lp198330%_ _%rest198352%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd198353%_
                                     'gx#module-import::t))
                                  (_%lp198330%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd198353%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest198352%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd198353%_
                                         'gx#module-export::t))
                                      (_%lp198330%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd198353%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest198352%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd198353%_
                                             'gx#import-set::t))
                                          (_%lp198330%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd198353%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest198352%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd198353%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest198333198341%_))
                  (let ((_%hd198338198370%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest198333198341%_)))
                        (_%tl198339198372%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest198333198341%_))))
                    (let* ((_%hd198375%_ _%hd198338198370%_)
                           (_%rest198377%_ _%tl198339198372%_))
                      (_%K198337198367%_ _%rest198377%_ _%hd198375%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx198306%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx198306%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx198306%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht198308%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id198310%_
                    (##structure-ref
                     _%ctx198306%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod198312%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht198308%_ _%id198310%_)))
                   (_%$e198315%_ _%mod198312%_))
              (if _%$e198315%_
                  _%$e198315%_
                  (let* ((_%mod198318%_
                          (gxc#optimizer-import-ssxi _%ctx198306%_))
                         (_%val198323%_
                          (let ((_%$e198320%_ _%mod198318%_))
                            (if _%$e198320%_ _%$e198320%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht198308%_ _%id198310%_ _%val198323%_))
                    _%val198323%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx198304%_)
        (if (##structure-ref _%ctx198304%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx198304%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id198281%_)
        (letrec ((_%catch-e198283%_
                  (lambda (_%exn198302%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn198302%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn198302%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id198281%_))))
                    '#f))
                 (_%import-e198284%_
                  (lambda ()
                    (let* ((_%str-id198287%_
                            (let ((__tmp198812
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id198281%_))))
                              (declare (not safe))
                              (##string-append __tmp198812 '".ssxi")))
                           (_%artefact-path198295%_
                            (let ((_%odir198288198290%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir198288198290%_
                                  (let ((_%odir198293%_ _%odir198288198290%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id198287%_
                                        '".ss"))
                                     _%odir198293%_))
                                  '#f)))
                           (_%library-path198297%_
                            (let ((__tmp198813
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id198287%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp198813)))
                           (_%ssxi-path198299%_
                            (if (and _%artefact-path198295%_
                                     (file-exists? _%artefact-path198295%_))
                                _%artefact-path198295%_
                                _%library-path198297%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path198299%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path198299%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e198283%_ _%import-e198284%_)))))
    (define gxc#optimize-source
      (lambda (_%stx198266%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx198266%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx198266%_))
        (let* ((_%stx198268%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx198266%_)))
               (_%stx198270%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx198268%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx198270%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx198270%_))
          (let _%fixpoint198273%_ ((_%current198275%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx198270%_))
            (let ((_%refined198277%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current198275%_ _%refined198277%_)
                  '#!void
                  (_%fixpoint198273%_ _%refined198277%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx198270%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx198270%_))
          (let ((_%stx198279%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx198270%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx198279%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp198815 (list gxc#::generate-runtime-empty::t))
            (__tmp198814 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp198815
         '()
         __tmp198814
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args198263%_
        (apply make-instance gxc#::generate-ssxi::t _%$args198263%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp198816
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
        (__make-promise __tmp198816)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx198255%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self198258%_
                (let ((__obj198796
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj198796))
               (__tmp198817
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self198258%_ _%stx198255%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp198817
           gxc#current-compile-method
           _%self198258%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self198215%_ _%stx198216%_)
        (let* ((_%g198218198228%_
                (lambda (_%g198219198225%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198219198225%_))))
               (_%g198217198252%_
                (lambda (_%g198219198231%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198219198231%_))
                      (let ((_%e198221198233%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198219198231%_))))
                        (let ((_%hd198222198236%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198221198233%_)))
                              (_%tl198223198238%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198221198233%_))))
                          ((lambda (_%L198241%_)
                             (let ((__tmp198820
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self198215%_
                                         _%stx198216%_))))
                                   (__tmp198818
                                    (let ((__tmp198819
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp198819 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp198820
                                gx#current-expander-phi
                                __tmp198818)))
                           _%tl198223198238%_)))
                      (_%g198218198228%_ _%g198219198231%_)))))
          (_%g198217198252%_ _%stx198216%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self198154%_ _%stx198155%_)
        (let* ((_%g198157198171%_
                (lambda (_%g198158198168%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198158198168%_))))
               (_%g198156198212%_
                (lambda (_%g198158198174%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198158198174%_))
                      (let ((_%e198161198176%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198158198174%_))))
                        (let ((_%hd198162198179%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198161198176%_)))
                              (_%tl198163198181%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198161198176%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198163198181%_))
                              (let ((_%e198164198184%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198163198181%_))))
                                (let ((_%hd198165198187%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198164198184%_)))
                                      (_%tl198166198189%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198164198184%_))))
                                  ((lambda (_%L198192%_ _%L198193%_)
                                     (let* ((_%ctx198206%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L198193%_)))
                                            (_%code198208%_
                                             (##structure-ref
                                              _%ctx198206%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp198821
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self198154%_
                                                  _%code198208%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp198821
                                        gx#current-expander-context
                                        _%ctx198206%_)))
                                   _%tl198166198189%_
                                   _%hd198165198187%_)))
                              (_%g198157198171%_ _%g198158198174%_))))
                      (_%g198157198171%_ _%g198158198174%_)))))
          (_%g198156198212%_ _%stx198155%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self197959%_ _%stx197960%_)
        (letrec ((_%generate-e197962%_
                  (lambda (_%id198139%_)
                    (let* ((_%sym198141%_
                            (if (let ((__tmp198822
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp198822))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id198139%_))
                                '#f))
                           (_%$e198143%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym198141%_))))
                      (if _%$e198143%_
                          ((lambda (_%klass198146%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym198141%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym198141%_
                                                     (cons (let ((__method198797
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass198146%_ 'typedecl))))
                     (if __method198797
                         (let ()
                           (declare (not safe))
                           (__method198797 _%klass198146%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass198146%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym198141%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym198141%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e198143%_)
                          (let ((_%$e198148%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym198141%_))))
                            (if _%$e198148%_
                                ((lambda (_%type198151%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym198141%_
                                      '" "
                                      _%type198151%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type198151%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym198141%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym198141%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type198151%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym198141%_
                                                   (cons (let ((__method198798
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type198151%_ 'typedecl))))
                   (if __method198798
                       (let ()
                         (declare (not safe))
                         (__method198798 _%type198151%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type198151%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e198148%_)
                                '(begin))))))))
          (let* ((_%__stx198409198410%_ _%stx197960%_)
                 (_%g197965198003%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx198409198410%_)))))
            (let ((_%__kont198411198412%_
                   (lambda (_%L198121%_) (_%generate-e197962%_ _%L198121%_)))
                  (_%__kont198413198414%_
                   (lambda (_%L198056%_)
                     (let ((_%types198082%_
                            (map _%generate-e197962%_
                                 (let ((__tmp198823
                                        (lambda (_%g198074198077%_
                                                 _%g198075198079%_)
                                          (cons _%g198074198077%_
                                                _%g198075198079%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp198823 '() _%L198056%_)))))
                       (cons 'begin _%types198082%_)))))
              (let ((_%__match198464198465%_
                     (lambda (_%e197981198008%_
                              _%hd197982198011%_
                              _%tl197983198013%_
                              _%e197984198016%_
                              _%hd197985198019%_
                              _%tl197986198021%_
                              _%__splice198415198416%_
                              _%target197987198024%_
                              _%tl197989198026%_)
                       (letrec ((_%loop197990198029%_
                                 (lambda (_%hd197988198032%_
                                          _%id197994198034%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd197988198032%_))
                                       (let ((_%e197991198037%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd197988198032%_))))
                                         (let ((_%lp-tl197993198042%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e197991198037%_)))
                                               (_%lp-hd197992198040%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e197991198037%_))))
                                           (_%loop197990198029%_
                                            _%lp-tl197993198042%_
                                            (cons _%lp-hd197992198040%_
                                                  _%id197994198034%_))))
                                       (let ((_%id197995198045%_
                                              (reverse _%id197994198034%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl197986198021%_))
                                             (let ((_%e197996198048%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl197986198021%_))))
                                               (let ((_%tl197998198053%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e197996198048%_)))
                                                     (_%hd197997198051%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e197996198048%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl197998198053%_))
                                                     (_%__kont198413198414%_
                                                      _%id197995198045%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g197965198003%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g197965198003%_))))))))
                         (_%loop197990198029%_ _%target197987198024%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx198409198410%_))
                    (let ((_%e197968198089%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx198409198410%_))))
                      (let ((_%tl197970198094%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197968198089%_)))
                            (_%hd197969198092%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197968198089%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl197970198094%_))
                            (let ((_%e197971198097%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl197970198094%_))))
                              (let ((_%tl197973198102%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197971198097%_)))
                                    (_%hd197972198100%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197971198097%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd197972198100%_))
                                    (let ((_%e197974198105%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd197972198100%_))))
                                      (let ((_%tl197976198110%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197974198105%_)))
                                            (_%hd197975198108%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197974198105%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197976198110%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197973198102%_))
                                                (let ((_%e197977198113%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197973198102%_))))
                                                  (let ((_%tl197979198118%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197977198113%_)))
                                                        (_%hd197978198116%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197977198113%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197979198118%_))
                                                        (_%__kont198411198412%_
                                                         _%hd197975198108%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd197972198100%_))
                                                            (let ((_%__splice198415198416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd197972198100%_ '0))))
                      (let ((_%tl197989198026%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice198415198416%_ '1)))
                            (_%target197987198024%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice198415198416%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197989198026%_))
                            (_%__match198464198465%_
                             _%e197968198089%_
                             _%hd197969198092%_
                             _%tl197970198094%_
                             _%e197971198097%_
                             _%hd197972198100%_
                             _%tl197973198102%_
                             _%__splice198415198416%_
                             _%target197987198024%_
                             _%tl197989198026%_)
                            (let ()
                              (declare (not safe))
                              (_%g197965198003%_)))))
                    (let () (declare (not safe)) (_%g197965198003%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd197972198100%_))
                                                    (let ((_%__splice198415198416%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd197972198100%_
                                                              '0))))
                                                      (let ((_%tl197989198026%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice198415198416%_ '1)))
                    (_%target197987198024%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice198415198416%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl197989198026%_))
                    (_%__match198464198465%_
                     _%e197968198089%_
                     _%hd197969198092%_
                     _%tl197970198094%_
                     _%e197971198097%_
                     _%hd197972198100%_
                     _%tl197973198102%_
                     _%__splice198415198416%_
                     _%target197987198024%_
                     _%tl197989198026%_)
                    (let () (declare (not safe)) (_%g197965198003%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197965198003%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd197972198100%_))
                                                (let ((_%__splice198415198416%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd197972198100%_
                                                          '0))))
                                                  (let ((_%tl197989198026%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice198415198416%_
                                                            '1)))
                                                        (_%target197987198024%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice198415198416%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197989198026%_))
                                                        (_%__match198464198465%_
                                                         _%e197968198089%_
                                                         _%hd197969198092%_
                                                         _%tl197970198094%_
                                                         _%e197971198097%_
                                                         _%hd197972198100%_
                                                         _%tl197973198102%_
                                                         _%__splice198415198416%_
                                                         _%target197987198024%_
                                                         _%tl197989198026%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197965198003%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197965198003%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd197972198100%_))
                                        (let ((_%__splice198415198416%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd197972198100%_
                                                  '0))))
                                          (let ((_%tl197989198026%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice198415198416%_
                                                    '1)))
                                                (_%target197987198024%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice198415198416%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197989198026%_))
                                                (_%__match198464198465%_
                                                 _%e197968198089%_
                                                 _%hd197969198092%_
                                                 _%tl197970198094%_
                                                 _%e197971198097%_
                                                 _%hd197972198100%_
                                                 _%tl197973198102%_
                                                 _%__splice198415198416%_
                                                 _%target197987198024%_
                                                 _%tl197989198026%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197965198003%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g197965198003%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g197965198003%_)))))
                    (let () (declare (not safe)) (_%g197965198003%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self197512%_ _%stx197513%_)
        (let* ((_%__stx198467198468%_ _%stx197513%_)
               (_%g197517197619%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx198467198468%_)))))
          (let ((_%__kont198469198470%_
                 (lambda (_%L197909%_
                          _%L197910%_
                          _%L197911%_
                          _%L197912%_
                          _%L197913%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L197912%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L197911%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L197910%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L197909%_))
                                                 '())))))))
                (_%__kont198471198472%_
                 (lambda (_%L197735%_ _%L197736%_ _%L197737%_ _%L197738%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L197737%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L197736%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L197735%_))
                                           (cons '#f '())))))))
                (_%__kont198473198474%_ (lambda () '(begin))))
            (let ((_%__match198602198603%_
                   (lambda (_%e197524197781%_
                            _%hd197525197784%_
                            _%tl197526197786%_
                            _%e197527197789%_
                            _%hd197528197792%_
                            _%tl197529197794%_
                            _%e197530197797%_
                            _%hd197531197800%_
                            _%tl197532197802%_
                            _%e197533197805%_
                            _%hd197534197808%_
                            _%tl197535197810%_
                            _%e197536197813%_
                            _%hd197537197816%_
                            _%tl197538197818%_
                            _%e197539197821%_
                            _%hd197540197824%_
                            _%tl197541197826%_
                            _%e197542197829%_
                            _%hd197543197832%_
                            _%tl197544197834%_
                            _%e197545197837%_
                            _%hd197546197840%_
                            _%tl197547197842%_
                            _%e197548197845%_
                            _%hd197549197848%_
                            _%tl197550197850%_
                            _%e197551197853%_
                            _%hd197552197856%_
                            _%tl197553197858%_
                            _%e197554197861%_
                            _%hd197555197864%_
                            _%tl197556197866%_
                            _%e197557197869%_
                            _%hd197558197872%_
                            _%tl197559197874%_
                            _%e197560197877%_
                            _%hd197561197880%_
                            _%tl197562197882%_
                            _%e197563197885%_
                            _%hd197564197888%_
                            _%tl197565197890%_
                            _%e197566197893%_
                            _%hd197567197896%_
                            _%tl197568197898%_
                            _%e197569197901%_
                            _%hd197570197904%_
                            _%tl197571197906%_)
                     (let ((_%L197909%_ _%hd197570197904%_)
                           (_%L197910%_ _%hd197561197880%_)
                           (_%L197911%_ _%hd197552197856%_)
                           (_%L197912%_ _%hd197543197832%_)
                           (_%L197913%_ _%hd197534197808%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L197913%_
                              'bind-method!))
                           (_%__kont198469198470%_
                            _%L197909%_
                            _%L197910%_
                            _%L197911%_
                            _%L197912%_
                            _%L197913%_)
                           (_%__kont198473198474%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx198467198468%_))
                  (let ((_%e197524197781%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx198467198468%_))))
                    (let ((_%tl197526197786%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197524197781%_)))
                          (_%hd197525197784%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197524197781%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197526197786%_))
                          (let ((_%e197527197789%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl197526197786%_))))
                            (let ((_%tl197529197794%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197527197789%_)))
                                  (_%hd197528197792%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197527197789%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd197528197792%_))
                                  (let ((_%e197530197797%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197528197792%_))))
                                    (let ((_%tl197532197802%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197530197797%_)))
                                          (_%hd197531197800%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197530197797%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd197531197800%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd197531197800%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197532197802%_))
                                                  (let ((_%e197533197805%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197532197802%_))))
                                                    (let ((_%tl197535197810%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197533197805%_)))
                                                          (_%hd197534197808%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197533197805%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197535197810%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl197529197794%_))
                      (let ((_%e197536197813%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl197529197794%_))))
                        (let ((_%tl197538197818%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197536197813%_)))
                              (_%hd197537197816%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197536197813%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd197537197816%_))
                              (let ((_%e197539197821%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd197537197816%_))))
                                (let ((_%tl197541197826%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197539197821%_)))
                                      (_%hd197540197824%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197539197821%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd197540197824%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd197540197824%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197541197826%_))
                                              (let ((_%e197542197829%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197541197826%_))))
                                                (let ((_%tl197544197834%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197542197829%_)))
                                                      (_%hd197543197832%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197542197829%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197544197834%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl197538197818%_))
                                                          (let ((_%e197545197837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl197538197818%_))))
                    (let ((_%tl197547197842%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197545197837%_)))
                          (_%hd197546197840%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197545197837%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd197546197840%_))
                          (let ((_%e197548197845%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd197546197840%_))))
                            (let ((_%tl197550197850%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197548197845%_)))
                                  (_%hd197549197848%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197548197845%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd197549197848%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd197549197848%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl197550197850%_))
                                          (let ((_%e197551197853%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl197550197850%_))))
                                            (let ((_%tl197553197858%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e197551197853%_)))
                                                  (_%hd197552197856%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e197551197853%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl197553197858%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197547197842%_))
                                                      (let ((_%e197554197861%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl197547197842%_))))
                (let ((_%tl197556197866%_
                       (let () (declare (not safe)) (##cdr _%e197554197861%_)))
                      (_%hd197555197864%_
                       (let ()
                         (declare (not safe))
                         (##car _%e197554197861%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd197555197864%_))
                      (let ((_%e197557197869%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd197555197864%_))))
                        (let ((_%tl197559197874%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197557197869%_)))
                              (_%hd197558197872%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197557197869%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd197558197872%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd197558197872%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197559197874%_))
                                      (let ((_%e197560197877%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197559197874%_))))
                                        (let ((_%tl197562197882%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197560197877%_)))
                                              (_%hd197561197880%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197560197877%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197562197882%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197556197866%_))
                                                  (let ((_%e197563197885%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197556197866%_))))
                                                    (let ((_%tl197565197890%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197563197885%_)))
                                                          (_%hd197564197888%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197563197885%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd197564197888%_))
                                                          (let ((_%e197566197893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd197564197888%_))))
                    (let ((_%tl197568197898%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197566197893%_)))
                          (_%hd197567197896%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197566197893%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd197567197896%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd197567197896%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197568197898%_))
                                  (let ((_%e197569197901%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl197568197898%_))))
                                    (let ((_%tl197571197906%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197569197901%_)))
                                          (_%hd197570197904%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197569197901%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl197571197906%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197565197890%_))
                                              (_%__match198602198603%_
                                               _%e197524197781%_
                                               _%hd197525197784%_
                                               _%tl197526197786%_
                                               _%e197527197789%_
                                               _%hd197528197792%_
                                               _%tl197529197794%_
                                               _%e197530197797%_
                                               _%hd197531197800%_
                                               _%tl197532197802%_
                                               _%e197533197805%_
                                               _%hd197534197808%_
                                               _%tl197535197810%_
                                               _%e197536197813%_
                                               _%hd197537197816%_
                                               _%tl197538197818%_
                                               _%e197539197821%_
                                               _%hd197540197824%_
                                               _%tl197541197826%_
                                               _%e197542197829%_
                                               _%hd197543197832%_
                                               _%tl197544197834%_
                                               _%e197545197837%_
                                               _%hd197546197840%_
                                               _%tl197547197842%_
                                               _%e197548197845%_
                                               _%hd197549197848%_
                                               _%tl197550197850%_
                                               _%e197551197853%_
                                               _%hd197552197856%_
                                               _%tl197553197858%_
                                               _%e197554197861%_
                                               _%hd197555197864%_
                                               _%tl197556197866%_
                                               _%e197557197869%_
                                               _%hd197558197872%_
                                               _%tl197559197874%_
                                               _%e197560197877%_
                                               _%hd197561197880%_
                                               _%tl197562197882%_
                                               _%e197563197885%_
                                               _%hd197564197888%_
                                               _%tl197565197890%_
                                               _%e197566197893%_
                                               _%hd197567197896%_
                                               _%tl197568197898%_
                                               _%e197569197901%_
                                               _%hd197570197904%_
                                               _%tl197571197906%_)
                                              (_%__kont198473198474%_))
                                          (_%__kont198473198474%_))))
                                  (_%__kont198473198474%_))
                              (_%__kont198473198474%_))
                          (_%__kont198473198474%_))))
                  (_%__kont198473198474%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197556197866%_))
                                                      (if (let ((__tmp198824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp198824 'bind-method!))
                  (let ((_%L197735%_ _%hd197561197880%_)
                        (_%L197736%_ _%hd197552197856%_)
                        (_%L197737%_ _%hd197543197832%_)
                        (_%L197738%_ _%hd197534197808%_))
                    (_%__kont198471198472%_
                     _%L197735%_
                     _%L197736%_
                     _%L197737%_
                     _%L197738%_))
                  (_%__kont198473198474%_))
              (_%__kont198473198474%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont198473198474%_))))
                                      (_%__kont198473198474%_))
                                  (_%__kont198473198474%_))
                              (_%__kont198473198474%_))))
                      (_%__kont198473198474%_))))
              (_%__kont198473198474%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont198473198474%_))))
                                          (_%__kont198473198474%_))
                                      (_%__kont198473198474%_))
                                  (_%__kont198473198474%_))))
                          (_%__kont198473198474%_))))
                  (_%__kont198473198474%_))
              (_%__kont198473198474%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont198473198474%_))
                                          (_%__kont198473198474%_))
                                      (_%__kont198473198474%_))))
                              (_%__kont198473198474%_))))
                      (_%__kont198473198474%_))
                  (_%__kont198473198474%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont198473198474%_))
                                              (_%__kont198473198474%_))
                                          (_%__kont198473198474%_))))
                                  (_%__kont198473198474%_))))
                          (_%__kont198473198474%_))))
                  (_%__kont198473198474%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self197336%_ _%stx197337%_)
        (let* ((_%__stx198711198712%_ _%stx197337%_)
               (_%g197340197380%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx198711198712%_)))))
          (let ((_%__kont198713198714%_
                 (lambda (_%L197486%_ _%L197487%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L197487%_))
                               (cons _%L197486%_ '())))))
                (_%__kont198715198716%_
                 (lambda (_%L197409%_ _%L197410%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx198711198712%_))
                (let ((_%e197344197430%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx198711198712%_))))
                  (let ((_%tl197346197435%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197344197430%_)))
                        (_%hd197345197433%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197344197430%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197346197435%_))
                        (let ((_%e197347197438%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl197346197435%_))))
                          (let ((_%tl197349197443%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197347197438%_)))
                                (_%hd197348197441%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197347197438%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd197348197441%_))
                                (let ((_%e197350197446%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd197348197441%_))))
                                  (let ((_%tl197352197451%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197350197446%_)))
                                        (_%hd197351197449%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197350197446%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd197351197449%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd197351197449%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197352197451%_))
                                                (let ((_%e197353197454%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197352197451%_))))
                                                  (let ((_%tl197355197459%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197353197454%_)))
                                                        (_%hd197354197457%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197353197454%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197355197459%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl197349197443%_))
                                                            (let ((_%e197356197462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197349197443%_))))
                      (let ((_%tl197358197467%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197356197462%_)))
                            (_%hd197357197465%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197356197462%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd197357197465%_))
                            (let ((_%e197359197470%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd197357197465%_))))
                              (let ((_%tl197361197475%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197359197470%_)))
                                    (_%hd197360197473%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197359197470%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd197360197473%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd197360197473%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197361197475%_))
                                            (let ((_%e197362197478%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl197361197475%_))))
                                              (let ((_%tl197364197483%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197362197478%_)))
                                                    (_%hd197363197481%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197362197478%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197364197483%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197358197467%_))
                                                        (_%__kont198713198714%_
                                                         _%hd197363197481%_
                                                         _%hd197354197457%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197340197380%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197358197467%_))
                                                        (_%__kont198715198716%_
                                                         _%hd197357197465%_
                                                         _%hd197348197441%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197340197380%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197358197467%_))
                                                (_%__kont198715198716%_
                                                 _%hd197357197465%_
                                                 _%hd197348197441%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197340197380%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197358197467%_))
                                            (_%__kont198715198716%_
                                             _%hd197357197465%_
                                             _%hd197348197441%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g197340197380%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197358197467%_))
                                        (_%__kont198715198716%_
                                         _%hd197357197465%_
                                         _%hd197348197441%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g197340197380%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl197358197467%_))
                                (_%__kont198715198716%_
                                 _%hd197357197465%_
                                 _%hd197348197441%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g197340197380%_))))))
                    (let () (declare (not safe)) (_%g197340197380%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl197349197443%_))
                    (let ((_%e197373197401%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197349197443%_))))
                      (let ((_%tl197375197406%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197373197401%_)))
                            (_%hd197374197404%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197373197401%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197375197406%_))
                            (_%__kont198715198716%_
                             _%hd197374197404%_
                             _%hd197348197441%_)
                            (let ()
                              (declare (not safe))
                              (_%g197340197380%_)))))
                    (let () (declare (not safe)) (_%g197340197380%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl197349197443%_))
                                                    (let ((_%e197373197401%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl197349197443%_))))
                                                      (let ((_%tl197375197406%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e197373197401%_)))
                    (_%hd197374197404%_
                     (let () (declare (not safe)) (##car _%e197373197401%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl197375197406%_))
                    (_%__kont198715198716%_
                     _%hd197374197404%_
                     _%hd197348197441%_)
                    (let () (declare (not safe)) (_%g197340197380%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197340197380%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197349197443%_))
                                                (let ((_%e197373197401%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197349197443%_))))
                                                  (let ((_%tl197375197406%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197373197401%_)))
                                                        (_%hd197374197404%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197373197401%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197375197406%_))
                                                        (_%__kont198715198716%_
                                                         _%hd197374197404%_
                                                         _%hd197348197441%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197340197380%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197340197380%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197349197443%_))
                                            (let ((_%e197373197401%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl197349197443%_))))
                                              (let ((_%tl197375197406%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197373197401%_)))
                                                    (_%hd197374197404%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197373197401%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197375197406%_))
                                                    (_%__kont198715198716%_
                                                     _%hd197374197404%_
                                                     _%hd197348197441%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197340197380%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197340197380%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl197349197443%_))
                                    (let ((_%e197373197401%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl197349197443%_))))
                                      (let ((_%tl197375197406%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197373197401%_)))
                                            (_%hd197374197404%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197373197401%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197375197406%_))
                                            (_%__kont198715198716%_
                                             _%hd197374197404%_
                                             _%hd197348197441%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g197340197380%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197340197380%_))))))
                        (let () (declare (not safe)) (_%g197340197380%_)))))
                (let () (declare (not safe)) (_%g197340197380%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self195530197321%_)
        (let* ((_%self197324%_ _%self195530197321%_)
               (_%self197326%_ _%self197324%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197326%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self195531197092%_)
        (let* ((_%self197095%_ _%self195531197092%_)
               (_%self197097%_ _%self197095%_)
               (_%self197106197122%_ _%self197097%_)
               (_%E197108197126%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self197106197122%_
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
               (_%K197109197141%_
                (lambda (_%methods197129%_
                         _%metaclass197130%_
                         _%system?197131%_
                         _%final?197132%_
                         _%struct?197133%_
                         _%constructor197134%_
                         _%fields197135%_
                         _%slots197136%_
                         _%precendence-list197137%_
                         _%super197138%_
                         _%id197139%_)
                  (cons '@class
                        (cons _%id197139%_
                              (cons _%super197138%_
                                    (cons _%precendence-list197137%_
                                          (cons _%slots197136%_
                                                (cons _%fields197135%_
                                                      (cons _%constructor197134%_
                                                            (cons _%struct?197133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?197132%_
                                (cons _%system?197131%_
                                      (cons _%metaclass197130%_
                                            (cons (if _%methods197129%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods197129%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e197110197144%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197106197122%_ '1 '#f '#f)))
               (_%id197147%_ _%e197110197144%_)
               (_%e197111197149%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197106197122%_ '2 '#f '#f)))
               (_%super197152%_ _%e197111197149%_)
               (_%e197112197154%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197106197122%_ '3 '#f '#f)))
               (_%precendence-list197157%_ _%e197112197154%_)
               (_%e197113197159%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197106197122%_ '4 '#f '#f)))
               (_%slots197162%_ _%e197113197159%_)
               (_%e197114197164%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197106197122%_ '5 '#f '#f)))
               (_%fields197167%_ _%e197114197164%_)
               (_%e197115197169%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197106197122%_ '6 '#f '#f)))
               (_%constructor197172%_ _%e197115197169%_)
               (_%e197116197174%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197106197122%_ '7 '#f '#f)))
               (_%struct?197177%_ _%e197116197174%_)
               (_%e197117197179%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197106197122%_ '8 '#f '#f)))
               (_%final?197182%_ _%e197117197179%_)
               (_%e197118197184%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197106197122%_ '9 '#f '#f)))
               (_%system?197187%_ _%e197118197184%_)
               (_%e197119197189%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self197106197122%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass197192%_ _%e197119197189%_)
               (_%e197120197194%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self197106197122%_
                   '11
                   '#f
                   '#f)))
               (_%methods197197%_ _%e197120197194%_))
          (_%K197109197141%_
           _%methods197197%_
           _%metaclass197192%_
           _%system?197187%_
           _%final?197182%_
           _%struct?197177%_
           _%constructor197172%_
           _%fields197167%_
           _%slots197162%_
           _%precendence-list197157%_
           _%super197152%_
           _%id197147%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self195532196955%_)
        (let* ((_%self196958%_ _%self195532196955%_)
               (_%self196960%_ _%self196958%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196960%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self195533196818%_)
        (let* ((_%self196821%_ _%self195533196818%_)
               (_%self196823%_ _%self196821%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196823%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self195534196681%_)
        (let* ((_%self196684%_ _%self195534196681%_)
               (_%self196686%_ _%self196684%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196686%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self196686%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self196686%_
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
      (lambda (_%self195535196544%_)
        (let* ((_%self196547%_ _%self195535196544%_)
               (_%self196549%_ _%self196547%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196549%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self196549%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self196549%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self195536196407%_)
        (let* ((_%self196410%_ _%self195536196407%_)
               (_%self196412%_ _%self196410%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196412%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self196412%_
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
      (lambda (_%self195537196218%_)
        (let* ((_%self196221%_ _%self195537196218%_)
               (_%self196223%_ _%self196221%_)
               (_%self196232196241%_ _%self196223%_)
               (_%E196234196245%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self196232196241%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K196235196264%_
                (lambda (_%dispatch196248%_
                         _%arity196249%_
                         _%signature196250%_)
                  (if _%signature196250%_
                      (let ((_%signature196252%_ _%signature196250%_))
                        (cons '@lambda
                              (cons _%arity196249%_
                                    (cons _%dispatch196248%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature196252%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature196252%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature196252%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature196252%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature196252%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity196249%_
                                  (cons _%dispatch196248%_ '()))))))
               (_%e196236196267%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196232196241%_ '1 '#f '#f)))
               (_%e196237196270%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196232196241%_ '2 '#f '#f)))
               (_%signature196273%_ _%e196237196270%_)
               (_%e196238196275%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196232196241%_ '3 '#f '#f)))
               (_%arity196278%_ _%e196238196275%_)
               (_%e196239196280%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196232196241%_ '4 '#f '#f)))
               (_%dispatch196283%_ _%e196239196280%_))
          (_%K196235196264%_
           _%dispatch196283%_
           _%arity196278%_
           _%signature196273%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self195538196077%_)
        (let* ((_%self196080%_ _%self195538196077%_)
               (_%self196082%_ _%self196080%_))
          (letrec ((_%clause-e196092%_
                    (lambda (_%clause196094%_)
                      (cdr (let ((__method198799
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause196094%_
                                     'typedecl))))
                             (if __method198799
                                 (let ()
                                   (declare (not safe))
                                   (__method198799 _%clause196094%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause196094%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e196092%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self196082%_
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
      (lambda (_%self195539195940%_)
        (let* ((_%self195943%_ _%self195539195940%_)
               (_%self195945%_ _%self195943%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self195945%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self195945%_
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
      (lambda (_%self195540195803%_)
        (let* ((_%self195806%_ _%self195540195803%_)
               (_%self195808%_ _%self195806%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self195808%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self195808%_
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
      (lambda (_%self195541195666%_)
        (let* ((_%self195669%_ _%self195541195666%_)
               (_%self195671%_ _%self195669%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self195671%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
