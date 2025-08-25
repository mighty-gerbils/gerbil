(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1756156307)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp208974
                   (let ((__obj208968
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
                       (gxc#optimizer-info:::init! __obj208968))
                     __obj208968)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp208974)))))
    (define gxc#optimize!
      (lambda (_%ctx208576%_)
        (let ((__tmp208976
               (lambda ()
                 (let ((__tmp208978
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx208576%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx208576%_)
                          (let ((__tmp208980
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp208979
                                 (##structure-ref
                                  _%ctx208576%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp208980 __tmp208979 '#t))
                          (let ((_%code208580%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx208576%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx208576%_
                             _%code208580%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp208977
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp208978
                    gxc#current-compile-local-type
                    __tmp208977))))
              (__tmp208975 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp208976
           gxc#current-compile-mutators
           __tmp208975))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx208562%_)
        (letrec ((_%load-it!208564%_
                  (lambda (_%id208574%_)
                    (if (let ((__tmp208981
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp208981 _%id208574%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id208574%_)
                          (let ((__tmp208982
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp208982 _%id208574%_ '#t)))))))
          (let* ((_%modid208566%_
                  (##structure-ref
                   _%ctx208562%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str208568%_ (symbol->string _%modid208566%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str208568%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str208568%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!208564%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!208564%_
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
      (lambda (_%ctx208499%_)
        (letrec* ((_%deps208501%_
                   (let* ((_%imports208552%_
                           (##structure-ref
                            _%ctx208499%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e208554%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx208499%_))))
                     (if _%$e208554%_
                         ((lambda (_%g208556208558%_)
                            (cons _%g208556208558%_ _%imports208552%_))
                          _%$e208554%_)
                         _%imports208552%_))))
          (let _%lp208503%_ ((_%rest208505%_ _%deps208501%_))
            (let* ((_%rest208506208514%_ _%rest208505%_)
                   (_%else208508208522%_ (lambda () '#!void))
                   (_%K208510208540%_
                    (lambda (_%rest208525%_ _%hd208526%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd208526%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp208984
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp208983
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd208526%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp208984 __tmp208983))
                                '#!void
                                (begin
                                  (let ((_%$e208529%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd208526%_))))
                                    (if _%$e208529%_
                                        ((lambda (_%pre208532%_)
                                           (_%lp208503%_
                                            (cons _%pre208532%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd208526%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e208529%_)
                                        (_%lp208503%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd208526%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd208526%_)))
                            (_%lp208503%_ _%rest208525%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd208526%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp208986
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp208985
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd208526%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp208986 __tmp208985))
                                    '#!void
                                    (begin
                                      (_%lp208503%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd208526%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd208526%_)))
                                (_%lp208503%_ _%rest208525%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd208526%_
                                     'gx#module-import::t))
                                  (_%lp208503%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd208526%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest208525%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd208526%_
                                         'gx#module-export::t))
                                      (_%lp208503%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd208526%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest208525%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd208526%_
                                             'gx#import-set::t))
                                          (_%lp208503%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd208526%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest208525%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd208526%_))))))))))
              (if (pair? _%rest208506208514%_)
                  (let ((_%hd208511208543%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest208506208514%_)))
                        (_%tl208512208545%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest208506208514%_))))
                    (let* ((_%hd208548%_ _%hd208511208543%_)
                           (_%rest208550%_ _%tl208512208545%_))
                      (_%K208510208540%_ _%rest208550%_ _%hd208548%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx208479%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx208479%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx208479%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht208481%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id208483%_
                    (##structure-ref
                     _%ctx208479%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod208485%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht208481%_ _%id208483%_)))
                   (_%$e208488%_ _%mod208485%_))
              (if _%$e208488%_
                  _%$e208488%_
                  (let* ((_%mod208491%_
                          (gxc#optimizer-import-ssxi _%ctx208479%_))
                         (_%val208496%_
                          (let ((_%$e208493%_ _%mod208491%_))
                            (if _%$e208493%_ _%$e208493%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht208481%_ _%id208483%_ _%val208496%_))
                    _%val208496%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx208477%_)
        (if (##structure-ref _%ctx208477%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx208477%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id208454%_)
        (letrec ((_%catch-e208456%_
                  (lambda (_%exn208475%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn208475%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn208475%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id208454%_))))
                    '#f))
                 (_%import-e208457%_
                  (lambda ()
                    (let* ((_%str-id208460%_
                            (let ((__tmp208987
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id208454%_))))
                              (declare (not safe))
                              (##string-append __tmp208987 '".ssxi")))
                           (_%artefact-path208468%_
                            (let ((_%odir208461208463%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir208461208463%_
                                  (let ((_%odir208466%_ _%odir208461208463%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id208460%_
                                        '".ss"))
                                     _%odir208466%_))
                                  '#f)))
                           (_%library-path208470%_
                            (let ((__tmp208988
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id208460%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp208988)))
                           (_%ssxi-path208472%_
                            (if (and _%artefact-path208468%_
                                     (file-exists? _%artefact-path208468%_))
                                _%artefact-path208468%_
                                _%library-path208470%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path208472%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path208472%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e208456%_ _%import-e208457%_)))))
    (define gxc#optimize-source
      (lambda (_%stx208439%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx208439%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx208439%_))
        (let* ((_%stx208441%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx208439%_)))
               (_%stx208443%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx208441%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx208443%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx208443%_))
          (let _%fixpoint208446%_ ((_%current208448%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx208443%_))
            (let ((_%refined208450%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current208448%_ _%refined208450%_)
                  '#!void
                  (_%fixpoint208446%_ _%refined208450%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx208443%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx208443%_))
          (let ((_%stx208452%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx208443%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx208452%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp208990 (list gxc#::generate-runtime-empty::t))
            (__tmp208989 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp208990
         '()
         __tmp208989
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args208436%_
        (apply make-instance gxc#::generate-ssxi::t _%$args208436%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp208991
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
        (__make-promise __tmp208991)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx208428%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self208431%_
                (let ((__obj208970
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj208970))
               (__tmp208992
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self208431%_ _%stx208428%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp208992
           gxc#current-compile-method
           _%self208431%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self208388%_ _%stx208389%_)
        (let* ((_%g208391208401%_
                (lambda (_%g208392208398%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208392208398%_))))
               (_%g208390208425%_
                (lambda (_%g208392208404%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208392208404%_))
                      (let ((_%e208394208406%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g208392208404%_))))
                        (let ((_%hd208395208409%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208394208406%_)))
                              (_%tl208396208411%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208394208406%_))))
                          ((lambda (_%L208414%_)
                             (let ((__tmp208995
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self208388%_
                                         _%stx208389%_))))
                                   (__tmp208993
                                    (let ((__tmp208994
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp208994 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp208995
                                gx#current-expander-phi
                                __tmp208993)))
                           _%tl208396208411%_)))
                      (_%g208391208401%_ _%g208392208404%_)))))
          (_%g208390208425%_ _%stx208389%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self208327%_ _%stx208328%_)
        (let* ((_%g208330208344%_
                (lambda (_%g208331208341%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208331208341%_))))
               (_%g208329208385%_
                (lambda (_%g208331208347%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208331208347%_))
                      (let ((_%e208334208349%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g208331208347%_))))
                        (let ((_%hd208335208352%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208334208349%_)))
                              (_%tl208336208354%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208334208349%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208336208354%_))
                              (let ((_%e208337208357%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl208336208354%_))))
                                (let ((_%hd208338208360%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208337208357%_)))
                                      (_%tl208339208362%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208337208357%_))))
                                  ((lambda (_%L208365%_ _%L208366%_)
                                     (let* ((_%ctx208379%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L208366%_)))
                                            (_%code208381%_
                                             (##structure-ref
                                              _%ctx208379%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp208996
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self208327%_
                                                  _%code208381%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp208996
                                        gx#current-expander-context
                                        _%ctx208379%_)))
                                   _%tl208339208362%_
                                   _%hd208338208360%_)))
                              (_%g208330208344%_ _%g208331208347%_))))
                      (_%g208330208344%_ _%g208331208347%_)))))
          (_%g208329208385%_ _%stx208328%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self208132%_ _%stx208133%_)
        (letrec ((_%generate-e208135%_
                  (lambda (_%id208312%_)
                    (let* ((_%sym208314%_
                            (if (let ((__tmp208997
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp208997))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id208312%_))
                                '#f))
                           (_%$e208316%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym208314%_))))
                      (if _%$e208316%_
                          ((lambda (_%klass208319%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym208314%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym208314%_
                                                     (cons (let ((__method208971
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass208319%_ 'typedecl))))
                     (if __method208971
                         (let ()
                           (declare (not safe))
                           (__method208971 _%klass208319%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass208319%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym208314%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym208314%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e208316%_)
                          (let ((_%$e208321%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym208314%_))))
                            (if _%$e208321%_
                                ((lambda (_%type208324%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym208314%_
                                      '" "
                                      _%type208324%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type208324%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym208314%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym208314%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type208324%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym208314%_
                                                   (cons (let ((__method208972
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type208324%_ 'typedecl))))
                   (if __method208972
                       (let ()
                         (declare (not safe))
                         (__method208972 _%type208324%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type208324%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e208321%_)
                                '(begin))))))))
          (let* ((_%__stx208583208584%_ _%stx208133%_)
                 (_%g208138208176%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx208583208584%_)))))
            (let ((_%__kont208585208586%_
                   (lambda (_%L208294%_) (_%generate-e208135%_ _%L208294%_)))
                  (_%__kont208587208588%_
                   (lambda (_%L208229%_)
                     (let ((_%types208255%_
                            (map _%generate-e208135%_
                                 (let ((__tmp208998
                                        (lambda (_%g208247208250%_
                                                 _%g208248208252%_)
                                          (cons _%g208247208250%_
                                                _%g208248208252%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp208998 '() _%L208229%_)))))
                       (cons 'begin _%types208255%_)))))
              (let ((_%__match208638208639%_
                     (lambda (_%e208154208181%_
                              _%hd208155208184%_
                              _%tl208156208186%_
                              _%e208157208189%_
                              _%hd208158208192%_
                              _%tl208159208194%_
                              _%__splice208589208590%_
                              _%target208160208197%_
                              _%tl208162208199%_)
                       (letrec ((_%loop208163208202%_
                                 (lambda (_%hd208161208205%_
                                          _%id208167208207%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd208161208205%_))
                                       (let ((_%e208164208210%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd208161208205%_))))
                                         (let ((_%lp-tl208166208215%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e208164208210%_)))
                                               (_%lp-hd208165208213%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e208164208210%_))))
                                           (_%loop208163208202%_
                                            _%lp-tl208166208215%_
                                            (cons _%lp-hd208165208213%_
                                                  _%id208167208207%_))))
                                       (let ((_%id208168208218%_
                                              (reverse _%id208167208207%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl208159208194%_))
                                             (let ((_%e208169208221%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl208159208194%_))))
                                               (let ((_%tl208171208226%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e208169208221%_)))
                                                     (_%hd208170208224%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e208169208221%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl208171208226%_))
                                                     (_%__kont208587208588%_
                                                      _%id208168208218%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g208138208176%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g208138208176%_))))))))
                         (_%loop208163208202%_ _%target208160208197%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx208583208584%_))
                    (let ((_%e208141208262%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx208583208584%_))))
                      (let ((_%tl208143208267%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e208141208262%_)))
                            (_%hd208142208265%_
                             (let ()
                               (declare (not safe))
                               (##car _%e208141208262%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl208143208267%_))
                            (let ((_%e208144208270%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl208143208267%_))))
                              (let ((_%tl208146208275%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e208144208270%_)))
                                    (_%hd208145208273%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e208144208270%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd208145208273%_))
                                    (let ((_%e208147208278%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd208145208273%_))))
                                      (let ((_%tl208149208283%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e208147208278%_)))
                                            (_%hd208148208281%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e208147208278%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl208149208283%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl208146208275%_))
                                                (let ((_%e208150208286%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl208146208275%_))))
                                                  (let ((_%tl208152208291%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e208150208286%_)))
                                                        (_%hd208151208289%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e208150208286%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl208152208291%_))
                                                        (_%__kont208585208586%_
                                                         _%hd208148208281%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd208145208273%_))
                                                            (let ((_%__splice208589208590%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd208145208273%_
                              '0))))
                      (let ((_%tl208162208199%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice208589208590%_ '1)))
                            (_%target208160208197%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice208589208590%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl208162208199%_))
                            (_%__match208638208639%_
                             _%e208141208262%_
                             _%hd208142208265%_
                             _%tl208143208267%_
                             _%e208144208270%_
                             _%hd208145208273%_
                             _%tl208146208275%_
                             _%__splice208589208590%_
                             _%target208160208197%_
                             _%tl208162208199%_)
                            (let ()
                              (declare (not safe))
                              (_%g208138208176%_)))))
                    (let () (declare (not safe)) (_%g208138208176%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd208145208273%_))
                                                    (let ((_%__splice208589208590%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd208145208273%_
                                                              '0))))
                                                      (let ((_%tl208162208199%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice208589208590%_ '1)))
                    (_%target208160208197%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice208589208590%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl208162208199%_))
                    (_%__match208638208639%_
                     _%e208141208262%_
                     _%hd208142208265%_
                     _%tl208143208267%_
                     _%e208144208270%_
                     _%hd208145208273%_
                     _%tl208146208275%_
                     _%__splice208589208590%_
                     _%target208160208197%_
                     _%tl208162208199%_)
                    (let () (declare (not safe)) (_%g208138208176%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g208138208176%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd208145208273%_))
                                                (let ((_%__splice208589208590%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd208145208273%_
                                                          '0))))
                                                  (let ((_%tl208162208199%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice208589208590%_
                                                            '1)))
                                                        (_%target208160208197%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice208589208590%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl208162208199%_))
                                                        (_%__match208638208639%_
                                                         _%e208141208262%_
                                                         _%hd208142208265%_
                                                         _%tl208143208267%_
                                                         _%e208144208270%_
                                                         _%hd208145208273%_
                                                         _%tl208146208275%_
                                                         _%__splice208589208590%_
                                                         _%target208160208197%_
                                                         _%tl208162208199%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g208138208176%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g208138208176%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd208145208273%_))
                                        (let ((_%__splice208589208590%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd208145208273%_
                                                  '0))))
                                          (let ((_%tl208162208199%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice208589208590%_
                                                    '1)))
                                                (_%target208160208197%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice208589208590%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl208162208199%_))
                                                (_%__match208638208639%_
                                                 _%e208141208262%_
                                                 _%hd208142208265%_
                                                 _%tl208143208267%_
                                                 _%e208144208270%_
                                                 _%hd208145208273%_
                                                 _%tl208146208275%_
                                                 _%__splice208589208590%_
                                                 _%target208160208197%_
                                                 _%tl208162208199%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g208138208176%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g208138208176%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g208138208176%_)))))
                    (let () (declare (not safe)) (_%g208138208176%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self207685%_ _%stx207686%_)
        (let* ((_%__stx208641208642%_ _%stx207686%_)
               (_%g207690207792%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208641208642%_)))))
          (let ((_%__kont208643208644%_
                 (lambda (_%L208082%_
                          _%L208083%_
                          _%L208084%_
                          _%L208085%_
                          _%L208086%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L208085%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L208084%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L208083%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L208082%_))
                                                 '())))))))
                (_%__kont208645208646%_
                 (lambda (_%L207908%_ _%L207909%_ _%L207910%_ _%L207911%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L207910%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L207909%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L207908%_))
                                           (cons '#f '())))))))
                (_%__kont208647208648%_ (lambda () '(begin))))
            (let ((_%__match208776208777%_
                   (lambda (_%e207697207954%_
                            _%hd207698207957%_
                            _%tl207699207959%_
                            _%e207700207962%_
                            _%hd207701207965%_
                            _%tl207702207967%_
                            _%e207703207970%_
                            _%hd207704207973%_
                            _%tl207705207975%_
                            _%e207706207978%_
                            _%hd207707207981%_
                            _%tl207708207983%_
                            _%e207709207986%_
                            _%hd207710207989%_
                            _%tl207711207991%_
                            _%e207712207994%_
                            _%hd207713207997%_
                            _%tl207714207999%_
                            _%e207715208002%_
                            _%hd207716208005%_
                            _%tl207717208007%_
                            _%e207718208010%_
                            _%hd207719208013%_
                            _%tl207720208015%_
                            _%e207721208018%_
                            _%hd207722208021%_
                            _%tl207723208023%_
                            _%e207724208026%_
                            _%hd207725208029%_
                            _%tl207726208031%_
                            _%e207727208034%_
                            _%hd207728208037%_
                            _%tl207729208039%_
                            _%e207730208042%_
                            _%hd207731208045%_
                            _%tl207732208047%_
                            _%e207733208050%_
                            _%hd207734208053%_
                            _%tl207735208055%_
                            _%e207736208058%_
                            _%hd207737208061%_
                            _%tl207738208063%_
                            _%e207739208066%_
                            _%hd207740208069%_
                            _%tl207741208071%_
                            _%e207742208074%_
                            _%hd207743208077%_
                            _%tl207744208079%_)
                     (let ((_%L208082%_ _%hd207743208077%_)
                           (_%L208083%_ _%hd207734208053%_)
                           (_%L208084%_ _%hd207725208029%_)
                           (_%L208085%_ _%hd207716208005%_)
                           (_%L208086%_ _%hd207707207981%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L208086%_
                              'bind-method!))
                           (_%__kont208643208644%_
                            _%L208082%_
                            _%L208083%_
                            _%L208084%_
                            _%L208085%_
                            _%L208086%_)
                           (_%__kont208647208648%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208641208642%_))
                  (let ((_%e207697207954%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx208641208642%_))))
                    (let ((_%tl207699207959%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e207697207954%_)))
                          (_%hd207698207957%_
                           (let ()
                             (declare (not safe))
                             (##car _%e207697207954%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl207699207959%_))
                          (let ((_%e207700207962%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl207699207959%_))))
                            (let ((_%tl207702207967%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e207700207962%_)))
                                  (_%hd207701207965%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e207700207962%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd207701207965%_))
                                  (let ((_%e207703207970%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd207701207965%_))))
                                    (let ((_%tl207705207975%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e207703207970%_)))
                                          (_%hd207704207973%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e207703207970%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd207704207973%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd207704207973%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl207705207975%_))
                                                  (let ((_%e207706207978%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl207705207975%_))))
                                                    (let ((_%tl207708207983%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e207706207978%_)))
                                                          (_%hd207707207981%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e207706207978%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl207708207983%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl207702207967%_))
                      (let ((_%e207709207986%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl207702207967%_))))
                        (let ((_%tl207711207991%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207709207986%_)))
                              (_%hd207710207989%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207709207986%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd207710207989%_))
                              (let ((_%e207712207994%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd207710207989%_))))
                                (let ((_%tl207714207999%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207712207994%_)))
                                      (_%hd207713207997%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207712207994%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd207713207997%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd207713207997%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl207714207999%_))
                                              (let ((_%e207715208002%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl207714207999%_))))
                                                (let ((_%tl207717208007%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e207715208002%_)))
                                                      (_%hd207716208005%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e207715208002%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl207717208007%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl207711207991%_))
                                                          (let ((_%e207718208010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl207711207991%_))))
                    (let ((_%tl207720208015%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e207718208010%_)))
                          (_%hd207719208013%_
                           (let ()
                             (declare (not safe))
                             (##car _%e207718208010%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd207719208013%_))
                          (let ((_%e207721208018%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd207719208013%_))))
                            (let ((_%tl207723208023%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e207721208018%_)))
                                  (_%hd207722208021%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e207721208018%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd207722208021%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd207722208021%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl207723208023%_))
                                          (let ((_%e207724208026%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl207723208023%_))))
                                            (let ((_%tl207726208031%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e207724208026%_)))
                                                  (_%hd207725208029%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e207724208026%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl207726208031%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl207720208015%_))
                                                      (let ((_%e207727208034%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl207720208015%_))))
                (let ((_%tl207729208039%_
                       (let () (declare (not safe)) (##cdr _%e207727208034%_)))
                      (_%hd207728208037%_
                       (let ()
                         (declare (not safe))
                         (##car _%e207727208034%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd207728208037%_))
                      (let ((_%e207730208042%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd207728208037%_))))
                        (let ((_%tl207732208047%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207730208042%_)))
                              (_%hd207731208045%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207730208042%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd207731208045%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd207731208045%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207732208047%_))
                                      (let ((_%e207733208050%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl207732208047%_))))
                                        (let ((_%tl207735208055%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207733208050%_)))
                                              (_%hd207734208053%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207733208050%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207735208055%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl207729208039%_))
                                                  (let ((_%e207736208058%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl207729208039%_))))
                                                    (let ((_%tl207738208063%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e207736208058%_)))
                                                          (_%hd207737208061%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e207736208058%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd207737208061%_))
                                                          (let ((_%e207739208066%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd207737208061%_))))
                    (let ((_%tl207741208071%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e207739208066%_)))
                          (_%hd207740208069%_
                           (let ()
                             (declare (not safe))
                             (##car _%e207739208066%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd207740208069%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd207740208069%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl207741208071%_))
                                  (let ((_%e207742208074%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl207741208071%_))))
                                    (let ((_%tl207744208079%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e207742208074%_)))
                                          (_%hd207743208077%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e207742208074%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl207744208079%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207738208063%_))
                                              (_%__match208776208777%_
                                               _%e207697207954%_
                                               _%hd207698207957%_
                                               _%tl207699207959%_
                                               _%e207700207962%_
                                               _%hd207701207965%_
                                               _%tl207702207967%_
                                               _%e207703207970%_
                                               _%hd207704207973%_
                                               _%tl207705207975%_
                                               _%e207706207978%_
                                               _%hd207707207981%_
                                               _%tl207708207983%_
                                               _%e207709207986%_
                                               _%hd207710207989%_
                                               _%tl207711207991%_
                                               _%e207712207994%_
                                               _%hd207713207997%_
                                               _%tl207714207999%_
                                               _%e207715208002%_
                                               _%hd207716208005%_
                                               _%tl207717208007%_
                                               _%e207718208010%_
                                               _%hd207719208013%_
                                               _%tl207720208015%_
                                               _%e207721208018%_
                                               _%hd207722208021%_
                                               _%tl207723208023%_
                                               _%e207724208026%_
                                               _%hd207725208029%_
                                               _%tl207726208031%_
                                               _%e207727208034%_
                                               _%hd207728208037%_
                                               _%tl207729208039%_
                                               _%e207730208042%_
                                               _%hd207731208045%_
                                               _%tl207732208047%_
                                               _%e207733208050%_
                                               _%hd207734208053%_
                                               _%tl207735208055%_
                                               _%e207736208058%_
                                               _%hd207737208061%_
                                               _%tl207738208063%_
                                               _%e207739208066%_
                                               _%hd207740208069%_
                                               _%tl207741208071%_
                                               _%e207742208074%_
                                               _%hd207743208077%_
                                               _%tl207744208079%_)
                                              (_%__kont208647208648%_))
                                          (_%__kont208647208648%_))))
                                  (_%__kont208647208648%_))
                              (_%__kont208647208648%_))
                          (_%__kont208647208648%_))))
                  (_%__kont208647208648%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl207729208039%_))
                                                      (if (let ((__tmp208999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp208999 'bind-method!))
                  (let ((_%L207908%_ _%hd207734208053%_)
                        (_%L207909%_ _%hd207725208029%_)
                        (_%L207910%_ _%hd207716208005%_)
                        (_%L207911%_ _%hd207707207981%_))
                    (_%__kont208645208646%_
                     _%L207908%_
                     _%L207909%_
                     _%L207910%_
                     _%L207911%_))
                  (_%__kont208647208648%_))
              (_%__kont208647208648%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont208647208648%_))))
                                      (_%__kont208647208648%_))
                                  (_%__kont208647208648%_))
                              (_%__kont208647208648%_))))
                      (_%__kont208647208648%_))))
              (_%__kont208647208648%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont208647208648%_))))
                                          (_%__kont208647208648%_))
                                      (_%__kont208647208648%_))
                                  (_%__kont208647208648%_))))
                          (_%__kont208647208648%_))))
                  (_%__kont208647208648%_))
              (_%__kont208647208648%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont208647208648%_))
                                          (_%__kont208647208648%_))
                                      (_%__kont208647208648%_))))
                              (_%__kont208647208648%_))))
                      (_%__kont208647208648%_))
                  (_%__kont208647208648%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont208647208648%_))
                                              (_%__kont208647208648%_))
                                          (_%__kont208647208648%_))))
                                  (_%__kont208647208648%_))))
                          (_%__kont208647208648%_))))
                  (_%__kont208647208648%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self207509%_ _%stx207510%_)
        (let* ((_%__stx208885208886%_ _%stx207510%_)
               (_%g207513207553%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208885208886%_)))))
          (let ((_%__kont208887208888%_
                 (lambda (_%L207659%_ _%L207660%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L207660%_))
                               (cons _%L207659%_ '())))))
                (_%__kont208889208890%_
                 (lambda (_%L207582%_ _%L207583%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx208885208886%_))
                (let ((_%e207517207603%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx208885208886%_))))
                  (let ((_%tl207519207608%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207517207603%_)))
                        (_%hd207518207606%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207517207603%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl207519207608%_))
                        (let ((_%e207520207611%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl207519207608%_))))
                          (let ((_%tl207522207616%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207520207611%_)))
                                (_%hd207521207614%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207520207611%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd207521207614%_))
                                (let ((_%e207523207619%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd207521207614%_))))
                                  (let ((_%tl207525207624%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e207523207619%_)))
                                        (_%hd207524207622%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e207523207619%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd207524207622%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd207524207622%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl207525207624%_))
                                                (let ((_%e207526207627%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl207525207624%_))))
                                                  (let ((_%tl207528207632%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e207526207627%_)))
                                                        (_%hd207527207630%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e207526207627%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl207528207632%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl207522207616%_))
                                                            (let ((_%e207529207635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl207522207616%_))))
                      (let ((_%tl207531207640%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e207529207635%_)))
                            (_%hd207530207638%_
                             (let ()
                               (declare (not safe))
                               (##car _%e207529207635%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd207530207638%_))
                            (let ((_%e207532207643%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd207530207638%_))))
                              (let ((_%tl207534207648%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e207532207643%_)))
                                    (_%hd207533207646%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e207532207643%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd207533207646%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd207533207646%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl207534207648%_))
                                            (let ((_%e207535207651%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl207534207648%_))))
                                              (let ((_%tl207537207656%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e207535207651%_)))
                                                    (_%hd207536207654%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e207535207651%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl207537207656%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl207531207640%_))
                                                        (_%__kont208887208888%_
                                                         _%hd207536207654%_
                                                         _%hd207527207630%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g207513207553%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl207531207640%_))
                                                        (_%__kont208889208890%_
                                                         _%hd207530207638%_
                                                         _%hd207521207614%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g207513207553%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl207531207640%_))
                                                (_%__kont208889208890%_
                                                 _%hd207530207638%_
                                                 _%hd207521207614%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g207513207553%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl207531207640%_))
                                            (_%__kont208889208890%_
                                             _%hd207530207638%_
                                             _%hd207521207614%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g207513207553%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl207531207640%_))
                                        (_%__kont208889208890%_
                                         _%hd207530207638%_
                                         _%hd207521207614%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g207513207553%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl207531207640%_))
                                (_%__kont208889208890%_
                                 _%hd207530207638%_
                                 _%hd207521207614%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g207513207553%_))))))
                    (let () (declare (not safe)) (_%g207513207553%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl207522207616%_))
                    (let ((_%e207546207574%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl207522207616%_))))
                      (let ((_%tl207548207579%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e207546207574%_)))
                            (_%hd207547207577%_
                             (let ()
                               (declare (not safe))
                               (##car _%e207546207574%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl207548207579%_))
                            (_%__kont208889208890%_
                             _%hd207547207577%_
                             _%hd207521207614%_)
                            (let ()
                              (declare (not safe))
                              (_%g207513207553%_)))))
                    (let () (declare (not safe)) (_%g207513207553%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl207522207616%_))
                                                    (let ((_%e207546207574%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl207522207616%_))))
                                                      (let ((_%tl207548207579%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e207546207574%_)))
                    (_%hd207547207577%_
                     (let () (declare (not safe)) (##car _%e207546207574%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl207548207579%_))
                    (_%__kont208889208890%_
                     _%hd207547207577%_
                     _%hd207521207614%_)
                    (let () (declare (not safe)) (_%g207513207553%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g207513207553%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl207522207616%_))
                                                (let ((_%e207546207574%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl207522207616%_))))
                                                  (let ((_%tl207548207579%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e207546207574%_)))
                                                        (_%hd207547207577%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e207546207574%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl207548207579%_))
                                                        (_%__kont208889208890%_
                                                         _%hd207547207577%_
                                                         _%hd207521207614%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g207513207553%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g207513207553%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl207522207616%_))
                                            (let ((_%e207546207574%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl207522207616%_))))
                                              (let ((_%tl207548207579%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e207546207574%_)))
                                                    (_%hd207547207577%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e207546207574%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl207548207579%_))
                                                    (_%__kont208889208890%_
                                                     _%hd207547207577%_
                                                     _%hd207521207614%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g207513207553%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g207513207553%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl207522207616%_))
                                    (let ((_%e207546207574%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl207522207616%_))))
                                      (let ((_%tl207548207579%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e207546207574%_)))
                                            (_%hd207547207577%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e207546207574%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl207548207579%_))
                                            (_%__kont208889208890%_
                                             _%hd207547207577%_
                                             _%hd207521207614%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g207513207553%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g207513207553%_))))))
                        (let () (declare (not safe)) (_%g207513207553%_)))))
                (let () (declare (not safe)) (_%g207513207553%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self207496%_)
        (let ((_%self207499%_ _%self207496%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self207499%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self207269%_)
        (let* ((_%self207272%_ _%self207269%_)
               (_%self207281207297%_ _%self207272%_)
               (_%E207283207301%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self207281207297%_
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
               (_%K207284207316%_
                (lambda (_%methods207304%_
                         _%metaclass207305%_
                         _%system?207306%_
                         _%final?207307%_
                         _%struct?207308%_
                         _%constructor207309%_
                         _%fields207310%_
                         _%slots207311%_
                         _%precendence-list207312%_
                         _%super207313%_
                         _%id207314%_)
                  (cons '@class
                        (cons _%id207314%_
                              (cons _%super207313%_
                                    (cons _%precendence-list207312%_
                                          (cons _%slots207311%_
                                                (cons _%fields207310%_
                                                      (cons _%constructor207309%_
                                                            (cons _%struct?207308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?207307%_
                                (cons _%system?207306%_
                                      (cons _%metaclass207305%_
                                            (cons (if _%methods207304%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods207304%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e207285207319%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207281207297%_ '1 '#f '#f)))
               (_%id207322%_ _%e207285207319%_)
               (_%e207286207324%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207281207297%_ '2 '#f '#f)))
               (_%super207327%_ _%e207286207324%_)
               (_%e207287207329%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207281207297%_ '3 '#f '#f)))
               (_%precendence-list207332%_ _%e207287207329%_)
               (_%e207288207334%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207281207297%_ '4 '#f '#f)))
               (_%slots207337%_ _%e207288207334%_)
               (_%e207289207339%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207281207297%_ '5 '#f '#f)))
               (_%fields207342%_ _%e207289207339%_)
               (_%e207290207344%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207281207297%_ '6 '#f '#f)))
               (_%constructor207347%_ _%e207290207344%_)
               (_%e207291207349%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207281207297%_ '7 '#f '#f)))
               (_%struct?207352%_ _%e207291207349%_)
               (_%e207292207354%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207281207297%_ '8 '#f '#f)))
               (_%final?207357%_ _%e207292207354%_)
               (_%e207293207359%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207281207297%_ '9 '#f '#f)))
               (_%system?207362%_ _%e207293207359%_)
               (_%e207294207364%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self207281207297%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass207367%_ _%e207294207364%_)
               (_%e207295207369%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self207281207297%_
                   '11
                   '#f
                   '#f)))
               (_%methods207372%_ _%e207295207369%_))
          (_%K207284207316%_
           _%methods207372%_
           _%metaclass207367%_
           _%system?207362%_
           _%final?207357%_
           _%struct?207352%_
           _%constructor207347%_
           _%fields207342%_
           _%slots207337%_
           _%precendence-list207332%_
           _%super207327%_
           _%id207322%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self207134%_)
        (let ((_%self207137%_ _%self207134%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self207137%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self206999%_)
        (let ((_%self207002%_ _%self206999%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self207002%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self206864%_)
        (let ((_%self206867%_ _%self206864%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self206867%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self206867%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self206867%_
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
      (lambda (_%self206729%_)
        (let ((_%self206732%_ _%self206729%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self206732%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self206732%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self206732%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self206594%_)
        (let ((_%self206597%_ _%self206594%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self206597%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self206597%_
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
      (lambda (_%self206407%_)
        (let* ((_%self206410%_ _%self206407%_)
               (_%self206419206428%_ _%self206410%_)
               (_%E206421206432%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self206419206428%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K206422206451%_
                (lambda (_%dispatch206435%_
                         _%arity206436%_
                         _%signature206437%_)
                  (if _%signature206437%_
                      (let ((_%signature206439%_ _%signature206437%_))
                        (cons '@lambda
                              (cons _%arity206436%_
                                    (cons _%dispatch206435%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature206439%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature206439%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature206439%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature206439%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature206439%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity206436%_
                                  (cons _%dispatch206435%_ '()))))))
               (_%e206423206454%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206419206428%_ '1 '#f '#f)))
               (_%e206424206457%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206419206428%_ '2 '#f '#f)))
               (_%signature206460%_ _%e206424206457%_)
               (_%e206425206462%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206419206428%_ '3 '#f '#f)))
               (_%arity206465%_ _%e206425206462%_)
               (_%e206426206467%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206419206428%_ '4 '#f '#f)))
               (_%dispatch206470%_ _%e206426206467%_))
          (_%K206422206451%_
           _%dispatch206470%_
           _%arity206465%_
           _%signature206460%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self206267%_)
        (let ((_%self206270%_ _%self206267%_))
          (letrec ((_%clause-e206281%_
                    (lambda (_%clause206283%_)
                      (cdr (let ((__method208973
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause206283%_
                                     'typedecl))))
                             (if __method208973
                                 (let ()
                                   (declare (not safe))
                                   (__method208973 _%clause206283%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause206283%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e206281%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self206270%_
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
      (lambda (_%self206132%_)
        (let ((_%self206135%_ _%self206132%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self206135%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self206135%_
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
      (lambda (_%self205997%_)
        (let ((_%self206000%_ _%self205997%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self206000%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self206000%_
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
      (lambda (_%self205862%_)
        (let ((_%self205865%_ _%self205862%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self205865%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
