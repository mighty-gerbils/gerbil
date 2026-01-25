(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1769382902)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp212755
                   (let ((__obj212749
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
                       (gxc#optimizer-info:::init! __obj212749))
                     __obj212749)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp212755)))))
    (define gxc#optimize!
      (lambda (_%ctx212357%_)
        (let ((__tmp212757
               (lambda ()
                 (let ((__tmp212759
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx212357%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx212357%_)
                          (let ((__tmp212761
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp212760
                                 (##structure-ref
                                  _%ctx212357%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp212761 __tmp212760 '#t))
                          (let ((_%code212361%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx212357%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx212357%_
                             _%code212361%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp212758
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp212759
                    gxc#current-compile-local-type
                    __tmp212758))))
              (__tmp212756 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212757
           gxc#current-compile-mutators
           __tmp212756))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx212343%_)
        (letrec ((_%load-it!212345%_
                  (lambda (_%id212355%_)
                    (if (let ((__tmp212762
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp212762 _%id212355%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id212355%_)
                          (let ((__tmp212763
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp212763 _%id212355%_ '#t)))))))
          (let* ((_%modid212347%_
                  (##structure-ref
                   _%ctx212343%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str212349%_ (symbol->string _%modid212347%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str212349%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str212349%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!212345%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!212345%_
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
      (lambda (_%ctx212280%_)
        (letrec* ((_%deps212282%_
                   (let* ((_%imports212333%_
                           (##structure-ref
                            _%ctx212280%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e212335%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx212280%_))))
                     (if _%$e212335%_
                         ((lambda (_%g212337212339%_)
                            (cons _%g212337212339%_ _%imports212333%_))
                          _%$e212335%_)
                         _%imports212333%_))))
          (let _%lp212284%_ ((_%rest212286%_ _%deps212282%_))
            (let* ((_%rest212287212295%_ _%rest212286%_)
                   (_%else212289212303%_ (lambda () '#!void))
                   (_%K212291212321%_
                    (lambda (_%rest212306%_ _%hd212307%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd212307%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp212765
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp212764
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd212307%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp212765 __tmp212764))
                                '#!void
                                (begin
                                  (let ((_%$e212310%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd212307%_))))
                                    (if _%$e212310%_
                                        ((lambda (_%pre212313%_)
                                           (_%lp212284%_
                                            (cons _%pre212313%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd212307%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e212310%_)
                                        (_%lp212284%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd212307%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd212307%_)))
                            (_%lp212284%_ _%rest212306%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd212307%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp212767
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp212766
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd212307%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp212767 __tmp212766))
                                    '#!void
                                    (begin
                                      (_%lp212284%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd212307%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd212307%_)))
                                (_%lp212284%_ _%rest212306%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd212307%_
                                     'gx#module-import::t))
                                  (_%lp212284%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd212307%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest212306%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd212307%_
                                         'gx#module-export::t))
                                      (_%lp212284%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd212307%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest212306%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd212307%_
                                             'gx#import-set::t))
                                          (_%lp212284%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd212307%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest212306%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd212307%_))))))))))
              (if (pair? _%rest212287212295%_)
                  (let ((_%hd212292212324%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest212287212295%_)))
                        (_%tl212293212326%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest212287212295%_))))
                    (let* ((_%hd212329%_ _%hd212292212324%_)
                           (_%rest212331%_ _%tl212293212326%_))
                      (_%K212291212321%_ _%rest212331%_ _%hd212329%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx212260%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx212260%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx212260%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht212262%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id212264%_
                    (##structure-ref
                     _%ctx212260%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod212266%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht212262%_ _%id212264%_)))
                   (_%$e212269%_ _%mod212266%_))
              (if _%$e212269%_
                  _%$e212269%_
                  (let* ((_%mod212272%_
                          (gxc#optimizer-import-ssxi _%ctx212260%_))
                         (_%val212277%_
                          (let ((_%$e212274%_ _%mod212272%_))
                            (if _%$e212274%_ _%$e212274%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht212262%_ _%id212264%_ _%val212277%_))
                    _%val212277%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx212258%_)
        (if (##structure-ref _%ctx212258%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx212258%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id212236%_)
        (letrec ((_%catch-e212238%_
                  (lambda (_%exn212256%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn212256%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn212256%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id212236%_))))
                    '#f))
                 (_%import-e212239%_
                  (lambda ()
                    (let* ((_%str-id212242%_
                            (let ((__tmp212768
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id212236%_))))
                              (declare (not safe))
                              (##string-append __tmp212768 '".ssxi")))
                           (_%artefact-path212249%_
                            (let ((_%odir212243212245%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir212243212245%_
                                  (let ((_%odir212247%_ _%odir212243212245%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id212242%_
                                        '".ss"))
                                     _%odir212247%_))
                                  '#f)))
                           (_%library-path212251%_
                            (let ((__tmp212769
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id212242%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp212769)))
                           (_%ssxi-path212253%_
                            (if (and _%artefact-path212249%_
                                     (file-exists? _%artefact-path212249%_))
                                _%artefact-path212249%_
                                _%library-path212251%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path212253%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path212253%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e212238%_ _%import-e212239%_)))))
    (define gxc#optimize-source
      (lambda (_%stx212221%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx212221%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx212221%_))
        (let* ((_%stx212223%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx212221%_)))
               (_%stx212225%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx212223%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx212225%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx212225%_))
          (let _%fixpoint212228%_ ((_%current212230%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx212225%_))
            (let ((_%refined212232%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current212230%_ _%refined212232%_)
                  '#!void
                  (_%fixpoint212228%_ _%refined212232%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx212225%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx212225%_))
          (let ((_%stx212234%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx212225%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx212234%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp212771 (list gxc#::generate-runtime-empty::t))
            (__tmp212770 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp212771
         '()
         __tmp212770
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args212218%_
        (apply make-instance gxc#::generate-ssxi::t _%$args212218%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp212772
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
        (__make-atomic-promise __tmp212772)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx212210%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self212213%_
                (let ((__obj212751
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj212751))
               (__tmp212773
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self212213%_ _%stx212210%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212773
           gxc#current-compile-method
           _%self212213%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self212170%_ _%stx212171%_)
        (let* ((_%g212173212183%_
                (lambda (_%g212174212180%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212174212180%_))))
               (_%g212172212207%_
                (lambda (_%g212174212186%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212174212186%_))
                      (let ((_%e212176212188%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212174212186%_))))
                        (let ((_%hd212177212191%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212176212188%_)))
                              (_%tl212178212193%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212176212188%_))))
                          ((lambda (_%g212175212196%_)
                             (let ((__tmp212776
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self212170%_
                                         _%stx212171%_))))
                                   (__tmp212774
                                    (let ((__tmp212775
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp212775 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp212776
                                gx#current-expander-phi
                                __tmp212774)))
                           _%tl212178212193%_)))
                      (_%g212173212183%_ _%g212174212186%_)))))
          (_%g212172212207%_ _%stx212171%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self212109%_ _%stx212110%_)
        (let* ((_%g212112212126%_
                (lambda (_%g212113212123%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212113212123%_))))
               (_%g212111212167%_
                (lambda (_%g212113212129%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212113212129%_))
                      (let ((_%e212116212131%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212113212129%_))))
                        (let ((_%hd212117212134%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212116212131%_)))
                              (_%tl212118212136%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212116212131%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212118212136%_))
                              (let ((_%e212119212139%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212118212136%_))))
                                (let ((_%hd212120212142%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212119212139%_)))
                                      (_%tl212121212144%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212119212139%_))))
                                  ((lambda (_%g212114212147%_
                                            _%g212115212148%_)
                                     (let* ((_%ctx212161%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%g212115212148%_)))
                                            (_%code212163%_
                                             (##structure-ref
                                              _%ctx212161%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp212777
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self212109%_
                                                  _%code212163%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp212777
                                        gx#current-expander-context
                                        _%ctx212161%_)))
                                   _%tl212121212144%_
                                   _%hd212120212142%_)))
                              (_%g212112212126%_ _%g212113212129%_))))
                      (_%g212112212126%_ _%g212113212129%_)))))
          (_%g212111212167%_ _%stx212110%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self211916%_ _%stx211917%_)
        (letrec ((_%generate-e211919%_
                  (lambda (_%id212094%_)
                    (let* ((_%sym212096%_
                            (if (let ((__tmp212778
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp212778))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id212094%_))
                                '#f))
                           (_%$e212098%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym212096%_))))
                      (if _%$e212098%_
                          ((lambda (_%klass212101%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym212096%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym212096%_
                                                     (cons (let ((__method212752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass212101%_ 'typedecl))))
                     (if __method212752
                         (let ()
                           (declare (not safe))
                           (__method212752 _%klass212101%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass212101%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym212096%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym212096%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e212098%_)
                          (let ((_%$e212103%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym212096%_))))
                            (if _%$e212103%_
                                ((lambda (_%type212106%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym212096%_
                                      '" "
                                      _%type212106%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type212106%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym212096%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym212096%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type212106%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym212096%_
                                                   (cons (let ((__method212753
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type212106%_ 'typedecl))))
                   (if __method212753
                       (let ()
                         (declare (not safe))
                         (__method212753 _%type212106%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type212106%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e212103%_)
                                '(begin))))))))
          (let* ((_%__stx212364212365%_ _%stx211917%_)
                 (_%g211922211960%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx212364212365%_)))))
            (let ((_%__kont212366212367%_
                   (lambda (_%g211924212076%_)
                     (_%generate-e211919%_ _%g211924212076%_)))
                  (_%__kont212368212369%_
                   (lambda (_%g211937212011%_)
                     (let ((_%types212037%_
                            (map _%generate-e211919%_
                                 (let ((__tmp212779
                                        (lambda (_%g212029212032%_
                                                 _%g212030212034%_)
                                          (cons _%g212029212032%_
                                                _%g212030212034%_))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp212779
                                    '()
                                    _%g211937212011%_)))))
                       (cons 'begin _%types212037%_)))))
              (let ((_%__match212419212420%_
                     (lambda (_%e211938211965%_
                              _%hd211939211968%_
                              _%tl211940211970%_
                              _%e211941211973%_
                              _%hd211942211976%_
                              _%tl211943211978%_
                              _%__splice212370212371%_
                              _%target211944211981%_
                              _%tl211946211983%_)
                       (letrec ((_%loop211947211986%_
                                 (lambda (_%hd211945211989%_
                                          _%id211951211991%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd211945211989%_))
                                       (let ((_%e211948211993%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd211945211989%_))))
                                         (let ((_%lp-tl211950211998%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e211948211993%_)))
                                               (_%lp-hd211949211996%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e211948211993%_))))
                                           (_%loop211947211986%_
                                            _%lp-tl211950211998%_
                                            (cons _%lp-hd211949211996%_
                                                  _%id211951211991%_))))
                                       (let ((_%id211952212001%_
                                              (reverse _%id211951211991%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl211943211978%_))
                                             (let ((_%e211953212003%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl211943211978%_))))
                                               (let ((_%tl211955212008%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e211953212003%_)))
                                                     (_%hd211954212006%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e211953212003%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl211955212008%_))
                                                     (_%__kont212368212369%_
                                                      _%id211952212001%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g211922211960%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g211922211960%_))))))))
                         (_%loop211947211986%_ _%target211944211981%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx212364212365%_))
                    (let ((_%e211925212044%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx212364212365%_))))
                      (let ((_%tl211927212049%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e211925212044%_)))
                            (_%hd211926212047%_
                             (let ()
                               (declare (not safe))
                               (##car _%e211925212044%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl211927212049%_))
                            (let ((_%e211928212052%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl211927212049%_))))
                              (let ((_%tl211930212057%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e211928212052%_)))
                                    (_%hd211929212055%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e211928212052%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd211929212055%_))
                                    (let ((_%e211931212060%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd211929212055%_))))
                                      (let ((_%tl211933212065%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e211931212060%_)))
                                            (_%hd211932212063%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e211931212060%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl211933212065%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl211930212057%_))
                                                (let ((_%e211934212068%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl211930212057%_))))
                                                  (let ((_%tl211936212073%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e211934212068%_)))
                                                        (_%hd211935212071%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e211934212068%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211936212073%_))
                                                        (_%__kont212366212367%_
                                                         _%hd211932212063%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd211929212055%_))
                                                            (let ((_%__splice212370212371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd211929212055%_
                              '0))))
                      (let ((_%tl211946211983%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice212370212371%_ '1)))
                            (_%target211944211981%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice212370212371%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl211946211983%_))
                            (_%__match212419212420%_
                             _%e211925212044%_
                             _%hd211926212047%_
                             _%tl211927212049%_
                             _%e211928212052%_
                             _%hd211929212055%_
                             _%tl211930212057%_
                             _%__splice212370212371%_
                             _%target211944211981%_
                             _%tl211946211983%_)
                            (let ()
                              (declare (not safe))
                              (_%g211922211960%_)))))
                    (let () (declare (not safe)) (_%g211922211960%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd211929212055%_))
                                                    (let ((_%__splice212370212371%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd211929212055%_
                                                              '0))))
                                                      (let ((_%tl211946211983%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice212370212371%_ '1)))
                    (_%target211944211981%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice212370212371%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl211946211983%_))
                    (_%__match212419212420%_
                     _%e211925212044%_
                     _%hd211926212047%_
                     _%tl211927212049%_
                     _%e211928212052%_
                     _%hd211929212055%_
                     _%tl211930212057%_
                     _%__splice212370212371%_
                     _%target211944211981%_
                     _%tl211946211983%_)
                    (let () (declare (not safe)) (_%g211922211960%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g211922211960%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd211929212055%_))
                                                (let ((_%__splice212370212371%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd211929212055%_
                                                          '0))))
                                                  (let ((_%tl211946211983%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice212370212371%_
                                                            '1)))
                                                        (_%target211944211981%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice212370212371%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211946211983%_))
                                                        (_%__match212419212420%_
                                                         _%e211925212044%_
                                                         _%hd211926212047%_
                                                         _%tl211927212049%_
                                                         _%e211928212052%_
                                                         _%hd211929212055%_
                                                         _%tl211930212057%_
                                                         _%__splice212370212371%_
                                                         _%target211944211981%_
                                                         _%tl211946211983%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g211922211960%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g211922211960%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd211929212055%_))
                                        (let ((_%__splice212370212371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd211929212055%_
                                                  '0))))
                                          (let ((_%tl211946211983%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice212370212371%_
                                                    '1)))
                                                (_%target211944211981%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice212370212371%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl211946211983%_))
                                                (_%__match212419212420%_
                                                 _%e211925212044%_
                                                 _%hd211926212047%_
                                                 _%tl211927212049%_
                                                 _%e211928212052%_
                                                 _%hd211929212055%_
                                                 _%tl211930212057%_
                                                 _%__splice212370212371%_
                                                 _%target211944211981%_
                                                 _%tl211946211983%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g211922211960%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g211922211960%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g211922211960%_)))))
                    (let () (declare (not safe)) (_%g211922211960%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self211469%_ _%stx211470%_)
        (let* ((_%__stx212422212423%_ _%stx211470%_)
               (_%g211474211576%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx212422212423%_)))))
          (let ((_%__kont212424212425%_
                 (lambda (_%g211476211866%_
                          _%g211477211867%_
                          _%g211478211868%_
                          _%g211479211869%_
                          _%g211480211870%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g211479211869%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g211478211868%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g211477211867%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%g211476211866%_))
                                                 '())))))))
                (_%__kont212426212427%_
                 (lambda (_%g211529211692%_
                          _%g211530211693%_
                          _%g211531211694%_
                          _%g211532211695%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g211531211694%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%g211530211693%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%g211529211692%_))
                                           (cons '#f '())))))))
                (_%__kont212428212429%_ (lambda () '(begin))))
            (let ((_%__match212557212558%_
                   (lambda (_%e211481211738%_
                            _%hd211482211741%_
                            _%tl211483211743%_
                            _%e211484211746%_
                            _%hd211485211749%_
                            _%tl211486211751%_
                            _%e211487211754%_
                            _%hd211488211757%_
                            _%tl211489211759%_
                            _%e211490211762%_
                            _%hd211491211765%_
                            _%tl211492211767%_
                            _%e211493211770%_
                            _%hd211494211773%_
                            _%tl211495211775%_
                            _%e211496211778%_
                            _%hd211497211781%_
                            _%tl211498211783%_
                            _%e211499211786%_
                            _%hd211500211789%_
                            _%tl211501211791%_
                            _%e211502211794%_
                            _%hd211503211797%_
                            _%tl211504211799%_
                            _%e211505211802%_
                            _%hd211506211805%_
                            _%tl211507211807%_
                            _%e211508211810%_
                            _%hd211509211813%_
                            _%tl211510211815%_
                            _%e211511211818%_
                            _%hd211512211821%_
                            _%tl211513211823%_
                            _%e211514211826%_
                            _%hd211515211829%_
                            _%tl211516211831%_
                            _%e211517211834%_
                            _%hd211518211837%_
                            _%tl211519211839%_
                            _%e211520211842%_
                            _%hd211521211845%_
                            _%tl211522211847%_
                            _%e211523211850%_
                            _%hd211524211853%_
                            _%tl211525211855%_
                            _%e211526211858%_
                            _%hd211527211861%_
                            _%tl211528211863%_)
                     (let ((_%g211476211866%_ _%hd211527211861%_)
                           (_%g211477211867%_ _%hd211518211837%_)
                           (_%g211478211868%_ _%hd211509211813%_)
                           (_%g211479211869%_ _%hd211500211789%_)
                           (_%g211480211870%_ _%hd211491211765%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%g211480211870%_
                              'bind-method!))
                           (_%__kont212424212425%_
                            _%g211476211866%_
                            _%g211477211867%_
                            _%g211478211868%_
                            _%g211479211869%_
                            _%g211480211870%_)
                           (_%__kont212428212429%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx212422212423%_))
                  (let ((_%e211481211738%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx212422212423%_))))
                    (let ((_%tl211483211743%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e211481211738%_)))
                          (_%hd211482211741%_
                           (let ()
                             (declare (not safe))
                             (##car _%e211481211738%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl211483211743%_))
                          (let ((_%e211484211746%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl211483211743%_))))
                            (let ((_%tl211486211751%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e211484211746%_)))
                                  (_%hd211485211749%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e211484211746%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd211485211749%_))
                                  (let ((_%e211487211754%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd211485211749%_))))
                                    (let ((_%tl211489211759%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e211487211754%_)))
                                          (_%hd211488211757%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e211487211754%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd211488211757%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd211488211757%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl211489211759%_))
                                                  (let ((_%e211490211762%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl211489211759%_))))
                                                    (let ((_%tl211492211767%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e211490211762%_)))
                                                          (_%hd211491211765%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e211490211762%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl211492211767%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl211486211751%_))
                      (let ((_%e211493211770%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl211486211751%_))))
                        (let ((_%tl211495211775%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211493211770%_)))
                              (_%hd211494211773%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211493211770%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd211494211773%_))
                              (let ((_%e211496211778%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd211494211773%_))))
                                (let ((_%tl211498211783%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211496211778%_)))
                                      (_%hd211497211781%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211496211778%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd211497211781%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd211497211781%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl211498211783%_))
                                              (let ((_%e211499211786%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl211498211783%_))))
                                                (let ((_%tl211501211791%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e211499211786%_)))
                                                      (_%hd211500211789%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e211499211786%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl211501211791%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl211495211775%_))
                                                          (let ((_%e211502211794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl211495211775%_))))
                    (let ((_%tl211504211799%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e211502211794%_)))
                          (_%hd211503211797%_
                           (let ()
                             (declare (not safe))
                             (##car _%e211502211794%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd211503211797%_))
                          (let ((_%e211505211802%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd211503211797%_))))
                            (let ((_%tl211507211807%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e211505211802%_)))
                                  (_%hd211506211805%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e211505211802%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd211506211805%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd211506211805%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl211507211807%_))
                                          (let ((_%e211508211810%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl211507211807%_))))
                                            (let ((_%tl211510211815%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e211508211810%_)))
                                                  (_%hd211509211813%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e211508211810%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl211510211815%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl211504211799%_))
                                                      (let ((_%e211511211818%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl211504211799%_))))
                (let ((_%tl211513211823%_
                       (let () (declare (not safe)) (##cdr _%e211511211818%_)))
                      (_%hd211512211821%_
                       (let ()
                         (declare (not safe))
                         (##car _%e211511211818%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd211512211821%_))
                      (let ((_%e211514211826%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd211512211821%_))))
                        (let ((_%tl211516211831%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211514211826%_)))
                              (_%hd211515211829%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211514211826%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd211515211829%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd211515211829%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211516211831%_))
                                      (let ((_%e211517211834%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211516211831%_))))
                                        (let ((_%tl211519211839%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211517211834%_)))
                                              (_%hd211518211837%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211517211834%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211519211839%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl211513211823%_))
                                                  (let ((_%e211520211842%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl211513211823%_))))
                                                    (let ((_%tl211522211847%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e211520211842%_)))
                                                          (_%hd211521211845%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e211520211842%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd211521211845%_))
                                                          (let ((_%e211523211850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd211521211845%_))))
                    (let ((_%tl211525211855%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e211523211850%_)))
                          (_%hd211524211853%_
                           (let ()
                             (declare (not safe))
                             (##car _%e211523211850%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd211524211853%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd211524211853%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl211525211855%_))
                                  (let ((_%e211526211858%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl211525211855%_))))
                                    (let ((_%tl211528211863%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e211526211858%_)))
                                          (_%hd211527211861%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e211526211858%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl211528211863%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211522211847%_))
                                              (_%__match212557212558%_
                                               _%e211481211738%_
                                               _%hd211482211741%_
                                               _%tl211483211743%_
                                               _%e211484211746%_
                                               _%hd211485211749%_
                                               _%tl211486211751%_
                                               _%e211487211754%_
                                               _%hd211488211757%_
                                               _%tl211489211759%_
                                               _%e211490211762%_
                                               _%hd211491211765%_
                                               _%tl211492211767%_
                                               _%e211493211770%_
                                               _%hd211494211773%_
                                               _%tl211495211775%_
                                               _%e211496211778%_
                                               _%hd211497211781%_
                                               _%tl211498211783%_
                                               _%e211499211786%_
                                               _%hd211500211789%_
                                               _%tl211501211791%_
                                               _%e211502211794%_
                                               _%hd211503211797%_
                                               _%tl211504211799%_
                                               _%e211505211802%_
                                               _%hd211506211805%_
                                               _%tl211507211807%_
                                               _%e211508211810%_
                                               _%hd211509211813%_
                                               _%tl211510211815%_
                                               _%e211511211818%_
                                               _%hd211512211821%_
                                               _%tl211513211823%_
                                               _%e211514211826%_
                                               _%hd211515211829%_
                                               _%tl211516211831%_
                                               _%e211517211834%_
                                               _%hd211518211837%_
                                               _%tl211519211839%_
                                               _%e211520211842%_
                                               _%hd211521211845%_
                                               _%tl211522211847%_
                                               _%e211523211850%_
                                               _%hd211524211853%_
                                               _%tl211525211855%_
                                               _%e211526211858%_
                                               _%hd211527211861%_
                                               _%tl211528211863%_)
                                              (_%__kont212428212429%_))
                                          (_%__kont212428212429%_))))
                                  (_%__kont212428212429%_))
                              (_%__kont212428212429%_))
                          (_%__kont212428212429%_))))
                  (_%__kont212428212429%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl211513211823%_))
                                                      (if (let ((__tmp212780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp212780 'bind-method!))
                  (let ((_%g211529211692%_ _%hd211518211837%_)
                        (_%g211530211693%_ _%hd211509211813%_)
                        (_%g211531211694%_ _%hd211500211789%_)
                        (_%g211532211695%_ _%hd211491211765%_))
                    (_%__kont212426212427%_
                     _%g211529211692%_
                     _%g211530211693%_
                     _%g211531211694%_
                     _%g211532211695%_))
                  (_%__kont212428212429%_))
              (_%__kont212428212429%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont212428212429%_))))
                                      (_%__kont212428212429%_))
                                  (_%__kont212428212429%_))
                              (_%__kont212428212429%_))))
                      (_%__kont212428212429%_))))
              (_%__kont212428212429%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont212428212429%_))))
                                          (_%__kont212428212429%_))
                                      (_%__kont212428212429%_))
                                  (_%__kont212428212429%_))))
                          (_%__kont212428212429%_))))
                  (_%__kont212428212429%_))
              (_%__kont212428212429%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont212428212429%_))
                                          (_%__kont212428212429%_))
                                      (_%__kont212428212429%_))))
                              (_%__kont212428212429%_))))
                      (_%__kont212428212429%_))
                  (_%__kont212428212429%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont212428212429%_))
                                              (_%__kont212428212429%_))
                                          (_%__kont212428212429%_))))
                                  (_%__kont212428212429%_))))
                          (_%__kont212428212429%_))))
                  (_%__kont212428212429%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self211293%_ _%stx211294%_)
        (let* ((_%__stx212666212667%_ _%stx211294%_)
               (_%g211297211337%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx212666212667%_)))))
          (let ((_%__kont212668212669%_
                 (lambda (_%g211299211443%_ _%g211300211444%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%g211300211444%_))
                               (cons _%g211299211443%_ '())))))
                (_%__kont212670212671%_
                 (lambda (_%g211322211366%_ _%g211323211367%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx212666212667%_))
                (let ((_%e211301211387%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx212666212667%_))))
                  (let ((_%tl211303211392%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e211301211387%_)))
                        (_%hd211302211390%_
                         (let ()
                           (declare (not safe))
                           (##car _%e211301211387%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl211303211392%_))
                        (let ((_%e211304211395%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl211303211392%_))))
                          (let ((_%tl211306211400%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211304211395%_)))
                                (_%hd211305211398%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211304211395%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd211305211398%_))
                                (let ((_%e211307211403%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd211305211398%_))))
                                  (let ((_%tl211309211408%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e211307211403%_)))
                                        (_%hd211308211406%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e211307211403%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd211308211406%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd211308211406%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl211309211408%_))
                                                (let ((_%e211310211411%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl211309211408%_))))
                                                  (let ((_%tl211312211416%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e211310211411%_)))
                                                        (_%hd211311211414%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e211310211411%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211312211416%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl211306211400%_))
                                                            (let ((_%e211313211419%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl211306211400%_))))
                      (let ((_%tl211315211424%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e211313211419%_)))
                            (_%hd211314211422%_
                             (let ()
                               (declare (not safe))
                               (##car _%e211313211419%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd211314211422%_))
                            (let ((_%e211316211427%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd211314211422%_))))
                              (let ((_%tl211318211432%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e211316211427%_)))
                                    (_%hd211317211430%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e211316211427%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd211317211430%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd211317211430%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl211318211432%_))
                                            (let ((_%e211319211435%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl211318211432%_))))
                                              (let ((_%tl211321211440%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e211319211435%_)))
                                                    (_%hd211320211438%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e211319211435%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl211321211440%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211315211424%_))
                                                        (_%__kont212668212669%_
                                                         _%hd211320211438%_
                                                         _%hd211311211414%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g211297211337%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211315211424%_))
                                                        (_%__kont212670212671%_
                                                         _%hd211314211422%_
                                                         _%hd211305211398%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g211297211337%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl211315211424%_))
                                                (_%__kont212670212671%_
                                                 _%hd211314211422%_
                                                 _%hd211305211398%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g211297211337%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl211315211424%_))
                                            (_%__kont212670212671%_
                                             _%hd211314211422%_
                                             _%hd211305211398%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g211297211337%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl211315211424%_))
                                        (_%__kont212670212671%_
                                         _%hd211314211422%_
                                         _%hd211305211398%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g211297211337%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl211315211424%_))
                                (_%__kont212670212671%_
                                 _%hd211314211422%_
                                 _%hd211305211398%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g211297211337%_))))))
                    (let () (declare (not safe)) (_%g211297211337%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl211306211400%_))
                    (let ((_%e211330211358%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl211306211400%_))))
                      (let ((_%tl211332211363%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e211330211358%_)))
                            (_%hd211331211361%_
                             (let ()
                               (declare (not safe))
                               (##car _%e211330211358%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl211332211363%_))
                            (_%__kont212670212671%_
                             _%hd211331211361%_
                             _%hd211305211398%_)
                            (let ()
                              (declare (not safe))
                              (_%g211297211337%_)))))
                    (let () (declare (not safe)) (_%g211297211337%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl211306211400%_))
                                                    (let ((_%e211330211358%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl211306211400%_))))
                                                      (let ((_%tl211332211363%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e211330211358%_)))
                    (_%hd211331211361%_
                     (let () (declare (not safe)) (##car _%e211330211358%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl211332211363%_))
                    (_%__kont212670212671%_
                     _%hd211331211361%_
                     _%hd211305211398%_)
                    (let () (declare (not safe)) (_%g211297211337%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g211297211337%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl211306211400%_))
                                                (let ((_%e211330211358%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl211306211400%_))))
                                                  (let ((_%tl211332211363%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e211330211358%_)))
                                                        (_%hd211331211361%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e211330211358%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl211332211363%_))
                                                        (_%__kont212670212671%_
                                                         _%hd211331211361%_
                                                         _%hd211305211398%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g211297211337%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g211297211337%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl211306211400%_))
                                            (let ((_%e211330211358%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl211306211400%_))))
                                              (let ((_%tl211332211363%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e211330211358%_)))
                                                    (_%hd211331211361%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e211330211358%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl211332211363%_))
                                                    (_%__kont212670212671%_
                                                     _%hd211331211361%_
                                                     _%hd211305211398%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g211297211337%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g211297211337%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl211306211400%_))
                                    (let ((_%e211330211358%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl211306211400%_))))
                                      (let ((_%tl211332211363%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e211330211358%_)))
                                            (_%hd211331211361%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e211330211358%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl211332211363%_))
                                            (_%__kont212670212671%_
                                             _%hd211331211361%_
                                             _%hd211305211398%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g211297211337%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g211297211337%_))))))
                        (let () (declare (not safe)) (_%g211297211337%_)))))
                (let () (declare (not safe)) (_%g211297211337%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self211280%_)
        (let ((_%self211283%_ _%self211280%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self211283%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self211054%_)
        (let* ((_%self211057%_ _%self211054%_)
               (_%self211066211082%_ _%self211057%_)
               (_%E211068211085%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self211066211082%_
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
               (_%K211069211100%_
                (lambda (_%methods211088%_
                         _%metaclass211089%_
                         _%system?211090%_
                         _%final?211091%_
                         _%struct?211092%_
                         _%constructor211093%_
                         _%fields211094%_
                         _%slots211095%_
                         _%precendence-list211096%_
                         _%super211097%_
                         _%id211098%_)
                  (cons '@class
                        (cons _%id211098%_
                              (cons _%super211097%_
                                    (cons _%precendence-list211096%_
                                          (cons _%slots211095%_
                                                (cons _%fields211094%_
                                                      (cons _%constructor211093%_
                                                            (cons _%struct?211092%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?211091%_
                                (cons _%system?211090%_
                                      (cons _%metaclass211089%_
                                            (cons (if _%methods211088%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods211088%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e211070211103%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211066211082%_ '1 '#f '#f)))
               (_%id211106%_ _%e211070211103%_)
               (_%e211071211108%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211066211082%_ '2 '#f '#f)))
               (_%super211111%_ _%e211071211108%_)
               (_%e211072211113%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211066211082%_ '3 '#f '#f)))
               (_%precendence-list211116%_ _%e211072211113%_)
               (_%e211073211118%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211066211082%_ '4 '#f '#f)))
               (_%slots211121%_ _%e211073211118%_)
               (_%e211074211123%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211066211082%_ '5 '#f '#f)))
               (_%fields211126%_ _%e211074211123%_)
               (_%e211075211128%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211066211082%_ '6 '#f '#f)))
               (_%constructor211131%_ _%e211075211128%_)
               (_%e211076211133%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211066211082%_ '7 '#f '#f)))
               (_%struct?211136%_ _%e211076211133%_)
               (_%e211077211138%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211066211082%_ '8 '#f '#f)))
               (_%final?211141%_ _%e211077211138%_)
               (_%e211078211143%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self211066211082%_ '9 '#f '#f)))
               (_%system?211146%_ _%e211078211143%_)
               (_%e211079211148%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self211066211082%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass211151%_ _%e211079211148%_)
               (_%e211080211153%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self211066211082%_
                   '11
                   '#f
                   '#f)))
               (_%methods211156%_ _%e211080211153%_))
          (_%K211069211100%_
           _%methods211156%_
           _%metaclass211151%_
           _%system?211146%_
           _%final?211141%_
           _%struct?211136%_
           _%constructor211131%_
           _%fields211126%_
           _%slots211121%_
           _%precendence-list211116%_
           _%super211111%_
           _%id211106%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self210919%_)
        (let ((_%self210922%_ _%self210919%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self210922%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self210784%_)
        (let ((_%self210787%_ _%self210784%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self210787%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self210649%_)
        (let ((_%self210652%_ _%self210649%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self210652%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self210652%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self210652%_
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
      (lambda (_%self210514%_)
        (let ((_%self210517%_ _%self210514%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self210517%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self210517%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self210517%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self210379%_)
        (let ((_%self210382%_ _%self210379%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self210382%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self210382%_
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
      (lambda (_%self210193%_)
        (let* ((_%self210196%_ _%self210193%_)
               (_%self210205210214%_ _%self210196%_)
               (_%E210207210217%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self210205210214%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K210208210236%_
                (lambda (_%dispatch210220%_
                         _%arity210221%_
                         _%signature210222%_)
                  (if _%signature210222%_
                      (let ((_%signature210224%_ _%signature210222%_))
                        (cons '@lambda
                              (cons _%arity210221%_
                                    (cons _%dispatch210220%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature210224%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature210224%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature210224%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature210224%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature210224%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity210221%_
                                  (cons _%dispatch210220%_ '()))))))
               (_%e210209210239%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210205210214%_ '1 '#f '#f)))
               (_%e210210210242%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210205210214%_ '2 '#f '#f)))
               (_%signature210245%_ _%e210210210242%_)
               (_%e210211210247%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210205210214%_ '3 '#f '#f)))
               (_%arity210250%_ _%e210211210247%_)
               (_%e210212210252%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self210205210214%_ '4 '#f '#f)))
               (_%dispatch210255%_ _%e210212210252%_))
          (_%K210208210236%_
           _%dispatch210255%_
           _%arity210250%_
           _%signature210245%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self210053%_)
        (let ((_%self210056%_ _%self210053%_))
          (letrec ((_%clause-e210067%_
                    (lambda (_%clause210069%_)
                      (cdr (let ((__method212754
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause210069%_
                                     'typedecl))))
                             (if __method212754
                                 (let ()
                                   (declare (not safe))
                                   (__method212754 _%clause210069%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause210069%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e210067%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self210056%_
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
      (lambda (_%self209918%_)
        (let ((_%self209921%_ _%self209918%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self209921%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self209921%_
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
      (lambda (_%self209783%_)
        (let ((_%self209786%_ _%self209783%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self209786%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self209786%_
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
      (lambda (_%self209648%_)
        (let ((_%self209651%_ _%self209648%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self209651%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
