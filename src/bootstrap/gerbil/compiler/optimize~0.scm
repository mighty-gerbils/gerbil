(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1733687567)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp200711
                   (let ((__obj200705
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
                       (gxc#optimizer-info:::init! __obj200705))
                     __obj200705)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp200711)))))
    (define gxc#optimize!
      (lambda (_%ctx200314%_)
        (let ((__tmp200714
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx200314%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx200314%_)
                 (let ((__tmp200716
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp200715
                        (##structure-ref
                         _%ctx200314%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp200716 __tmp200715 '#t))
                 (let ((_%code200317%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx200314%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx200314%_
                    _%code200317%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp200713 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp200712 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp200714
           gxc#current-compile-mutators
           __tmp200713
           gxc#current-compile-local-type
           __tmp200712))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx200300%_)
        (letrec ((_%load-it!200302%_
                  (lambda (_%id200312%_)
                    (if (let ((__tmp200717
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp200717 _%id200312%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id200312%_)
                          (let ((__tmp200718
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp200718 _%id200312%_ '#t)))))))
          (let* ((_%modid200304%_
                  (##structure-ref
                   _%ctx200300%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str200306%_ (symbol->string _%modid200304%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str200306%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str200306%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!200302%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!200302%_
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
      (lambda (_%ctx200237%_)
        (letrec* ((_%deps200239%_
                   (let* ((_%imports200290%_
                           (##structure-ref
                            _%ctx200237%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e200292%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx200237%_))))
                     (if _%$e200292%_
                         ((lambda (_%g200294200296%_)
                            (cons _%g200294200296%_ _%imports200290%_))
                          _%$e200292%_)
                         _%imports200290%_))))
          (let _%lp200241%_ ((_%rest200243%_ _%deps200239%_))
            (let* ((_%rest200244200252%_ _%rest200243%_)
                   (_%else200246200260%_ (lambda () '#!void))
                   (_%K200248200278%_
                    (lambda (_%rest200263%_ _%hd200264%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd200264%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp200720
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp200719
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd200264%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp200720 __tmp200719))
                                '#!void
                                (begin
                                  (let ((_%$e200267%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd200264%_))))
                                    (if _%$e200267%_
                                        ((lambda (_%pre200270%_)
                                           (_%lp200241%_
                                            (cons _%pre200270%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd200264%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e200267%_)
                                        (_%lp200241%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd200264%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd200264%_)))
                            (_%lp200241%_ _%rest200263%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd200264%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp200722
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp200721
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd200264%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp200722 __tmp200721))
                                    '#!void
                                    (begin
                                      (_%lp200241%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd200264%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd200264%_)))
                                (_%lp200241%_ _%rest200263%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd200264%_
                                     'gx#module-import::t))
                                  (_%lp200241%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd200264%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest200263%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd200264%_
                                         'gx#module-export::t))
                                      (_%lp200241%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd200264%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest200263%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd200264%_
                                             'gx#import-set::t))
                                          (_%lp200241%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd200264%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest200263%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd200264%_))))))))))
              (if (pair? _%rest200244200252%_)
                  (let ((_%hd200249200281%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest200244200252%_)))
                        (_%tl200250200283%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest200244200252%_))))
                    (let* ((_%hd200286%_ _%hd200249200281%_)
                           (_%rest200288%_ _%tl200250200283%_))
                      (_%K200248200278%_ _%rest200288%_ _%hd200286%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx200217%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx200217%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx200217%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht200219%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id200221%_
                    (##structure-ref
                     _%ctx200217%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod200223%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht200219%_ _%id200221%_)))
                   (_%$e200226%_ _%mod200223%_))
              (if _%$e200226%_
                  _%$e200226%_
                  (let* ((_%mod200229%_
                          (gxc#optimizer-import-ssxi _%ctx200217%_))
                         (_%val200234%_
                          (let ((_%$e200231%_ _%mod200229%_))
                            (if _%$e200231%_ _%$e200231%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht200219%_ _%id200221%_ _%val200234%_))
                    _%val200234%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx200215%_)
        (if (##structure-ref _%ctx200215%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx200215%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id200192%_)
        (letrec ((_%catch-e200194%_
                  (lambda (_%exn200213%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn200213%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn200213%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id200192%_))))
                    '#f))
                 (_%import-e200195%_
                  (lambda ()
                    (let* ((_%str-id200198%_
                            (let ((__tmp200723
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id200192%_))))
                              (declare (not safe))
                              (##string-append __tmp200723 '".ssxi")))
                           (_%artefact-path200206%_
                            (let ((_%odir200199200201%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir200199200201%_
                                  (let ((_%odir200204%_ _%odir200199200201%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id200198%_
                                        '".ss"))
                                     _%odir200204%_))
                                  '#f)))
                           (_%library-path200208%_
                            (let ((__tmp200724
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id200198%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp200724)))
                           (_%ssxi-path200210%_
                            (if (and _%artefact-path200206%_
                                     (file-exists? _%artefact-path200206%_))
                                _%artefact-path200206%_
                                _%library-path200208%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path200210%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path200210%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e200194%_ _%import-e200195%_)))))
    (define gxc#optimize-source
      (lambda (_%stx200177%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx200177%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx200177%_))
        (let* ((_%stx200179%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx200177%_)))
               (_%stx200181%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx200179%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx200181%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx200181%_))
          (let _%fixpoint200184%_ ((_%current200186%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx200181%_))
            (let ((_%refined200188%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current200186%_ _%refined200188%_)
                  '#!void
                  (_%fixpoint200184%_ _%refined200188%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx200181%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx200181%_))
          (let ((_%stx200190%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx200181%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx200190%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp200726 (list gxc#::generate-runtime-empty::t))
            (__tmp200725 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp200726
         '()
         __tmp200725
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args200174%_
        (apply make-instance gxc#::generate-ssxi::t _%$args200174%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp200727
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
        (__make-promise __tmp200727)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx200166%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self200169%_
                (let ((__obj200707
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj200707))
               (__tmp200728
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self200169%_ _%stx200166%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp200728
           gxc#current-compile-method
           _%self200169%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self200126%_ _%stx200127%_)
        (let* ((_%g200129200139%_
                (lambda (_%g200130200136%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200130200136%_))))
               (_%g200128200163%_
                (lambda (_%g200130200142%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200130200142%_))
                      (let ((_%e200132200144%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200130200142%_))))
                        (let ((_%hd200133200147%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200132200144%_)))
                              (_%tl200134200149%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200132200144%_))))
                          ((lambda (_%L200152%_)
                             (let ((__tmp200731
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self200126%_
                                         _%stx200127%_))))
                                   (__tmp200729
                                    (let ((__tmp200730
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp200730 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp200731
                                gx#current-expander-phi
                                __tmp200729)))
                           _%tl200134200149%_)))
                      (_%g200129200139%_ _%g200130200142%_)))))
          (_%g200128200163%_ _%stx200127%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self200065%_ _%stx200066%_)
        (let* ((_%g200068200082%_
                (lambda (_%g200069200079%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200069200079%_))))
               (_%g200067200123%_
                (lambda (_%g200069200085%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200069200085%_))
                      (let ((_%e200072200087%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200069200085%_))))
                        (let ((_%hd200073200090%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200072200087%_)))
                              (_%tl200074200092%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200072200087%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200074200092%_))
                              (let ((_%e200075200095%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200074200092%_))))
                                (let ((_%hd200076200098%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200075200095%_)))
                                      (_%tl200077200100%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200075200095%_))))
                                  ((lambda (_%L200103%_ _%L200104%_)
                                     (let* ((_%ctx200117%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L200104%_)))
                                            (_%code200119%_
                                             (##structure-ref
                                              _%ctx200117%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp200732
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self200065%_
                                                  _%code200119%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp200732
                                        gx#current-expander-context
                                        _%ctx200117%_)))
                                   _%tl200077200100%_
                                   _%hd200076200098%_)))
                              (_%g200068200082%_ _%g200069200085%_))))
                      (_%g200068200082%_ _%g200069200085%_)))))
          (_%g200067200123%_ _%stx200066%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self199870%_ _%stx199871%_)
        (letrec ((_%generate-e199873%_
                  (lambda (_%id200050%_)
                    (let* ((_%sym200052%_
                            (if (let ((__tmp200733
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp200733))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id200050%_))
                                '#f))
                           (_%$e200054%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym200052%_))))
                      (if _%$e200054%_
                          ((lambda (_%klass200057%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym200052%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym200052%_
                                                     (cons (let ((__method200708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass200057%_ 'typedecl))))
                     (if __method200708
                         (let ()
                           (declare (not safe))
                           (__method200708 _%klass200057%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass200057%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym200052%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym200052%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e200054%_)
                          (let ((_%$e200059%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym200052%_))))
                            (if _%$e200059%_
                                ((lambda (_%type200062%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym200052%_
                                      '" "
                                      _%type200062%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type200062%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym200052%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym200052%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type200062%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym200052%_
                                                   (cons (let ((__method200709
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type200062%_ 'typedecl))))
                   (if __method200709
                       (let ()
                         (declare (not safe))
                         (__method200709 _%type200062%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type200062%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e200059%_)
                                '(begin))))))))
          (let* ((_%__stx200320200321%_ _%stx199871%_)
                 (_%g199876199914%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx200320200321%_)))))
            (let ((_%__kont200322200323%_
                   (lambda (_%L200032%_) (_%generate-e199873%_ _%L200032%_)))
                  (_%__kont200324200325%_
                   (lambda (_%L199967%_)
                     (let ((_%types199993%_
                            (map _%generate-e199873%_
                                 (let ((__tmp200734
                                        (lambda (_%g199985199988%_
                                                 _%g199986199990%_)
                                          (cons _%g199985199988%_
                                                _%g199986199990%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp200734 '() _%L199967%_)))))
                       (cons 'begin _%types199993%_)))))
              (let ((_%__match200375200376%_
                     (lambda (_%e199892199919%_
                              _%hd199893199922%_
                              _%tl199894199924%_
                              _%e199895199927%_
                              _%hd199896199930%_
                              _%tl199897199932%_
                              _%__splice200326200327%_
                              _%target199898199935%_
                              _%tl199900199937%_)
                       (letrec ((_%loop199901199940%_
                                 (lambda (_%hd199899199943%_
                                          _%id199905199945%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd199899199943%_))
                                       (let ((_%e199902199948%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd199899199943%_))))
                                         (let ((_%lp-tl199904199953%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e199902199948%_)))
                                               (_%lp-hd199903199951%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e199902199948%_))))
                                           (_%loop199901199940%_
                                            _%lp-tl199904199953%_
                                            (cons _%lp-hd199903199951%_
                                                  _%id199905199945%_))))
                                       (let ((_%id199906199956%_
                                              (reverse _%id199905199945%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl199897199932%_))
                                             (let ((_%e199907199959%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl199897199932%_))))
                                               (let ((_%tl199909199964%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e199907199959%_)))
                                                     (_%hd199908199962%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e199907199959%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl199909199964%_))
                                                     (_%__kont200324200325%_
                                                      _%id199906199956%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g199876199914%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g199876199914%_))))))))
                         (_%loop199901199940%_ _%target199898199935%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx200320200321%_))
                    (let ((_%e199879200000%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx200320200321%_))))
                      (let ((_%tl199881200005%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199879200000%_)))
                            (_%hd199880200003%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199879200000%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199881200005%_))
                            (let ((_%e199882200008%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl199881200005%_))))
                              (let ((_%tl199884200013%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199882200008%_)))
                                    (_%hd199883200011%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199882200008%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd199883200011%_))
                                    (let ((_%e199885200016%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd199883200011%_))))
                                      (let ((_%tl199887200021%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199885200016%_)))
                                            (_%hd199886200019%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199885200016%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199887200021%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199884200013%_))
                                                (let ((_%e199888200024%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199884200013%_))))
                                                  (let ((_%tl199890200029%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199888200024%_)))
                                                        (_%hd199889200027%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199888200024%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199890200029%_))
                                                        (_%__kont200322200323%_
                                                         _%hd199886200019%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd199883200011%_))
                                                            (let ((_%__splice200326200327%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd199883200011%_ '0))))
                      (let ((_%tl199900199937%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice200326200327%_ '1)))
                            (_%target199898199935%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice200326200327%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199900199937%_))
                            (_%__match200375200376%_
                             _%e199879200000%_
                             _%hd199880200003%_
                             _%tl199881200005%_
                             _%e199882200008%_
                             _%hd199883200011%_
                             _%tl199884200013%_
                             _%__splice200326200327%_
                             _%target199898199935%_
                             _%tl199900199937%_)
                            (let ()
                              (declare (not safe))
                              (_%g199876199914%_)))))
                    (let () (declare (not safe)) (_%g199876199914%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd199883200011%_))
                                                    (let ((_%__splice200326200327%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd199883200011%_
                                                              '0))))
                                                      (let ((_%tl199900199937%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice200326200327%_ '1)))
                    (_%target199898199935%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice200326200327%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl199900199937%_))
                    (_%__match200375200376%_
                     _%e199879200000%_
                     _%hd199880200003%_
                     _%tl199881200005%_
                     _%e199882200008%_
                     _%hd199883200011%_
                     _%tl199884200013%_
                     _%__splice200326200327%_
                     _%target199898199935%_
                     _%tl199900199937%_)
                    (let () (declare (not safe)) (_%g199876199914%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199876199914%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd199883200011%_))
                                                (let ((_%__splice200326200327%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd199883200011%_
                                                          '0))))
                                                  (let ((_%tl199900199937%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice200326200327%_
                                                            '1)))
                                                        (_%target199898199935%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice200326200327%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199900199937%_))
                                                        (_%__match200375200376%_
                                                         _%e199879200000%_
                                                         _%hd199880200003%_
                                                         _%tl199881200005%_
                                                         _%e199882200008%_
                                                         _%hd199883200011%_
                                                         _%tl199884200013%_
                                                         _%__splice200326200327%_
                                                         _%target199898199935%_
                                                         _%tl199900199937%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g199876199914%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199876199914%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd199883200011%_))
                                        (let ((_%__splice200326200327%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd199883200011%_
                                                  '0))))
                                          (let ((_%tl199900199937%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice200326200327%_
                                                    '1)))
                                                (_%target199898199935%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice200326200327%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199900199937%_))
                                                (_%__match200375200376%_
                                                 _%e199879200000%_
                                                 _%hd199880200003%_
                                                 _%tl199881200005%_
                                                 _%e199882200008%_
                                                 _%hd199883200011%_
                                                 _%tl199884200013%_
                                                 _%__splice200326200327%_
                                                 _%target199898199935%_
                                                 _%tl199900199937%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199876199914%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g199876199914%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g199876199914%_)))))
                    (let () (declare (not safe)) (_%g199876199914%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self199423%_ _%stx199424%_)
        (let* ((_%__stx200378200379%_ _%stx199424%_)
               (_%g199428199530%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200378200379%_)))))
          (let ((_%__kont200380200381%_
                 (lambda (_%L199820%_
                          _%L199821%_
                          _%L199822%_
                          _%L199823%_
                          _%L199824%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L199823%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L199822%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L199821%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L199820%_))
                                                 '())))))))
                (_%__kont200382200383%_
                 (lambda (_%L199646%_ _%L199647%_ _%L199648%_ _%L199649%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L199648%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L199647%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L199646%_))
                                           (cons '#f '())))))))
                (_%__kont200384200385%_ (lambda () '(begin))))
            (let ((_%__match200513200514%_
                   (lambda (_%e199435199692%_
                            _%hd199436199695%_
                            _%tl199437199697%_
                            _%e199438199700%_
                            _%hd199439199703%_
                            _%tl199440199705%_
                            _%e199441199708%_
                            _%hd199442199711%_
                            _%tl199443199713%_
                            _%e199444199716%_
                            _%hd199445199719%_
                            _%tl199446199721%_
                            _%e199447199724%_
                            _%hd199448199727%_
                            _%tl199449199729%_
                            _%e199450199732%_
                            _%hd199451199735%_
                            _%tl199452199737%_
                            _%e199453199740%_
                            _%hd199454199743%_
                            _%tl199455199745%_
                            _%e199456199748%_
                            _%hd199457199751%_
                            _%tl199458199753%_
                            _%e199459199756%_
                            _%hd199460199759%_
                            _%tl199461199761%_
                            _%e199462199764%_
                            _%hd199463199767%_
                            _%tl199464199769%_
                            _%e199465199772%_
                            _%hd199466199775%_
                            _%tl199467199777%_
                            _%e199468199780%_
                            _%hd199469199783%_
                            _%tl199470199785%_
                            _%e199471199788%_
                            _%hd199472199791%_
                            _%tl199473199793%_
                            _%e199474199796%_
                            _%hd199475199799%_
                            _%tl199476199801%_
                            _%e199477199804%_
                            _%hd199478199807%_
                            _%tl199479199809%_
                            _%e199480199812%_
                            _%hd199481199815%_
                            _%tl199482199817%_)
                     (let ((_%L199820%_ _%hd199481199815%_)
                           (_%L199821%_ _%hd199472199791%_)
                           (_%L199822%_ _%hd199463199767%_)
                           (_%L199823%_ _%hd199454199743%_)
                           (_%L199824%_ _%hd199445199719%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L199824%_
                              'bind-method!))
                           (_%__kont200380200381%_
                            _%L199820%_
                            _%L199821%_
                            _%L199822%_
                            _%L199823%_
                            _%L199824%_)
                           (_%__kont200384200385%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200378200379%_))
                  (let ((_%e199435199692%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx200378200379%_))))
                    (let ((_%tl199437199697%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199435199692%_)))
                          (_%hd199436199695%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199435199692%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199437199697%_))
                          (let ((_%e199438199700%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl199437199697%_))))
                            (let ((_%tl199440199705%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199438199700%_)))
                                  (_%hd199439199703%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199438199700%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd199439199703%_))
                                  (let ((_%e199441199708%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd199439199703%_))))
                                    (let ((_%tl199443199713%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199441199708%_)))
                                          (_%hd199442199711%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199441199708%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd199442199711%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd199442199711%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199443199713%_))
                                                  (let ((_%e199444199716%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199443199713%_))))
                                                    (let ((_%tl199446199721%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199444199716%_)))
                                                          (_%hd199445199719%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199444199716%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199446199721%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl199440199705%_))
                      (let ((_%e199447199724%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl199440199705%_))))
                        (let ((_%tl199449199729%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199447199724%_)))
                              (_%hd199448199727%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199447199724%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd199448199727%_))
                              (let ((_%e199450199732%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd199448199727%_))))
                                (let ((_%tl199452199737%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199450199732%_)))
                                      (_%hd199451199735%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199450199732%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd199451199735%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd199451199735%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199452199737%_))
                                              (let ((_%e199453199740%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199452199737%_))))
                                                (let ((_%tl199455199745%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199453199740%_)))
                                                      (_%hd199454199743%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199453199740%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199455199745%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199449199729%_))
                                                          (let ((_%e199456199748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl199449199729%_))))
                    (let ((_%tl199458199753%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199456199748%_)))
                          (_%hd199457199751%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199456199748%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd199457199751%_))
                          (let ((_%e199459199756%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd199457199751%_))))
                            (let ((_%tl199461199761%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199459199756%_)))
                                  (_%hd199460199759%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199459199756%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd199460199759%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd199460199759%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl199461199761%_))
                                          (let ((_%e199462199764%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl199461199761%_))))
                                            (let ((_%tl199464199769%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199462199764%_)))
                                                  (_%hd199463199767%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199462199764%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl199464199769%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl199458199753%_))
                                                      (let ((_%e199465199772%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl199458199753%_))))
                (let ((_%tl199467199777%_
                       (let () (declare (not safe)) (##cdr _%e199465199772%_)))
                      (_%hd199466199775%_
                       (let ()
                         (declare (not safe))
                         (##car _%e199465199772%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd199466199775%_))
                      (let ((_%e199468199780%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd199466199775%_))))
                        (let ((_%tl199470199785%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199468199780%_)))
                              (_%hd199469199783%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199468199780%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd199469199783%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd199469199783%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199470199785%_))
                                      (let ((_%e199471199788%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199470199785%_))))
                                        (let ((_%tl199473199793%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199471199788%_)))
                                              (_%hd199472199791%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199471199788%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199473199793%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199467199777%_))
                                                  (let ((_%e199474199796%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199467199777%_))))
                                                    (let ((_%tl199476199801%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199474199796%_)))
                                                          (_%hd199475199799%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199474199796%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd199475199799%_))
                                                          (let ((_%e199477199804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd199475199799%_))))
                    (let ((_%tl199479199809%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199477199804%_)))
                          (_%hd199478199807%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199477199804%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd199478199807%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd199478199807%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199479199809%_))
                                  (let ((_%e199480199812%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl199479199809%_))))
                                    (let ((_%tl199482199817%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199480199812%_)))
                                          (_%hd199481199815%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199480199812%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl199482199817%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199476199801%_))
                                              (_%__match200513200514%_
                                               _%e199435199692%_
                                               _%hd199436199695%_
                                               _%tl199437199697%_
                                               _%e199438199700%_
                                               _%hd199439199703%_
                                               _%tl199440199705%_
                                               _%e199441199708%_
                                               _%hd199442199711%_
                                               _%tl199443199713%_
                                               _%e199444199716%_
                                               _%hd199445199719%_
                                               _%tl199446199721%_
                                               _%e199447199724%_
                                               _%hd199448199727%_
                                               _%tl199449199729%_
                                               _%e199450199732%_
                                               _%hd199451199735%_
                                               _%tl199452199737%_
                                               _%e199453199740%_
                                               _%hd199454199743%_
                                               _%tl199455199745%_
                                               _%e199456199748%_
                                               _%hd199457199751%_
                                               _%tl199458199753%_
                                               _%e199459199756%_
                                               _%hd199460199759%_
                                               _%tl199461199761%_
                                               _%e199462199764%_
                                               _%hd199463199767%_
                                               _%tl199464199769%_
                                               _%e199465199772%_
                                               _%hd199466199775%_
                                               _%tl199467199777%_
                                               _%e199468199780%_
                                               _%hd199469199783%_
                                               _%tl199470199785%_
                                               _%e199471199788%_
                                               _%hd199472199791%_
                                               _%tl199473199793%_
                                               _%e199474199796%_
                                               _%hd199475199799%_
                                               _%tl199476199801%_
                                               _%e199477199804%_
                                               _%hd199478199807%_
                                               _%tl199479199809%_
                                               _%e199480199812%_
                                               _%hd199481199815%_
                                               _%tl199482199817%_)
                                              (_%__kont200384200385%_))
                                          (_%__kont200384200385%_))))
                                  (_%__kont200384200385%_))
                              (_%__kont200384200385%_))
                          (_%__kont200384200385%_))))
                  (_%__kont200384200385%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199467199777%_))
                                                      (if (let ((__tmp200735
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp200735 'bind-method!))
                  (let ((_%L199646%_ _%hd199472199791%_)
                        (_%L199647%_ _%hd199463199767%_)
                        (_%L199648%_ _%hd199454199743%_)
                        (_%L199649%_ _%hd199445199719%_))
                    (_%__kont200382200383%_
                     _%L199646%_
                     _%L199647%_
                     _%L199648%_
                     _%L199649%_))
                  (_%__kont200384200385%_))
              (_%__kont200384200385%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont200384200385%_))))
                                      (_%__kont200384200385%_))
                                  (_%__kont200384200385%_))
                              (_%__kont200384200385%_))))
                      (_%__kont200384200385%_))))
              (_%__kont200384200385%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200384200385%_))))
                                          (_%__kont200384200385%_))
                                      (_%__kont200384200385%_))
                                  (_%__kont200384200385%_))))
                          (_%__kont200384200385%_))))
                  (_%__kont200384200385%_))
              (_%__kont200384200385%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont200384200385%_))
                                          (_%__kont200384200385%_))
                                      (_%__kont200384200385%_))))
                              (_%__kont200384200385%_))))
                      (_%__kont200384200385%_))
                  (_%__kont200384200385%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200384200385%_))
                                              (_%__kont200384200385%_))
                                          (_%__kont200384200385%_))))
                                  (_%__kont200384200385%_))))
                          (_%__kont200384200385%_))))
                  (_%__kont200384200385%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self199247%_ _%stx199248%_)
        (let* ((_%__stx200622200623%_ _%stx199248%_)
               (_%g199251199291%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200622200623%_)))))
          (let ((_%__kont200624200625%_
                 (lambda (_%L199397%_ _%L199398%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L199398%_))
                               (cons _%L199397%_ '())))))
                (_%__kont200626200627%_
                 (lambda (_%L199320%_ _%L199321%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx200622200623%_))
                (let ((_%e199255199341%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx200622200623%_))))
                  (let ((_%tl199257199346%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199255199341%_)))
                        (_%hd199256199344%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199255199341%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl199257199346%_))
                        (let ((_%e199258199349%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl199257199346%_))))
                          (let ((_%tl199260199354%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199258199349%_)))
                                (_%hd199259199352%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199258199349%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd199259199352%_))
                                (let ((_%e199261199357%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd199259199352%_))))
                                  (let ((_%tl199263199362%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199261199357%_)))
                                        (_%hd199262199360%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199261199357%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd199262199360%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd199262199360%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199263199362%_))
                                                (let ((_%e199264199365%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199263199362%_))))
                                                  (let ((_%tl199266199370%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199264199365%_)))
                                                        (_%hd199265199368%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199264199365%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199266199370%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199260199354%_))
                                                            (let ((_%e199267199373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl199260199354%_))))
                      (let ((_%tl199269199378%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199267199373%_)))
                            (_%hd199268199376%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199267199373%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd199268199376%_))
                            (let ((_%e199270199381%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd199268199376%_))))
                              (let ((_%tl199272199386%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199270199381%_)))
                                    (_%hd199271199384%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199270199381%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd199271199384%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd199271199384%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199272199386%_))
                                            (let ((_%e199273199389%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl199272199386%_))))
                                              (let ((_%tl199275199394%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199273199389%_)))
                                                    (_%hd199274199392%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199273199389%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl199275199394%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199269199378%_))
                                                        (_%__kont200624200625%_
                                                         _%hd199274199392%_
                                                         _%hd199265199368%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g199251199291%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199269199378%_))
                                                        (_%__kont200626200627%_
                                                         _%hd199268199376%_
                                                         _%hd199259199352%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g199251199291%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199269199378%_))
                                                (_%__kont200626200627%_
                                                 _%hd199268199376%_
                                                 _%hd199259199352%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199251199291%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199269199378%_))
                                            (_%__kont200626200627%_
                                             _%hd199268199376%_
                                             _%hd199259199352%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g199251199291%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199269199378%_))
                                        (_%__kont200626200627%_
                                         _%hd199268199376%_
                                         _%hd199259199352%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g199251199291%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199269199378%_))
                                (_%__kont200626200627%_
                                 _%hd199268199376%_
                                 _%hd199259199352%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g199251199291%_))))))
                    (let () (declare (not safe)) (_%g199251199291%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl199260199354%_))
                    (let ((_%e199284199312%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl199260199354%_))))
                      (let ((_%tl199286199317%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199284199312%_)))
                            (_%hd199285199315%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199284199312%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199286199317%_))
                            (_%__kont200626200627%_
                             _%hd199285199315%_
                             _%hd199259199352%_)
                            (let ()
                              (declare (not safe))
                              (_%g199251199291%_)))))
                    (let () (declare (not safe)) (_%g199251199291%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl199260199354%_))
                                                    (let ((_%e199284199312%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl199260199354%_))))
                                                      (let ((_%tl199286199317%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e199284199312%_)))
                    (_%hd199285199315%_
                     (let () (declare (not safe)) (##car _%e199284199312%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl199286199317%_))
                    (_%__kont200626200627%_
                     _%hd199285199315%_
                     _%hd199259199352%_)
                    (let () (declare (not safe)) (_%g199251199291%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199251199291%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199260199354%_))
                                                (let ((_%e199284199312%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199260199354%_))))
                                                  (let ((_%tl199286199317%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199284199312%_)))
                                                        (_%hd199285199315%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199284199312%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199286199317%_))
                                                        (_%__kont200626200627%_
                                                         _%hd199285199315%_
                                                         _%hd199259199352%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g199251199291%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199251199291%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199260199354%_))
                                            (let ((_%e199284199312%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl199260199354%_))))
                                              (let ((_%tl199286199317%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199284199312%_)))
                                                    (_%hd199285199315%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199284199312%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl199286199317%_))
                                                    (_%__kont200626200627%_
                                                     _%hd199285199315%_
                                                     _%hd199259199352%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199251199291%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199251199291%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199260199354%_))
                                    (let ((_%e199284199312%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl199260199354%_))))
                                      (let ((_%tl199286199317%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199284199312%_)))
                                            (_%hd199285199315%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199284199312%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199286199317%_))
                                            (_%__kont200626200627%_
                                             _%hd199285199315%_
                                             _%hd199259199352%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g199251199291%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199251199291%_))))))
                        (let () (declare (not safe)) (_%g199251199291%_)))))
                (let () (declare (not safe)) (_%g199251199291%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self197441199232%_)
        (let* ((_%self199235%_ _%self197441199232%_)
               (_%self199237%_ _%self199235%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199237%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self197442199003%_)
        (let* ((_%self199006%_ _%self197442199003%_)
               (_%self199008%_ _%self199006%_)
               (_%self199017199033%_ _%self199008%_)
               (_%E199019199037%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self199017199033%_
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
               (_%K199020199052%_
                (lambda (_%methods199040%_
                         _%metaclass199041%_
                         _%system?199042%_
                         _%final?199043%_
                         _%struct?199044%_
                         _%constructor199045%_
                         _%fields199046%_
                         _%slots199047%_
                         _%precendence-list199048%_
                         _%super199049%_
                         _%id199050%_)
                  (cons '@class
                        (cons _%id199050%_
                              (cons _%super199049%_
                                    (cons _%precendence-list199048%_
                                          (cons _%slots199047%_
                                                (cons _%fields199046%_
                                                      (cons _%constructor199045%_
                                                            (cons _%struct?199044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?199043%_
                                (cons _%system?199042%_
                                      (cons _%metaclass199041%_
                                            (cons (if _%methods199040%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods199040%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e199021199055%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199017199033%_ '1 '#f '#f)))
               (_%id199058%_ _%e199021199055%_)
               (_%e199022199060%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199017199033%_ '2 '#f '#f)))
               (_%super199063%_ _%e199022199060%_)
               (_%e199023199065%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199017199033%_ '3 '#f '#f)))
               (_%precendence-list199068%_ _%e199023199065%_)
               (_%e199024199070%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199017199033%_ '4 '#f '#f)))
               (_%slots199073%_ _%e199024199070%_)
               (_%e199025199075%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199017199033%_ '5 '#f '#f)))
               (_%fields199078%_ _%e199025199075%_)
               (_%e199026199080%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199017199033%_ '6 '#f '#f)))
               (_%constructor199083%_ _%e199026199080%_)
               (_%e199027199085%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199017199033%_ '7 '#f '#f)))
               (_%struct?199088%_ _%e199027199085%_)
               (_%e199028199090%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199017199033%_ '8 '#f '#f)))
               (_%final?199093%_ _%e199028199090%_)
               (_%e199029199095%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199017199033%_ '9 '#f '#f)))
               (_%system?199098%_ _%e199029199095%_)
               (_%e199030199100%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self199017199033%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass199103%_ _%e199030199100%_)
               (_%e199031199105%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self199017199033%_
                   '11
                   '#f
                   '#f)))
               (_%methods199108%_ _%e199031199105%_))
          (_%K199020199052%_
           _%methods199108%_
           _%metaclass199103%_
           _%system?199098%_
           _%final?199093%_
           _%struct?199088%_
           _%constructor199083%_
           _%fields199078%_
           _%slots199073%_
           _%precendence-list199068%_
           _%super199063%_
           _%id199058%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self197443198866%_)
        (let* ((_%self198869%_ _%self197443198866%_)
               (_%self198871%_ _%self198869%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198871%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self197444198729%_)
        (let* ((_%self198732%_ _%self197444198729%_)
               (_%self198734%_ _%self198732%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198734%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self197445198592%_)
        (let* ((_%self198595%_ _%self197445198592%_)
               (_%self198597%_ _%self198595%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198597%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198597%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self198597%_
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
      (lambda (_%self197446198455%_)
        (let* ((_%self198458%_ _%self197446198455%_)
               (_%self198460%_ _%self198458%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198460%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198460%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self198460%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self197447198318%_)
        (let* ((_%self198321%_ _%self197447198318%_)
               (_%self198323%_ _%self198321%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198323%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198323%_
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
      (lambda (_%self197448198129%_)
        (let* ((_%self198132%_ _%self197448198129%_)
               (_%self198134%_ _%self198132%_)
               (_%self198143198152%_ _%self198134%_)
               (_%E198145198156%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self198143198152%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K198146198175%_
                (lambda (_%dispatch198159%_
                         _%arity198160%_
                         _%signature198161%_)
                  (if _%signature198161%_
                      (let ((_%signature198163%_ _%signature198161%_))
                        (cons '@lambda
                              (cons _%arity198160%_
                                    (cons _%dispatch198159%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature198163%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature198163%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature198163%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature198163%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature198163%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity198160%_
                                  (cons _%dispatch198159%_ '()))))))
               (_%e198147198178%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198143198152%_ '1 '#f '#f)))
               (_%e198148198181%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198143198152%_ '2 '#f '#f)))
               (_%signature198184%_ _%e198148198181%_)
               (_%e198149198186%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198143198152%_ '3 '#f '#f)))
               (_%arity198189%_ _%e198149198186%_)
               (_%e198150198191%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198143198152%_ '4 '#f '#f)))
               (_%dispatch198194%_ _%e198150198191%_))
          (_%K198146198175%_
           _%dispatch198194%_
           _%arity198189%_
           _%signature198184%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self197449197988%_)
        (let* ((_%self197991%_ _%self197449197988%_)
               (_%self197993%_ _%self197991%_))
          (letrec ((_%clause-e198003%_
                    (lambda (_%clause198005%_)
                      (cdr (let ((__method200710
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause198005%_
                                     'typedecl))))
                             (if __method200710
                                 (let ()
                                   (declare (not safe))
                                   (__method200710 _%clause198005%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause198005%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e198003%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self197993%_
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
      (lambda (_%self197450197851%_)
        (let* ((_%self197854%_ _%self197450197851%_)
               (_%self197856%_ _%self197854%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197856%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self197856%_
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
      (lambda (_%self197451197714%_)
        (let* ((_%self197717%_ _%self197451197714%_)
               (_%self197719%_ _%self197717%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197719%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self197719%_
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
      (lambda (_%self197452197577%_)
        (let* ((_%self197580%_ _%self197452197577%_)
               (_%self197582%_ _%self197580%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197582%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
