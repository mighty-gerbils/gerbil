(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1713631273)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp200552
                   (let ((__obj200546
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
                       (gxc#optimizer-info:::init! __obj200546))
                     __obj200546)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp200552)))))
    (define gxc#optimize!
      (lambda (_%ctx200155%_)
        (let ((__tmp200555
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx200155%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx200155%_)
                 (let ((__tmp200557
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp200556
                        (##structure-ref
                         _%ctx200155%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp200557 __tmp200556 '#t))
                 (let ((_%code200158%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx200155%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx200155%_
                    _%code200158%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp200554 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp200553 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp200555
           gxc#current-compile-mutators
           __tmp200554
           gxc#current-compile-local-type
           __tmp200553))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx200141%_)
        (letrec ((_%load-it!200143%_
                  (lambda (_%id200153%_)
                    (if (let ((__tmp200558
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp200558 _%id200153%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id200153%_)
                          (let ((__tmp200559
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp200559 _%id200153%_ '#t)))))))
          (let* ((_%modid200145%_
                  (##structure-ref
                   _%ctx200141%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str200147%_ (symbol->string _%modid200145%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str200147%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str200147%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!200143%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!200143%_
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
      (lambda (_%ctx200078%_)
        (letrec* ((_%deps200080%_
                   (let* ((_%imports200131%_
                           (##structure-ref
                            _%ctx200078%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e200133%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx200078%_))))
                     (if _%$e200133%_
                         ((lambda (_%g200135200137%_)
                            (cons _%g200135200137%_ _%imports200131%_))
                          _%$e200133%_)
                         _%imports200131%_))))
          (let _%lp200082%_ ((_%rest200084%_ _%deps200080%_))
            (let* ((_%rest200085200093%_ _%rest200084%_)
                   (_%else200087200101%_ (lambda () '#!void))
                   (_%K200089200119%_
                    (lambda (_%rest200104%_ _%hd200105%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd200105%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp200561
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp200560
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd200105%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp200561 __tmp200560))
                                '#!void
                                (begin
                                  (let ((_%$e200108%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd200105%_))))
                                    (if _%$e200108%_
                                        ((lambda (_%pre200111%_)
                                           (_%lp200082%_
                                            (cons _%pre200111%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd200105%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e200108%_)
                                        (_%lp200082%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd200105%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd200105%_)))
                            (_%lp200082%_ _%rest200104%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd200105%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp200563
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp200562
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd200105%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp200563 __tmp200562))
                                    '#!void
                                    (begin
                                      (_%lp200082%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd200105%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd200105%_)))
                                (_%lp200082%_ _%rest200104%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd200105%_
                                     'gx#module-import::t))
                                  (_%lp200082%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd200105%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest200104%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd200105%_
                                         'gx#module-export::t))
                                      (_%lp200082%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd200105%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest200104%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd200105%_
                                             'gx#import-set::t))
                                          (_%lp200082%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd200105%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest200104%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd200105%_))))))))))
              (if (pair? _%rest200085200093%_)
                  (let ((_%hd200090200122%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest200085200093%_)))
                        (_%tl200091200124%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest200085200093%_))))
                    (let* ((_%hd200127%_ _%hd200090200122%_)
                           (_%rest200129%_ _%tl200091200124%_))
                      (_%K200089200119%_ _%rest200129%_ _%hd200127%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx200058%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx200058%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx200058%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht200060%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id200062%_
                    (##structure-ref
                     _%ctx200058%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod200064%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht200060%_ _%id200062%_)))
                   (_%$e200067%_ _%mod200064%_))
              (if _%$e200067%_
                  _%$e200067%_
                  (let* ((_%mod200070%_
                          (gxc#optimizer-import-ssxi _%ctx200058%_))
                         (_%val200075%_
                          (let ((_%$e200072%_ _%mod200070%_))
                            (if _%$e200072%_ _%$e200072%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht200060%_ _%id200062%_ _%val200075%_))
                    _%val200075%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx200056%_)
        (if (##structure-ref _%ctx200056%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx200056%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id200033%_)
        (letrec ((_%catch-e200035%_
                  (lambda (_%exn200054%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn200054%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn200054%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id200033%_))))
                    '#f))
                 (_%import-e200036%_
                  (lambda ()
                    (let* ((_%str-id200039%_
                            (let ((__tmp200564
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id200033%_))))
                              (declare (not safe))
                              (##string-append __tmp200564 '".ssxi")))
                           (_%artefact-path200047%_
                            (let ((_%odir200040200042%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir200040200042%_
                                  (let ((_%odir200045%_ _%odir200040200042%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id200039%_
                                        '".ss"))
                                     _%odir200045%_))
                                  '#f)))
                           (_%library-path200049%_
                            (let ((__tmp200565
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id200039%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp200565)))
                           (_%ssxi-path200051%_
                            (if (and _%artefact-path200047%_
                                     (file-exists? _%artefact-path200047%_))
                                _%artefact-path200047%_
                                _%library-path200049%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path200051%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path200051%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e200035%_ _%import-e200036%_)))))
    (define gxc#optimize-source
      (lambda (_%stx200018%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx200018%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx200018%_))
        (let* ((_%stx200020%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx200018%_)))
               (_%stx200022%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx200020%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx200022%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx200022%_))
          (let _%fixpoint200025%_ ((_%current200027%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx200022%_))
            (let ((_%refined200029%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current200027%_ _%refined200029%_)
                  '#!void
                  (_%fixpoint200025%_ _%refined200029%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx200022%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx200022%_))
          (let ((_%stx200031%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx200022%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx200031%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp200567 (list gxc#::generate-runtime-empty::t))
            (__tmp200566 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp200567
         '()
         __tmp200566
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args200015%_
        (apply make-instance gxc#::generate-ssxi::t _%$args200015%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp200568
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
        (__make-promise __tmp200568)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx200007%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self200010%_
                (let ((__obj200548
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj200548))
               (__tmp200569
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self200010%_ _%stx200007%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp200569
           gxc#current-compile-method
           _%self200010%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self199967%_ _%stx199968%_)
        (let* ((_%g199970199980%_
                (lambda (_%g199971199977%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199971199977%_))))
               (_%g199969200004%_
                (lambda (_%g199971199983%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199971199983%_))
                      (let ((_%e199973199985%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199971199983%_))))
                        (let ((_%hd199974199988%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199973199985%_)))
                              (_%tl199975199990%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199973199985%_))))
                          ((lambda (_%L199993%_)
                             (let ((__tmp200572
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self199967%_
                                         _%stx199968%_))))
                                   (__tmp200570
                                    (let ((__tmp200571
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp200571 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp200572
                                gx#current-expander-phi
                                __tmp200570)))
                           _%tl199975199990%_)))
                      (_%g199970199980%_ _%g199971199983%_)))))
          (_%g199969200004%_ _%stx199968%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self199906%_ _%stx199907%_)
        (let* ((_%g199909199923%_
                (lambda (_%g199910199920%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199910199920%_))))
               (_%g199908199964%_
                (lambda (_%g199910199926%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199910199926%_))
                      (let ((_%e199913199928%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199910199926%_))))
                        (let ((_%hd199914199931%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199913199928%_)))
                              (_%tl199915199933%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199913199928%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199915199933%_))
                              (let ((_%e199916199936%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199915199933%_))))
                                (let ((_%hd199917199939%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199916199936%_)))
                                      (_%tl199918199941%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199916199936%_))))
                                  ((lambda (_%L199944%_ _%L199945%_)
                                     (let* ((_%ctx199958%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L199945%_)))
                                            (_%code199960%_
                                             (##structure-ref
                                              _%ctx199958%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp200573
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self199906%_
                                                  _%code199960%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp200573
                                        gx#current-expander-context
                                        _%ctx199958%_)))
                                   _%tl199918199941%_
                                   _%hd199917199939%_)))
                              (_%g199909199923%_ _%g199910199926%_))))
                      (_%g199909199923%_ _%g199910199926%_)))))
          (_%g199908199964%_ _%stx199907%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self199711%_ _%stx199712%_)
        (letrec ((_%generate-e199714%_
                  (lambda (_%id199891%_)
                    (let* ((_%sym199893%_
                            (if (let ((__tmp200574
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp200574))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id199891%_))
                                '#f))
                           (_%$e199895%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym199893%_))))
                      (if _%$e199895%_
                          ((lambda (_%klass199898%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym199893%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym199893%_
                                                     (cons (let ((__method200549
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass199898%_ 'typedecl))))
                     (if __method200549
                         (let ()
                           (declare (not safe))
                           (__method200549 _%klass199898%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass199898%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym199893%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym199893%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e199895%_)
                          (let ((_%$e199900%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym199893%_))))
                            (if _%$e199900%_
                                ((lambda (_%type199903%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym199893%_
                                      '" "
                                      _%type199903%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type199903%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym199893%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym199893%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type199903%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym199893%_
                                                   (cons (let ((__method200550
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type199903%_ 'typedecl))))
                   (if __method200550
                       (let ()
                         (declare (not safe))
                         (__method200550 _%type199903%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type199903%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e199900%_)
                                '(begin))))))))
          (let* ((_%__stx200161200162%_ _%stx199712%_)
                 (_%g199717199755%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx200161200162%_)))))
            (let ((_%__kont200163200164%_
                   (lambda (_%L199873%_) (_%generate-e199714%_ _%L199873%_)))
                  (_%__kont200165200166%_
                   (lambda (_%L199808%_)
                     (let ((_%types199834%_
                            (map _%generate-e199714%_
                                 (let ((__tmp200575
                                        (lambda (_%g199826199829%_
                                                 _%g199827199831%_)
                                          (cons _%g199826199829%_
                                                _%g199827199831%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp200575 '() _%L199808%_)))))
                       (cons 'begin _%types199834%_)))))
              (let ((_%__match200216200217%_
                     (lambda (_%e199733199760%_
                              _%hd199734199763%_
                              _%tl199735199765%_
                              _%e199736199768%_
                              _%hd199737199771%_
                              _%tl199738199773%_
                              _%__splice200167200168%_
                              _%target199739199776%_
                              _%tl199741199778%_)
                       (letrec ((_%loop199742199781%_
                                 (lambda (_%hd199740199784%_
                                          _%id199746199786%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd199740199784%_))
                                       (let ((_%e199743199789%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd199740199784%_))))
                                         (let ((_%lp-tl199745199794%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e199743199789%_)))
                                               (_%lp-hd199744199792%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e199743199789%_))))
                                           (_%loop199742199781%_
                                            _%lp-tl199745199794%_
                                            (cons _%lp-hd199744199792%_
                                                  _%id199746199786%_))))
                                       (let ((_%id199747199797%_
                                              (reverse _%id199746199786%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl199738199773%_))
                                             (let ((_%e199748199800%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl199738199773%_))))
                                               (let ((_%tl199750199805%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e199748199800%_)))
                                                     (_%hd199749199803%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e199748199800%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl199750199805%_))
                                                     (_%__kont200165200166%_
                                                      _%id199747199797%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g199717199755%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g199717199755%_))))))))
                         (_%loop199742199781%_ _%target199739199776%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx200161200162%_))
                    (let ((_%e199720199841%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx200161200162%_))))
                      (let ((_%tl199722199846%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199720199841%_)))
                            (_%hd199721199844%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199720199841%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl199722199846%_))
                            (let ((_%e199723199849%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl199722199846%_))))
                              (let ((_%tl199725199854%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199723199849%_)))
                                    (_%hd199724199852%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199723199849%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd199724199852%_))
                                    (let ((_%e199726199857%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd199724199852%_))))
                                      (let ((_%tl199728199862%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199726199857%_)))
                                            (_%hd199727199860%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199726199857%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199728199862%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199725199854%_))
                                                (let ((_%e199729199865%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199725199854%_))))
                                                  (let ((_%tl199731199870%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199729199865%_)))
                                                        (_%hd199730199868%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199729199865%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199731199870%_))
                                                        (_%__kont200163200164%_
                                                         _%hd199727199860%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd199724199852%_))
                                                            (let ((_%__splice200167200168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd199724199852%_ '0))))
                      (let ((_%tl199741199778%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice200167200168%_ '1)))
                            (_%target199739199776%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice200167200168%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199741199778%_))
                            (_%__match200216200217%_
                             _%e199720199841%_
                             _%hd199721199844%_
                             _%tl199722199846%_
                             _%e199723199849%_
                             _%hd199724199852%_
                             _%tl199725199854%_
                             _%__splice200167200168%_
                             _%target199739199776%_
                             _%tl199741199778%_)
                            (let ()
                              (declare (not safe))
                              (_%g199717199755%_)))))
                    (let () (declare (not safe)) (_%g199717199755%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd199724199852%_))
                                                    (let ((_%__splice200167200168%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd199724199852%_
                                                              '0))))
                                                      (let ((_%tl199741199778%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice200167200168%_ '1)))
                    (_%target199739199776%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice200167200168%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl199741199778%_))
                    (_%__match200216200217%_
                     _%e199720199841%_
                     _%hd199721199844%_
                     _%tl199722199846%_
                     _%e199723199849%_
                     _%hd199724199852%_
                     _%tl199725199854%_
                     _%__splice200167200168%_
                     _%target199739199776%_
                     _%tl199741199778%_)
                    (let () (declare (not safe)) (_%g199717199755%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199717199755%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd199724199852%_))
                                                (let ((_%__splice200167200168%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd199724199852%_
                                                          '0))))
                                                  (let ((_%tl199741199778%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice200167200168%_
                                                            '1)))
                                                        (_%target199739199776%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice200167200168%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199741199778%_))
                                                        (_%__match200216200217%_
                                                         _%e199720199841%_
                                                         _%hd199721199844%_
                                                         _%tl199722199846%_
                                                         _%e199723199849%_
                                                         _%hd199724199852%_
                                                         _%tl199725199854%_
                                                         _%__splice200167200168%_
                                                         _%target199739199776%_
                                                         _%tl199741199778%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g199717199755%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199717199755%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd199724199852%_))
                                        (let ((_%__splice200167200168%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd199724199852%_
                                                  '0))))
                                          (let ((_%tl199741199778%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice200167200168%_
                                                    '1)))
                                                (_%target199739199776%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice200167200168%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199741199778%_))
                                                (_%__match200216200217%_
                                                 _%e199720199841%_
                                                 _%hd199721199844%_
                                                 _%tl199722199846%_
                                                 _%e199723199849%_
                                                 _%hd199724199852%_
                                                 _%tl199725199854%_
                                                 _%__splice200167200168%_
                                                 _%target199739199776%_
                                                 _%tl199741199778%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199717199755%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g199717199755%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g199717199755%_)))))
                    (let () (declare (not safe)) (_%g199717199755%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self199264%_ _%stx199265%_)
        (let* ((_%__stx200219200220%_ _%stx199265%_)
               (_%g199269199371%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200219200220%_)))))
          (let ((_%__kont200221200222%_
                 (lambda (_%L199661%_
                          _%L199662%_
                          _%L199663%_
                          _%L199664%_
                          _%L199665%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L199664%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L199663%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L199662%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L199661%_))
                                                 '())))))))
                (_%__kont200223200224%_
                 (lambda (_%L199487%_ _%L199488%_ _%L199489%_ _%L199490%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L199489%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L199488%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L199487%_))
                                           (cons '#f '())))))))
                (_%__kont200225200226%_ (lambda () '(begin))))
            (let ((_%__match200354200355%_
                   (lambda (_%e199276199533%_
                            _%hd199277199536%_
                            _%tl199278199538%_
                            _%e199279199541%_
                            _%hd199280199544%_
                            _%tl199281199546%_
                            _%e199282199549%_
                            _%hd199283199552%_
                            _%tl199284199554%_
                            _%e199285199557%_
                            _%hd199286199560%_
                            _%tl199287199562%_
                            _%e199288199565%_
                            _%hd199289199568%_
                            _%tl199290199570%_
                            _%e199291199573%_
                            _%hd199292199576%_
                            _%tl199293199578%_
                            _%e199294199581%_
                            _%hd199295199584%_
                            _%tl199296199586%_
                            _%e199297199589%_
                            _%hd199298199592%_
                            _%tl199299199594%_
                            _%e199300199597%_
                            _%hd199301199600%_
                            _%tl199302199602%_
                            _%e199303199605%_
                            _%hd199304199608%_
                            _%tl199305199610%_
                            _%e199306199613%_
                            _%hd199307199616%_
                            _%tl199308199618%_
                            _%e199309199621%_
                            _%hd199310199624%_
                            _%tl199311199626%_
                            _%e199312199629%_
                            _%hd199313199632%_
                            _%tl199314199634%_
                            _%e199315199637%_
                            _%hd199316199640%_
                            _%tl199317199642%_
                            _%e199318199645%_
                            _%hd199319199648%_
                            _%tl199320199650%_
                            _%e199321199653%_
                            _%hd199322199656%_
                            _%tl199323199658%_)
                     (let ((_%L199661%_ _%hd199322199656%_)
                           (_%L199662%_ _%hd199313199632%_)
                           (_%L199663%_ _%hd199304199608%_)
                           (_%L199664%_ _%hd199295199584%_)
                           (_%L199665%_ _%hd199286199560%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L199665%_
                              'bind-method!))
                           (_%__kont200221200222%_
                            _%L199661%_
                            _%L199662%_
                            _%L199663%_
                            _%L199664%_
                            _%L199665%_)
                           (_%__kont200225200226%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200219200220%_))
                  (let ((_%e199276199533%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx200219200220%_))))
                    (let ((_%tl199278199538%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199276199533%_)))
                          (_%hd199277199536%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199276199533%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199278199538%_))
                          (let ((_%e199279199541%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl199278199538%_))))
                            (let ((_%tl199281199546%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199279199541%_)))
                                  (_%hd199280199544%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199279199541%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd199280199544%_))
                                  (let ((_%e199282199549%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd199280199544%_))))
                                    (let ((_%tl199284199554%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199282199549%_)))
                                          (_%hd199283199552%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199282199549%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd199283199552%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd199283199552%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199284199554%_))
                                                  (let ((_%e199285199557%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199284199554%_))))
                                                    (let ((_%tl199287199562%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199285199557%_)))
                                                          (_%hd199286199560%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199285199557%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199287199562%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl199281199546%_))
                      (let ((_%e199288199565%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl199281199546%_))))
                        (let ((_%tl199290199570%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199288199565%_)))
                              (_%hd199289199568%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199288199565%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd199289199568%_))
                              (let ((_%e199291199573%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd199289199568%_))))
                                (let ((_%tl199293199578%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199291199573%_)))
                                      (_%hd199292199576%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199291199573%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd199292199576%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd199292199576%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199293199578%_))
                                              (let ((_%e199294199581%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199293199578%_))))
                                                (let ((_%tl199296199586%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199294199581%_)))
                                                      (_%hd199295199584%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199294199581%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199296199586%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199290199570%_))
                                                          (let ((_%e199297199589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl199290199570%_))))
                    (let ((_%tl199299199594%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199297199589%_)))
                          (_%hd199298199592%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199297199589%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd199298199592%_))
                          (let ((_%e199300199597%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd199298199592%_))))
                            (let ((_%tl199302199602%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199300199597%_)))
                                  (_%hd199301199600%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199300199597%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd199301199600%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd199301199600%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl199302199602%_))
                                          (let ((_%e199303199605%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl199302199602%_))))
                                            (let ((_%tl199305199610%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199303199605%_)))
                                                  (_%hd199304199608%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199303199605%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl199305199610%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl199299199594%_))
                                                      (let ((_%e199306199613%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl199299199594%_))))
                (let ((_%tl199308199618%_
                       (let () (declare (not safe)) (##cdr _%e199306199613%_)))
                      (_%hd199307199616%_
                       (let ()
                         (declare (not safe))
                         (##car _%e199306199613%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd199307199616%_))
                      (let ((_%e199309199621%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd199307199616%_))))
                        (let ((_%tl199311199626%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199309199621%_)))
                              (_%hd199310199624%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199309199621%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd199310199624%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd199310199624%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199311199626%_))
                                      (let ((_%e199312199629%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199311199626%_))))
                                        (let ((_%tl199314199634%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199312199629%_)))
                                              (_%hd199313199632%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199312199629%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199314199634%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199308199618%_))
                                                  (let ((_%e199315199637%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199308199618%_))))
                                                    (let ((_%tl199317199642%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199315199637%_)))
                                                          (_%hd199316199640%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199315199637%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd199316199640%_))
                                                          (let ((_%e199318199645%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd199316199640%_))))
                    (let ((_%tl199320199650%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199318199645%_)))
                          (_%hd199319199648%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199318199645%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd199319199648%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd199319199648%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199320199650%_))
                                  (let ((_%e199321199653%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl199320199650%_))))
                                    (let ((_%tl199323199658%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199321199653%_)))
                                          (_%hd199322199656%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199321199653%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl199323199658%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199317199642%_))
                                              (_%__match200354200355%_
                                               _%e199276199533%_
                                               _%hd199277199536%_
                                               _%tl199278199538%_
                                               _%e199279199541%_
                                               _%hd199280199544%_
                                               _%tl199281199546%_
                                               _%e199282199549%_
                                               _%hd199283199552%_
                                               _%tl199284199554%_
                                               _%e199285199557%_
                                               _%hd199286199560%_
                                               _%tl199287199562%_
                                               _%e199288199565%_
                                               _%hd199289199568%_
                                               _%tl199290199570%_
                                               _%e199291199573%_
                                               _%hd199292199576%_
                                               _%tl199293199578%_
                                               _%e199294199581%_
                                               _%hd199295199584%_
                                               _%tl199296199586%_
                                               _%e199297199589%_
                                               _%hd199298199592%_
                                               _%tl199299199594%_
                                               _%e199300199597%_
                                               _%hd199301199600%_
                                               _%tl199302199602%_
                                               _%e199303199605%_
                                               _%hd199304199608%_
                                               _%tl199305199610%_
                                               _%e199306199613%_
                                               _%hd199307199616%_
                                               _%tl199308199618%_
                                               _%e199309199621%_
                                               _%hd199310199624%_
                                               _%tl199311199626%_
                                               _%e199312199629%_
                                               _%hd199313199632%_
                                               _%tl199314199634%_
                                               _%e199315199637%_
                                               _%hd199316199640%_
                                               _%tl199317199642%_
                                               _%e199318199645%_
                                               _%hd199319199648%_
                                               _%tl199320199650%_
                                               _%e199321199653%_
                                               _%hd199322199656%_
                                               _%tl199323199658%_)
                                              (_%__kont200225200226%_))
                                          (_%__kont200225200226%_))))
                                  (_%__kont200225200226%_))
                              (_%__kont200225200226%_))
                          (_%__kont200225200226%_))))
                  (_%__kont200225200226%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199308199618%_))
                                                      (if (let ((__tmp200576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp200576 'bind-method!))
                  (let ((_%L199487%_ _%hd199313199632%_)
                        (_%L199488%_ _%hd199304199608%_)
                        (_%L199489%_ _%hd199295199584%_)
                        (_%L199490%_ _%hd199286199560%_))
                    (_%__kont200223200224%_
                     _%L199487%_
                     _%L199488%_
                     _%L199489%_
                     _%L199490%_))
                  (_%__kont200225200226%_))
              (_%__kont200225200226%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont200225200226%_))))
                                      (_%__kont200225200226%_))
                                  (_%__kont200225200226%_))
                              (_%__kont200225200226%_))))
                      (_%__kont200225200226%_))))
              (_%__kont200225200226%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200225200226%_))))
                                          (_%__kont200225200226%_))
                                      (_%__kont200225200226%_))
                                  (_%__kont200225200226%_))))
                          (_%__kont200225200226%_))))
                  (_%__kont200225200226%_))
              (_%__kont200225200226%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont200225200226%_))
                                          (_%__kont200225200226%_))
                                      (_%__kont200225200226%_))))
                              (_%__kont200225200226%_))))
                      (_%__kont200225200226%_))
                  (_%__kont200225200226%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200225200226%_))
                                              (_%__kont200225200226%_))
                                          (_%__kont200225200226%_))))
                                  (_%__kont200225200226%_))))
                          (_%__kont200225200226%_))))
                  (_%__kont200225200226%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self199088%_ _%stx199089%_)
        (let* ((_%__stx200463200464%_ _%stx199089%_)
               (_%g199092199132%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200463200464%_)))))
          (let ((_%__kont200465200466%_
                 (lambda (_%L199238%_ _%L199239%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L199239%_))
                               (cons _%L199238%_ '())))))
                (_%__kont200467200468%_
                 (lambda (_%L199161%_ _%L199162%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx200463200464%_))
                (let ((_%e199096199182%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx200463200464%_))))
                  (let ((_%tl199098199187%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199096199182%_)))
                        (_%hd199097199185%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199096199182%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl199098199187%_))
                        (let ((_%e199099199190%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl199098199187%_))))
                          (let ((_%tl199101199195%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199099199190%_)))
                                (_%hd199100199193%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199099199190%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd199100199193%_))
                                (let ((_%e199102199198%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd199100199193%_))))
                                  (let ((_%tl199104199203%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199102199198%_)))
                                        (_%hd199103199201%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199102199198%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd199103199201%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd199103199201%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199104199203%_))
                                                (let ((_%e199105199206%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199104199203%_))))
                                                  (let ((_%tl199107199211%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199105199206%_)))
                                                        (_%hd199106199209%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199105199206%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199107199211%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199101199195%_))
                                                            (let ((_%e199108199214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl199101199195%_))))
                      (let ((_%tl199110199219%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199108199214%_)))
                            (_%hd199109199217%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199108199214%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd199109199217%_))
                            (let ((_%e199111199222%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd199109199217%_))))
                              (let ((_%tl199113199227%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199111199222%_)))
                                    (_%hd199112199225%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199111199222%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd199112199225%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd199112199225%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199113199227%_))
                                            (let ((_%e199114199230%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl199113199227%_))))
                                              (let ((_%tl199116199235%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199114199230%_)))
                                                    (_%hd199115199233%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199114199230%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl199116199235%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199110199219%_))
                                                        (_%__kont200465200466%_
                                                         _%hd199115199233%_
                                                         _%hd199106199209%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g199092199132%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199110199219%_))
                                                        (_%__kont200467200468%_
                                                         _%hd199109199217%_
                                                         _%hd199100199193%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g199092199132%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199110199219%_))
                                                (_%__kont200467200468%_
                                                 _%hd199109199217%_
                                                 _%hd199100199193%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199092199132%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199110199219%_))
                                            (_%__kont200467200468%_
                                             _%hd199109199217%_
                                             _%hd199100199193%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g199092199132%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199110199219%_))
                                        (_%__kont200467200468%_
                                         _%hd199109199217%_
                                         _%hd199100199193%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g199092199132%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199110199219%_))
                                (_%__kont200467200468%_
                                 _%hd199109199217%_
                                 _%hd199100199193%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g199092199132%_))))))
                    (let () (declare (not safe)) (_%g199092199132%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl199101199195%_))
                    (let ((_%e199125199153%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl199101199195%_))))
                      (let ((_%tl199127199158%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199125199153%_)))
                            (_%hd199126199156%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199125199153%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199127199158%_))
                            (_%__kont200467200468%_
                             _%hd199126199156%_
                             _%hd199100199193%_)
                            (let ()
                              (declare (not safe))
                              (_%g199092199132%_)))))
                    (let () (declare (not safe)) (_%g199092199132%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl199101199195%_))
                                                    (let ((_%e199125199153%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl199101199195%_))))
                                                      (let ((_%tl199127199158%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e199125199153%_)))
                    (_%hd199126199156%_
                     (let () (declare (not safe)) (##car _%e199125199153%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl199127199158%_))
                    (_%__kont200467200468%_
                     _%hd199126199156%_
                     _%hd199100199193%_)
                    (let () (declare (not safe)) (_%g199092199132%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199092199132%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199101199195%_))
                                                (let ((_%e199125199153%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199101199195%_))))
                                                  (let ((_%tl199127199158%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199125199153%_)))
                                                        (_%hd199126199156%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199125199153%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199127199158%_))
                                                        (_%__kont200467200468%_
                                                         _%hd199126199156%_
                                                         _%hd199100199193%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g199092199132%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199092199132%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199101199195%_))
                                            (let ((_%e199125199153%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl199101199195%_))))
                                              (let ((_%tl199127199158%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199125199153%_)))
                                                    (_%hd199126199156%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199125199153%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl199127199158%_))
                                                    (_%__kont200467200468%_
                                                     _%hd199126199156%_
                                                     _%hd199100199193%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199092199132%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199092199132%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199101199195%_))
                                    (let ((_%e199125199153%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl199101199195%_))))
                                      (let ((_%tl199127199158%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199125199153%_)))
                                            (_%hd199126199156%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199125199153%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199127199158%_))
                                            (_%__kont200467200468%_
                                             _%hd199126199156%_
                                             _%hd199100199193%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g199092199132%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199092199132%_))))))
                        (let () (declare (not safe)) (_%g199092199132%_)))))
                (let () (declare (not safe)) (_%g199092199132%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self197282199073%_)
        (let* ((_%self199076%_ _%self197282199073%_)
               (_%self199078%_ _%self199076%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199078%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self197283198844%_)
        (let* ((_%self198847%_ _%self197283198844%_)
               (_%self198849%_ _%self198847%_)
               (_%self198858198874%_ _%self198849%_)
               (_%E198860198878%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self198858198874%_
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
               (_%K198861198893%_
                (lambda (_%methods198881%_
                         _%metaclass198882%_
                         _%system?198883%_
                         _%final?198884%_
                         _%struct?198885%_
                         _%constructor198886%_
                         _%fields198887%_
                         _%slots198888%_
                         _%precendence-list198889%_
                         _%super198890%_
                         _%id198891%_)
                  (cons '@class
                        (cons _%id198891%_
                              (cons _%super198890%_
                                    (cons _%precendence-list198889%_
                                          (cons _%slots198888%_
                                                (cons _%fields198887%_
                                                      (cons _%constructor198886%_
                                                            (cons _%struct?198885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?198884%_
                                (cons _%system?198883%_
                                      (cons _%metaclass198882%_
                                            (cons (if _%methods198881%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods198881%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e198862198896%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198858198874%_ '1 '#f '#f)))
               (_%id198899%_ _%e198862198896%_)
               (_%e198863198901%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198858198874%_ '2 '#f '#f)))
               (_%super198904%_ _%e198863198901%_)
               (_%e198864198906%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198858198874%_ '3 '#f '#f)))
               (_%precendence-list198909%_ _%e198864198906%_)
               (_%e198865198911%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198858198874%_ '4 '#f '#f)))
               (_%slots198914%_ _%e198865198911%_)
               (_%e198866198916%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198858198874%_ '5 '#f '#f)))
               (_%fields198919%_ _%e198866198916%_)
               (_%e198867198921%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198858198874%_ '6 '#f '#f)))
               (_%constructor198924%_ _%e198867198921%_)
               (_%e198868198926%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198858198874%_ '7 '#f '#f)))
               (_%struct?198929%_ _%e198868198926%_)
               (_%e198869198931%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198858198874%_ '8 '#f '#f)))
               (_%final?198934%_ _%e198869198931%_)
               (_%e198870198936%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198858198874%_ '9 '#f '#f)))
               (_%system?198939%_ _%e198870198936%_)
               (_%e198871198941%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self198858198874%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass198944%_ _%e198871198941%_)
               (_%e198872198946%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self198858198874%_
                   '11
                   '#f
                   '#f)))
               (_%methods198949%_ _%e198872198946%_))
          (_%K198861198893%_
           _%methods198949%_
           _%metaclass198944%_
           _%system?198939%_
           _%final?198934%_
           _%struct?198929%_
           _%constructor198924%_
           _%fields198919%_
           _%slots198914%_
           _%precendence-list198909%_
           _%super198904%_
           _%id198899%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self197284198707%_)
        (let* ((_%self198710%_ _%self197284198707%_)
               (_%self198712%_ _%self198710%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198712%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self197285198570%_)
        (let* ((_%self198573%_ _%self197285198570%_)
               (_%self198575%_ _%self198573%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198575%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self197286198433%_)
        (let* ((_%self198436%_ _%self197286198433%_)
               (_%self198438%_ _%self198436%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198438%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198438%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self198438%_
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
      (lambda (_%self197287198296%_)
        (let* ((_%self198299%_ _%self197287198296%_)
               (_%self198301%_ _%self198299%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198301%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198301%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self198301%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self197288198159%_)
        (let* ((_%self198162%_ _%self197288198159%_)
               (_%self198164%_ _%self198162%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198164%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198164%_
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
      (lambda (_%self197289197970%_)
        (let* ((_%self197973%_ _%self197289197970%_)
               (_%self197975%_ _%self197973%_)
               (_%self197984197993%_ _%self197975%_)
               (_%E197986197997%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self197984197993%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K197987198016%_
                (lambda (_%dispatch198000%_
                         _%arity198001%_
                         _%signature198002%_)
                  (if _%signature198002%_
                      (let ((_%signature198004%_ _%signature198002%_))
                        (cons '@lambda
                              (cons _%arity198001%_
                                    (cons _%dispatch198000%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature198004%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature198004%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature198004%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature198004%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature198004%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity198001%_
                                  (cons _%dispatch198000%_ '()))))))
               (_%e197988198019%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197984197993%_ '1 '#f '#f)))
               (_%e197989198022%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197984197993%_ '2 '#f '#f)))
               (_%signature198025%_ _%e197989198022%_)
               (_%e197990198027%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197984197993%_ '3 '#f '#f)))
               (_%arity198030%_ _%e197990198027%_)
               (_%e197991198032%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197984197993%_ '4 '#f '#f)))
               (_%dispatch198035%_ _%e197991198032%_))
          (_%K197987198016%_
           _%dispatch198035%_
           _%arity198030%_
           _%signature198025%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self197290197829%_)
        (let* ((_%self197832%_ _%self197290197829%_)
               (_%self197834%_ _%self197832%_))
          (letrec ((_%clause-e197844%_
                    (lambda (_%clause197846%_)
                      (cdr (let ((__method200551
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause197846%_
                                     'typedecl))))
                             (if __method200551
                                 (let ()
                                   (declare (not safe))
                                   (__method200551 _%clause197846%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause197846%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e197844%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self197834%_
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
      (lambda (_%self197291197692%_)
        (let* ((_%self197695%_ _%self197291197692%_)
               (_%self197697%_ _%self197695%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197697%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self197697%_
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
      (lambda (_%self197292197555%_)
        (let* ((_%self197558%_ _%self197292197555%_)
               (_%self197560%_ _%self197558%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197560%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self197560%_
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
      (lambda (_%self197293197418%_)
        (let* ((_%self197421%_ _%self197293197418%_)
               (_%self197423%_ _%self197421%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197423%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
