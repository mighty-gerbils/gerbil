(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1768865830)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp212697
                   (let ((__obj212691
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
                       (gxc#optimizer-info:::init! __obj212691))
                     __obj212691)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp212697)))))
    (define gxc#optimize!
      (lambda (_%ctx212299%_)
        (let ((__tmp212699
               (lambda ()
                 (let ((__tmp212701
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx212299%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx212299%_)
                          (let ((__tmp212703
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp212702
                                 (##structure-ref
                                  _%ctx212299%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp212703 __tmp212702 '#t))
                          (let ((_%code212303%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx212299%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx212299%_
                             _%code212303%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp212700
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp212701
                    gxc#current-compile-local-type
                    __tmp212700))))
              (__tmp212698 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212699
           gxc#current-compile-mutators
           __tmp212698))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx212285%_)
        (letrec ((_%load-it!212287%_
                  (lambda (_%id212297%_)
                    (if (let ((__tmp212704
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp212704 _%id212297%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id212297%_)
                          (let ((__tmp212705
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp212705 _%id212297%_ '#t)))))))
          (let* ((_%modid212289%_
                  (##structure-ref
                   _%ctx212285%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str212291%_ (symbol->string _%modid212289%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str212291%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str212291%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!212287%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!212287%_
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
      (lambda (_%ctx212222%_)
        (letrec* ((_%deps212224%_
                   (let* ((_%imports212275%_
                           (##structure-ref
                            _%ctx212222%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e212277%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx212222%_))))
                     (if _%$e212277%_
                         ((lambda (_%g212279212281%_)
                            (cons _%g212279212281%_ _%imports212275%_))
                          _%$e212277%_)
                         _%imports212275%_))))
          (let _%lp212226%_ ((_%rest212228%_ _%deps212224%_))
            (let* ((_%rest212229212237%_ _%rest212228%_)
                   (_%else212231212245%_ (lambda () '#!void))
                   (_%K212233212263%_
                    (lambda (_%rest212248%_ _%hd212249%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd212249%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp212707
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp212706
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd212249%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp212707 __tmp212706))
                                '#!void
                                (begin
                                  (let ((_%$e212252%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd212249%_))))
                                    (if _%$e212252%_
                                        ((lambda (_%pre212255%_)
                                           (_%lp212226%_
                                            (cons _%pre212255%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd212249%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e212252%_)
                                        (_%lp212226%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd212249%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd212249%_)))
                            (_%lp212226%_ _%rest212248%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd212249%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp212709
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp212708
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd212249%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp212709 __tmp212708))
                                    '#!void
                                    (begin
                                      (_%lp212226%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd212249%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd212249%_)))
                                (_%lp212226%_ _%rest212248%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd212249%_
                                     'gx#module-import::t))
                                  (_%lp212226%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd212249%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest212248%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd212249%_
                                         'gx#module-export::t))
                                      (_%lp212226%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd212249%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest212248%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd212249%_
                                             'gx#import-set::t))
                                          (_%lp212226%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd212249%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest212248%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd212249%_))))))))))
              (if (pair? _%rest212229212237%_)
                  (let ((_%hd212234212266%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest212229212237%_)))
                        (_%tl212235212268%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest212229212237%_))))
                    (let* ((_%hd212271%_ _%hd212234212266%_)
                           (_%rest212273%_ _%tl212235212268%_))
                      (_%K212233212263%_ _%rest212273%_ _%hd212271%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx212202%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx212202%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx212202%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht212204%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id212206%_
                    (##structure-ref
                     _%ctx212202%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod212208%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht212204%_ _%id212206%_)))
                   (_%$e212211%_ _%mod212208%_))
              (if _%$e212211%_
                  _%$e212211%_
                  (let* ((_%mod212214%_
                          (gxc#optimizer-import-ssxi _%ctx212202%_))
                         (_%val212219%_
                          (let ((_%$e212216%_ _%mod212214%_))
                            (if _%$e212216%_ _%$e212216%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht212204%_ _%id212206%_ _%val212219%_))
                    _%val212219%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx212200%_)
        (if (##structure-ref _%ctx212200%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx212200%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id212177%_)
        (letrec ((_%catch-e212179%_
                  (lambda (_%exn212198%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn212198%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn212198%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id212177%_))))
                    '#f))
                 (_%import-e212180%_
                  (lambda ()
                    (let* ((_%str-id212183%_
                            (let ((__tmp212710
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id212177%_))))
                              (declare (not safe))
                              (##string-append __tmp212710 '".ssxi")))
                           (_%artefact-path212191%_
                            (let ((_%odir212184212186%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir212184212186%_
                                  (let ((_%odir212189%_ _%odir212184212186%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id212183%_
                                        '".ss"))
                                     _%odir212189%_))
                                  '#f)))
                           (_%library-path212193%_
                            (let ((__tmp212711
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id212183%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp212711)))
                           (_%ssxi-path212195%_
                            (if (and _%artefact-path212191%_
                                     (file-exists? _%artefact-path212191%_))
                                _%artefact-path212191%_
                                _%library-path212193%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path212195%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path212195%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e212179%_ _%import-e212180%_)))))
    (define gxc#optimize-source
      (lambda (_%stx212162%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx212162%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx212162%_))
        (let* ((_%stx212164%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx212162%_)))
               (_%stx212166%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx212164%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx212166%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx212166%_))
          (let _%fixpoint212169%_ ((_%current212171%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx212166%_))
            (let ((_%refined212173%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current212171%_ _%refined212173%_)
                  '#!void
                  (_%fixpoint212169%_ _%refined212173%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx212166%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx212166%_))
          (let ((_%stx212175%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx212166%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx212175%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp212713 (list gxc#::generate-runtime-empty::t))
            (__tmp212712 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp212713
         '()
         __tmp212712
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args212159%_
        (apply make-instance gxc#::generate-ssxi::t _%$args212159%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp212714
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
        (__make-atomic-promise __tmp212714)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx212151%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self212154%_
                (let ((__obj212693
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj212693))
               (__tmp212715
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self212154%_ _%stx212151%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212715
           gxc#current-compile-method
           _%self212154%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self212111%_ _%stx212112%_)
        (let* ((_%g212114212124%_
                (lambda (_%g212115212121%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212115212121%_))))
               (_%g212113212148%_
                (lambda (_%g212115212127%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212115212127%_))
                      (let ((_%e212117212129%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212115212127%_))))
                        (let ((_%hd212118212132%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212117212129%_)))
                              (_%tl212119212134%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212117212129%_))))
                          ((lambda (_%L212137%_)
                             (let ((__tmp212718
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self212111%_
                                         _%stx212112%_))))
                                   (__tmp212716
                                    (let ((__tmp212717
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp212717 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp212718
                                gx#current-expander-phi
                                __tmp212716)))
                           _%tl212119212134%_)))
                      (_%g212114212124%_ _%g212115212127%_)))))
          (_%g212113212148%_ _%stx212112%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self212050%_ _%stx212051%_)
        (let* ((_%g212053212067%_
                (lambda (_%g212054212064%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212054212064%_))))
               (_%g212052212108%_
                (lambda (_%g212054212070%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212054212070%_))
                      (let ((_%e212057212072%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212054212070%_))))
                        (let ((_%hd212058212075%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212057212072%_)))
                              (_%tl212059212077%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212057212072%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212059212077%_))
                              (let ((_%e212060212080%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212059212077%_))))
                                (let ((_%hd212061212083%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212060212080%_)))
                                      (_%tl212062212085%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212060212080%_))))
                                  ((lambda (_%L212088%_ _%L212089%_)
                                     (let* ((_%ctx212102%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L212089%_)))
                                            (_%code212104%_
                                             (##structure-ref
                                              _%ctx212102%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp212719
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self212050%_
                                                  _%code212104%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp212719
                                        gx#current-expander-context
                                        _%ctx212102%_)))
                                   _%tl212062212085%_
                                   _%hd212061212083%_)))
                              (_%g212053212067%_ _%g212054212070%_))))
                      (_%g212053212067%_ _%g212054212070%_)))))
          (_%g212052212108%_ _%stx212051%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self211855%_ _%stx211856%_)
        (letrec ((_%generate-e211858%_
                  (lambda (_%id212035%_)
                    (let* ((_%sym212037%_
                            (if (let ((__tmp212720
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp212720))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id212035%_))
                                '#f))
                           (_%$e212039%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym212037%_))))
                      (if _%$e212039%_
                          ((lambda (_%klass212042%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym212037%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym212037%_
                                                     (cons (let ((__method212694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass212042%_ 'typedecl))))
                     (if __method212694
                         (let ()
                           (declare (not safe))
                           (__method212694 _%klass212042%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass212042%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym212037%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym212037%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e212039%_)
                          (let ((_%$e212044%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym212037%_))))
                            (if _%$e212044%_
                                ((lambda (_%type212047%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym212037%_
                                      '" "
                                      _%type212047%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type212047%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym212037%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym212037%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type212047%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym212037%_
                                                   (cons (let ((__method212695
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type212047%_ 'typedecl))))
                   (if __method212695
                       (let ()
                         (declare (not safe))
                         (__method212695 _%type212047%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type212047%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e212044%_)
                                '(begin))))))))
          (let* ((_%__stx212306212307%_ _%stx211856%_)
                 (_%g211861211899%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx212306212307%_)))))
            (let ((_%__kont212308212309%_
                   (lambda (_%L212017%_) (_%generate-e211858%_ _%L212017%_)))
                  (_%__kont212310212311%_
                   (lambda (_%L211952%_)
                     (let ((_%types211978%_
                            (map _%generate-e211858%_
                                 (let ((__tmp212721
                                        (lambda (_%g211970211973%_
                                                 _%g211971211975%_)
                                          (cons _%g211970211973%_
                                                _%g211971211975%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp212721 '() _%L211952%_)))))
                       (cons 'begin _%types211978%_)))))
              (let ((_%__match212361212362%_
                     (lambda (_%e211877211904%_
                              _%hd211878211907%_
                              _%tl211879211909%_
                              _%e211880211912%_
                              _%hd211881211915%_
                              _%tl211882211917%_
                              _%__splice212312212313%_
                              _%target211883211920%_
                              _%tl211885211922%_)
                       (letrec ((_%loop211886211925%_
                                 (lambda (_%hd211884211928%_
                                          _%id211890211930%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd211884211928%_))
                                       (let ((_%e211887211933%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd211884211928%_))))
                                         (let ((_%lp-tl211889211938%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e211887211933%_)))
                                               (_%lp-hd211888211936%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e211887211933%_))))
                                           (_%loop211886211925%_
                                            _%lp-tl211889211938%_
                                            (cons _%lp-hd211888211936%_
                                                  _%id211890211930%_))))
                                       (let ((_%id211891211941%_
                                              (reverse _%id211890211930%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl211882211917%_))
                                             (let ((_%e211892211944%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl211882211917%_))))
                                               (let ((_%tl211894211949%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e211892211944%_)))
                                                     (_%hd211893211947%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e211892211944%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl211894211949%_))
                                                     (_%__kont212310212311%_
                                                      _%id211891211941%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g211861211899%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g211861211899%_))))))))
                         (_%loop211886211925%_ _%target211883211920%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx212306212307%_))
                    (let ((_%e211864211985%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx212306212307%_))))
                      (let ((_%tl211866211990%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e211864211985%_)))
                            (_%hd211865211988%_
                             (let ()
                               (declare (not safe))
                               (##car _%e211864211985%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl211866211990%_))
                            (let ((_%e211867211993%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl211866211990%_))))
                              (let ((_%tl211869211998%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e211867211993%_)))
                                    (_%hd211868211996%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e211867211993%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd211868211996%_))
                                    (let ((_%e211870212001%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd211868211996%_))))
                                      (let ((_%tl211872212006%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e211870212001%_)))
                                            (_%hd211871212004%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e211870212001%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl211872212006%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl211869211998%_))
                                                (let ((_%e211873212009%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl211869211998%_))))
                                                  (let ((_%tl211875212014%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e211873212009%_)))
                                                        (_%hd211874212012%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e211873212009%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211875212014%_))
                                                        (_%__kont212308212309%_
                                                         _%hd211871212004%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd211868211996%_))
                                                            (let ((_%__splice212312212313%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd211868211996%_
                              '0))))
                      (let ((_%tl211885211922%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice212312212313%_ '1)))
                            (_%target211883211920%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice212312212313%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl211885211922%_))
                            (_%__match212361212362%_
                             _%e211864211985%_
                             _%hd211865211988%_
                             _%tl211866211990%_
                             _%e211867211993%_
                             _%hd211868211996%_
                             _%tl211869211998%_
                             _%__splice212312212313%_
                             _%target211883211920%_
                             _%tl211885211922%_)
                            (let ()
                              (declare (not safe))
                              (_%g211861211899%_)))))
                    (let () (declare (not safe)) (_%g211861211899%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd211868211996%_))
                                                    (let ((_%__splice212312212313%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd211868211996%_
                                                              '0))))
                                                      (let ((_%tl211885211922%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice212312212313%_ '1)))
                    (_%target211883211920%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice212312212313%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl211885211922%_))
                    (_%__match212361212362%_
                     _%e211864211985%_
                     _%hd211865211988%_
                     _%tl211866211990%_
                     _%e211867211993%_
                     _%hd211868211996%_
                     _%tl211869211998%_
                     _%__splice212312212313%_
                     _%target211883211920%_
                     _%tl211885211922%_)
                    (let () (declare (not safe)) (_%g211861211899%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g211861211899%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd211868211996%_))
                                                (let ((_%__splice212312212313%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd211868211996%_
                                                          '0))))
                                                  (let ((_%tl211885211922%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice212312212313%_
                                                            '1)))
                                                        (_%target211883211920%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice212312212313%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211885211922%_))
                                                        (_%__match212361212362%_
                                                         _%e211864211985%_
                                                         _%hd211865211988%_
                                                         _%tl211866211990%_
                                                         _%e211867211993%_
                                                         _%hd211868211996%_
                                                         _%tl211869211998%_
                                                         _%__splice212312212313%_
                                                         _%target211883211920%_
                                                         _%tl211885211922%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g211861211899%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g211861211899%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd211868211996%_))
                                        (let ((_%__splice212312212313%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd211868211996%_
                                                  '0))))
                                          (let ((_%tl211885211922%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice212312212313%_
                                                    '1)))
                                                (_%target211883211920%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice212312212313%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl211885211922%_))
                                                (_%__match212361212362%_
                                                 _%e211864211985%_
                                                 _%hd211865211988%_
                                                 _%tl211866211990%_
                                                 _%e211867211993%_
                                                 _%hd211868211996%_
                                                 _%tl211869211998%_
                                                 _%__splice212312212313%_
                                                 _%target211883211920%_
                                                 _%tl211885211922%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g211861211899%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g211861211899%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g211861211899%_)))))
                    (let () (declare (not safe)) (_%g211861211899%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self211408%_ _%stx211409%_)
        (let* ((_%__stx212364212365%_ _%stx211409%_)
               (_%g211413211515%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx212364212365%_)))))
          (let ((_%__kont212366212367%_
                 (lambda (_%L211805%_
                          _%L211806%_
                          _%L211807%_
                          _%L211808%_
                          _%L211809%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L211808%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L211807%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L211806%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L211805%_))
                                                 '())))))))
                (_%__kont212368212369%_
                 (lambda (_%L211631%_ _%L211632%_ _%L211633%_ _%L211634%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L211633%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L211632%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L211631%_))
                                           (cons '#f '())))))))
                (_%__kont212370212371%_ (lambda () '(begin))))
            (let ((_%__match212499212500%_
                   (lambda (_%e211420211677%_
                            _%hd211421211680%_
                            _%tl211422211682%_
                            _%e211423211685%_
                            _%hd211424211688%_
                            _%tl211425211690%_
                            _%e211426211693%_
                            _%hd211427211696%_
                            _%tl211428211698%_
                            _%e211429211701%_
                            _%hd211430211704%_
                            _%tl211431211706%_
                            _%e211432211709%_
                            _%hd211433211712%_
                            _%tl211434211714%_
                            _%e211435211717%_
                            _%hd211436211720%_
                            _%tl211437211722%_
                            _%e211438211725%_
                            _%hd211439211728%_
                            _%tl211440211730%_
                            _%e211441211733%_
                            _%hd211442211736%_
                            _%tl211443211738%_
                            _%e211444211741%_
                            _%hd211445211744%_
                            _%tl211446211746%_
                            _%e211447211749%_
                            _%hd211448211752%_
                            _%tl211449211754%_
                            _%e211450211757%_
                            _%hd211451211760%_
                            _%tl211452211762%_
                            _%e211453211765%_
                            _%hd211454211768%_
                            _%tl211455211770%_
                            _%e211456211773%_
                            _%hd211457211776%_
                            _%tl211458211778%_
                            _%e211459211781%_
                            _%hd211460211784%_
                            _%tl211461211786%_
                            _%e211462211789%_
                            _%hd211463211792%_
                            _%tl211464211794%_
                            _%e211465211797%_
                            _%hd211466211800%_
                            _%tl211467211802%_)
                     (let ((_%L211805%_ _%hd211466211800%_)
                           (_%L211806%_ _%hd211457211776%_)
                           (_%L211807%_ _%hd211448211752%_)
                           (_%L211808%_ _%hd211439211728%_)
                           (_%L211809%_ _%hd211430211704%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L211809%_
                              'bind-method!))
                           (_%__kont212366212367%_
                            _%L211805%_
                            _%L211806%_
                            _%L211807%_
                            _%L211808%_
                            _%L211809%_)
                           (_%__kont212370212371%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx212364212365%_))
                  (let ((_%e211420211677%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx212364212365%_))))
                    (let ((_%tl211422211682%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e211420211677%_)))
                          (_%hd211421211680%_
                           (let ()
                             (declare (not safe))
                             (##car _%e211420211677%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl211422211682%_))
                          (let ((_%e211423211685%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl211422211682%_))))
                            (let ((_%tl211425211690%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e211423211685%_)))
                                  (_%hd211424211688%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e211423211685%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd211424211688%_))
                                  (let ((_%e211426211693%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd211424211688%_))))
                                    (let ((_%tl211428211698%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e211426211693%_)))
                                          (_%hd211427211696%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e211426211693%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd211427211696%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd211427211696%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl211428211698%_))
                                                  (let ((_%e211429211701%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl211428211698%_))))
                                                    (let ((_%tl211431211706%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e211429211701%_)))
                                                          (_%hd211430211704%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e211429211701%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl211431211706%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl211425211690%_))
                      (let ((_%e211432211709%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl211425211690%_))))
                        (let ((_%tl211434211714%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211432211709%_)))
                              (_%hd211433211712%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211432211709%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd211433211712%_))
                              (let ((_%e211435211717%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd211433211712%_))))
                                (let ((_%tl211437211722%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211435211717%_)))
                                      (_%hd211436211720%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211435211717%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd211436211720%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd211436211720%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl211437211722%_))
                                              (let ((_%e211438211725%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl211437211722%_))))
                                                (let ((_%tl211440211730%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e211438211725%_)))
                                                      (_%hd211439211728%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e211438211725%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl211440211730%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl211434211714%_))
                                                          (let ((_%e211441211733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl211434211714%_))))
                    (let ((_%tl211443211738%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e211441211733%_)))
                          (_%hd211442211736%_
                           (let ()
                             (declare (not safe))
                             (##car _%e211441211733%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd211442211736%_))
                          (let ((_%e211444211741%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd211442211736%_))))
                            (let ((_%tl211446211746%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e211444211741%_)))
                                  (_%hd211445211744%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e211444211741%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd211445211744%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd211445211744%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl211446211746%_))
                                          (let ((_%e211447211749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl211446211746%_))))
                                            (let ((_%tl211449211754%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e211447211749%_)))
                                                  (_%hd211448211752%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e211447211749%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl211449211754%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl211443211738%_))
                                                      (let ((_%e211450211757%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl211443211738%_))))
                (let ((_%tl211452211762%_
                       (let () (declare (not safe)) (##cdr _%e211450211757%_)))
                      (_%hd211451211760%_
                       (let ()
                         (declare (not safe))
                         (##car _%e211450211757%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd211451211760%_))
                      (let ((_%e211453211765%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd211451211760%_))))
                        (let ((_%tl211455211770%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211453211765%_)))
                              (_%hd211454211768%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211453211765%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd211454211768%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd211454211768%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211455211770%_))
                                      (let ((_%e211456211773%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211455211770%_))))
                                        (let ((_%tl211458211778%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211456211773%_)))
                                              (_%hd211457211776%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211456211773%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211458211778%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl211452211762%_))
                                                  (let ((_%e211459211781%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl211452211762%_))))
                                                    (let ((_%tl211461211786%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e211459211781%_)))
                                                          (_%hd211460211784%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e211459211781%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd211460211784%_))
                                                          (let ((_%e211462211789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd211460211784%_))))
                    (let ((_%tl211464211794%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e211462211789%_)))
                          (_%hd211463211792%_
                           (let ()
                             (declare (not safe))
                             (##car _%e211462211789%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd211463211792%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd211463211792%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl211464211794%_))
                                  (let ((_%e211465211797%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl211464211794%_))))
                                    (let ((_%tl211467211802%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e211465211797%_)))
                                          (_%hd211466211800%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e211465211797%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl211467211802%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211461211786%_))
                                              (_%__match212499212500%_
                                               _%e211420211677%_
                                               _%hd211421211680%_
                                               _%tl211422211682%_
                                               _%e211423211685%_
                                               _%hd211424211688%_
                                               _%tl211425211690%_
                                               _%e211426211693%_
                                               _%hd211427211696%_
                                               _%tl211428211698%_
                                               _%e211429211701%_
                                               _%hd211430211704%_
                                               _%tl211431211706%_
                                               _%e211432211709%_
                                               _%hd211433211712%_
                                               _%tl211434211714%_
                                               _%e211435211717%_
                                               _%hd211436211720%_
                                               _%tl211437211722%_
                                               _%e211438211725%_
                                               _%hd211439211728%_
                                               _%tl211440211730%_
                                               _%e211441211733%_
                                               _%hd211442211736%_
                                               _%tl211443211738%_
                                               _%e211444211741%_
                                               _%hd211445211744%_
                                               _%tl211446211746%_
                                               _%e211447211749%_
                                               _%hd211448211752%_
                                               _%tl211449211754%_
                                               _%e211450211757%_
                                               _%hd211451211760%_
                                               _%tl211452211762%_
                                               _%e211453211765%_
                                               _%hd211454211768%_
                                               _%tl211455211770%_
                                               _%e211456211773%_
                                               _%hd211457211776%_
                                               _%tl211458211778%_
                                               _%e211459211781%_
                                               _%hd211460211784%_
                                               _%tl211461211786%_
                                               _%e211462211789%_
                                               _%hd211463211792%_
                                               _%tl211464211794%_
                                               _%e211465211797%_
                                               _%hd211466211800%_
                                               _%tl211467211802%_)
                                              (_%__kont212370212371%_))
                                          (_%__kont212370212371%_))))
                                  (_%__kont212370212371%_))
                              (_%__kont212370212371%_))
                          (_%__kont212370212371%_))))
                  (_%__kont212370212371%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl211452211762%_))
                                                      (if (let ((__tmp212722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp212722 'bind-method!))
                  (let ((_%L211631%_ _%hd211457211776%_)
                        (_%L211632%_ _%hd211448211752%_)
                        (_%L211633%_ _%hd211439211728%_)
                        (_%L211634%_ _%hd211430211704%_))
                    (_%__kont212368212369%_
                     _%L211631%_
                     _%L211632%_
                     _%L211633%_
                     _%L211634%_))
                  (_%__kont212370212371%_))
              (_%__kont212370212371%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont212370212371%_))))
                                      (_%__kont212370212371%_))
                                  (_%__kont212370212371%_))
                              (_%__kont212370212371%_))))
                      (_%__kont212370212371%_))))
              (_%__kont212370212371%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont212370212371%_))))
                                          (_%__kont212370212371%_))
                                      (_%__kont212370212371%_))
                                  (_%__kont212370212371%_))))
                          (_%__kont212370212371%_))))
                  (_%__kont212370212371%_))
              (_%__kont212370212371%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont212370212371%_))
                                          (_%__kont212370212371%_))
                                      (_%__kont212370212371%_))))
                              (_%__kont212370212371%_))))
                      (_%__kont212370212371%_))
                  (_%__kont212370212371%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont212370212371%_))
                                              (_%__kont212370212371%_))
                                          (_%__kont212370212371%_))))
                                  (_%__kont212370212371%_))))
                          (_%__kont212370212371%_))))
                  (_%__kont212370212371%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self211232%_ _%stx211233%_)
        (let* ((_%__stx212608212609%_ _%stx211233%_)
               (_%g211236211276%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx212608212609%_)))))
          (let ((_%__kont212610212611%_
                 (lambda (_%L211382%_ _%L211383%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L211383%_))
                               (cons _%L211382%_ '())))))
                (_%__kont212612212613%_
                 (lambda (_%L211305%_ _%L211306%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx212608212609%_))
                (let ((_%e211240211326%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx212608212609%_))))
                  (let ((_%tl211242211331%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e211240211326%_)))
                        (_%hd211241211329%_
                         (let ()
                           (declare (not safe))
                           (##car _%e211240211326%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl211242211331%_))
                        (let ((_%e211243211334%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl211242211331%_))))
                          (let ((_%tl211245211339%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211243211334%_)))
                                (_%hd211244211337%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211243211334%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd211244211337%_))
                                (let ((_%e211246211342%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd211244211337%_))))
                                  (let ((_%tl211248211347%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e211246211342%_)))
                                        (_%hd211247211345%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e211246211342%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd211247211345%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd211247211345%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl211248211347%_))
                                                (let ((_%e211249211350%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl211248211347%_))))
                                                  (let ((_%tl211251211355%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e211249211350%_)))
                                                        (_%hd211250211353%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e211249211350%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211251211355%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl211245211339%_))
                                                            (let ((_%e211252211358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl211245211339%_))))
                      (let ((_%tl211254211363%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e211252211358%_)))
                            (_%hd211253211361%_
                             (let ()
                               (declare (not safe))
                               (##car _%e211252211358%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd211253211361%_))
                            (let ((_%e211255211366%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd211253211361%_))))
                              (let ((_%tl211257211371%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e211255211366%_)))
                                    (_%hd211256211369%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e211255211366%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd211256211369%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd211256211369%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl211257211371%_))
                                            (let ((_%e211258211374%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl211257211371%_))))
                                              (let ((_%tl211260211379%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e211258211374%_)))
                                                    (_%hd211259211377%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e211258211374%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl211260211379%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211254211363%_))
                                                        (_%__kont212610212611%_
                                                         _%hd211259211377%_
                                                         _%hd211250211353%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g211236211276%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211254211363%_))
                                                        (_%__kont212612212613%_
                                                         _%hd211253211361%_
                                                         _%hd211244211337%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g211236211276%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl211254211363%_))
                                                (_%__kont212612212613%_
                                                 _%hd211253211361%_
                                                 _%hd211244211337%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g211236211276%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl211254211363%_))
                                            (_%__kont212612212613%_
                                             _%hd211253211361%_
                                             _%hd211244211337%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g211236211276%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl211254211363%_))
                                        (_%__kont212612212613%_
                                         _%hd211253211361%_
                                         _%hd211244211337%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g211236211276%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl211254211363%_))
                                (_%__kont212612212613%_
                                 _%hd211253211361%_
                                 _%hd211244211337%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g211236211276%_))))))
                    (let () (declare (not safe)) (_%g211236211276%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl211245211339%_))
                    (let ((_%e211269211297%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl211245211339%_))))
                      (let ((_%tl211271211302%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e211269211297%_)))
                            (_%hd211270211300%_
                             (let ()
                               (declare (not safe))
                               (##car _%e211269211297%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl211271211302%_))
                            (_%__kont212612212613%_
                             _%hd211270211300%_
                             _%hd211244211337%_)
                            (let ()
                              (declare (not safe))
                              (_%g211236211276%_)))))
                    (let () (declare (not safe)) (_%g211236211276%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl211245211339%_))
                                                    (let ((_%e211269211297%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl211245211339%_))))
                                                      (let ((_%tl211271211302%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e211269211297%_)))
                    (_%hd211270211300%_
                     (let () (declare (not safe)) (##car _%e211269211297%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl211271211302%_))
                    (_%__kont212612212613%_
                     _%hd211270211300%_
                     _%hd211244211337%_)
                    (let () (declare (not safe)) (_%g211236211276%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g211236211276%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl211245211339%_))
                                                (let ((_%e211269211297%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl211245211339%_))))
                                                  (let ((_%tl211271211302%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e211269211297%_)))
                                                        (_%hd211270211300%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e211269211297%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211271211302%_))
                                                        (_%__kont212612212613%_
                                                         _%hd211270211300%_
                                                         _%hd211244211337%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g211236211276%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g211236211276%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl211245211339%_))
                                            (let ((_%e211269211297%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl211245211339%_))))
                                              (let ((_%tl211271211302%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e211269211297%_)))
                                                    (_%hd211270211300%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e211269211297%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl211271211302%_))
                                                    (_%__kont212612212613%_
                                                     _%hd211270211300%_
                                                     _%hd211244211337%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g211236211276%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g211236211276%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl211245211339%_))
                                    (let ((_%e211269211297%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl211245211339%_))))
                                      (let ((_%tl211271211302%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e211269211297%_)))
                                            (_%hd211270211300%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e211269211297%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl211271211302%_))
                                            (_%__kont212612212613%_
                                             _%hd211270211300%_
                                             _%hd211244211337%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g211236211276%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g211236211276%_))))))
                        (let () (declare (not safe)) (_%g211236211276%_)))))
                (let () (declare (not safe)) (_%g211236211276%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self211219%_)
        (let ((_%self211222%_ _%self211219%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self211222%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self210992%_)
        (let* ((_%self210995%_ _%self210992%_)
               (_%self211004211020%_ _%self210995%_)
               (_%E211006211024%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self211004211020%_
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
               (_%K211007211039%_
                (lambda (_%methods211027%_
                         _%metaclass211028%_
                         _%system?211029%_
                         _%final?211030%_
                         _%struct?211031%_
                         _%constructor211032%_
                         _%fields211033%_
                         _%slots211034%_
                         _%precendence-list211035%_
                         _%super211036%_
                         _%id211037%_)
                  (cons '@class
                        (cons _%id211037%_
                              (cons _%super211036%_
                                    (cons _%precendence-list211035%_
                                          (cons _%slots211034%_
                                                (cons _%fields211033%_
                                                      (cons _%constructor211032%_
                                                            (cons _%struct?211031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?211030%_
                                (cons _%system?211029%_
                                      (cons _%metaclass211028%_
                                            (cons (if _%methods211027%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods211027%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e211008211042%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211004211020%_ '1 '#f '#f)))
               (_%id211045%_ _%e211008211042%_)
               (_%e211009211047%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211004211020%_ '2 '#f '#f)))
               (_%super211050%_ _%e211009211047%_)
               (_%e211010211052%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211004211020%_ '3 '#f '#f)))
               (_%precendence-list211055%_ _%e211010211052%_)
               (_%e211011211057%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211004211020%_ '4 '#f '#f)))
               (_%slots211060%_ _%e211011211057%_)
               (_%e211012211062%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211004211020%_ '5 '#f '#f)))
               (_%fields211065%_ _%e211012211062%_)
               (_%e211013211067%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211004211020%_ '6 '#f '#f)))
               (_%constructor211070%_ _%e211013211067%_)
               (_%e211014211072%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211004211020%_ '7 '#f '#f)))
               (_%struct?211075%_ _%e211014211072%_)
               (_%e211015211077%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211004211020%_ '8 '#f '#f)))
               (_%final?211080%_ _%e211015211077%_)
               (_%e211016211082%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211004211020%_ '9 '#f '#f)))
               (_%system?211085%_ _%e211016211082%_)
               (_%e211017211087%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self211004211020%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass211090%_ _%e211017211087%_)
               (_%e211018211092%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self211004211020%_
                   '11
                   '#f
                   '#f)))
               (_%methods211095%_ _%e211018211092%_))
          (_%K211007211039%_
           _%methods211095%_
           _%metaclass211090%_
           _%system?211085%_
           _%final?211080%_
           _%struct?211075%_
           _%constructor211070%_
           _%fields211065%_
           _%slots211060%_
           _%precendence-list211055%_
           _%super211050%_
           _%id211045%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self210857%_)
        (let ((_%self210860%_ _%self210857%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self210860%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self210722%_)
        (let ((_%self210725%_ _%self210722%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self210725%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self210587%_)
        (let ((_%self210590%_ _%self210587%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self210590%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self210590%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self210590%_
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
      (lambda (_%self210452%_)
        (let ((_%self210455%_ _%self210452%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self210455%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self210455%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self210455%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self210317%_)
        (let ((_%self210320%_ _%self210317%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self210320%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self210320%_
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
      (lambda (_%self210130%_)
        (let* ((_%self210133%_ _%self210130%_)
               (_%self210142210151%_ _%self210133%_)
               (_%E210144210155%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self210142210151%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K210145210174%_
                (lambda (_%dispatch210158%_
                         _%arity210159%_
                         _%signature210160%_)
                  (if _%signature210160%_
                      (let ((_%signature210162%_ _%signature210160%_))
                        (cons '@lambda
                              (cons _%arity210159%_
                                    (cons _%dispatch210158%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature210162%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature210162%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature210162%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature210162%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature210162%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity210159%_
                                  (cons _%dispatch210158%_ '()))))))
               (_%e210146210177%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210142210151%_ '1 '#f '#f)))
               (_%e210147210180%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210142210151%_ '2 '#f '#f)))
               (_%signature210183%_ _%e210147210180%_)
               (_%e210148210185%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210142210151%_ '3 '#f '#f)))
               (_%arity210188%_ _%e210148210185%_)
               (_%e210149210190%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210142210151%_ '4 '#f '#f)))
               (_%dispatch210193%_ _%e210149210190%_))
          (_%K210145210174%_
           _%dispatch210193%_
           _%arity210188%_
           _%signature210183%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self209990%_)
        (let ((_%self209993%_ _%self209990%_))
          (letrec ((_%clause-e210004%_
                    (lambda (_%clause210006%_)
                      (cdr (let ((__method212696
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause210006%_
                                     'typedecl))))
                             (if __method212696
                                 (let ()
                                   (declare (not safe))
                                   (__method212696 _%clause210006%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause210006%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e210004%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self209993%_
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
      (lambda (_%self209855%_)
        (let ((_%self209858%_ _%self209855%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self209858%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self209858%_
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
      (lambda (_%self209720%_)
        (let ((_%self209723%_ _%self209720%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self209723%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self209723%_
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
      (lambda (_%self209585%_)
        (let ((_%self209588%_ _%self209585%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self209588%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
