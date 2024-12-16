(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1734131754)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp200854
                   (let ((__obj200848
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
                       (gxc#optimizer-info:::init! __obj200848))
                     __obj200848)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp200854)))))
    (define gxc#optimize!
      (lambda (_%ctx200457%_)
        (let ((__tmp200857
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx200457%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx200457%_)
                 (let ((__tmp200859
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp200858
                        (##structure-ref
                         _%ctx200457%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp200859 __tmp200858 '#t))
                 (let ((_%code200460%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx200457%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx200457%_
                    _%code200460%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp200856 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp200855 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp200857
           gxc#current-compile-mutators
           __tmp200856
           gxc#current-compile-local-type
           __tmp200855))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx200443%_)
        (letrec ((_%load-it!200445%_
                  (lambda (_%id200455%_)
                    (if (let ((__tmp200860
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp200860 _%id200455%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id200455%_)
                          (let ((__tmp200861
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp200861 _%id200455%_ '#t)))))))
          (let* ((_%modid200447%_
                  (##structure-ref
                   _%ctx200443%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str200449%_ (symbol->string _%modid200447%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str200449%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str200449%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!200445%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!200445%_
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
      (lambda (_%ctx200380%_)
        (letrec* ((_%deps200382%_
                   (let* ((_%imports200433%_
                           (##structure-ref
                            _%ctx200380%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e200435%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx200380%_))))
                     (if _%$e200435%_
                         ((lambda (_%g200437200439%_)
                            (cons _%g200437200439%_ _%imports200433%_))
                          _%$e200435%_)
                         _%imports200433%_))))
          (let _%lp200384%_ ((_%rest200386%_ _%deps200382%_))
            (let* ((_%rest200387200395%_ _%rest200386%_)
                   (_%else200389200403%_ (lambda () '#!void))
                   (_%K200391200421%_
                    (lambda (_%rest200406%_ _%hd200407%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd200407%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp200863
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp200862
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd200407%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp200863 __tmp200862))
                                '#!void
                                (begin
                                  (let ((_%$e200410%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd200407%_))))
                                    (if _%$e200410%_
                                        ((lambda (_%pre200413%_)
                                           (_%lp200384%_
                                            (cons _%pre200413%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd200407%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e200410%_)
                                        (_%lp200384%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd200407%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd200407%_)))
                            (_%lp200384%_ _%rest200406%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd200407%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp200865
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp200864
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd200407%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp200865 __tmp200864))
                                    '#!void
                                    (begin
                                      (_%lp200384%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd200407%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd200407%_)))
                                (_%lp200384%_ _%rest200406%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd200407%_
                                     'gx#module-import::t))
                                  (_%lp200384%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd200407%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest200406%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd200407%_
                                         'gx#module-export::t))
                                      (_%lp200384%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd200407%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest200406%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd200407%_
                                             'gx#import-set::t))
                                          (_%lp200384%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd200407%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest200406%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd200407%_))))))))))
              (if (pair? _%rest200387200395%_)
                  (let ((_%hd200392200424%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest200387200395%_)))
                        (_%tl200393200426%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest200387200395%_))))
                    (let* ((_%hd200429%_ _%hd200392200424%_)
                           (_%rest200431%_ _%tl200393200426%_))
                      (_%K200391200421%_ _%rest200431%_ _%hd200429%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx200360%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx200360%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx200360%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht200362%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id200364%_
                    (##structure-ref
                     _%ctx200360%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod200366%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht200362%_ _%id200364%_)))
                   (_%$e200369%_ _%mod200366%_))
              (if _%$e200369%_
                  _%$e200369%_
                  (let* ((_%mod200372%_
                          (gxc#optimizer-import-ssxi _%ctx200360%_))
                         (_%val200377%_
                          (let ((_%$e200374%_ _%mod200372%_))
                            (if _%$e200374%_ _%$e200374%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht200362%_ _%id200364%_ _%val200377%_))
                    _%val200377%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx200358%_)
        (if (##structure-ref _%ctx200358%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx200358%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id200335%_)
        (letrec ((_%catch-e200337%_
                  (lambda (_%exn200356%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn200356%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn200356%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id200335%_))))
                    '#f))
                 (_%import-e200338%_
                  (lambda ()
                    (let* ((_%str-id200341%_
                            (let ((__tmp200866
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id200335%_))))
                              (declare (not safe))
                              (##string-append __tmp200866 '".ssxi")))
                           (_%artefact-path200349%_
                            (let ((_%odir200342200344%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir200342200344%_
                                  (let ((_%odir200347%_ _%odir200342200344%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id200341%_
                                        '".ss"))
                                     _%odir200347%_))
                                  '#f)))
                           (_%library-path200351%_
                            (let ((__tmp200867
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id200341%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp200867)))
                           (_%ssxi-path200353%_
                            (if (and _%artefact-path200349%_
                                     (file-exists? _%artefact-path200349%_))
                                _%artefact-path200349%_
                                _%library-path200351%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path200353%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path200353%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e200337%_ _%import-e200338%_)))))
    (define gxc#optimize-source
      (lambda (_%stx200320%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx200320%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx200320%_))
        (let* ((_%stx200322%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx200320%_)))
               (_%stx200324%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx200322%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx200324%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx200324%_))
          (let _%fixpoint200327%_ ((_%current200329%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx200324%_))
            (let ((_%refined200331%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current200329%_ _%refined200331%_)
                  '#!void
                  (_%fixpoint200327%_ _%refined200331%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx200324%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx200324%_))
          (let ((_%stx200333%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx200324%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx200333%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp200869 (list gxc#::generate-runtime-empty::t))
            (__tmp200868 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp200869
         '()
         __tmp200868
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args200317%_
        (apply make-instance gxc#::generate-ssxi::t _%$args200317%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp200870
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
        (__make-promise __tmp200870)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx200309%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self200312%_
                (let ((__obj200850
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj200850))
               (__tmp200871
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self200312%_ _%stx200309%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp200871
           gxc#current-compile-method
           _%self200312%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self200269%_ _%stx200270%_)
        (let* ((_%g200272200282%_
                (lambda (_%g200273200279%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200273200279%_))))
               (_%g200271200306%_
                (lambda (_%g200273200285%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200273200285%_))
                      (let ((_%e200275200287%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200273200285%_))))
                        (let ((_%hd200276200290%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200275200287%_)))
                              (_%tl200277200292%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200275200287%_))))
                          ((lambda (_%L200295%_)
                             (let ((__tmp200874
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self200269%_
                                         _%stx200270%_))))
                                   (__tmp200872
                                    (let ((__tmp200873
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp200873 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp200874
                                gx#current-expander-phi
                                __tmp200872)))
                           _%tl200277200292%_)))
                      (_%g200272200282%_ _%g200273200285%_)))))
          (_%g200271200306%_ _%stx200270%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self200208%_ _%stx200209%_)
        (let* ((_%g200211200225%_
                (lambda (_%g200212200222%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200212200222%_))))
               (_%g200210200266%_
                (lambda (_%g200212200228%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200212200228%_))
                      (let ((_%e200215200230%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200212200228%_))))
                        (let ((_%hd200216200233%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200215200230%_)))
                              (_%tl200217200235%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200215200230%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200217200235%_))
                              (let ((_%e200218200238%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200217200235%_))))
                                (let ((_%hd200219200241%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200218200238%_)))
                                      (_%tl200220200243%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200218200238%_))))
                                  ((lambda (_%L200246%_ _%L200247%_)
                                     (let* ((_%ctx200260%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L200247%_)))
                                            (_%code200262%_
                                             (##structure-ref
                                              _%ctx200260%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp200875
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self200208%_
                                                  _%code200262%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp200875
                                        gx#current-expander-context
                                        _%ctx200260%_)))
                                   _%tl200220200243%_
                                   _%hd200219200241%_)))
                              (_%g200211200225%_ _%g200212200228%_))))
                      (_%g200211200225%_ _%g200212200228%_)))))
          (_%g200210200266%_ _%stx200209%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self200013%_ _%stx200014%_)
        (letrec ((_%generate-e200016%_
                  (lambda (_%id200193%_)
                    (let* ((_%sym200195%_
                            (if (let ((__tmp200876
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp200876))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id200193%_))
                                '#f))
                           (_%$e200197%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym200195%_))))
                      (if _%$e200197%_
                          ((lambda (_%klass200200%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym200195%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym200195%_
                                                     (cons (let ((__method200851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass200200%_ 'typedecl))))
                     (if __method200851
                         (let ()
                           (declare (not safe))
                           (__method200851 _%klass200200%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass200200%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym200195%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym200195%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e200197%_)
                          (let ((_%$e200202%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym200195%_))))
                            (if _%$e200202%_
                                ((lambda (_%type200205%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym200195%_
                                      '" "
                                      _%type200205%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type200205%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym200195%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym200195%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type200205%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym200195%_
                                                   (cons (let ((__method200852
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type200205%_ 'typedecl))))
                   (if __method200852
                       (let ()
                         (declare (not safe))
                         (__method200852 _%type200205%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type200205%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e200202%_)
                                '(begin))))))))
          (let* ((_%__stx200463200464%_ _%stx200014%_)
                 (_%g200019200057%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx200463200464%_)))))
            (let ((_%__kont200465200466%_
                   (lambda (_%L200175%_) (_%generate-e200016%_ _%L200175%_)))
                  (_%__kont200467200468%_
                   (lambda (_%L200110%_)
                     (let ((_%types200136%_
                            (map _%generate-e200016%_
                                 (let ((__tmp200877
                                        (lambda (_%g200128200131%_
                                                 _%g200129200133%_)
                                          (cons _%g200128200131%_
                                                _%g200129200133%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp200877 '() _%L200110%_)))))
                       (cons 'begin _%types200136%_)))))
              (let ((_%__match200518200519%_
                     (lambda (_%e200035200062%_
                              _%hd200036200065%_
                              _%tl200037200067%_
                              _%e200038200070%_
                              _%hd200039200073%_
                              _%tl200040200075%_
                              _%__splice200469200470%_
                              _%target200041200078%_
                              _%tl200043200080%_)
                       (letrec ((_%loop200044200083%_
                                 (lambda (_%hd200042200086%_
                                          _%id200048200088%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd200042200086%_))
                                       (let ((_%e200045200091%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd200042200086%_))))
                                         (let ((_%lp-tl200047200096%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e200045200091%_)))
                                               (_%lp-hd200046200094%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e200045200091%_))))
                                           (_%loop200044200083%_
                                            _%lp-tl200047200096%_
                                            (cons _%lp-hd200046200094%_
                                                  _%id200048200088%_))))
                                       (let ((_%id200049200099%_
                                              (reverse _%id200048200088%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl200040200075%_))
                                             (let ((_%e200050200102%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl200040200075%_))))
                                               (let ((_%tl200052200107%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e200050200102%_)))
                                                     (_%hd200051200105%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e200050200102%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl200052200107%_))
                                                     (_%__kont200467200468%_
                                                      _%id200049200099%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g200019200057%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g200019200057%_))))))))
                         (_%loop200044200083%_ _%target200041200078%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx200463200464%_))
                    (let ((_%e200022200143%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx200463200464%_))))
                      (let ((_%tl200024200148%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200022200143%_)))
                            (_%hd200023200146%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200022200143%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl200024200148%_))
                            (let ((_%e200025200151%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl200024200148%_))))
                              (let ((_%tl200027200156%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200025200151%_)))
                                    (_%hd200026200154%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200025200151%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd200026200154%_))
                                    (let ((_%e200028200159%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd200026200154%_))))
                                      (let ((_%tl200030200164%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e200028200159%_)))
                                            (_%hd200029200162%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e200028200159%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl200030200164%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200027200156%_))
                                                (let ((_%e200031200167%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200027200156%_))))
                                                  (let ((_%tl200033200172%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200031200167%_)))
                                                        (_%hd200032200170%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200031200167%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200033200172%_))
                                                        (_%__kont200465200466%_
                                                         _%hd200029200162%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd200026200154%_))
                                                            (let ((_%__splice200469200470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd200026200154%_ '0))))
                      (let ((_%tl200043200080%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice200469200470%_ '1)))
                            (_%target200041200078%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice200469200470%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200043200080%_))
                            (_%__match200518200519%_
                             _%e200022200143%_
                             _%hd200023200146%_
                             _%tl200024200148%_
                             _%e200025200151%_
                             _%hd200026200154%_
                             _%tl200027200156%_
                             _%__splice200469200470%_
                             _%target200041200078%_
                             _%tl200043200080%_)
                            (let ()
                              (declare (not safe))
                              (_%g200019200057%_)))))
                    (let () (declare (not safe)) (_%g200019200057%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd200026200154%_))
                                                    (let ((_%__splice200469200470%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd200026200154%_
                                                              '0))))
                                                      (let ((_%tl200043200080%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice200469200470%_ '1)))
                    (_%target200041200078%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice200469200470%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl200043200080%_))
                    (_%__match200518200519%_
                     _%e200022200143%_
                     _%hd200023200146%_
                     _%tl200024200148%_
                     _%e200025200151%_
                     _%hd200026200154%_
                     _%tl200027200156%_
                     _%__splice200469200470%_
                     _%target200041200078%_
                     _%tl200043200080%_)
                    (let () (declare (not safe)) (_%g200019200057%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200019200057%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd200026200154%_))
                                                (let ((_%__splice200469200470%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd200026200154%_
                                                          '0))))
                                                  (let ((_%tl200043200080%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice200469200470%_
                                                            '1)))
                                                        (_%target200041200078%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice200469200470%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200043200080%_))
                                                        (_%__match200518200519%_
                                                         _%e200022200143%_
                                                         _%hd200023200146%_
                                                         _%tl200024200148%_
                                                         _%e200025200151%_
                                                         _%hd200026200154%_
                                                         _%tl200027200156%_
                                                         _%__splice200469200470%_
                                                         _%target200041200078%_
                                                         _%tl200043200080%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g200019200057%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200019200057%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd200026200154%_))
                                        (let ((_%__splice200469200470%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd200026200154%_
                                                  '0))))
                                          (let ((_%tl200043200080%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice200469200470%_
                                                    '1)))
                                                (_%target200041200078%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice200469200470%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200043200080%_))
                                                (_%__match200518200519%_
                                                 _%e200022200143%_
                                                 _%hd200023200146%_
                                                 _%tl200024200148%_
                                                 _%e200025200151%_
                                                 _%hd200026200154%_
                                                 _%tl200027200156%_
                                                 _%__splice200469200470%_
                                                 _%target200041200078%_
                                                 _%tl200043200080%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200019200057%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g200019200057%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g200019200057%_)))))
                    (let () (declare (not safe)) (_%g200019200057%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self199566%_ _%stx199567%_)
        (let* ((_%__stx200521200522%_ _%stx199567%_)
               (_%g199571199673%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200521200522%_)))))
          (let ((_%__kont200523200524%_
                 (lambda (_%L199963%_
                          _%L199964%_
                          _%L199965%_
                          _%L199966%_
                          _%L199967%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L199966%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L199965%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L199964%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L199963%_))
                                                 '())))))))
                (_%__kont200525200526%_
                 (lambda (_%L199789%_ _%L199790%_ _%L199791%_ _%L199792%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L199791%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L199790%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L199789%_))
                                           (cons '#f '())))))))
                (_%__kont200527200528%_ (lambda () '(begin))))
            (let ((_%__match200656200657%_
                   (lambda (_%e199578199835%_
                            _%hd199579199838%_
                            _%tl199580199840%_
                            _%e199581199843%_
                            _%hd199582199846%_
                            _%tl199583199848%_
                            _%e199584199851%_
                            _%hd199585199854%_
                            _%tl199586199856%_
                            _%e199587199859%_
                            _%hd199588199862%_
                            _%tl199589199864%_
                            _%e199590199867%_
                            _%hd199591199870%_
                            _%tl199592199872%_
                            _%e199593199875%_
                            _%hd199594199878%_
                            _%tl199595199880%_
                            _%e199596199883%_
                            _%hd199597199886%_
                            _%tl199598199888%_
                            _%e199599199891%_
                            _%hd199600199894%_
                            _%tl199601199896%_
                            _%e199602199899%_
                            _%hd199603199902%_
                            _%tl199604199904%_
                            _%e199605199907%_
                            _%hd199606199910%_
                            _%tl199607199912%_
                            _%e199608199915%_
                            _%hd199609199918%_
                            _%tl199610199920%_
                            _%e199611199923%_
                            _%hd199612199926%_
                            _%tl199613199928%_
                            _%e199614199931%_
                            _%hd199615199934%_
                            _%tl199616199936%_
                            _%e199617199939%_
                            _%hd199618199942%_
                            _%tl199619199944%_
                            _%e199620199947%_
                            _%hd199621199950%_
                            _%tl199622199952%_
                            _%e199623199955%_
                            _%hd199624199958%_
                            _%tl199625199960%_)
                     (let ((_%L199963%_ _%hd199624199958%_)
                           (_%L199964%_ _%hd199615199934%_)
                           (_%L199965%_ _%hd199606199910%_)
                           (_%L199966%_ _%hd199597199886%_)
                           (_%L199967%_ _%hd199588199862%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L199967%_
                              'bind-method!))
                           (_%__kont200523200524%_
                            _%L199963%_
                            _%L199964%_
                            _%L199965%_
                            _%L199966%_
                            _%L199967%_)
                           (_%__kont200527200528%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200521200522%_))
                  (let ((_%e199578199835%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx200521200522%_))))
                    (let ((_%tl199580199840%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199578199835%_)))
                          (_%hd199579199838%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199578199835%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199580199840%_))
                          (let ((_%e199581199843%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl199580199840%_))))
                            (let ((_%tl199583199848%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199581199843%_)))
                                  (_%hd199582199846%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199581199843%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd199582199846%_))
                                  (let ((_%e199584199851%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd199582199846%_))))
                                    (let ((_%tl199586199856%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199584199851%_)))
                                          (_%hd199585199854%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199584199851%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd199585199854%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd199585199854%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199586199856%_))
                                                  (let ((_%e199587199859%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199586199856%_))))
                                                    (let ((_%tl199589199864%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199587199859%_)))
                                                          (_%hd199588199862%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199587199859%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199589199864%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl199583199848%_))
                      (let ((_%e199590199867%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl199583199848%_))))
                        (let ((_%tl199592199872%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199590199867%_)))
                              (_%hd199591199870%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199590199867%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd199591199870%_))
                              (let ((_%e199593199875%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd199591199870%_))))
                                (let ((_%tl199595199880%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199593199875%_)))
                                      (_%hd199594199878%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199593199875%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd199594199878%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd199594199878%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199595199880%_))
                                              (let ((_%e199596199883%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199595199880%_))))
                                                (let ((_%tl199598199888%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199596199883%_)))
                                                      (_%hd199597199886%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199596199883%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199598199888%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199592199872%_))
                                                          (let ((_%e199599199891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl199592199872%_))))
                    (let ((_%tl199601199896%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199599199891%_)))
                          (_%hd199600199894%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199599199891%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd199600199894%_))
                          (let ((_%e199602199899%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd199600199894%_))))
                            (let ((_%tl199604199904%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199602199899%_)))
                                  (_%hd199603199902%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199602199899%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd199603199902%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd199603199902%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl199604199904%_))
                                          (let ((_%e199605199907%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl199604199904%_))))
                                            (let ((_%tl199607199912%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199605199907%_)))
                                                  (_%hd199606199910%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199605199907%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl199607199912%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl199601199896%_))
                                                      (let ((_%e199608199915%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl199601199896%_))))
                (let ((_%tl199610199920%_
                       (let () (declare (not safe)) (##cdr _%e199608199915%_)))
                      (_%hd199609199918%_
                       (let ()
                         (declare (not safe))
                         (##car _%e199608199915%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd199609199918%_))
                      (let ((_%e199611199923%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd199609199918%_))))
                        (let ((_%tl199613199928%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199611199923%_)))
                              (_%hd199612199926%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199611199923%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd199612199926%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd199612199926%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199613199928%_))
                                      (let ((_%e199614199931%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199613199928%_))))
                                        (let ((_%tl199616199936%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199614199931%_)))
                                              (_%hd199615199934%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199614199931%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199616199936%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199610199920%_))
                                                  (let ((_%e199617199939%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199610199920%_))))
                                                    (let ((_%tl199619199944%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199617199939%_)))
                                                          (_%hd199618199942%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199617199939%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd199618199942%_))
                                                          (let ((_%e199620199947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd199618199942%_))))
                    (let ((_%tl199622199952%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199620199947%_)))
                          (_%hd199621199950%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199620199947%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd199621199950%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd199621199950%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199622199952%_))
                                  (let ((_%e199623199955%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl199622199952%_))))
                                    (let ((_%tl199625199960%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199623199955%_)))
                                          (_%hd199624199958%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199623199955%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl199625199960%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199619199944%_))
                                              (_%__match200656200657%_
                                               _%e199578199835%_
                                               _%hd199579199838%_
                                               _%tl199580199840%_
                                               _%e199581199843%_
                                               _%hd199582199846%_
                                               _%tl199583199848%_
                                               _%e199584199851%_
                                               _%hd199585199854%_
                                               _%tl199586199856%_
                                               _%e199587199859%_
                                               _%hd199588199862%_
                                               _%tl199589199864%_
                                               _%e199590199867%_
                                               _%hd199591199870%_
                                               _%tl199592199872%_
                                               _%e199593199875%_
                                               _%hd199594199878%_
                                               _%tl199595199880%_
                                               _%e199596199883%_
                                               _%hd199597199886%_
                                               _%tl199598199888%_
                                               _%e199599199891%_
                                               _%hd199600199894%_
                                               _%tl199601199896%_
                                               _%e199602199899%_
                                               _%hd199603199902%_
                                               _%tl199604199904%_
                                               _%e199605199907%_
                                               _%hd199606199910%_
                                               _%tl199607199912%_
                                               _%e199608199915%_
                                               _%hd199609199918%_
                                               _%tl199610199920%_
                                               _%e199611199923%_
                                               _%hd199612199926%_
                                               _%tl199613199928%_
                                               _%e199614199931%_
                                               _%hd199615199934%_
                                               _%tl199616199936%_
                                               _%e199617199939%_
                                               _%hd199618199942%_
                                               _%tl199619199944%_
                                               _%e199620199947%_
                                               _%hd199621199950%_
                                               _%tl199622199952%_
                                               _%e199623199955%_
                                               _%hd199624199958%_
                                               _%tl199625199960%_)
                                              (_%__kont200527200528%_))
                                          (_%__kont200527200528%_))))
                                  (_%__kont200527200528%_))
                              (_%__kont200527200528%_))
                          (_%__kont200527200528%_))))
                  (_%__kont200527200528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199610199920%_))
                                                      (if (let ((__tmp200878
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp200878 'bind-method!))
                  (let ((_%L199789%_ _%hd199615199934%_)
                        (_%L199790%_ _%hd199606199910%_)
                        (_%L199791%_ _%hd199597199886%_)
                        (_%L199792%_ _%hd199588199862%_))
                    (_%__kont200525200526%_
                     _%L199789%_
                     _%L199790%_
                     _%L199791%_
                     _%L199792%_))
                  (_%__kont200527200528%_))
              (_%__kont200527200528%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont200527200528%_))))
                                      (_%__kont200527200528%_))
                                  (_%__kont200527200528%_))
                              (_%__kont200527200528%_))))
                      (_%__kont200527200528%_))))
              (_%__kont200527200528%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200527200528%_))))
                                          (_%__kont200527200528%_))
                                      (_%__kont200527200528%_))
                                  (_%__kont200527200528%_))))
                          (_%__kont200527200528%_))))
                  (_%__kont200527200528%_))
              (_%__kont200527200528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont200527200528%_))
                                          (_%__kont200527200528%_))
                                      (_%__kont200527200528%_))))
                              (_%__kont200527200528%_))))
                      (_%__kont200527200528%_))
                  (_%__kont200527200528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200527200528%_))
                                              (_%__kont200527200528%_))
                                          (_%__kont200527200528%_))))
                                  (_%__kont200527200528%_))))
                          (_%__kont200527200528%_))))
                  (_%__kont200527200528%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self199390%_ _%stx199391%_)
        (let* ((_%__stx200765200766%_ _%stx199391%_)
               (_%g199394199434%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200765200766%_)))))
          (let ((_%__kont200767200768%_
                 (lambda (_%L199540%_ _%L199541%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L199541%_))
                               (cons _%L199540%_ '())))))
                (_%__kont200769200770%_
                 (lambda (_%L199463%_ _%L199464%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx200765200766%_))
                (let ((_%e199398199484%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx200765200766%_))))
                  (let ((_%tl199400199489%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199398199484%_)))
                        (_%hd199399199487%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199398199484%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl199400199489%_))
                        (let ((_%e199401199492%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl199400199489%_))))
                          (let ((_%tl199403199497%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199401199492%_)))
                                (_%hd199402199495%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199401199492%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd199402199495%_))
                                (let ((_%e199404199500%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd199402199495%_))))
                                  (let ((_%tl199406199505%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199404199500%_)))
                                        (_%hd199405199503%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199404199500%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd199405199503%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd199405199503%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199406199505%_))
                                                (let ((_%e199407199508%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199406199505%_))))
                                                  (let ((_%tl199409199513%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199407199508%_)))
                                                        (_%hd199408199511%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199407199508%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199409199513%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199403199497%_))
                                                            (let ((_%e199410199516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl199403199497%_))))
                      (let ((_%tl199412199521%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199410199516%_)))
                            (_%hd199411199519%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199410199516%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd199411199519%_))
                            (let ((_%e199413199524%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd199411199519%_))))
                              (let ((_%tl199415199529%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199413199524%_)))
                                    (_%hd199414199527%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199413199524%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd199414199527%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd199414199527%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199415199529%_))
                                            (let ((_%e199416199532%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl199415199529%_))))
                                              (let ((_%tl199418199537%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199416199532%_)))
                                                    (_%hd199417199535%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199416199532%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl199418199537%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199412199521%_))
                                                        (_%__kont200767200768%_
                                                         _%hd199417199535%_
                                                         _%hd199408199511%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g199394199434%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199412199521%_))
                                                        (_%__kont200769200770%_
                                                         _%hd199411199519%_
                                                         _%hd199402199495%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g199394199434%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199412199521%_))
                                                (_%__kont200769200770%_
                                                 _%hd199411199519%_
                                                 _%hd199402199495%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199394199434%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199412199521%_))
                                            (_%__kont200769200770%_
                                             _%hd199411199519%_
                                             _%hd199402199495%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g199394199434%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199412199521%_))
                                        (_%__kont200769200770%_
                                         _%hd199411199519%_
                                         _%hd199402199495%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g199394199434%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199412199521%_))
                                (_%__kont200769200770%_
                                 _%hd199411199519%_
                                 _%hd199402199495%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g199394199434%_))))))
                    (let () (declare (not safe)) (_%g199394199434%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl199403199497%_))
                    (let ((_%e199427199455%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl199403199497%_))))
                      (let ((_%tl199429199460%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199427199455%_)))
                            (_%hd199428199458%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199427199455%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199429199460%_))
                            (_%__kont200769200770%_
                             _%hd199428199458%_
                             _%hd199402199495%_)
                            (let ()
                              (declare (not safe))
                              (_%g199394199434%_)))))
                    (let () (declare (not safe)) (_%g199394199434%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl199403199497%_))
                                                    (let ((_%e199427199455%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl199403199497%_))))
                                                      (let ((_%tl199429199460%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e199427199455%_)))
                    (_%hd199428199458%_
                     (let () (declare (not safe)) (##car _%e199427199455%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl199429199460%_))
                    (_%__kont200769200770%_
                     _%hd199428199458%_
                     _%hd199402199495%_)
                    (let () (declare (not safe)) (_%g199394199434%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199394199434%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199403199497%_))
                                                (let ((_%e199427199455%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199403199497%_))))
                                                  (let ((_%tl199429199460%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199427199455%_)))
                                                        (_%hd199428199458%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199427199455%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199429199460%_))
                                                        (_%__kont200769200770%_
                                                         _%hd199428199458%_
                                                         _%hd199402199495%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g199394199434%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199394199434%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199403199497%_))
                                            (let ((_%e199427199455%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl199403199497%_))))
                                              (let ((_%tl199429199460%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199427199455%_)))
                                                    (_%hd199428199458%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199427199455%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl199429199460%_))
                                                    (_%__kont200769200770%_
                                                     _%hd199428199458%_
                                                     _%hd199402199495%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199394199434%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199394199434%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199403199497%_))
                                    (let ((_%e199427199455%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl199403199497%_))))
                                      (let ((_%tl199429199460%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199427199455%_)))
                                            (_%hd199428199458%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199427199455%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199429199460%_))
                                            (_%__kont200769200770%_
                                             _%hd199428199458%_
                                             _%hd199402199495%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g199394199434%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199394199434%_))))))
                        (let () (declare (not safe)) (_%g199394199434%_)))))
                (let () (declare (not safe)) (_%g199394199434%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self197584199375%_)
        (let* ((_%self199378%_ _%self197584199375%_)
               (_%self199380%_ _%self199378%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199380%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self197585199146%_)
        (let* ((_%self199149%_ _%self197585199146%_)
               (_%self199151%_ _%self199149%_)
               (_%self199160199176%_ _%self199151%_)
               (_%E199162199180%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self199160199176%_
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
               (_%K199163199195%_
                (lambda (_%methods199183%_
                         _%metaclass199184%_
                         _%system?199185%_
                         _%final?199186%_
                         _%struct?199187%_
                         _%constructor199188%_
                         _%fields199189%_
                         _%slots199190%_
                         _%precendence-list199191%_
                         _%super199192%_
                         _%id199193%_)
                  (cons '@class
                        (cons _%id199193%_
                              (cons _%super199192%_
                                    (cons _%precendence-list199191%_
                                          (cons _%slots199190%_
                                                (cons _%fields199189%_
                                                      (cons _%constructor199188%_
                                                            (cons _%struct?199187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?199186%_
                                (cons _%system?199185%_
                                      (cons _%metaclass199184%_
                                            (cons (if _%methods199183%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods199183%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e199164199198%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199160199176%_ '1 '#f '#f)))
               (_%id199201%_ _%e199164199198%_)
               (_%e199165199203%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199160199176%_ '2 '#f '#f)))
               (_%super199206%_ _%e199165199203%_)
               (_%e199166199208%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199160199176%_ '3 '#f '#f)))
               (_%precendence-list199211%_ _%e199166199208%_)
               (_%e199167199213%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199160199176%_ '4 '#f '#f)))
               (_%slots199216%_ _%e199167199213%_)
               (_%e199168199218%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199160199176%_ '5 '#f '#f)))
               (_%fields199221%_ _%e199168199218%_)
               (_%e199169199223%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199160199176%_ '6 '#f '#f)))
               (_%constructor199226%_ _%e199169199223%_)
               (_%e199170199228%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199160199176%_ '7 '#f '#f)))
               (_%struct?199231%_ _%e199170199228%_)
               (_%e199171199233%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199160199176%_ '8 '#f '#f)))
               (_%final?199236%_ _%e199171199233%_)
               (_%e199172199238%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199160199176%_ '9 '#f '#f)))
               (_%system?199241%_ _%e199172199238%_)
               (_%e199173199243%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self199160199176%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass199246%_ _%e199173199243%_)
               (_%e199174199248%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self199160199176%_
                   '11
                   '#f
                   '#f)))
               (_%methods199251%_ _%e199174199248%_))
          (_%K199163199195%_
           _%methods199251%_
           _%metaclass199246%_
           _%system?199241%_
           _%final?199236%_
           _%struct?199231%_
           _%constructor199226%_
           _%fields199221%_
           _%slots199216%_
           _%precendence-list199211%_
           _%super199206%_
           _%id199201%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self197586199009%_)
        (let* ((_%self199012%_ _%self197586199009%_)
               (_%self199014%_ _%self199012%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199014%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self197587198872%_)
        (let* ((_%self198875%_ _%self197587198872%_)
               (_%self198877%_ _%self198875%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198877%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self197588198735%_)
        (let* ((_%self198738%_ _%self197588198735%_)
               (_%self198740%_ _%self198738%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198740%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198740%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self198740%_
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
      (lambda (_%self197589198598%_)
        (let* ((_%self198601%_ _%self197589198598%_)
               (_%self198603%_ _%self198601%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198603%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198603%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self198603%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self197590198461%_)
        (let* ((_%self198464%_ _%self197590198461%_)
               (_%self198466%_ _%self198464%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198466%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198466%_
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
      (lambda (_%self197591198272%_)
        (let* ((_%self198275%_ _%self197591198272%_)
               (_%self198277%_ _%self198275%_)
               (_%self198286198295%_ _%self198277%_)
               (_%E198288198299%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self198286198295%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K198289198318%_
                (lambda (_%dispatch198302%_
                         _%arity198303%_
                         _%signature198304%_)
                  (if _%signature198304%_
                      (let ((_%signature198306%_ _%signature198304%_))
                        (cons '@lambda
                              (cons _%arity198303%_
                                    (cons _%dispatch198302%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature198306%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature198306%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature198306%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature198306%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature198306%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity198303%_
                                  (cons _%dispatch198302%_ '()))))))
               (_%e198290198321%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198286198295%_ '1 '#f '#f)))
               (_%e198291198324%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198286198295%_ '2 '#f '#f)))
               (_%signature198327%_ _%e198291198324%_)
               (_%e198292198329%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198286198295%_ '3 '#f '#f)))
               (_%arity198332%_ _%e198292198329%_)
               (_%e198293198334%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198286198295%_ '4 '#f '#f)))
               (_%dispatch198337%_ _%e198293198334%_))
          (_%K198289198318%_
           _%dispatch198337%_
           _%arity198332%_
           _%signature198327%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self197592198131%_)
        (let* ((_%self198134%_ _%self197592198131%_)
               (_%self198136%_ _%self198134%_))
          (letrec ((_%clause-e198146%_
                    (lambda (_%clause198148%_)
                      (cdr (let ((__method200853
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause198148%_
                                     'typedecl))))
                             (if __method200853
                                 (let ()
                                   (declare (not safe))
                                   (__method200853 _%clause198148%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause198148%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e198146%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self198136%_
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
      (lambda (_%self197593197994%_)
        (let* ((_%self197997%_ _%self197593197994%_)
               (_%self197999%_ _%self197997%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197999%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self197999%_
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
      (lambda (_%self197594197857%_)
        (let* ((_%self197860%_ _%self197594197857%_)
               (_%self197862%_ _%self197860%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197862%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self197862%_
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
      (lambda (_%self197595197720%_)
        (let* ((_%self197723%_ _%self197595197720%_)
               (_%self197725%_ _%self197723%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197725%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
