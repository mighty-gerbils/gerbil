(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1781697576)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp264220
                   (let ((__obj264214
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
                       (gxc#optimizer-info:::init! __obj264214))
                     __obj264214)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp264220)))))
    (define gxc#optimize!
      (lambda (_%ctx263822%_)
        (let ((__tmp264222
               (lambda ()
                 (let ((__tmp264224
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx263822%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx263822%_)
                          (let ((__tmp264226
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp264225
                                 (##structure-ref
                                  _%ctx263822%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp264226 __tmp264225 '#t))
                          (let ((_%code263826%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx263822%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx263822%_
                             _%code263826%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp264223
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp264224
                    gxc#current-compile-local-type
                    __tmp264223))))
              (__tmp264221 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp264222
           gxc#current-compile-mutators
           __tmp264221))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx263808%_)
        (letrec ((_%load-it!263810%_
                  (lambda (_%id263820%_)
                    (if (let ((__tmp264227
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp264227 _%id263820%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id263820%_)
                          (let ((__tmp264228
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp264228 _%id263820%_ '#t)))))))
          (let* ((_%modid263812%_
                  (##structure-ref
                   _%ctx263808%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str263814%_ (symbol->string _%modid263812%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str263814%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str263814%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!263810%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!263810%_
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
      (lambda (_%ctx263745%_)
        (letrec* ((_%deps263747%_
                   (let* ((_%imports263798%_
                           (##structure-ref
                            _%ctx263745%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e263800%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx263745%_))))
                     (if _%$e263800%_
                         (cons _%$e263800%_ _%imports263798%_)
                         _%imports263798%_))))
          (let _%lp263749%_ ((_%rest263751%_ _%deps263747%_))
            (let* ((_%$%rest263752263760%_ _%rest263751%_)
                   (_%$%else263754263768%_ (lambda () '#!void))
                   (_%$%K263756263786%_
                    (lambda (_%rest263771%_ _%hd263772%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd263772%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp264230
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp264229
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd263772%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp264230 __tmp264229))
                                '#!void
                                (begin
                                  (let ((_%$e263775%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd263772%_))))
                                    (if _%$e263775%_
                                        (_%lp263749%_
                                         (cons _%$e263775%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%hd263772%_
                                                  '8
                                                  '#f
                                                  '#f))))
                                        (_%lp263749%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd263772%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd263772%_)))
                            (_%lp263749%_ _%rest263771%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd263772%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp264232
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp264231
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd263772%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp264232 __tmp264231))
                                    '#!void
                                    (begin
                                      (_%lp263749%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd263772%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd263772%_)))
                                (_%lp263749%_ _%rest263771%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd263772%_
                                     'gx#module-import::t))
                                  (_%lp263749%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd263772%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest263771%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd263772%_
                                         'gx#module-export::t))
                                      (_%lp263749%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd263772%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest263771%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd263772%_
                                             'gx#import-set::t))
                                          (_%lp263749%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd263772%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest263771%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd263772%_))))))))))
              (if (pair? _%$%rest263752263760%_)
                  (let ((_%$%hd263757263789%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest263752263760%_)))
                        (_%$%tl263758263791%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest263752263760%_))))
                    (let* ((_%hd263794%_ _%$%hd263757263789%_)
                           (_%rest263796%_ _%$%tl263758263791%_))
                      (_%$%K263756263786%_ _%rest263796%_ _%hd263794%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx263725%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx263725%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx263725%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht263727%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id263729%_
                    (##structure-ref
                     _%ctx263725%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod263731%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht263727%_ _%id263729%_)))
                   (_%$e263734%_ _%mod263731%_))
              (if _%$e263734%_
                  _%$e263734%_
                  (let* ((_%mod263737%_
                          (gxc#optimizer-import-ssxi _%ctx263725%_))
                         (_%val263742%_
                          (let ((_%$e263739%_ _%mod263737%_))
                            (if _%$e263739%_ _%$e263739%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht263727%_ _%id263729%_ _%val263742%_))
                    _%val263742%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx263723%_)
        (if (##structure-ref _%ctx263723%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx263723%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id263701%_)
        (letrec ((_%catch-e263703%_
                  (lambda (_%exn263721%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn263721%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn263721%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id263701%_))))
                    '#f))
                 (_%import-e263704%_
                  (lambda ()
                    (let* ((_%str-id263707%_
                            (let ((__tmp264233
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id263701%_))))
                              (declare (not safe))
                              (##string-append __tmp264233 '".ssxi")))
                           (_%artefact-path263714%_
                            (let ((_%$%odir263708263710%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%$%odir263708263710%_
                                  (let ((_%odir263712%_
                                         _%$%odir263708263710%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id263707%_
                                        '".ss"))
                                     _%odir263712%_))
                                  '#f)))
                           (_%library-path263716%_
                            (let ((__tmp264234
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id263707%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp264234)))
                           (_%ssxi-path263718%_
                            (if (and _%artefact-path263714%_
                                     (file-exists? _%artefact-path263714%_))
                                _%artefact-path263714%_
                                _%library-path263716%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path263718%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path263718%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e263703%_ _%import-e263704%_)))))
    (define gxc#optimize-source
      (lambda (_%stx263686%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx263686%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx263686%_))
        (let* ((_%stx263688%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx263686%_)))
               (_%stx263690%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx263688%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx263690%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx263690%_))
          (let _%fixpoint263693%_ ((_%current263695%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx263690%_))
            (let ((_%refined263697%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current263695%_ _%refined263697%_)
                  '#!void
                  (_%fixpoint263693%_ _%refined263697%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx263690%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx263690%_))
          (let ((_%stx263699%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx263690%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx263699%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp264236 (list gxc#::generate-runtime-empty::t))
            (__tmp264235 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp264236
         '()
         __tmp264235
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args263683%_
        (apply make-instance gxc#::generate-ssxi::t _%$args263683%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp264237
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
        (__make-atomic-promise __tmp264237)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx263675%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self263678%_
                (let ((__obj264216
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj264216))
               (__tmp264238
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self263678%_ _%stx263675%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp264238
           gxc#current-compile-method
           _%self263678%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self263635%_ _%stx263636%_)
        (let* ((_%$%g263638263648%_
                (lambda (_%$%g263639263645%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g263639263645%_))))
               (_%$%g263637263672%_
                (lambda (_%$%g263639263651%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g263639263651%_))
                      (let ((_%$%e263641263653%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g263639263651%_))))
                        (let ((_%$%hd263642263656%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e263641263653%_)))
                              (_%$%tl263643263658%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e263641263653%_))))
                          (let ((__tmp264241
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#generate-runtime-begin%
                                      _%self263635%_
                                      _%stx263636%_))))
                                (__tmp264239
                                 (let ((__tmp264240
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp264240 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp264241
                             gx#current-expander-phi
                             __tmp264239))))
                      (_%$%g263638263648%_ _%$%g263639263651%_)))))
          (_%$%g263637263672%_ _%stx263636%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self263574%_ _%stx263575%_)
        (let* ((_%$%g263577263591%_
                (lambda (_%$%g263578263588%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g263578263588%_))))
               (_%$%g263576263632%_
                (lambda (_%$%g263578263594%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g263578263594%_))
                      (let ((_%$%e263581263596%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g263578263594%_))))
                        (let ((_%$%hd263582263599%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e263581263596%_)))
                              (_%$%tl263583263601%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e263581263596%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl263583263601%_))
                              (let ((_%$%e263584263604%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl263583263601%_))))
                                (let ((_%$%hd263585263607%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e263584263604%_)))
                                      (_%$%tl263586263609%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e263584263604%_))))
                                  (let* ((_%ctx263626%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd263585263607%_)))
                                         (_%code263628%_
                                          (##structure-ref
                                           _%ctx263626%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp264242
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self263574%_
                                               _%code263628%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp264242
                                     gx#current-expander-context
                                     _%ctx263626%_))))
                              (_%$%g263577263591%_ _%$%g263578263594%_))))
                      (_%$%g263577263591%_ _%$%g263578263594%_)))))
          (_%$%g263576263632%_ _%stx263575%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self263381%_ _%stx263382%_)
        (letrec ((_%generate-e263384%_
                  (lambda (_%id263559%_)
                    (let* ((_%sym263561%_
                            (if (let ((__tmp264243
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp264243))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id263559%_))
                                '#f))
                           (_%$e263563%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym263561%_))))
                      (if _%$e263563%_
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"generate class decl"
                               _%sym263561%_))
                            (cons 'begin
                                  (cons (cons 'declare-class
                                              (cons _%sym263561%_
                                                    (cons (let ((__method264217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__method-ref _%$e263563%_ 'typedecl))))
                    (if __method264217
                        (let ()
                          (declare (not safe))
                          (__method264217 _%$e263563%_))
                        (begin
                          (let ()
                            (declare (not safe))
                            (error '"Missing method" _%$e263563%_ 'typedecl))
                          '#!void)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons 'declare-type
                                                    (cons _%sym263561%_
                                                          (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons 'quote
                                          (cons (cons 'typedecl
                                                      (cons _%sym263561%_ '()))
                                                '()))
                                    (cons (cons 'quote (cons 'class::t '()))
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          (let ((_%$e263568%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym263561%_))))
                            (if _%$e263568%_
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate typedecl "
                                     _%sym263561%_
                                     '" "
                                     _%$e263568%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%$e263568%_
                                         'gxc#!class::t))
                                      (cons 'declare-type
                                            (cons _%sym263561%_
                                                  (cons (cons 'optimizer-resolve-class
                                                              (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (cons 'typedecl
                                              (cons _%sym263561%_ '()))
                                        '()))
                            (cons (cons 'quote
                                        (cons (let ()
                                                (declare (not safe))
                                                (gxc#optimizer-lookup-class-name
                                                 _%$e263568%_))
                                              '()))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons 'declare-type
                                            (cons _%sym263561%_
                                                  (cons (let ((__method264218
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (__method-ref _%$e263568%_ 'typedecl))))
                  (if __method264218
                      (let ()
                        (declare (not safe))
                        (__method264218 _%$e263568%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method" _%$e263568%_ 'typedecl))
                        '#!void)))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '(begin))))))))
          (let* ((_%__stx263829263830%_ _%stx263382%_)
                 (_%$%g263387263425%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx263829263830%_)))))
            (let ((_%__kont263831263832%_
                   (lambda (_%$%g263389263541%_)
                     (_%generate-e263384%_ _%$%g263389263541%_)))
                  (_%__kont263833263834%_
                   (lambda (_%$%g263402263476%_)
                     (let ((_%types263502%_
                            (map _%generate-e263384%_
                                 (let ((__tmp264244
                                        (lambda (_%$%g263494263497%_
                                                 _%$%g263495263499%_)
                                          (cons _%$%g263494263497%_
                                                _%$%g263495263499%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp264244
                                    '()
                                    _%$%g263402263476%_)))))
                       (cons 'begin _%types263502%_)))))
              (let ((_%__match263884263885%_
                     (lambda (_%$%e263403263430%_
                              _%$%hd263404263433%_
                              _%$%tl263405263435%_
                              _%$%e263406263438%_
                              _%$%hd263407263441%_
                              _%$%tl263408263443%_
                              _%__splice263835263836%_
                              _%$%target263409263446%_
                              _%$%tl263411263448%_)
                       (letrec ((_%$%loop263412263451%_
                                 (lambda (_%$%hd263410263454%_
                                          _%$%id263416263456%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%hd263410263454%_))
                                       (let ((_%$%e263413263458%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%hd263410263454%_))))
                                         (let ((_%$%lp-tl263415263463%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e263413263458%_)))
                                               (_%$%lp-hd263414263461%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e263413263458%_))))
                                           (_%$%loop263412263451%_
                                            _%$%lp-tl263415263463%_
                                            (cons _%$%lp-hd263414263461%_
                                                  _%$%id263416263456%_))))
                                       (let ((_%$%id263417263466%_
                                              (reverse _%$%id263416263456%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl263408263443%_))
                                             (let ((_%$%e263418263468%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl263408263443%_))))
                                               (let ((_%$%tl263420263473%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e263418263468%_)))
                                                     (_%$%hd263419263471%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e263418263468%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl263420263473%_))
                                                     (_%__kont263833263834%_
                                                      _%$%id263417263466%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g263387263425%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%$%g263387263425%_))))))))
                         (_%$%loop263412263451%_
                          _%$%target263409263446%_
                          '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx263829263830%_))
                    (let ((_%$%e263390263509%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx263829263830%_))))
                      (let ((_%$%tl263392263514%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e263390263509%_)))
                            (_%$%hd263391263512%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e263390263509%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl263392263514%_))
                            (let ((_%$%e263393263517%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl263392263514%_))))
                              (let ((_%$%tl263395263522%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e263393263517%_)))
                                    (_%$%hd263394263520%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e263393263517%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd263394263520%_))
                                    (let ((_%$%e263396263525%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd263394263520%_))))
                                      (let ((_%$%tl263398263530%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e263396263525%_)))
                                            (_%$%hd263397263528%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e263396263525%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl263398263530%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl263395263522%_))
                                                (let ((_%$%e263399263533%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl263395263522%_))))
                                                  (let ((_%$%tl263401263538%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e263399263533%_)))
                                                        (_%$%hd263400263536%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e263399263533%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl263401263538%_))
                                                        (_%__kont263831263832%_
                                                         _%$%hd263397263528%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%$%hd263394263520%_))
                                                            (let ((_%__splice263835263836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%$%hd263394263520%_
                              '0))))
                      (let ((_%$%tl263411263448%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice263835263836%_ '1)))
                            (_%$%target263409263446%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice263835263836%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl263411263448%_))
                            (_%__match263884263885%_
                             _%$%e263390263509%_
                             _%$%hd263391263512%_
                             _%$%tl263392263514%_
                             _%$%e263393263517%_
                             _%$%hd263394263520%_
                             _%$%tl263395263522%_
                             _%__splice263835263836%_
                             _%$%target263409263446%_
                             _%$%tl263411263448%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g263387263425%_)))))
                    (let () (declare (not safe)) (_%$%g263387263425%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%$%hd263394263520%_))
                                                    (let ((_%__splice263835263836%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%$%hd263394263520%_
                                                              '0))))
                                                      (let ((_%$%tl263411263448%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice263835263836%_ '1)))
                    (_%$%target263409263446%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice263835263836%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl263411263448%_))
                    (_%__match263884263885%_
                     _%$%e263390263509%_
                     _%$%hd263391263512%_
                     _%$%tl263392263514%_
                     _%$%e263393263517%_
                     _%$%hd263394263520%_
                     _%$%tl263395263522%_
                     _%__splice263835263836%_
                     _%$%target263409263446%_
                     _%$%tl263411263448%_)
                    (let () (declare (not safe)) (_%$%g263387263425%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g263387263425%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%$%hd263394263520%_))
                                                (let ((_%__splice263835263836%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%$%hd263394263520%_
                                                          '0))))
                                                  (let ((_%$%tl263411263448%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice263835263836%_
                                                            '1)))
                                                        (_%$%target263409263446%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice263835263836%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl263411263448%_))
                                                        (_%__match263884263885%_
                                                         _%$%e263390263509%_
                                                         _%$%hd263391263512%_
                                                         _%$%tl263392263514%_
                                                         _%$%e263393263517%_
                                                         _%$%hd263394263520%_
                                                         _%$%tl263395263522%_
                                                         _%__splice263835263836%_
                                                         _%$%target263409263446%_
                                                         _%$%tl263411263448%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g263387263425%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g263387263425%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%hd263394263520%_))
                                        (let ((_%__splice263835263836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%hd263394263520%_
                                                  '0))))
                                          (let ((_%$%tl263411263448%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice263835263836%_
                                                    '1)))
                                                (_%$%target263409263446%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice263835263836%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl263411263448%_))
                                                (_%__match263884263885%_
                                                 _%$%e263390263509%_
                                                 _%$%hd263391263512%_
                                                 _%$%tl263392263514%_
                                                 _%$%e263393263517%_
                                                 _%$%hd263394263520%_
                                                 _%$%tl263395263522%_
                                                 _%__splice263835263836%_
                                                 _%$%target263409263446%_
                                                 _%$%tl263411263448%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g263387263425%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g263387263425%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g263387263425%_)))))
                    (let () (declare (not safe)) (_%$%g263387263425%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self262934%_ _%stx262935%_)
        (let* ((_%__stx263887263888%_ _%stx262935%_)
               (_%$%g262939263041%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx263887263888%_)))))
          (let ((_%__kont263889263890%_
                 (lambda (_%$%g262941263331%_
                          _%$%g262942263332%_
                          _%$%g262943263333%_
                          _%$%g262944263334%_
                          _%$%g262945263335%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g262944263334%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%g262943263333%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%$%g262942263332%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%g262941263331%_))
                                                 '())))))))
                (_%__kont263891263892%_
                 (lambda (_%$%g262994263157%_
                          _%$%g262995263158%_
                          _%$%g262996263159%_
                          _%$%g262997263160%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g262996263159%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%g262995263158%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%$%g262994263157%_))
                                           (cons '#f '())))))))
                (_%__kont263893263894%_ (lambda () '(begin))))
            (let ((_%__match264022264023%_
                   (lambda (_%$%e262946263203%_
                            _%$%hd262947263206%_
                            _%$%tl262948263208%_
                            _%$%e262949263211%_
                            _%$%hd262950263214%_
                            _%$%tl262951263216%_
                            _%$%e262952263219%_
                            _%$%hd262953263222%_
                            _%$%tl262954263224%_
                            _%$%e262955263227%_
                            _%$%hd262956263230%_
                            _%$%tl262957263232%_
                            _%$%e262958263235%_
                            _%$%hd262959263238%_
                            _%$%tl262960263240%_
                            _%$%e262961263243%_
                            _%$%hd262962263246%_
                            _%$%tl262963263248%_
                            _%$%e262964263251%_
                            _%$%hd262965263254%_
                            _%$%tl262966263256%_
                            _%$%e262967263259%_
                            _%$%hd262968263262%_
                            _%$%tl262969263264%_
                            _%$%e262970263267%_
                            _%$%hd262971263270%_
                            _%$%tl262972263272%_
                            _%$%e262973263275%_
                            _%$%hd262974263278%_
                            _%$%tl262975263280%_
                            _%$%e262976263283%_
                            _%$%hd262977263286%_
                            _%$%tl262978263288%_
                            _%$%e262979263291%_
                            _%$%hd262980263294%_
                            _%$%tl262981263296%_
                            _%$%e262982263299%_
                            _%$%hd262983263302%_
                            _%$%tl262984263304%_
                            _%$%e262985263307%_
                            _%$%hd262986263310%_
                            _%$%tl262987263312%_
                            _%$%e262988263315%_
                            _%$%hd262989263318%_
                            _%$%tl262990263320%_
                            _%$%e262991263323%_
                            _%$%hd262992263326%_
                            _%$%tl262993263328%_)
                     (let ((_%$%g262941263331%_ _%$%hd262992263326%_)
                           (_%$%g262942263332%_ _%$%hd262983263302%_)
                           (_%$%g262943263333%_ _%$%hd262974263278%_)
                           (_%$%g262944263334%_ _%$%hd262965263254%_)
                           (_%$%g262945263335%_ _%$%hd262956263230%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%$%g262945263335%_
                              'bind-method!))
                           (_%__kont263889263890%_
                            _%$%g262941263331%_
                            _%$%g262942263332%_
                            _%$%g262943263333%_
                            _%$%g262944263334%_
                            _%$%g262945263335%_)
                           (_%__kont263893263894%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx263887263888%_))
                  (let ((_%$%e262946263203%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx263887263888%_))))
                    (let ((_%$%tl262948263208%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e262946263203%_)))
                          (_%$%hd262947263206%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e262946263203%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl262948263208%_))
                          (let ((_%$%e262949263211%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl262948263208%_))))
                            (let ((_%$%tl262951263216%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e262949263211%_)))
                                  (_%$%hd262950263214%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e262949263211%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd262950263214%_))
                                  (let ((_%$%e262952263219%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd262950263214%_))))
                                    (let ((_%$%tl262954263224%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e262952263219%_)))
                                          (_%$%hd262953263222%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e262952263219%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd262953263222%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd262953263222%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl262954263224%_))
                                                  (let ((_%$%e262955263227%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl262954263224%_))))
                                                    (let ((_%$%tl262957263232%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e262955263227%_)))
                                                          (_%$%hd262956263230%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e262955263227%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl262957263232%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl262951263216%_))
                      (let ((_%$%e262958263235%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl262951263216%_))))
                        (let ((_%$%tl262960263240%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e262958263235%_)))
                              (_%$%hd262959263238%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e262958263235%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd262959263238%_))
                              (let ((_%$%e262961263243%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd262959263238%_))))
                                (let ((_%$%tl262963263248%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e262961263243%_)))
                                      (_%$%hd262962263246%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e262961263243%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd262962263246%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd262962263246%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl262963263248%_))
                                              (let ((_%$%e262964263251%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl262963263248%_))))
                                                (let ((_%$%tl262966263256%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e262964263251%_)))
                                                      (_%$%hd262965263254%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e262964263251%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl262966263256%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl262960263240%_))
                                                          (let ((_%$%e262967263259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl262960263240%_))))
                    (let ((_%$%tl262969263264%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e262967263259%_)))
                          (_%$%hd262968263262%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e262967263259%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd262968263262%_))
                          (let ((_%$%e262970263267%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd262968263262%_))))
                            (let ((_%$%tl262972263272%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e262970263267%_)))
                                  (_%$%hd262971263270%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e262970263267%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd262971263270%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%$%hd262971263270%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl262972263272%_))
                                          (let ((_%$%e262973263275%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl262972263272%_))))
                                            (let ((_%$%tl262975263280%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e262973263275%_)))
                                                  (_%$%hd262974263278%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e262973263275%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl262975263280%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl262969263264%_))
                                                      (let ((_%$%e262976263283%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl262969263264%_))))
                (let ((_%$%tl262978263288%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e262976263283%_)))
                      (_%$%hd262977263286%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e262976263283%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd262977263286%_))
                      (let ((_%$%e262979263291%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd262977263286%_))))
                        (let ((_%$%tl262981263296%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e262979263291%_)))
                              (_%$%hd262980263294%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e262979263291%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd262980263294%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%$%hd262980263294%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl262981263296%_))
                                      (let ((_%$%e262982263299%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl262981263296%_))))
                                        (let ((_%$%tl262984263304%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e262982263299%_)))
                                              (_%$%hd262983263302%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e262982263299%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl262984263304%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl262978263288%_))
                                                  (let ((_%$%e262985263307%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl262978263288%_))))
                                                    (let ((_%$%tl262987263312%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e262985263307%_)))
                                                          (_%$%hd262986263310%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e262985263307%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd262986263310%_))
                                                          (let ((_%$%e262988263315%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd262986263310%_))))
                    (let ((_%$%tl262990263320%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e262988263315%_)))
                          (_%$%hd262989263318%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e262988263315%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd262989263318%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%$%hd262989263318%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl262990263320%_))
                                  (let ((_%$%e262991263323%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl262990263320%_))))
                                    (let ((_%$%tl262993263328%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e262991263323%_)))
                                          (_%$%hd262992263326%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e262991263323%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl262993263328%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl262987263312%_))
                                              (_%__match264022264023%_
                                               _%$%e262946263203%_
                                               _%$%hd262947263206%_
                                               _%$%tl262948263208%_
                                               _%$%e262949263211%_
                                               _%$%hd262950263214%_
                                               _%$%tl262951263216%_
                                               _%$%e262952263219%_
                                               _%$%hd262953263222%_
                                               _%$%tl262954263224%_
                                               _%$%e262955263227%_
                                               _%$%hd262956263230%_
                                               _%$%tl262957263232%_
                                               _%$%e262958263235%_
                                               _%$%hd262959263238%_
                                               _%$%tl262960263240%_
                                               _%$%e262961263243%_
                                               _%$%hd262962263246%_
                                               _%$%tl262963263248%_
                                               _%$%e262964263251%_
                                               _%$%hd262965263254%_
                                               _%$%tl262966263256%_
                                               _%$%e262967263259%_
                                               _%$%hd262968263262%_
                                               _%$%tl262969263264%_
                                               _%$%e262970263267%_
                                               _%$%hd262971263270%_
                                               _%$%tl262972263272%_
                                               _%$%e262973263275%_
                                               _%$%hd262974263278%_
                                               _%$%tl262975263280%_
                                               _%$%e262976263283%_
                                               _%$%hd262977263286%_
                                               _%$%tl262978263288%_
                                               _%$%e262979263291%_
                                               _%$%hd262980263294%_
                                               _%$%tl262981263296%_
                                               _%$%e262982263299%_
                                               _%$%hd262983263302%_
                                               _%$%tl262984263304%_
                                               _%$%e262985263307%_
                                               _%$%hd262986263310%_
                                               _%$%tl262987263312%_
                                               _%$%e262988263315%_
                                               _%$%hd262989263318%_
                                               _%$%tl262990263320%_
                                               _%$%e262991263323%_
                                               _%$%hd262992263326%_
                                               _%$%tl262993263328%_)
                                              (_%__kont263893263894%_))
                                          (_%__kont263893263894%_))))
                                  (_%__kont263893263894%_))
                              (_%__kont263893263894%_))
                          (_%__kont263893263894%_))))
                  (_%__kont263893263894%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl262978263288%_))
                                                      (if (let ((__tmp264245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp264245 'bind-method!))
                  (let ((_%$%g262994263157%_ _%$%hd262983263302%_)
                        (_%$%g262995263158%_ _%$%hd262974263278%_)
                        (_%$%g262996263159%_ _%$%hd262965263254%_)
                        (_%$%g262997263160%_ _%$%hd262956263230%_))
                    (_%__kont263891263892%_
                     _%$%g262994263157%_
                     _%$%g262995263158%_
                     _%$%g262996263159%_
                     _%$%g262997263160%_))
                  (_%__kont263893263894%_))
              (_%__kont263893263894%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont263893263894%_))))
                                      (_%__kont263893263894%_))
                                  (_%__kont263893263894%_))
                              (_%__kont263893263894%_))))
                      (_%__kont263893263894%_))))
              (_%__kont263893263894%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont263893263894%_))))
                                          (_%__kont263893263894%_))
                                      (_%__kont263893263894%_))
                                  (_%__kont263893263894%_))))
                          (_%__kont263893263894%_))))
                  (_%__kont263893263894%_))
              (_%__kont263893263894%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont263893263894%_))
                                          (_%__kont263893263894%_))
                                      (_%__kont263893263894%_))))
                              (_%__kont263893263894%_))))
                      (_%__kont263893263894%_))
                  (_%__kont263893263894%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont263893263894%_))
                                              (_%__kont263893263894%_))
                                          (_%__kont263893263894%_))))
                                  (_%__kont263893263894%_))))
                          (_%__kont263893263894%_))))
                  (_%__kont263893263894%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self262758%_ _%stx262759%_)
        (let* ((_%__stx264131264132%_ _%stx262759%_)
               (_%$%g262762262802%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx264131264132%_)))))
          (let ((_%__kont264133264134%_
                 (lambda (_%$%g262764262908%_ _%$%g262765262909%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g262765262909%_))
                               (cons _%$%g262764262908%_ '())))))
                (_%__kont264135264136%_
                 (lambda (_%$%g262787262831%_ _%$%g262788262832%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx264131264132%_))
                (let ((_%$%e262766262852%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx264131264132%_))))
                  (let ((_%$%tl262768262857%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e262766262852%_)))
                        (_%$%hd262767262855%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e262766262852%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl262768262857%_))
                        (let ((_%$%e262769262860%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl262768262857%_))))
                          (let ((_%$%tl262771262865%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e262769262860%_)))
                                (_%$%hd262770262863%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e262769262860%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd262770262863%_))
                                (let ((_%$%e262772262868%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd262770262863%_))))
                                  (let ((_%$%tl262774262873%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e262772262868%_)))
                                        (_%$%hd262773262871%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e262772262868%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd262773262871%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%$%hd262773262871%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl262774262873%_))
                                                (let ((_%$%e262775262876%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl262774262873%_))))
                                                  (let ((_%$%tl262777262881%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e262775262876%_)))
                                                        (_%$%hd262776262879%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e262775262876%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl262777262881%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl262771262865%_))
                                                            (let ((_%$%e262778262884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl262771262865%_))))
                      (let ((_%$%tl262780262889%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e262778262884%_)))
                            (_%$%hd262779262887%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e262778262884%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd262779262887%_))
                            (let ((_%$%e262781262892%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd262779262887%_))))
                              (let ((_%$%tl262783262897%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e262781262892%_)))
                                    (_%$%hd262782262895%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e262781262892%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd262782262895%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd262782262895%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl262783262897%_))
                                            (let ((_%$%e262784262900%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl262783262897%_))))
                                              (let ((_%$%tl262786262905%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e262784262900%_)))
                                                    (_%$%hd262785262903%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e262784262900%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl262786262905%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl262780262889%_))
                                                        (_%__kont264133264134%_
                                                         _%$%hd262785262903%_
                                                         _%$%hd262776262879%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g262762262802%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl262780262889%_))
                                                        (_%__kont264135264136%_
                                                         _%$%hd262779262887%_
                                                         _%$%hd262770262863%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g262762262802%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl262780262889%_))
                                                (_%__kont264135264136%_
                                                 _%$%hd262779262887%_
                                                 _%$%hd262770262863%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g262762262802%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl262780262889%_))
                                            (_%__kont264135264136%_
                                             _%$%hd262779262887%_
                                             _%$%hd262770262863%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g262762262802%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl262780262889%_))
                                        (_%__kont264135264136%_
                                         _%$%hd262779262887%_
                                         _%$%hd262770262863%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g262762262802%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl262780262889%_))
                                (_%__kont264135264136%_
                                 _%$%hd262779262887%_
                                 _%$%hd262770262863%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g262762262802%_))))))
                    (let () (declare (not safe)) (_%$%g262762262802%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl262771262865%_))
                    (let ((_%$%e262795262823%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl262771262865%_))))
                      (let ((_%$%tl262797262828%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e262795262823%_)))
                            (_%$%hd262796262826%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e262795262823%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl262797262828%_))
                            (_%__kont264135264136%_
                             _%$%hd262796262826%_
                             _%$%hd262770262863%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g262762262802%_)))))
                    (let () (declare (not safe)) (_%$%g262762262802%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl262771262865%_))
                                                    (let ((_%$%e262795262823%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl262771262865%_))))
                                                      (let ((_%$%tl262797262828%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e262795262823%_)))
                    (_%$%hd262796262826%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e262795262823%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl262797262828%_))
                    (_%__kont264135264136%_
                     _%$%hd262796262826%_
                     _%$%hd262770262863%_)
                    (let () (declare (not safe)) (_%$%g262762262802%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g262762262802%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl262771262865%_))
                                                (let ((_%$%e262795262823%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl262771262865%_))))
                                                  (let ((_%$%tl262797262828%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e262795262823%_)))
                                                        (_%$%hd262796262826%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e262795262823%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl262797262828%_))
                                                        (_%__kont264135264136%_
                                                         _%$%hd262796262826%_
                                                         _%$%hd262770262863%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g262762262802%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g262762262802%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl262771262865%_))
                                            (let ((_%$%e262795262823%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl262771262865%_))))
                                              (let ((_%$%tl262797262828%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e262795262823%_)))
                                                    (_%$%hd262796262826%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e262795262823%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl262797262828%_))
                                                    (_%__kont264135264136%_
                                                     _%$%hd262796262826%_
                                                     _%$%hd262770262863%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g262762262802%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g262762262802%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl262771262865%_))
                                    (let ((_%$%e262795262823%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl262771262865%_))))
                                      (let ((_%$%tl262797262828%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e262795262823%_)))
                                            (_%$%hd262796262826%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e262795262823%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl262797262828%_))
                                            (_%__kont264135264136%_
                                             _%$%hd262796262826%_
                                             _%$%hd262770262863%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g262762262802%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g262762262802%_))))))
                        (let () (declare (not safe)) (_%$%g262762262802%_)))))
                (let () (declare (not safe)) (_%$%g262762262802%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self262745%_)
        (let ((_%self262748%_ _%self262745%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self262748%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self262519%_)
        (let* ((_%self262522%_ _%self262519%_)
               (_%$%self262531262547%_ _%self262522%_)
               (_%$%E262533262550%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self262531262547%_
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
               (_%$%K262534262565%_
                (lambda (_%methods262553%_
                         _%metaclass262554%_
                         _%system?262555%_
                         _%final?262556%_
                         _%struct?262557%_
                         _%constructor262558%_
                         _%fields262559%_
                         _%slots262560%_
                         _%precendence-list262561%_
                         _%super262562%_
                         _%id262563%_)
                  (cons '@class
                        (cons _%id262563%_
                              (cons _%super262562%_
                                    (cons _%precendence-list262561%_
                                          (cons _%slots262560%_
                                                (cons _%fields262559%_
                                                      (cons _%constructor262558%_
                                                            (cons _%struct?262557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?262556%_
                                (cons _%system?262555%_
                                      (cons _%metaclass262554%_
                                            (cons (if _%methods262553%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods262553%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%$%e262535262568%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self262531262547%_
                   '1
                   '#f
                   '#f)))
               (_%id262571%_ _%$%e262535262568%_)
               (_%$%e262536262573%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self262531262547%_
                   '2
                   '#f
                   '#f)))
               (_%super262576%_ _%$%e262536262573%_)
               (_%$%e262537262578%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self262531262547%_
                   '3
                   '#f
                   '#f)))
               (_%precendence-list262581%_ _%$%e262537262578%_)
               (_%$%e262538262583%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self262531262547%_
                   '4
                   '#f
                   '#f)))
               (_%slots262586%_ _%$%e262538262583%_)
               (_%$%e262539262588%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self262531262547%_
                   '5
                   '#f
                   '#f)))
               (_%fields262591%_ _%$%e262539262588%_)
               (_%$%e262540262593%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self262531262547%_
                   '6
                   '#f
                   '#f)))
               (_%constructor262596%_ _%$%e262540262593%_)
               (_%$%e262541262598%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self262531262547%_
                   '7
                   '#f
                   '#f)))
               (_%struct?262601%_ _%$%e262541262598%_)
               (_%$%e262542262603%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self262531262547%_
                   '8
                   '#f
                   '#f)))
               (_%final?262606%_ _%$%e262542262603%_)
               (_%$%e262543262608%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self262531262547%_
                   '9
                   '#f
                   '#f)))
               (_%system?262611%_ _%$%e262543262608%_)
               (_%$%e262544262613%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self262531262547%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass262616%_ _%$%e262544262613%_)
               (_%$%e262545262618%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self262531262547%_
                   '11
                   '#f
                   '#f)))
               (_%methods262621%_ _%$%e262545262618%_))
          (_%$%K262534262565%_
           _%methods262621%_
           _%metaclass262616%_
           _%system?262611%_
           _%final?262606%_
           _%struct?262601%_
           _%constructor262596%_
           _%fields262591%_
           _%slots262586%_
           _%precendence-list262581%_
           _%super262576%_
           _%id262571%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self262384%_)
        (let ((_%self262387%_ _%self262384%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self262387%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self262249%_)
        (let ((_%self262252%_ _%self262249%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self262252%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self262114%_)
        (let ((_%self262117%_ _%self262114%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self262117%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self262117%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self262117%_
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
      (lambda (_%self261979%_)
        (let ((_%self261982%_ _%self261979%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self261982%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self261982%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self261982%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self261844%_)
        (let ((_%self261847%_ _%self261844%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self261847%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self261847%_
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
      (lambda (_%self261658%_)
        (let* ((_%self261661%_ _%self261658%_)
               (_%$%self261670261679%_ _%self261661%_)
               (_%$%E261672261682%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self261670261679%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%$%K261673261701%_
                (lambda (_%dispatch261685%_
                         _%arity261686%_
                         _%signature261687%_)
                  (if _%signature261687%_
                      (let ((_%signature261689%_ _%signature261687%_))
                        (cons '@lambda
                              (cons _%arity261686%_
                                    (cons _%dispatch261685%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature261689%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature261689%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature261689%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature261689%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature261689%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity261686%_
                                  (cons _%dispatch261685%_ '()))))))
               (_%$%e261674261704%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self261670261679%_
                   '1
                   '#f
                   '#f)))
               (_%$%e261675261707%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self261670261679%_
                   '2
                   '#f
                   '#f)))
               (_%signature261710%_ _%$%e261675261707%_)
               (_%$%e261676261712%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self261670261679%_
                   '3
                   '#f
                   '#f)))
               (_%arity261715%_ _%$%e261676261712%_)
               (_%$%e261677261717%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self261670261679%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch261720%_ _%$%e261677261717%_))
          (_%$%K261673261701%_
           _%dispatch261720%_
           _%arity261715%_
           _%signature261710%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self261518%_)
        (let ((_%self261521%_ _%self261518%_))
          (letrec ((_%clause-e261532%_
                    (lambda (_%clause261534%_)
                      (cdr (let ((__method264219
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause261534%_
                                     'typedecl))))
                             (if __method264219
                                 (let ()
                                   (declare (not safe))
                                   (__method264219 _%clause261534%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause261534%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e261532%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self261521%_
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
      (lambda (_%self261383%_)
        (let ((_%self261386%_ _%self261383%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self261386%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self261386%_
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
      (lambda (_%self261248%_)
        (let ((_%self261251%_ _%self261248%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self261251%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self261251%_
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
      (lambda (_%self261113%_)
        (let ((_%self261116%_ _%self261113%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self261116%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
