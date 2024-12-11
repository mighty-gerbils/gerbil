(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1733870081)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp200748
                   (let ((__obj200742
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
                       (gxc#optimizer-info:::init! __obj200742))
                     __obj200742)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp200748)))))
    (define gxc#optimize!
      (lambda (_%ctx200351%_)
        (let ((__tmp200751
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx200351%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx200351%_)
                 (let ((__tmp200753
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp200752
                        (##structure-ref
                         _%ctx200351%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp200753 __tmp200752 '#t))
                 (let ((_%code200354%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx200351%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx200351%_
                    _%code200354%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp200750 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp200749 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp200751
           gxc#current-compile-mutators
           __tmp200750
           gxc#current-compile-local-type
           __tmp200749))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx200337%_)
        (letrec ((_%load-it!200339%_
                  (lambda (_%id200349%_)
                    (if (let ((__tmp200754
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp200754 _%id200349%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id200349%_)
                          (let ((__tmp200755
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp200755 _%id200349%_ '#t)))))))
          (let* ((_%modid200341%_
                  (##structure-ref
                   _%ctx200337%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str200343%_ (symbol->string _%modid200341%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str200343%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str200343%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!200339%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!200339%_
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
      (lambda (_%ctx200274%_)
        (letrec* ((_%deps200276%_
                   (let* ((_%imports200327%_
                           (##structure-ref
                            _%ctx200274%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e200329%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx200274%_))))
                     (if _%$e200329%_
                         ((lambda (_%g200331200333%_)
                            (cons _%g200331200333%_ _%imports200327%_))
                          _%$e200329%_)
                         _%imports200327%_))))
          (let _%lp200278%_ ((_%rest200280%_ _%deps200276%_))
            (let* ((_%rest200281200289%_ _%rest200280%_)
                   (_%else200283200297%_ (lambda () '#!void))
                   (_%K200285200315%_
                    (lambda (_%rest200300%_ _%hd200301%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd200301%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp200757
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp200756
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd200301%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp200757 __tmp200756))
                                '#!void
                                (begin
                                  (let ((_%$e200304%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd200301%_))))
                                    (if _%$e200304%_
                                        ((lambda (_%pre200307%_)
                                           (_%lp200278%_
                                            (cons _%pre200307%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd200301%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e200304%_)
                                        (_%lp200278%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd200301%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd200301%_)))
                            (_%lp200278%_ _%rest200300%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd200301%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp200759
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp200758
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd200301%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp200759 __tmp200758))
                                    '#!void
                                    (begin
                                      (_%lp200278%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd200301%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd200301%_)))
                                (_%lp200278%_ _%rest200300%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd200301%_
                                     'gx#module-import::t))
                                  (_%lp200278%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd200301%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest200300%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd200301%_
                                         'gx#module-export::t))
                                      (_%lp200278%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd200301%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest200300%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd200301%_
                                             'gx#import-set::t))
                                          (_%lp200278%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd200301%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest200300%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd200301%_))))))))))
              (if (pair? _%rest200281200289%_)
                  (let ((_%hd200286200318%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest200281200289%_)))
                        (_%tl200287200320%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest200281200289%_))))
                    (let* ((_%hd200323%_ _%hd200286200318%_)
                           (_%rest200325%_ _%tl200287200320%_))
                      (_%K200285200315%_ _%rest200325%_ _%hd200323%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx200254%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx200254%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx200254%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht200256%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id200258%_
                    (##structure-ref
                     _%ctx200254%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod200260%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht200256%_ _%id200258%_)))
                   (_%$e200263%_ _%mod200260%_))
              (if _%$e200263%_
                  _%$e200263%_
                  (let* ((_%mod200266%_
                          (gxc#optimizer-import-ssxi _%ctx200254%_))
                         (_%val200271%_
                          (let ((_%$e200268%_ _%mod200266%_))
                            (if _%$e200268%_ _%$e200268%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht200256%_ _%id200258%_ _%val200271%_))
                    _%val200271%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx200252%_)
        (if (##structure-ref _%ctx200252%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx200252%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id200229%_)
        (letrec ((_%catch-e200231%_
                  (lambda (_%exn200250%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn200250%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn200250%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id200229%_))))
                    '#f))
                 (_%import-e200232%_
                  (lambda ()
                    (let* ((_%str-id200235%_
                            (let ((__tmp200760
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id200229%_))))
                              (declare (not safe))
                              (##string-append __tmp200760 '".ssxi")))
                           (_%artefact-path200243%_
                            (let ((_%odir200236200238%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir200236200238%_
                                  (let ((_%odir200241%_ _%odir200236200238%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id200235%_
                                        '".ss"))
                                     _%odir200241%_))
                                  '#f)))
                           (_%library-path200245%_
                            (let ((__tmp200761
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id200235%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp200761)))
                           (_%ssxi-path200247%_
                            (if (and _%artefact-path200243%_
                                     (file-exists? _%artefact-path200243%_))
                                _%artefact-path200243%_
                                _%library-path200245%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path200247%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path200247%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e200231%_ _%import-e200232%_)))))
    (define gxc#optimize-source
      (lambda (_%stx200214%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx200214%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx200214%_))
        (let* ((_%stx200216%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx200214%_)))
               (_%stx200218%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx200216%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx200218%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx200218%_))
          (let _%fixpoint200221%_ ((_%current200223%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx200218%_))
            (let ((_%refined200225%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current200223%_ _%refined200225%_)
                  '#!void
                  (_%fixpoint200221%_ _%refined200225%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx200218%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx200218%_))
          (let ((_%stx200227%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx200218%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx200227%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp200763 (list gxc#::generate-runtime-empty::t))
            (__tmp200762 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp200763
         '()
         __tmp200762
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args200211%_
        (apply make-instance gxc#::generate-ssxi::t _%$args200211%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp200764
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
        (__make-promise __tmp200764)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx200203%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self200206%_
                (let ((__obj200744
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj200744))
               (__tmp200765
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self200206%_ _%stx200203%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp200765
           gxc#current-compile-method
           _%self200206%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self200163%_ _%stx200164%_)
        (let* ((_%g200166200176%_
                (lambda (_%g200167200173%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200167200173%_))))
               (_%g200165200200%_
                (lambda (_%g200167200179%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200167200179%_))
                      (let ((_%e200169200181%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200167200179%_))))
                        (let ((_%hd200170200184%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200169200181%_)))
                              (_%tl200171200186%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200169200181%_))))
                          ((lambda (_%L200189%_)
                             (let ((__tmp200768
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self200163%_
                                         _%stx200164%_))))
                                   (__tmp200766
                                    (let ((__tmp200767
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp200767 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp200768
                                gx#current-expander-phi
                                __tmp200766)))
                           _%tl200171200186%_)))
                      (_%g200166200176%_ _%g200167200179%_)))))
          (_%g200165200200%_ _%stx200164%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self200102%_ _%stx200103%_)
        (let* ((_%g200105200119%_
                (lambda (_%g200106200116%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200106200116%_))))
               (_%g200104200160%_
                (lambda (_%g200106200122%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200106200122%_))
                      (let ((_%e200109200124%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200106200122%_))))
                        (let ((_%hd200110200127%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200109200124%_)))
                              (_%tl200111200129%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200109200124%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200111200129%_))
                              (let ((_%e200112200132%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200111200129%_))))
                                (let ((_%hd200113200135%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200112200132%_)))
                                      (_%tl200114200137%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200112200132%_))))
                                  ((lambda (_%L200140%_ _%L200141%_)
                                     (let* ((_%ctx200154%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L200141%_)))
                                            (_%code200156%_
                                             (##structure-ref
                                              _%ctx200154%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp200769
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self200102%_
                                                  _%code200156%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp200769
                                        gx#current-expander-context
                                        _%ctx200154%_)))
                                   _%tl200114200137%_
                                   _%hd200113200135%_)))
                              (_%g200105200119%_ _%g200106200122%_))))
                      (_%g200105200119%_ _%g200106200122%_)))))
          (_%g200104200160%_ _%stx200103%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self199907%_ _%stx199908%_)
        (letrec ((_%generate-e199910%_
                  (lambda (_%id200087%_)
                    (let* ((_%sym200089%_
                            (if (let ((__tmp200770
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp200770))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id200087%_))
                                '#f))
                           (_%$e200091%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym200089%_))))
                      (if _%$e200091%_
                          ((lambda (_%klass200094%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym200089%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym200089%_
                                                     (cons (let ((__method200745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass200094%_ 'typedecl))))
                     (if __method200745
                         (let ()
                           (declare (not safe))
                           (__method200745 _%klass200094%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass200094%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym200089%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym200089%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e200091%_)
                          (let ((_%$e200096%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym200089%_))))
                            (if _%$e200096%_
                                ((lambda (_%type200099%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym200089%_
                                      '" "
                                      _%type200099%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type200099%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym200089%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym200089%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type200099%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym200089%_
                                                   (cons (let ((__method200746
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type200099%_ 'typedecl))))
                   (if __method200746
                       (let ()
                         (declare (not safe))
                         (__method200746 _%type200099%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type200099%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e200096%_)
                                '(begin))))))))
          (let* ((_%__stx200357200358%_ _%stx199908%_)
                 (_%g199913199951%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx200357200358%_)))))
            (let ((_%__kont200359200360%_
                   (lambda (_%L200069%_) (_%generate-e199910%_ _%L200069%_)))
                  (_%__kont200361200362%_
                   (lambda (_%L200004%_)
                     (let ((_%types200030%_
                            (map _%generate-e199910%_
                                 (let ((__tmp200771
                                        (lambda (_%g200022200025%_
                                                 _%g200023200027%_)
                                          (cons _%g200022200025%_
                                                _%g200023200027%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp200771 '() _%L200004%_)))))
                       (cons 'begin _%types200030%_)))))
              (let ((_%__match200412200413%_
                     (lambda (_%e199929199956%_
                              _%hd199930199959%_
                              _%tl199931199961%_
                              _%e199932199964%_
                              _%hd199933199967%_
                              _%tl199934199969%_
                              _%__splice200363200364%_
                              _%target199935199972%_
                              _%tl199937199974%_)
                       (letrec ((_%loop199938199977%_
                                 (lambda (_%hd199936199980%_
                                          _%id199942199982%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd199936199980%_))
                                       (let ((_%e199939199985%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd199936199980%_))))
                                         (let ((_%lp-tl199941199990%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e199939199985%_)))
                                               (_%lp-hd199940199988%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e199939199985%_))))
                                           (_%loop199938199977%_
                                            _%lp-tl199941199990%_
                                            (cons _%lp-hd199940199988%_
                                                  _%id199942199982%_))))
                                       (let ((_%id199943199993%_
                                              (reverse _%id199942199982%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl199934199969%_))
                                             (let ((_%e199944199996%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl199934199969%_))))
                                               (let ((_%tl199946200001%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e199944199996%_)))
                                                     (_%hd199945199999%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e199944199996%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl199946200001%_))
                                                     (_%__kont200361200362%_
                                                      _%id199943199993%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g199913199951%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g199913199951%_))))))))
                         (_%loop199938199977%_ _%target199935199972%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx200357200358%_))
                    (let ((_%e199916200037%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx200357200358%_))))
                      (let ((_%tl199918200042%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199916200037%_)))
                            (_%hd199917200040%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199916200037%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199918200042%_))
                            (let ((_%e199919200045%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl199918200042%_))))
                              (let ((_%tl199921200050%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199919200045%_)))
                                    (_%hd199920200048%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199919200045%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd199920200048%_))
                                    (let ((_%e199922200053%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd199920200048%_))))
                                      (let ((_%tl199924200058%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199922200053%_)))
                                            (_%hd199923200056%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199922200053%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199924200058%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199921200050%_))
                                                (let ((_%e199925200061%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199921200050%_))))
                                                  (let ((_%tl199927200066%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199925200061%_)))
                                                        (_%hd199926200064%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199925200061%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199927200066%_))
                                                        (_%__kont200359200360%_
                                                         _%hd199923200056%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd199920200048%_))
                                                            (let ((_%__splice200363200364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd199920200048%_ '0))))
                      (let ((_%tl199937199974%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice200363200364%_ '1)))
                            (_%target199935199972%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice200363200364%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199937199974%_))
                            (_%__match200412200413%_
                             _%e199916200037%_
                             _%hd199917200040%_
                             _%tl199918200042%_
                             _%e199919200045%_
                             _%hd199920200048%_
                             _%tl199921200050%_
                             _%__splice200363200364%_
                             _%target199935199972%_
                             _%tl199937199974%_)
                            (let ()
                              (declare (not safe))
                              (_%g199913199951%_)))))
                    (let () (declare (not safe)) (_%g199913199951%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd199920200048%_))
                                                    (let ((_%__splice200363200364%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd199920200048%_
                                                              '0))))
                                                      (let ((_%tl199937199974%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice200363200364%_ '1)))
                    (_%target199935199972%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice200363200364%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl199937199974%_))
                    (_%__match200412200413%_
                     _%e199916200037%_
                     _%hd199917200040%_
                     _%tl199918200042%_
                     _%e199919200045%_
                     _%hd199920200048%_
                     _%tl199921200050%_
                     _%__splice200363200364%_
                     _%target199935199972%_
                     _%tl199937199974%_)
                    (let () (declare (not safe)) (_%g199913199951%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199913199951%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd199920200048%_))
                                                (let ((_%__splice200363200364%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd199920200048%_
                                                          '0))))
                                                  (let ((_%tl199937199974%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice200363200364%_
                                                            '1)))
                                                        (_%target199935199972%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice200363200364%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199937199974%_))
                                                        (_%__match200412200413%_
                                                         _%e199916200037%_
                                                         _%hd199917200040%_
                                                         _%tl199918200042%_
                                                         _%e199919200045%_
                                                         _%hd199920200048%_
                                                         _%tl199921200050%_
                                                         _%__splice200363200364%_
                                                         _%target199935199972%_
                                                         _%tl199937199974%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g199913199951%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199913199951%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd199920200048%_))
                                        (let ((_%__splice200363200364%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd199920200048%_
                                                  '0))))
                                          (let ((_%tl199937199974%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice200363200364%_
                                                    '1)))
                                                (_%target199935199972%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice200363200364%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199937199974%_))
                                                (_%__match200412200413%_
                                                 _%e199916200037%_
                                                 _%hd199917200040%_
                                                 _%tl199918200042%_
                                                 _%e199919200045%_
                                                 _%hd199920200048%_
                                                 _%tl199921200050%_
                                                 _%__splice200363200364%_
                                                 _%target199935199972%_
                                                 _%tl199937199974%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199913199951%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g199913199951%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g199913199951%_)))))
                    (let () (declare (not safe)) (_%g199913199951%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self199460%_ _%stx199461%_)
        (let* ((_%__stx200415200416%_ _%stx199461%_)
               (_%g199465199567%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200415200416%_)))))
          (let ((_%__kont200417200418%_
                 (lambda (_%L199857%_
                          _%L199858%_
                          _%L199859%_
                          _%L199860%_
                          _%L199861%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L199860%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L199859%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L199858%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L199857%_))
                                                 '())))))))
                (_%__kont200419200420%_
                 (lambda (_%L199683%_ _%L199684%_ _%L199685%_ _%L199686%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L199685%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L199684%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L199683%_))
                                           (cons '#f '())))))))
                (_%__kont200421200422%_ (lambda () '(begin))))
            (let ((_%__match200550200551%_
                   (lambda (_%e199472199729%_
                            _%hd199473199732%_
                            _%tl199474199734%_
                            _%e199475199737%_
                            _%hd199476199740%_
                            _%tl199477199742%_
                            _%e199478199745%_
                            _%hd199479199748%_
                            _%tl199480199750%_
                            _%e199481199753%_
                            _%hd199482199756%_
                            _%tl199483199758%_
                            _%e199484199761%_
                            _%hd199485199764%_
                            _%tl199486199766%_
                            _%e199487199769%_
                            _%hd199488199772%_
                            _%tl199489199774%_
                            _%e199490199777%_
                            _%hd199491199780%_
                            _%tl199492199782%_
                            _%e199493199785%_
                            _%hd199494199788%_
                            _%tl199495199790%_
                            _%e199496199793%_
                            _%hd199497199796%_
                            _%tl199498199798%_
                            _%e199499199801%_
                            _%hd199500199804%_
                            _%tl199501199806%_
                            _%e199502199809%_
                            _%hd199503199812%_
                            _%tl199504199814%_
                            _%e199505199817%_
                            _%hd199506199820%_
                            _%tl199507199822%_
                            _%e199508199825%_
                            _%hd199509199828%_
                            _%tl199510199830%_
                            _%e199511199833%_
                            _%hd199512199836%_
                            _%tl199513199838%_
                            _%e199514199841%_
                            _%hd199515199844%_
                            _%tl199516199846%_
                            _%e199517199849%_
                            _%hd199518199852%_
                            _%tl199519199854%_)
                     (let ((_%L199857%_ _%hd199518199852%_)
                           (_%L199858%_ _%hd199509199828%_)
                           (_%L199859%_ _%hd199500199804%_)
                           (_%L199860%_ _%hd199491199780%_)
                           (_%L199861%_ _%hd199482199756%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L199861%_
                              'bind-method!))
                           (_%__kont200417200418%_
                            _%L199857%_
                            _%L199858%_
                            _%L199859%_
                            _%L199860%_
                            _%L199861%_)
                           (_%__kont200421200422%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200415200416%_))
                  (let ((_%e199472199729%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx200415200416%_))))
                    (let ((_%tl199474199734%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199472199729%_)))
                          (_%hd199473199732%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199472199729%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199474199734%_))
                          (let ((_%e199475199737%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl199474199734%_))))
                            (let ((_%tl199477199742%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199475199737%_)))
                                  (_%hd199476199740%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199475199737%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd199476199740%_))
                                  (let ((_%e199478199745%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd199476199740%_))))
                                    (let ((_%tl199480199750%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199478199745%_)))
                                          (_%hd199479199748%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199478199745%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd199479199748%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd199479199748%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199480199750%_))
                                                  (let ((_%e199481199753%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199480199750%_))))
                                                    (let ((_%tl199483199758%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199481199753%_)))
                                                          (_%hd199482199756%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199481199753%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199483199758%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl199477199742%_))
                      (let ((_%e199484199761%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl199477199742%_))))
                        (let ((_%tl199486199766%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199484199761%_)))
                              (_%hd199485199764%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199484199761%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd199485199764%_))
                              (let ((_%e199487199769%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd199485199764%_))))
                                (let ((_%tl199489199774%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199487199769%_)))
                                      (_%hd199488199772%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199487199769%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd199488199772%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd199488199772%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199489199774%_))
                                              (let ((_%e199490199777%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199489199774%_))))
                                                (let ((_%tl199492199782%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199490199777%_)))
                                                      (_%hd199491199780%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199490199777%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199492199782%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199486199766%_))
                                                          (let ((_%e199493199785%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl199486199766%_))))
                    (let ((_%tl199495199790%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199493199785%_)))
                          (_%hd199494199788%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199493199785%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd199494199788%_))
                          (let ((_%e199496199793%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd199494199788%_))))
                            (let ((_%tl199498199798%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199496199793%_)))
                                  (_%hd199497199796%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199496199793%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd199497199796%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd199497199796%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl199498199798%_))
                                          (let ((_%e199499199801%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl199498199798%_))))
                                            (let ((_%tl199501199806%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199499199801%_)))
                                                  (_%hd199500199804%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199499199801%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl199501199806%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl199495199790%_))
                                                      (let ((_%e199502199809%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl199495199790%_))))
                (let ((_%tl199504199814%_
                       (let () (declare (not safe)) (##cdr _%e199502199809%_)))
                      (_%hd199503199812%_
                       (let ()
                         (declare (not safe))
                         (##car _%e199502199809%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd199503199812%_))
                      (let ((_%e199505199817%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd199503199812%_))))
                        (let ((_%tl199507199822%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199505199817%_)))
                              (_%hd199506199820%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199505199817%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd199506199820%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd199506199820%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199507199822%_))
                                      (let ((_%e199508199825%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199507199822%_))))
                                        (let ((_%tl199510199830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199508199825%_)))
                                              (_%hd199509199828%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199508199825%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199510199830%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199504199814%_))
                                                  (let ((_%e199511199833%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199504199814%_))))
                                                    (let ((_%tl199513199838%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199511199833%_)))
                                                          (_%hd199512199836%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199511199833%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd199512199836%_))
                                                          (let ((_%e199514199841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd199512199836%_))))
                    (let ((_%tl199516199846%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199514199841%_)))
                          (_%hd199515199844%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199514199841%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd199515199844%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd199515199844%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199516199846%_))
                                  (let ((_%e199517199849%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl199516199846%_))))
                                    (let ((_%tl199519199854%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199517199849%_)))
                                          (_%hd199518199852%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199517199849%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl199519199854%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199513199838%_))
                                              (_%__match200550200551%_
                                               _%e199472199729%_
                                               _%hd199473199732%_
                                               _%tl199474199734%_
                                               _%e199475199737%_
                                               _%hd199476199740%_
                                               _%tl199477199742%_
                                               _%e199478199745%_
                                               _%hd199479199748%_
                                               _%tl199480199750%_
                                               _%e199481199753%_
                                               _%hd199482199756%_
                                               _%tl199483199758%_
                                               _%e199484199761%_
                                               _%hd199485199764%_
                                               _%tl199486199766%_
                                               _%e199487199769%_
                                               _%hd199488199772%_
                                               _%tl199489199774%_
                                               _%e199490199777%_
                                               _%hd199491199780%_
                                               _%tl199492199782%_
                                               _%e199493199785%_
                                               _%hd199494199788%_
                                               _%tl199495199790%_
                                               _%e199496199793%_
                                               _%hd199497199796%_
                                               _%tl199498199798%_
                                               _%e199499199801%_
                                               _%hd199500199804%_
                                               _%tl199501199806%_
                                               _%e199502199809%_
                                               _%hd199503199812%_
                                               _%tl199504199814%_
                                               _%e199505199817%_
                                               _%hd199506199820%_
                                               _%tl199507199822%_
                                               _%e199508199825%_
                                               _%hd199509199828%_
                                               _%tl199510199830%_
                                               _%e199511199833%_
                                               _%hd199512199836%_
                                               _%tl199513199838%_
                                               _%e199514199841%_
                                               _%hd199515199844%_
                                               _%tl199516199846%_
                                               _%e199517199849%_
                                               _%hd199518199852%_
                                               _%tl199519199854%_)
                                              (_%__kont200421200422%_))
                                          (_%__kont200421200422%_))))
                                  (_%__kont200421200422%_))
                              (_%__kont200421200422%_))
                          (_%__kont200421200422%_))))
                  (_%__kont200421200422%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199504199814%_))
                                                      (if (let ((__tmp200772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp200772 'bind-method!))
                  (let ((_%L199683%_ _%hd199509199828%_)
                        (_%L199684%_ _%hd199500199804%_)
                        (_%L199685%_ _%hd199491199780%_)
                        (_%L199686%_ _%hd199482199756%_))
                    (_%__kont200419200420%_
                     _%L199683%_
                     _%L199684%_
                     _%L199685%_
                     _%L199686%_))
                  (_%__kont200421200422%_))
              (_%__kont200421200422%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont200421200422%_))))
                                      (_%__kont200421200422%_))
                                  (_%__kont200421200422%_))
                              (_%__kont200421200422%_))))
                      (_%__kont200421200422%_))))
              (_%__kont200421200422%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200421200422%_))))
                                          (_%__kont200421200422%_))
                                      (_%__kont200421200422%_))
                                  (_%__kont200421200422%_))))
                          (_%__kont200421200422%_))))
                  (_%__kont200421200422%_))
              (_%__kont200421200422%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont200421200422%_))
                                          (_%__kont200421200422%_))
                                      (_%__kont200421200422%_))))
                              (_%__kont200421200422%_))))
                      (_%__kont200421200422%_))
                  (_%__kont200421200422%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200421200422%_))
                                              (_%__kont200421200422%_))
                                          (_%__kont200421200422%_))))
                                  (_%__kont200421200422%_))))
                          (_%__kont200421200422%_))))
                  (_%__kont200421200422%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self199284%_ _%stx199285%_)
        (let* ((_%__stx200659200660%_ _%stx199285%_)
               (_%g199288199328%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200659200660%_)))))
          (let ((_%__kont200661200662%_
                 (lambda (_%L199434%_ _%L199435%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L199435%_))
                               (cons _%L199434%_ '())))))
                (_%__kont200663200664%_
                 (lambda (_%L199357%_ _%L199358%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx200659200660%_))
                (let ((_%e199292199378%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx200659200660%_))))
                  (let ((_%tl199294199383%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199292199378%_)))
                        (_%hd199293199381%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199292199378%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl199294199383%_))
                        (let ((_%e199295199386%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl199294199383%_))))
                          (let ((_%tl199297199391%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199295199386%_)))
                                (_%hd199296199389%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199295199386%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd199296199389%_))
                                (let ((_%e199298199394%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd199296199389%_))))
                                  (let ((_%tl199300199399%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199298199394%_)))
                                        (_%hd199299199397%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199298199394%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd199299199397%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd199299199397%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199300199399%_))
                                                (let ((_%e199301199402%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199300199399%_))))
                                                  (let ((_%tl199303199407%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199301199402%_)))
                                                        (_%hd199302199405%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199301199402%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199303199407%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199297199391%_))
                                                            (let ((_%e199304199410%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl199297199391%_))))
                      (let ((_%tl199306199415%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199304199410%_)))
                            (_%hd199305199413%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199304199410%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd199305199413%_))
                            (let ((_%e199307199418%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd199305199413%_))))
                              (let ((_%tl199309199423%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199307199418%_)))
                                    (_%hd199308199421%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199307199418%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd199308199421%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd199308199421%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199309199423%_))
                                            (let ((_%e199310199426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl199309199423%_))))
                                              (let ((_%tl199312199431%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199310199426%_)))
                                                    (_%hd199311199429%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199310199426%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl199312199431%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199306199415%_))
                                                        (_%__kont200661200662%_
                                                         _%hd199311199429%_
                                                         _%hd199302199405%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g199288199328%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199306199415%_))
                                                        (_%__kont200663200664%_
                                                         _%hd199305199413%_
                                                         _%hd199296199389%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g199288199328%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199306199415%_))
                                                (_%__kont200663200664%_
                                                 _%hd199305199413%_
                                                 _%hd199296199389%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199288199328%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199306199415%_))
                                            (_%__kont200663200664%_
                                             _%hd199305199413%_
                                             _%hd199296199389%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g199288199328%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199306199415%_))
                                        (_%__kont200663200664%_
                                         _%hd199305199413%_
                                         _%hd199296199389%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g199288199328%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199306199415%_))
                                (_%__kont200663200664%_
                                 _%hd199305199413%_
                                 _%hd199296199389%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g199288199328%_))))))
                    (let () (declare (not safe)) (_%g199288199328%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl199297199391%_))
                    (let ((_%e199321199349%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl199297199391%_))))
                      (let ((_%tl199323199354%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199321199349%_)))
                            (_%hd199322199352%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199321199349%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199323199354%_))
                            (_%__kont200663200664%_
                             _%hd199322199352%_
                             _%hd199296199389%_)
                            (let ()
                              (declare (not safe))
                              (_%g199288199328%_)))))
                    (let () (declare (not safe)) (_%g199288199328%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl199297199391%_))
                                                    (let ((_%e199321199349%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl199297199391%_))))
                                                      (let ((_%tl199323199354%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e199321199349%_)))
                    (_%hd199322199352%_
                     (let () (declare (not safe)) (##car _%e199321199349%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl199323199354%_))
                    (_%__kont200663200664%_
                     _%hd199322199352%_
                     _%hd199296199389%_)
                    (let () (declare (not safe)) (_%g199288199328%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199288199328%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199297199391%_))
                                                (let ((_%e199321199349%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199297199391%_))))
                                                  (let ((_%tl199323199354%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199321199349%_)))
                                                        (_%hd199322199352%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199321199349%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199323199354%_))
                                                        (_%__kont200663200664%_
                                                         _%hd199322199352%_
                                                         _%hd199296199389%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g199288199328%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199288199328%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199297199391%_))
                                            (let ((_%e199321199349%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl199297199391%_))))
                                              (let ((_%tl199323199354%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199321199349%_)))
                                                    (_%hd199322199352%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199321199349%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl199323199354%_))
                                                    (_%__kont200663200664%_
                                                     _%hd199322199352%_
                                                     _%hd199296199389%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199288199328%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199288199328%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199297199391%_))
                                    (let ((_%e199321199349%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl199297199391%_))))
                                      (let ((_%tl199323199354%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199321199349%_)))
                                            (_%hd199322199352%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199321199349%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199323199354%_))
                                            (_%__kont200663200664%_
                                             _%hd199322199352%_
                                             _%hd199296199389%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g199288199328%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199288199328%_))))))
                        (let () (declare (not safe)) (_%g199288199328%_)))))
                (let () (declare (not safe)) (_%g199288199328%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self197478199269%_)
        (let* ((_%self199272%_ _%self197478199269%_)
               (_%self199274%_ _%self199272%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199274%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self197479199040%_)
        (let* ((_%self199043%_ _%self197479199040%_)
               (_%self199045%_ _%self199043%_)
               (_%self199054199070%_ _%self199045%_)
               (_%E199056199074%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self199054199070%_
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
               (_%K199057199089%_
                (lambda (_%methods199077%_
                         _%metaclass199078%_
                         _%system?199079%_
                         _%final?199080%_
                         _%struct?199081%_
                         _%constructor199082%_
                         _%fields199083%_
                         _%slots199084%_
                         _%precendence-list199085%_
                         _%super199086%_
                         _%id199087%_)
                  (cons '@class
                        (cons _%id199087%_
                              (cons _%super199086%_
                                    (cons _%precendence-list199085%_
                                          (cons _%slots199084%_
                                                (cons _%fields199083%_
                                                      (cons _%constructor199082%_
                                                            (cons _%struct?199081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?199080%_
                                (cons _%system?199079%_
                                      (cons _%metaclass199078%_
                                            (cons (if _%methods199077%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods199077%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e199058199092%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199054199070%_ '1 '#f '#f)))
               (_%id199095%_ _%e199058199092%_)
               (_%e199059199097%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199054199070%_ '2 '#f '#f)))
               (_%super199100%_ _%e199059199097%_)
               (_%e199060199102%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199054199070%_ '3 '#f '#f)))
               (_%precendence-list199105%_ _%e199060199102%_)
               (_%e199061199107%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199054199070%_ '4 '#f '#f)))
               (_%slots199110%_ _%e199061199107%_)
               (_%e199062199112%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199054199070%_ '5 '#f '#f)))
               (_%fields199115%_ _%e199062199112%_)
               (_%e199063199117%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199054199070%_ '6 '#f '#f)))
               (_%constructor199120%_ _%e199063199117%_)
               (_%e199064199122%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199054199070%_ '7 '#f '#f)))
               (_%struct?199125%_ _%e199064199122%_)
               (_%e199065199127%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199054199070%_ '8 '#f '#f)))
               (_%final?199130%_ _%e199065199127%_)
               (_%e199066199132%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199054199070%_ '9 '#f '#f)))
               (_%system?199135%_ _%e199066199132%_)
               (_%e199067199137%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self199054199070%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass199140%_ _%e199067199137%_)
               (_%e199068199142%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self199054199070%_
                   '11
                   '#f
                   '#f)))
               (_%methods199145%_ _%e199068199142%_))
          (_%K199057199089%_
           _%methods199145%_
           _%metaclass199140%_
           _%system?199135%_
           _%final?199130%_
           _%struct?199125%_
           _%constructor199120%_
           _%fields199115%_
           _%slots199110%_
           _%precendence-list199105%_
           _%super199100%_
           _%id199095%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self197480198903%_)
        (let* ((_%self198906%_ _%self197480198903%_)
               (_%self198908%_ _%self198906%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198908%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self197481198766%_)
        (let* ((_%self198769%_ _%self197481198766%_)
               (_%self198771%_ _%self198769%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198771%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self197482198629%_)
        (let* ((_%self198632%_ _%self197482198629%_)
               (_%self198634%_ _%self198632%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198634%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198634%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self198634%_
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
      (lambda (_%self197483198492%_)
        (let* ((_%self198495%_ _%self197483198492%_)
               (_%self198497%_ _%self198495%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198497%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198497%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self198497%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self197484198355%_)
        (let* ((_%self198358%_ _%self197484198355%_)
               (_%self198360%_ _%self198358%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198360%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198360%_
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
      (lambda (_%self197485198166%_)
        (let* ((_%self198169%_ _%self197485198166%_)
               (_%self198171%_ _%self198169%_)
               (_%self198180198189%_ _%self198171%_)
               (_%E198182198193%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self198180198189%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K198183198212%_
                (lambda (_%dispatch198196%_
                         _%arity198197%_
                         _%signature198198%_)
                  (if _%signature198198%_
                      (let ((_%signature198200%_ _%signature198198%_))
                        (cons '@lambda
                              (cons _%arity198197%_
                                    (cons _%dispatch198196%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature198200%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature198200%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature198200%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature198200%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature198200%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity198197%_
                                  (cons _%dispatch198196%_ '()))))))
               (_%e198184198215%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198180198189%_ '1 '#f '#f)))
               (_%e198185198218%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198180198189%_ '2 '#f '#f)))
               (_%signature198221%_ _%e198185198218%_)
               (_%e198186198223%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198180198189%_ '3 '#f '#f)))
               (_%arity198226%_ _%e198186198223%_)
               (_%e198187198228%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198180198189%_ '4 '#f '#f)))
               (_%dispatch198231%_ _%e198187198228%_))
          (_%K198183198212%_
           _%dispatch198231%_
           _%arity198226%_
           _%signature198221%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self197486198025%_)
        (let* ((_%self198028%_ _%self197486198025%_)
               (_%self198030%_ _%self198028%_))
          (letrec ((_%clause-e198040%_
                    (lambda (_%clause198042%_)
                      (cdr (let ((__method200747
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause198042%_
                                     'typedecl))))
                             (if __method200747
                                 (let ()
                                   (declare (not safe))
                                   (__method200747 _%clause198042%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause198042%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e198040%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self198030%_
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
      (lambda (_%self197487197888%_)
        (let* ((_%self197891%_ _%self197487197888%_)
               (_%self197893%_ _%self197891%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197893%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self197893%_
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
      (lambda (_%self197488197751%_)
        (let* ((_%self197754%_ _%self197488197751%_)
               (_%self197756%_ _%self197754%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197756%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self197756%_
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
      (lambda (_%self197489197614%_)
        (let* ((_%self197617%_ _%self197489197614%_)
               (_%self197619%_ _%self197617%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197619%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
