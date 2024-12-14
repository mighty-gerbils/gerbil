(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1734215277)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp200956
                   (let ((__obj200950
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
                       (gxc#optimizer-info:::init! __obj200950))
                     __obj200950)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp200956)))))
    (define gxc#optimize!
      (lambda (_%ctx200559%_)
        (let ((__tmp200959
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx200559%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx200559%_)
                 (let ((__tmp200961
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp200960
                        (##structure-ref
                         _%ctx200559%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp200961 __tmp200960 '#t))
                 (let ((_%code200562%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx200559%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx200559%_
                    _%code200562%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp200958 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp200957 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp200959
           gxc#current-compile-mutators
           __tmp200958
           gxc#current-compile-local-type
           __tmp200957))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx200545%_)
        (letrec ((_%load-it!200547%_
                  (lambda (_%id200557%_)
                    (if (let ((__tmp200962
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp200962 _%id200557%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id200557%_)
                          (let ((__tmp200963
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp200963 _%id200557%_ '#t)))))))
          (let* ((_%modid200549%_
                  (##structure-ref
                   _%ctx200545%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str200551%_ (symbol->string _%modid200549%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str200551%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str200551%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!200547%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!200547%_
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
      (lambda (_%ctx200482%_)
        (letrec* ((_%deps200484%_
                   (let* ((_%imports200535%_
                           (##structure-ref
                            _%ctx200482%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e200537%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx200482%_))))
                     (if _%$e200537%_
                         ((lambda (_%g200539200541%_)
                            (cons _%g200539200541%_ _%imports200535%_))
                          _%$e200537%_)
                         _%imports200535%_))))
          (let _%lp200486%_ ((_%rest200488%_ _%deps200484%_))
            (let* ((_%rest200489200497%_ _%rest200488%_)
                   (_%else200491200505%_ (lambda () '#!void))
                   (_%K200493200523%_
                    (lambda (_%rest200508%_ _%hd200509%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd200509%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp200965
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp200964
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd200509%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp200965 __tmp200964))
                                '#!void
                                (begin
                                  (let ((_%$e200512%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd200509%_))))
                                    (if _%$e200512%_
                                        ((lambda (_%pre200515%_)
                                           (_%lp200486%_
                                            (cons _%pre200515%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd200509%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e200512%_)
                                        (_%lp200486%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd200509%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd200509%_)))
                            (_%lp200486%_ _%rest200508%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd200509%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp200967
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp200966
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd200509%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp200967 __tmp200966))
                                    '#!void
                                    (begin
                                      (_%lp200486%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd200509%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd200509%_)))
                                (_%lp200486%_ _%rest200508%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd200509%_
                                     'gx#module-import::t))
                                  (_%lp200486%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd200509%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest200508%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd200509%_
                                         'gx#module-export::t))
                                      (_%lp200486%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd200509%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest200508%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd200509%_
                                             'gx#import-set::t))
                                          (_%lp200486%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd200509%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest200508%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd200509%_))))))))))
              (if (pair? _%rest200489200497%_)
                  (let ((_%hd200494200526%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest200489200497%_)))
                        (_%tl200495200528%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest200489200497%_))))
                    (let* ((_%hd200531%_ _%hd200494200526%_)
                           (_%rest200533%_ _%tl200495200528%_))
                      (_%K200493200523%_ _%rest200533%_ _%hd200531%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx200462%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx200462%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx200462%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht200464%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id200466%_
                    (##structure-ref
                     _%ctx200462%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod200468%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht200464%_ _%id200466%_)))
                   (_%$e200471%_ _%mod200468%_))
              (if _%$e200471%_
                  _%$e200471%_
                  (let* ((_%mod200474%_
                          (gxc#optimizer-import-ssxi _%ctx200462%_))
                         (_%val200479%_
                          (let ((_%$e200476%_ _%mod200474%_))
                            (if _%$e200476%_ _%$e200476%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht200464%_ _%id200466%_ _%val200479%_))
                    _%val200479%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx200460%_)
        (if (##structure-ref _%ctx200460%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx200460%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id200437%_)
        (letrec ((_%catch-e200439%_
                  (lambda (_%exn200458%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn200458%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn200458%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id200437%_))))
                    '#f))
                 (_%import-e200440%_
                  (lambda ()
                    (let* ((_%str-id200443%_
                            (let ((__tmp200968
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id200437%_))))
                              (declare (not safe))
                              (##string-append __tmp200968 '".ssxi")))
                           (_%artefact-path200451%_
                            (let ((_%odir200444200446%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir200444200446%_
                                  (let ((_%odir200449%_ _%odir200444200446%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id200443%_
                                        '".ss"))
                                     _%odir200449%_))
                                  '#f)))
                           (_%library-path200453%_
                            (let ((__tmp200969
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id200443%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp200969)))
                           (_%ssxi-path200455%_
                            (if (and _%artefact-path200451%_
                                     (file-exists? _%artefact-path200451%_))
                                _%artefact-path200451%_
                                _%library-path200453%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path200455%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path200455%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e200439%_ _%import-e200440%_)))))
    (define gxc#optimize-source
      (lambda (_%stx200422%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx200422%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx200422%_))
        (let* ((_%stx200424%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx200422%_)))
               (_%stx200426%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx200424%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx200426%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx200426%_))
          (let _%fixpoint200429%_ ((_%current200431%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx200426%_))
            (let ((_%refined200433%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current200431%_ _%refined200433%_)
                  '#!void
                  (_%fixpoint200429%_ _%refined200433%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx200426%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx200426%_))
          (let ((_%stx200435%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx200426%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx200435%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp200971 (list gxc#::generate-runtime-empty::t))
            (__tmp200970 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp200971
         '()
         __tmp200970
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args200419%_
        (apply make-instance gxc#::generate-ssxi::t _%$args200419%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp200972
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
        (__make-promise __tmp200972)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx200411%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self200414%_
                (let ((__obj200952
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj200952))
               (__tmp200973
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self200414%_ _%stx200411%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp200973
           gxc#current-compile-method
           _%self200414%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self200371%_ _%stx200372%_)
        (let* ((_%g200374200384%_
                (lambda (_%g200375200381%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200375200381%_))))
               (_%g200373200408%_
                (lambda (_%g200375200387%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200375200387%_))
                      (let ((_%e200377200389%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200375200387%_))))
                        (let ((_%hd200378200392%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200377200389%_)))
                              (_%tl200379200394%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200377200389%_))))
                          ((lambda (_%L200397%_)
                             (let ((__tmp200976
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self200371%_
                                         _%stx200372%_))))
                                   (__tmp200974
                                    (let ((__tmp200975
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp200975 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp200976
                                gx#current-expander-phi
                                __tmp200974)))
                           _%tl200379200394%_)))
                      (_%g200374200384%_ _%g200375200387%_)))))
          (_%g200373200408%_ _%stx200372%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self200310%_ _%stx200311%_)
        (let* ((_%g200313200327%_
                (lambda (_%g200314200324%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200314200324%_))))
               (_%g200312200368%_
                (lambda (_%g200314200330%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200314200330%_))
                      (let ((_%e200317200332%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g200314200330%_))))
                        (let ((_%hd200318200335%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200317200332%_)))
                              (_%tl200319200337%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200317200332%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200319200337%_))
                              (let ((_%e200320200340%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl200319200337%_))))
                                (let ((_%hd200321200343%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200320200340%_)))
                                      (_%tl200322200345%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200320200340%_))))
                                  ((lambda (_%L200348%_ _%L200349%_)
                                     (let* ((_%ctx200362%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L200349%_)))
                                            (_%code200364%_
                                             (##structure-ref
                                              _%ctx200362%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp200977
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self200310%_
                                                  _%code200364%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp200977
                                        gx#current-expander-context
                                        _%ctx200362%_)))
                                   _%tl200322200345%_
                                   _%hd200321200343%_)))
                              (_%g200313200327%_ _%g200314200330%_))))
                      (_%g200313200327%_ _%g200314200330%_)))))
          (_%g200312200368%_ _%stx200311%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self200115%_ _%stx200116%_)
        (letrec ((_%generate-e200118%_
                  (lambda (_%id200295%_)
                    (let* ((_%sym200297%_
                            (if (let ((__tmp200978
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp200978))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id200295%_))
                                '#f))
                           (_%$e200299%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym200297%_))))
                      (if _%$e200299%_
                          ((lambda (_%klass200302%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym200297%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym200297%_
                                                     (cons (let ((__method200953
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass200302%_ 'typedecl))))
                     (if __method200953
                         (let ()
                           (declare (not safe))
                           (__method200953 _%klass200302%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass200302%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym200297%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym200297%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e200299%_)
                          (let ((_%$e200304%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym200297%_))))
                            (if _%$e200304%_
                                ((lambda (_%type200307%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym200297%_
                                      '" "
                                      _%type200307%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type200307%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym200297%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym200297%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type200307%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym200297%_
                                                   (cons (let ((__method200954
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type200307%_ 'typedecl))))
                   (if __method200954
                       (let ()
                         (declare (not safe))
                         (__method200954 _%type200307%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type200307%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e200304%_)
                                '(begin))))))))
          (let* ((_%__stx200565200566%_ _%stx200116%_)
                 (_%g200121200159%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx200565200566%_)))))
            (let ((_%__kont200567200568%_
                   (lambda (_%L200277%_) (_%generate-e200118%_ _%L200277%_)))
                  (_%__kont200569200570%_
                   (lambda (_%L200212%_)
                     (let ((_%types200238%_
                            (map _%generate-e200118%_
                                 (let ((__tmp200979
                                        (lambda (_%g200230200233%_
                                                 _%g200231200235%_)
                                          (cons _%g200230200233%_
                                                _%g200231200235%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp200979 '() _%L200212%_)))))
                       (cons 'begin _%types200238%_)))))
              (let ((_%__match200620200621%_
                     (lambda (_%e200137200164%_
                              _%hd200138200167%_
                              _%tl200139200169%_
                              _%e200140200172%_
                              _%hd200141200175%_
                              _%tl200142200177%_
                              _%__splice200571200572%_
                              _%target200143200180%_
                              _%tl200145200182%_)
                       (letrec ((_%loop200146200185%_
                                 (lambda (_%hd200144200188%_
                                          _%id200150200190%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd200144200188%_))
                                       (let ((_%e200147200193%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd200144200188%_))))
                                         (let ((_%lp-tl200149200198%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e200147200193%_)))
                                               (_%lp-hd200148200196%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e200147200193%_))))
                                           (_%loop200146200185%_
                                            _%lp-tl200149200198%_
                                            (cons _%lp-hd200148200196%_
                                                  _%id200150200190%_))))
                                       (let ((_%id200151200201%_
                                              (reverse _%id200150200190%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl200142200177%_))
                                             (let ((_%e200152200204%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl200142200177%_))))
                                               (let ((_%tl200154200209%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e200152200204%_)))
                                                     (_%hd200153200207%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e200152200204%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl200154200209%_))
                                                     (_%__kont200569200570%_
                                                      _%id200151200201%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g200121200159%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g200121200159%_))))))))
                         (_%loop200146200185%_ _%target200143200180%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx200565200566%_))
                    (let ((_%e200124200245%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx200565200566%_))))
                      (let ((_%tl200126200250%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200124200245%_)))
                            (_%hd200125200248%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200124200245%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl200126200250%_))
                            (let ((_%e200127200253%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl200126200250%_))))
                              (let ((_%tl200129200258%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200127200253%_)))
                                    (_%hd200128200256%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200127200253%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd200128200256%_))
                                    (let ((_%e200130200261%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd200128200256%_))))
                                      (let ((_%tl200132200266%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e200130200261%_)))
                                            (_%hd200131200264%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e200130200261%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl200132200266%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200129200258%_))
                                                (let ((_%e200133200269%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200129200258%_))))
                                                  (let ((_%tl200135200274%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200133200269%_)))
                                                        (_%hd200134200272%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200133200269%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200135200274%_))
                                                        (_%__kont200567200568%_
                                                         _%hd200131200264%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd200128200256%_))
                                                            (let ((_%__splice200571200572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd200128200256%_ '0))))
                      (let ((_%tl200145200182%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice200571200572%_ '1)))
                            (_%target200143200180%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice200571200572%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200145200182%_))
                            (_%__match200620200621%_
                             _%e200124200245%_
                             _%hd200125200248%_
                             _%tl200126200250%_
                             _%e200127200253%_
                             _%hd200128200256%_
                             _%tl200129200258%_
                             _%__splice200571200572%_
                             _%target200143200180%_
                             _%tl200145200182%_)
                            (let ()
                              (declare (not safe))
                              (_%g200121200159%_)))))
                    (let () (declare (not safe)) (_%g200121200159%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd200128200256%_))
                                                    (let ((_%__splice200571200572%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd200128200256%_
                                                              '0))))
                                                      (let ((_%tl200145200182%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice200571200572%_ '1)))
                    (_%target200143200180%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice200571200572%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl200145200182%_))
                    (_%__match200620200621%_
                     _%e200124200245%_
                     _%hd200125200248%_
                     _%tl200126200250%_
                     _%e200127200253%_
                     _%hd200128200256%_
                     _%tl200129200258%_
                     _%__splice200571200572%_
                     _%target200143200180%_
                     _%tl200145200182%_)
                    (let () (declare (not safe)) (_%g200121200159%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200121200159%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd200128200256%_))
                                                (let ((_%__splice200571200572%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd200128200256%_
                                                          '0))))
                                                  (let ((_%tl200145200182%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice200571200572%_
                                                            '1)))
                                                        (_%target200143200180%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice200571200572%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200145200182%_))
                                                        (_%__match200620200621%_
                                                         _%e200124200245%_
                                                         _%hd200125200248%_
                                                         _%tl200126200250%_
                                                         _%e200127200253%_
                                                         _%hd200128200256%_
                                                         _%tl200129200258%_
                                                         _%__splice200571200572%_
                                                         _%target200143200180%_
                                                         _%tl200145200182%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g200121200159%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200121200159%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd200128200256%_))
                                        (let ((_%__splice200571200572%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd200128200256%_
                                                  '0))))
                                          (let ((_%tl200145200182%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice200571200572%_
                                                    '1)))
                                                (_%target200143200180%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice200571200572%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200145200182%_))
                                                (_%__match200620200621%_
                                                 _%e200124200245%_
                                                 _%hd200125200248%_
                                                 _%tl200126200250%_
                                                 _%e200127200253%_
                                                 _%hd200128200256%_
                                                 _%tl200129200258%_
                                                 _%__splice200571200572%_
                                                 _%target200143200180%_
                                                 _%tl200145200182%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200121200159%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g200121200159%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g200121200159%_)))))
                    (let () (declare (not safe)) (_%g200121200159%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self199668%_ _%stx199669%_)
        (let* ((_%__stx200623200624%_ _%stx199669%_)
               (_%g199673199775%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200623200624%_)))))
          (let ((_%__kont200625200626%_
                 (lambda (_%L200065%_
                          _%L200066%_
                          _%L200067%_
                          _%L200068%_
                          _%L200069%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L200068%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L200067%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L200066%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L200065%_))
                                                 '())))))))
                (_%__kont200627200628%_
                 (lambda (_%L199891%_ _%L199892%_ _%L199893%_ _%L199894%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L199893%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L199892%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L199891%_))
                                           (cons '#f '())))))))
                (_%__kont200629200630%_ (lambda () '(begin))))
            (let ((_%__match200758200759%_
                   (lambda (_%e199680199937%_
                            _%hd199681199940%_
                            _%tl199682199942%_
                            _%e199683199945%_
                            _%hd199684199948%_
                            _%tl199685199950%_
                            _%e199686199953%_
                            _%hd199687199956%_
                            _%tl199688199958%_
                            _%e199689199961%_
                            _%hd199690199964%_
                            _%tl199691199966%_
                            _%e199692199969%_
                            _%hd199693199972%_
                            _%tl199694199974%_
                            _%e199695199977%_
                            _%hd199696199980%_
                            _%tl199697199982%_
                            _%e199698199985%_
                            _%hd199699199988%_
                            _%tl199700199990%_
                            _%e199701199993%_
                            _%hd199702199996%_
                            _%tl199703199998%_
                            _%e199704200001%_
                            _%hd199705200004%_
                            _%tl199706200006%_
                            _%e199707200009%_
                            _%hd199708200012%_
                            _%tl199709200014%_
                            _%e199710200017%_
                            _%hd199711200020%_
                            _%tl199712200022%_
                            _%e199713200025%_
                            _%hd199714200028%_
                            _%tl199715200030%_
                            _%e199716200033%_
                            _%hd199717200036%_
                            _%tl199718200038%_
                            _%e199719200041%_
                            _%hd199720200044%_
                            _%tl199721200046%_
                            _%e199722200049%_
                            _%hd199723200052%_
                            _%tl199724200054%_
                            _%e199725200057%_
                            _%hd199726200060%_
                            _%tl199727200062%_)
                     (let ((_%L200065%_ _%hd199726200060%_)
                           (_%L200066%_ _%hd199717200036%_)
                           (_%L200067%_ _%hd199708200012%_)
                           (_%L200068%_ _%hd199699199988%_)
                           (_%L200069%_ _%hd199690199964%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L200069%_
                              'bind-method!))
                           (_%__kont200625200626%_
                            _%L200065%_
                            _%L200066%_
                            _%L200067%_
                            _%L200068%_
                            _%L200069%_)
                           (_%__kont200629200630%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx200623200624%_))
                  (let ((_%e199680199937%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx200623200624%_))))
                    (let ((_%tl199682199942%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199680199937%_)))
                          (_%hd199681199940%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199680199937%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199682199942%_))
                          (let ((_%e199683199945%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl199682199942%_))))
                            (let ((_%tl199685199950%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199683199945%_)))
                                  (_%hd199684199948%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199683199945%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd199684199948%_))
                                  (let ((_%e199686199953%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd199684199948%_))))
                                    (let ((_%tl199688199958%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199686199953%_)))
                                          (_%hd199687199956%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199686199953%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd199687199956%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd199687199956%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199688199958%_))
                                                  (let ((_%e199689199961%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199688199958%_))))
                                                    (let ((_%tl199691199966%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199689199961%_)))
                                                          (_%hd199690199964%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199689199961%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199691199966%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl199685199950%_))
                      (let ((_%e199692199969%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl199685199950%_))))
                        (let ((_%tl199694199974%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199692199969%_)))
                              (_%hd199693199972%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199692199969%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd199693199972%_))
                              (let ((_%e199695199977%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd199693199972%_))))
                                (let ((_%tl199697199982%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199695199977%_)))
                                      (_%hd199696199980%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199695199977%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd199696199980%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd199696199980%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199697199982%_))
                                              (let ((_%e199698199985%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199697199982%_))))
                                                (let ((_%tl199700199990%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199698199985%_)))
                                                      (_%hd199699199988%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199698199985%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199700199990%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl199694199974%_))
                                                          (let ((_%e199701199993%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl199694199974%_))))
                    (let ((_%tl199703199998%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199701199993%_)))
                          (_%hd199702199996%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199701199993%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd199702199996%_))
                          (let ((_%e199704200001%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd199702199996%_))))
                            (let ((_%tl199706200006%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199704200001%_)))
                                  (_%hd199705200004%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199704200001%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd199705200004%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd199705200004%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl199706200006%_))
                                          (let ((_%e199707200009%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl199706200006%_))))
                                            (let ((_%tl199709200014%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e199707200009%_)))
                                                  (_%hd199708200012%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e199707200009%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl199709200014%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl199703199998%_))
                                                      (let ((_%e199710200017%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl199703199998%_))))
                (let ((_%tl199712200022%_
                       (let () (declare (not safe)) (##cdr _%e199710200017%_)))
                      (_%hd199711200020%_
                       (let ()
                         (declare (not safe))
                         (##car _%e199710200017%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd199711200020%_))
                      (let ((_%e199713200025%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd199711200020%_))))
                        (let ((_%tl199715200030%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199713200025%_)))
                              (_%hd199714200028%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199713200025%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd199714200028%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd199714200028%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199715200030%_))
                                      (let ((_%e199716200033%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199715200030%_))))
                                        (let ((_%tl199718200038%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199716200033%_)))
                                              (_%hd199717200036%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199716200033%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199718200038%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199712200022%_))
                                                  (let ((_%e199719200041%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199712200022%_))))
                                                    (let ((_%tl199721200046%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199719200041%_)))
                                                          (_%hd199720200044%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199719200041%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd199720200044%_))
                                                          (let ((_%e199722200049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd199720200044%_))))
                    (let ((_%tl199724200054%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199722200049%_)))
                          (_%hd199723200052%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199722200049%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd199723200052%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd199723200052%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl199724200054%_))
                                  (let ((_%e199725200057%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl199724200054%_))))
                                    (let ((_%tl199727200062%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199725200057%_)))
                                          (_%hd199726200060%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199725200057%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl199727200062%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199721200046%_))
                                              (_%__match200758200759%_
                                               _%e199680199937%_
                                               _%hd199681199940%_
                                               _%tl199682199942%_
                                               _%e199683199945%_
                                               _%hd199684199948%_
                                               _%tl199685199950%_
                                               _%e199686199953%_
                                               _%hd199687199956%_
                                               _%tl199688199958%_
                                               _%e199689199961%_
                                               _%hd199690199964%_
                                               _%tl199691199966%_
                                               _%e199692199969%_
                                               _%hd199693199972%_
                                               _%tl199694199974%_
                                               _%e199695199977%_
                                               _%hd199696199980%_
                                               _%tl199697199982%_
                                               _%e199698199985%_
                                               _%hd199699199988%_
                                               _%tl199700199990%_
                                               _%e199701199993%_
                                               _%hd199702199996%_
                                               _%tl199703199998%_
                                               _%e199704200001%_
                                               _%hd199705200004%_
                                               _%tl199706200006%_
                                               _%e199707200009%_
                                               _%hd199708200012%_
                                               _%tl199709200014%_
                                               _%e199710200017%_
                                               _%hd199711200020%_
                                               _%tl199712200022%_
                                               _%e199713200025%_
                                               _%hd199714200028%_
                                               _%tl199715200030%_
                                               _%e199716200033%_
                                               _%hd199717200036%_
                                               _%tl199718200038%_
                                               _%e199719200041%_
                                               _%hd199720200044%_
                                               _%tl199721200046%_
                                               _%e199722200049%_
                                               _%hd199723200052%_
                                               _%tl199724200054%_
                                               _%e199725200057%_
                                               _%hd199726200060%_
                                               _%tl199727200062%_)
                                              (_%__kont200629200630%_))
                                          (_%__kont200629200630%_))))
                                  (_%__kont200629200630%_))
                              (_%__kont200629200630%_))
                          (_%__kont200629200630%_))))
                  (_%__kont200629200630%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199712200022%_))
                                                      (if (let ((__tmp200980
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp200980 'bind-method!))
                  (let ((_%L199891%_ _%hd199717200036%_)
                        (_%L199892%_ _%hd199708200012%_)
                        (_%L199893%_ _%hd199699199988%_)
                        (_%L199894%_ _%hd199690199964%_))
                    (_%__kont200627200628%_
                     _%L199891%_
                     _%L199892%_
                     _%L199893%_
                     _%L199894%_))
                  (_%__kont200629200630%_))
              (_%__kont200629200630%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont200629200630%_))))
                                      (_%__kont200629200630%_))
                                  (_%__kont200629200630%_))
                              (_%__kont200629200630%_))))
                      (_%__kont200629200630%_))))
              (_%__kont200629200630%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200629200630%_))))
                                          (_%__kont200629200630%_))
                                      (_%__kont200629200630%_))
                                  (_%__kont200629200630%_))))
                          (_%__kont200629200630%_))))
                  (_%__kont200629200630%_))
              (_%__kont200629200630%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont200629200630%_))
                                          (_%__kont200629200630%_))
                                      (_%__kont200629200630%_))))
                              (_%__kont200629200630%_))))
                      (_%__kont200629200630%_))
                  (_%__kont200629200630%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200629200630%_))
                                              (_%__kont200629200630%_))
                                          (_%__kont200629200630%_))))
                                  (_%__kont200629200630%_))))
                          (_%__kont200629200630%_))))
                  (_%__kont200629200630%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self199492%_ _%stx199493%_)
        (let* ((_%__stx200867200868%_ _%stx199493%_)
               (_%g199496199536%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx200867200868%_)))))
          (let ((_%__kont200869200870%_
                 (lambda (_%L199642%_ _%L199643%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L199643%_))
                               (cons _%L199642%_ '())))))
                (_%__kont200871200872%_
                 (lambda (_%L199565%_ _%L199566%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx200867200868%_))
                (let ((_%e199500199586%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx200867200868%_))))
                  (let ((_%tl199502199591%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199500199586%_)))
                        (_%hd199501199589%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199500199586%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl199502199591%_))
                        (let ((_%e199503199594%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl199502199591%_))))
                          (let ((_%tl199505199599%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199503199594%_)))
                                (_%hd199504199597%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199503199594%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd199504199597%_))
                                (let ((_%e199506199602%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd199504199597%_))))
                                  (let ((_%tl199508199607%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199506199602%_)))
                                        (_%hd199507199605%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199506199602%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd199507199605%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd199507199605%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199508199607%_))
                                                (let ((_%e199509199610%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199508199607%_))))
                                                  (let ((_%tl199511199615%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199509199610%_)))
                                                        (_%hd199510199613%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199509199610%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199511199615%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl199505199599%_))
                                                            (let ((_%e199512199618%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl199505199599%_))))
                      (let ((_%tl199514199623%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199512199618%_)))
                            (_%hd199513199621%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199512199618%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd199513199621%_))
                            (let ((_%e199515199626%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd199513199621%_))))
                              (let ((_%tl199517199631%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e199515199626%_)))
                                    (_%hd199516199629%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e199515199626%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd199516199629%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd199516199629%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199517199631%_))
                                            (let ((_%e199518199634%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl199517199631%_))))
                                              (let ((_%tl199520199639%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199518199634%_)))
                                                    (_%hd199519199637%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199518199634%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl199520199639%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199514199623%_))
                                                        (_%__kont200869200870%_
                                                         _%hd199519199637%_
                                                         _%hd199510199613%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g199496199536%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199514199623%_))
                                                        (_%__kont200871200872%_
                                                         _%hd199513199621%_
                                                         _%hd199504199597%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g199496199536%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl199514199623%_))
                                                (_%__kont200871200872%_
                                                 _%hd199513199621%_
                                                 _%hd199504199597%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199496199536%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199514199623%_))
                                            (_%__kont200871200872%_
                                             _%hd199513199621%_
                                             _%hd199504199597%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g199496199536%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199514199623%_))
                                        (_%__kont200871200872%_
                                         _%hd199513199621%_
                                         _%hd199504199597%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g199496199536%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199514199623%_))
                                (_%__kont200871200872%_
                                 _%hd199513199621%_
                                 _%hd199504199597%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g199496199536%_))))))
                    (let () (declare (not safe)) (_%g199496199536%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl199505199599%_))
                    (let ((_%e199529199557%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl199505199599%_))))
                      (let ((_%tl199531199562%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e199529199557%_)))
                            (_%hd199530199560%_
                             (let ()
                               (declare (not safe))
                               (##car _%e199529199557%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl199531199562%_))
                            (_%__kont200871200872%_
                             _%hd199530199560%_
                             _%hd199504199597%_)
                            (let ()
                              (declare (not safe))
                              (_%g199496199536%_)))))
                    (let () (declare (not safe)) (_%g199496199536%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl199505199599%_))
                                                    (let ((_%e199529199557%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl199505199599%_))))
                                                      (let ((_%tl199531199562%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e199529199557%_)))
                    (_%hd199530199560%_
                     (let () (declare (not safe)) (##car _%e199529199557%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl199531199562%_))
                    (_%__kont200871200872%_
                     _%hd199530199560%_
                     _%hd199504199597%_)
                    (let () (declare (not safe)) (_%g199496199536%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199496199536%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199505199599%_))
                                                (let ((_%e199529199557%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199505199599%_))))
                                                  (let ((_%tl199531199562%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199529199557%_)))
                                                        (_%hd199530199560%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199529199557%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199531199562%_))
                                                        (_%__kont200871200872%_
                                                         _%hd199530199560%_
                                                         _%hd199504199597%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g199496199536%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199496199536%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199505199599%_))
                                            (let ((_%e199529199557%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl199505199599%_))))
                                              (let ((_%tl199531199562%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199529199557%_)))
                                                    (_%hd199530199560%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199529199557%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl199531199562%_))
                                                    (_%__kont200871200872%_
                                                     _%hd199530199560%_
                                                     _%hd199504199597%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g199496199536%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g199496199536%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl199505199599%_))
                                    (let ((_%e199529199557%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl199505199599%_))))
                                      (let ((_%tl199531199562%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e199529199557%_)))
                                            (_%hd199530199560%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e199529199557%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl199531199562%_))
                                            (_%__kont200871200872%_
                                             _%hd199530199560%_
                                             _%hd199504199597%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g199496199536%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g199496199536%_))))))
                        (let () (declare (not safe)) (_%g199496199536%_)))))
                (let () (declare (not safe)) (_%g199496199536%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self197686199477%_)
        (let* ((_%self199480%_ _%self197686199477%_)
               (_%self199482%_ _%self199480%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199482%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self197687199248%_)
        (let* ((_%self199251%_ _%self197687199248%_)
               (_%self199253%_ _%self199251%_)
               (_%self199262199278%_ _%self199253%_)
               (_%E199264199282%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self199262199278%_
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
               (_%K199265199297%_
                (lambda (_%methods199285%_
                         _%metaclass199286%_
                         _%system?199287%_
                         _%final?199288%_
                         _%struct?199289%_
                         _%constructor199290%_
                         _%fields199291%_
                         _%slots199292%_
                         _%precendence-list199293%_
                         _%super199294%_
                         _%id199295%_)
                  (cons '@class
                        (cons _%id199295%_
                              (cons _%super199294%_
                                    (cons _%precendence-list199293%_
                                          (cons _%slots199292%_
                                                (cons _%fields199291%_
                                                      (cons _%constructor199290%_
                                                            (cons _%struct?199289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?199288%_
                                (cons _%system?199287%_
                                      (cons _%metaclass199286%_
                                            (cons (if _%methods199285%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods199285%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e199266199300%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199262199278%_ '1 '#f '#f)))
               (_%id199303%_ _%e199266199300%_)
               (_%e199267199305%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199262199278%_ '2 '#f '#f)))
               (_%super199308%_ _%e199267199305%_)
               (_%e199268199310%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199262199278%_ '3 '#f '#f)))
               (_%precendence-list199313%_ _%e199268199310%_)
               (_%e199269199315%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199262199278%_ '4 '#f '#f)))
               (_%slots199318%_ _%e199269199315%_)
               (_%e199270199320%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199262199278%_ '5 '#f '#f)))
               (_%fields199323%_ _%e199270199320%_)
               (_%e199271199325%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199262199278%_ '6 '#f '#f)))
               (_%constructor199328%_ _%e199271199325%_)
               (_%e199272199330%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199262199278%_ '7 '#f '#f)))
               (_%struct?199333%_ _%e199272199330%_)
               (_%e199273199335%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199262199278%_ '8 '#f '#f)))
               (_%final?199338%_ _%e199273199335%_)
               (_%e199274199340%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199262199278%_ '9 '#f '#f)))
               (_%system?199343%_ _%e199274199340%_)
               (_%e199275199345%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self199262199278%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass199348%_ _%e199275199345%_)
               (_%e199276199350%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self199262199278%_
                   '11
                   '#f
                   '#f)))
               (_%methods199353%_ _%e199276199350%_))
          (_%K199265199297%_
           _%methods199353%_
           _%metaclass199348%_
           _%system?199343%_
           _%final?199338%_
           _%struct?199333%_
           _%constructor199328%_
           _%fields199323%_
           _%slots199318%_
           _%precendence-list199313%_
           _%super199308%_
           _%id199303%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self197688199111%_)
        (let* ((_%self199114%_ _%self197688199111%_)
               (_%self199116%_ _%self199114%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199116%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self197689198974%_)
        (let* ((_%self198977%_ _%self197689198974%_)
               (_%self198979%_ _%self198977%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198979%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self197690198837%_)
        (let* ((_%self198840%_ _%self197690198837%_)
               (_%self198842%_ _%self198840%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198842%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198842%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self198842%_
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
      (lambda (_%self197691198700%_)
        (let* ((_%self198703%_ _%self197691198700%_)
               (_%self198705%_ _%self198703%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198705%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198705%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self198705%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self197692198563%_)
        (let* ((_%self198566%_ _%self197692198563%_)
               (_%self198568%_ _%self198566%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198568%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198568%_
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
      (lambda (_%self197693198374%_)
        (let* ((_%self198377%_ _%self197693198374%_)
               (_%self198379%_ _%self198377%_)
               (_%self198388198397%_ _%self198379%_)
               (_%E198390198401%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self198388198397%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K198391198420%_
                (lambda (_%dispatch198404%_
                         _%arity198405%_
                         _%signature198406%_)
                  (if _%signature198406%_
                      (let ((_%signature198408%_ _%signature198406%_))
                        (cons '@lambda
                              (cons _%arity198405%_
                                    (cons _%dispatch198404%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature198408%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature198408%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature198408%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature198408%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature198408%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity198405%_
                                  (cons _%dispatch198404%_ '()))))))
               (_%e198392198423%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198388198397%_ '1 '#f '#f)))
               (_%e198393198426%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198388198397%_ '2 '#f '#f)))
               (_%signature198429%_ _%e198393198426%_)
               (_%e198394198431%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198388198397%_ '3 '#f '#f)))
               (_%arity198434%_ _%e198394198431%_)
               (_%e198395198436%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self198388198397%_ '4 '#f '#f)))
               (_%dispatch198439%_ _%e198395198436%_))
          (_%K198391198420%_
           _%dispatch198439%_
           _%arity198434%_
           _%signature198429%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self197694198233%_)
        (let* ((_%self198236%_ _%self197694198233%_)
               (_%self198238%_ _%self198236%_))
          (letrec ((_%clause-e198248%_
                    (lambda (_%clause198250%_)
                      (cdr (let ((__method200955
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause198250%_
                                     'typedecl))))
                             (if __method200955
                                 (let ()
                                   (declare (not safe))
                                   (__method200955 _%clause198250%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause198250%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e198248%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self198238%_
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
      (lambda (_%self197695198096%_)
        (let* ((_%self198099%_ _%self197695198096%_)
               (_%self198101%_ _%self198099%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198101%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198101%_
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
      (lambda (_%self197696197959%_)
        (let* ((_%self197962%_ _%self197696197959%_)
               (_%self197964%_ _%self197962%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197964%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self197964%_
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
      (lambda (_%self197697197822%_)
        (let* ((_%self197825%_ _%self197697197822%_)
               (_%self197827%_ _%self197825%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197827%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
