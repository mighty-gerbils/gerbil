(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1756224523)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp208977
                   (let ((__obj208971
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
                       (gxc#optimizer-info:::init! __obj208971))
                     __obj208971)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp208977)))))
    (define gxc#optimize!
      (lambda (_%ctx208579%_)
        (let ((__tmp208979
               (lambda ()
                 (let ((__tmp208981
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx208579%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx208579%_)
                          (let ((__tmp208983
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp208982
                                 (##structure-ref
                                  _%ctx208579%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp208983 __tmp208982 '#t))
                          (let ((_%code208583%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx208579%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx208579%_
                             _%code208583%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp208980
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp208981
                    gxc#current-compile-local-type
                    __tmp208980))))
              (__tmp208978 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp208979
           gxc#current-compile-mutators
           __tmp208978))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx208565%_)
        (letrec ((_%load-it!208567%_
                  (lambda (_%id208577%_)
                    (if (let ((__tmp208984
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp208984 _%id208577%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id208577%_)
                          (let ((__tmp208985
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp208985 _%id208577%_ '#t)))))))
          (let* ((_%modid208569%_
                  (##structure-ref
                   _%ctx208565%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str208571%_ (symbol->string _%modid208569%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str208571%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str208571%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!208567%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!208567%_
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
      (lambda (_%ctx208502%_)
        (letrec* ((_%deps208504%_
                   (let* ((_%imports208555%_
                           (##structure-ref
                            _%ctx208502%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e208557%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx208502%_))))
                     (if _%$e208557%_
                         ((lambda (_%g208559208561%_)
                            (cons _%g208559208561%_ _%imports208555%_))
                          _%$e208557%_)
                         _%imports208555%_))))
          (let _%lp208506%_ ((_%rest208508%_ _%deps208504%_))
            (let* ((_%rest208509208517%_ _%rest208508%_)
                   (_%else208511208525%_ (lambda () '#!void))
                   (_%K208513208543%_
                    (lambda (_%rest208528%_ _%hd208529%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd208529%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp208987
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp208986
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd208529%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp208987 __tmp208986))
                                '#!void
                                (begin
                                  (let ((_%$e208532%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd208529%_))))
                                    (if _%$e208532%_
                                        ((lambda (_%pre208535%_)
                                           (_%lp208506%_
                                            (cons _%pre208535%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd208529%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e208532%_)
                                        (_%lp208506%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd208529%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd208529%_)))
                            (_%lp208506%_ _%rest208528%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd208529%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp208989
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp208988
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd208529%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp208989 __tmp208988))
                                    '#!void
                                    (begin
                                      (_%lp208506%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd208529%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd208529%_)))
                                (_%lp208506%_ _%rest208528%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd208529%_
                                     'gx#module-import::t))
                                  (_%lp208506%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd208529%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest208528%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd208529%_
                                         'gx#module-export::t))
                                      (_%lp208506%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd208529%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest208528%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd208529%_
                                             'gx#import-set::t))
                                          (_%lp208506%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd208529%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest208528%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd208529%_))))))))))
              (if (pair? _%rest208509208517%_)
                  (let ((_%hd208514208546%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest208509208517%_)))
                        (_%tl208515208548%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest208509208517%_))))
                    (let* ((_%hd208551%_ _%hd208514208546%_)
                           (_%rest208553%_ _%tl208515208548%_))
                      (_%K208513208543%_ _%rest208553%_ _%hd208551%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx208482%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx208482%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx208482%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht208484%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id208486%_
                    (##structure-ref
                     _%ctx208482%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod208488%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht208484%_ _%id208486%_)))
                   (_%$e208491%_ _%mod208488%_))
              (if _%$e208491%_
                  _%$e208491%_
                  (let* ((_%mod208494%_
                          (gxc#optimizer-import-ssxi _%ctx208482%_))
                         (_%val208499%_
                          (let ((_%$e208496%_ _%mod208494%_))
                            (if _%$e208496%_ _%$e208496%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht208484%_ _%id208486%_ _%val208499%_))
                    _%val208499%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx208480%_)
        (if (##structure-ref _%ctx208480%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx208480%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id208457%_)
        (letrec ((_%catch-e208459%_
                  (lambda (_%exn208478%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn208478%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn208478%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id208457%_))))
                    '#f))
                 (_%import-e208460%_
                  (lambda ()
                    (let* ((_%str-id208463%_
                            (let ((__tmp208990
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id208457%_))))
                              (declare (not safe))
                              (##string-append __tmp208990 '".ssxi")))
                           (_%artefact-path208471%_
                            (let ((_%odir208464208466%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir208464208466%_
                                  (let ((_%odir208469%_ _%odir208464208466%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id208463%_
                                        '".ss"))
                                     _%odir208469%_))
                                  '#f)))
                           (_%library-path208473%_
                            (let ((__tmp208991
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id208463%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp208991)))
                           (_%ssxi-path208475%_
                            (if (and _%artefact-path208471%_
                                     (file-exists? _%artefact-path208471%_))
                                _%artefact-path208471%_
                                _%library-path208473%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path208475%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path208475%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e208459%_ _%import-e208460%_)))))
    (define gxc#optimize-source
      (lambda (_%stx208442%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx208442%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx208442%_))
        (let* ((_%stx208444%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx208442%_)))
               (_%stx208446%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx208444%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx208446%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx208446%_))
          (let _%fixpoint208449%_ ((_%current208451%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx208446%_))
            (let ((_%refined208453%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current208451%_ _%refined208453%_)
                  '#!void
                  (_%fixpoint208449%_ _%refined208453%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx208446%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx208446%_))
          (let ((_%stx208455%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx208446%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx208455%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp208993 (list gxc#::generate-runtime-empty::t))
            (__tmp208992 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp208993
         '()
         __tmp208992
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args208439%_
        (apply make-instance gxc#::generate-ssxi::t _%$args208439%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp208994
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
        (__make-promise __tmp208994)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx208431%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self208434%_
                (let ((__obj208973
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj208973))
               (__tmp208995
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self208434%_ _%stx208431%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp208995
           gxc#current-compile-method
           _%self208434%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self208391%_ _%stx208392%_)
        (let* ((_%g208394208404%_
                (lambda (_%g208395208401%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208395208401%_))))
               (_%g208393208428%_
                (lambda (_%g208395208407%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208395208407%_))
                      (let ((_%e208397208409%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g208395208407%_))))
                        (let ((_%hd208398208412%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208397208409%_)))
                              (_%tl208399208414%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208397208409%_))))
                          ((lambda (_%L208417%_)
                             (let ((__tmp208998
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self208391%_
                                         _%stx208392%_))))
                                   (__tmp208996
                                    (let ((__tmp208997
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp208997 '1))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp208998
                                gx#current-expander-phi
                                __tmp208996)))
                           _%tl208399208414%_)))
                      (_%g208394208404%_ _%g208395208407%_)))))
          (_%g208393208428%_ _%stx208392%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self208330%_ _%stx208331%_)
        (let* ((_%g208333208347%_
                (lambda (_%g208334208344%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208334208344%_))))
               (_%g208332208388%_
                (lambda (_%g208334208350%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208334208350%_))
                      (let ((_%e208337208352%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g208334208350%_))))
                        (let ((_%hd208338208355%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208337208352%_)))
                              (_%tl208339208357%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208337208352%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208339208357%_))
                              (let ((_%e208340208360%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl208339208357%_))))
                                (let ((_%hd208341208363%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208340208360%_)))
                                      (_%tl208342208365%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208340208360%_))))
                                  ((lambda (_%L208368%_ _%L208369%_)
                                     (let* ((_%ctx208382%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L208369%_)))
                                            (_%code208384%_
                                             (##structure-ref
                                              _%ctx208382%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp208999
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self208330%_
                                                  _%code208384%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp208999
                                        gx#current-expander-context
                                        _%ctx208382%_)))
                                   _%tl208342208365%_
                                   _%hd208341208363%_)))
                              (_%g208333208347%_ _%g208334208350%_))))
                      (_%g208333208347%_ _%g208334208350%_)))))
          (_%g208332208388%_ _%stx208331%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self208135%_ _%stx208136%_)
        (letrec ((_%generate-e208138%_
                  (lambda (_%id208315%_)
                    (let* ((_%sym208317%_
                            (if (let ((__tmp209000
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp209000))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id208315%_))
                                '#f))
                           (_%$e208319%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym208317%_))))
                      (if _%$e208319%_
                          ((lambda (_%klass208322%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym208317%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym208317%_
                                                     (cons (let ((__method208974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass208322%_ 'typedecl))))
                     (if __method208974
                         (let ()
                           (declare (not safe))
                           (__method208974 _%klass208322%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass208322%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym208317%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym208317%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e208319%_)
                          (let ((_%$e208324%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym208317%_))))
                            (if _%$e208324%_
                                ((lambda (_%type208327%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym208317%_
                                      '" "
                                      _%type208327%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type208327%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym208317%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym208317%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type208327%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym208317%_
                                                   (cons (let ((__method208975
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type208327%_ 'typedecl))))
                   (if __method208975
                       (let ()
                         (declare (not safe))
                         (__method208975 _%type208327%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type208327%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e208324%_)
                                '(begin))))))))
          (let* ((_%__stx208586208587%_ _%stx208136%_)
                 (_%g208141208179%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx208586208587%_)))))
            (let ((_%__kont208588208589%_
                   (lambda (_%L208297%_) (_%generate-e208138%_ _%L208297%_)))
                  (_%__kont208590208591%_
                   (lambda (_%L208232%_)
                     (let ((_%types208258%_
                            (map _%generate-e208138%_
                                 (let ((__tmp209001
                                        (lambda (_%g208250208253%_
                                                 _%g208251208255%_)
                                          (cons _%g208250208253%_
                                                _%g208251208255%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp209001 '() _%L208232%_)))))
                       (cons 'begin _%types208258%_)))))
              (let ((_%__match208641208642%_
                     (lambda (_%e208157208184%_
                              _%hd208158208187%_
                              _%tl208159208189%_
                              _%e208160208192%_
                              _%hd208161208195%_
                              _%tl208162208197%_
                              _%__splice208592208593%_
                              _%target208163208200%_
                              _%tl208165208202%_)
                       (letrec ((_%loop208166208205%_
                                 (lambda (_%hd208164208208%_
                                          _%id208170208210%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd208164208208%_))
                                       (let ((_%e208167208213%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd208164208208%_))))
                                         (let ((_%lp-tl208169208218%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e208167208213%_)))
                                               (_%lp-hd208168208216%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e208167208213%_))))
                                           (_%loop208166208205%_
                                            _%lp-tl208169208218%_
                                            (cons _%lp-hd208168208216%_
                                                  _%id208170208210%_))))
                                       (let ((_%id208171208221%_
                                              (reverse _%id208170208210%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl208162208197%_))
                                             (let ((_%e208172208224%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl208162208197%_))))
                                               (let ((_%tl208174208229%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e208172208224%_)))
                                                     (_%hd208173208227%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e208172208224%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl208174208229%_))
                                                     (_%__kont208590208591%_
                                                      _%id208171208221%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g208141208179%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g208141208179%_))))))))
                         (_%loop208166208205%_ _%target208163208200%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx208586208587%_))
                    (let ((_%e208144208265%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx208586208587%_))))
                      (let ((_%tl208146208270%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e208144208265%_)))
                            (_%hd208145208268%_
                             (let ()
                               (declare (not safe))
                               (##car _%e208144208265%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl208146208270%_))
                            (let ((_%e208147208273%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl208146208270%_))))
                              (let ((_%tl208149208278%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e208147208273%_)))
                                    (_%hd208148208276%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e208147208273%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd208148208276%_))
                                    (let ((_%e208150208281%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd208148208276%_))))
                                      (let ((_%tl208152208286%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e208150208281%_)))
                                            (_%hd208151208284%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e208150208281%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl208152208286%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl208149208278%_))
                                                (let ((_%e208153208289%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl208149208278%_))))
                                                  (let ((_%tl208155208294%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e208153208289%_)))
                                                        (_%hd208154208292%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e208153208289%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl208155208294%_))
                                                        (_%__kont208588208589%_
                                                         _%hd208151208284%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd208148208276%_))
                                                            (let ((_%__splice208592208593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd208148208276%_
                              '0))))
                      (let ((_%tl208165208202%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice208592208593%_ '1)))
                            (_%target208163208200%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice208592208593%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl208165208202%_))
                            (_%__match208641208642%_
                             _%e208144208265%_
                             _%hd208145208268%_
                             _%tl208146208270%_
                             _%e208147208273%_
                             _%hd208148208276%_
                             _%tl208149208278%_
                             _%__splice208592208593%_
                             _%target208163208200%_
                             _%tl208165208202%_)
                            (let ()
                              (declare (not safe))
                              (_%g208141208179%_)))))
                    (let () (declare (not safe)) (_%g208141208179%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd208148208276%_))
                                                    (let ((_%__splice208592208593%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd208148208276%_
                                                              '0))))
                                                      (let ((_%tl208165208202%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice208592208593%_ '1)))
                    (_%target208163208200%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice208592208593%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl208165208202%_))
                    (_%__match208641208642%_
                     _%e208144208265%_
                     _%hd208145208268%_
                     _%tl208146208270%_
                     _%e208147208273%_
                     _%hd208148208276%_
                     _%tl208149208278%_
                     _%__splice208592208593%_
                     _%target208163208200%_
                     _%tl208165208202%_)
                    (let () (declare (not safe)) (_%g208141208179%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g208141208179%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd208148208276%_))
                                                (let ((_%__splice208592208593%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd208148208276%_
                                                          '0))))
                                                  (let ((_%tl208165208202%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice208592208593%_
                                                            '1)))
                                                        (_%target208163208200%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice208592208593%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl208165208202%_))
                                                        (_%__match208641208642%_
                                                         _%e208144208265%_
                                                         _%hd208145208268%_
                                                         _%tl208146208270%_
                                                         _%e208147208273%_
                                                         _%hd208148208276%_
                                                         _%tl208149208278%_
                                                         _%__splice208592208593%_
                                                         _%target208163208200%_
                                                         _%tl208165208202%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g208141208179%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g208141208179%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd208148208276%_))
                                        (let ((_%__splice208592208593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd208148208276%_
                                                  '0))))
                                          (let ((_%tl208165208202%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice208592208593%_
                                                    '1)))
                                                (_%target208163208200%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice208592208593%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl208165208202%_))
                                                (_%__match208641208642%_
                                                 _%e208144208265%_
                                                 _%hd208145208268%_
                                                 _%tl208146208270%_
                                                 _%e208147208273%_
                                                 _%hd208148208276%_
                                                 _%tl208149208278%_
                                                 _%__splice208592208593%_
                                                 _%target208163208200%_
                                                 _%tl208165208202%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g208141208179%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g208141208179%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g208141208179%_)))))
                    (let () (declare (not safe)) (_%g208141208179%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self207688%_ _%stx207689%_)
        (let* ((_%__stx208644208645%_ _%stx207689%_)
               (_%g207693207795%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208644208645%_)))))
          (let ((_%__kont208646208647%_
                 (lambda (_%L208085%_
                          _%L208086%_
                          _%L208087%_
                          _%L208088%_
                          _%L208089%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L208088%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L208087%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L208086%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L208085%_))
                                                 '())))))))
                (_%__kont208648208649%_
                 (lambda (_%L207911%_ _%L207912%_ _%L207913%_ _%L207914%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L207913%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L207912%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L207911%_))
                                           (cons '#f '())))))))
                (_%__kont208650208651%_ (lambda () '(begin))))
            (let ((_%__match208779208780%_
                   (lambda (_%e207700207957%_
                            _%hd207701207960%_
                            _%tl207702207962%_
                            _%e207703207965%_
                            _%hd207704207968%_
                            _%tl207705207970%_
                            _%e207706207973%_
                            _%hd207707207976%_
                            _%tl207708207978%_
                            _%e207709207981%_
                            _%hd207710207984%_
                            _%tl207711207986%_
                            _%e207712207989%_
                            _%hd207713207992%_
                            _%tl207714207994%_
                            _%e207715207997%_
                            _%hd207716208000%_
                            _%tl207717208002%_
                            _%e207718208005%_
                            _%hd207719208008%_
                            _%tl207720208010%_
                            _%e207721208013%_
                            _%hd207722208016%_
                            _%tl207723208018%_
                            _%e207724208021%_
                            _%hd207725208024%_
                            _%tl207726208026%_
                            _%e207727208029%_
                            _%hd207728208032%_
                            _%tl207729208034%_
                            _%e207730208037%_
                            _%hd207731208040%_
                            _%tl207732208042%_
                            _%e207733208045%_
                            _%hd207734208048%_
                            _%tl207735208050%_
                            _%e207736208053%_
                            _%hd207737208056%_
                            _%tl207738208058%_
                            _%e207739208061%_
                            _%hd207740208064%_
                            _%tl207741208066%_
                            _%e207742208069%_
                            _%hd207743208072%_
                            _%tl207744208074%_
                            _%e207745208077%_
                            _%hd207746208080%_
                            _%tl207747208082%_)
                     (let ((_%L208085%_ _%hd207746208080%_)
                           (_%L208086%_ _%hd207737208056%_)
                           (_%L208087%_ _%hd207728208032%_)
                           (_%L208088%_ _%hd207719208008%_)
                           (_%L208089%_ _%hd207710207984%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L208089%_
                              'bind-method!))
                           (_%__kont208646208647%_
                            _%L208085%_
                            _%L208086%_
                            _%L208087%_
                            _%L208088%_
                            _%L208089%_)
                           (_%__kont208650208651%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx208644208645%_))
                  (let ((_%e207700207957%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx208644208645%_))))
                    (let ((_%tl207702207962%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e207700207957%_)))
                          (_%hd207701207960%_
                           (let ()
                             (declare (not safe))
                             (##car _%e207700207957%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl207702207962%_))
                          (let ((_%e207703207965%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl207702207962%_))))
                            (let ((_%tl207705207970%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e207703207965%_)))
                                  (_%hd207704207968%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e207703207965%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd207704207968%_))
                                  (let ((_%e207706207973%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd207704207968%_))))
                                    (let ((_%tl207708207978%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e207706207973%_)))
                                          (_%hd207707207976%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e207706207973%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd207707207976%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd207707207976%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl207708207978%_))
                                                  (let ((_%e207709207981%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl207708207978%_))))
                                                    (let ((_%tl207711207986%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e207709207981%_)))
                                                          (_%hd207710207984%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e207709207981%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl207711207986%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl207705207970%_))
                      (let ((_%e207712207989%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl207705207970%_))))
                        (let ((_%tl207714207994%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207712207989%_)))
                              (_%hd207713207992%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207712207989%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd207713207992%_))
                              (let ((_%e207715207997%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd207713207992%_))))
                                (let ((_%tl207717208002%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207715207997%_)))
                                      (_%hd207716208000%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207715207997%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd207716208000%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd207716208000%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl207717208002%_))
                                              (let ((_%e207718208005%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl207717208002%_))))
                                                (let ((_%tl207720208010%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e207718208005%_)))
                                                      (_%hd207719208008%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e207718208005%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl207720208010%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl207714207994%_))
                                                          (let ((_%e207721208013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl207714207994%_))))
                    (let ((_%tl207723208018%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e207721208013%_)))
                          (_%hd207722208016%_
                           (let ()
                             (declare (not safe))
                             (##car _%e207721208013%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd207722208016%_))
                          (let ((_%e207724208021%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd207722208016%_))))
                            (let ((_%tl207726208026%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e207724208021%_)))
                                  (_%hd207725208024%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e207724208021%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd207725208024%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd207725208024%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl207726208026%_))
                                          (let ((_%e207727208029%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl207726208026%_))))
                                            (let ((_%tl207729208034%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e207727208029%_)))
                                                  (_%hd207728208032%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e207727208029%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl207729208034%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl207723208018%_))
                                                      (let ((_%e207730208037%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl207723208018%_))))
                (let ((_%tl207732208042%_
                       (let () (declare (not safe)) (##cdr _%e207730208037%_)))
                      (_%hd207731208040%_
                       (let ()
                         (declare (not safe))
                         (##car _%e207730208037%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd207731208040%_))
                      (let ((_%e207733208045%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd207731208040%_))))
                        (let ((_%tl207735208050%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207733208045%_)))
                              (_%hd207734208048%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207733208045%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd207734208048%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd207734208048%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207735208050%_))
                                      (let ((_%e207736208053%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl207735208050%_))))
                                        (let ((_%tl207738208058%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207736208053%_)))
                                              (_%hd207737208056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207736208053%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207738208058%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl207732208042%_))
                                                  (let ((_%e207739208061%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl207732208042%_))))
                                                    (let ((_%tl207741208066%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e207739208061%_)))
                                                          (_%hd207740208064%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e207739208061%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd207740208064%_))
                                                          (let ((_%e207742208069%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd207740208064%_))))
                    (let ((_%tl207744208074%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e207742208069%_)))
                          (_%hd207743208072%_
                           (let ()
                             (declare (not safe))
                             (##car _%e207742208069%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd207743208072%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd207743208072%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl207744208074%_))
                                  (let ((_%e207745208077%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl207744208074%_))))
                                    (let ((_%tl207747208082%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e207745208077%_)))
                                          (_%hd207746208080%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e207745208077%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl207747208082%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207741208066%_))
                                              (_%__match208779208780%_
                                               _%e207700207957%_
                                               _%hd207701207960%_
                                               _%tl207702207962%_
                                               _%e207703207965%_
                                               _%hd207704207968%_
                                               _%tl207705207970%_
                                               _%e207706207973%_
                                               _%hd207707207976%_
                                               _%tl207708207978%_
                                               _%e207709207981%_
                                               _%hd207710207984%_
                                               _%tl207711207986%_
                                               _%e207712207989%_
                                               _%hd207713207992%_
                                               _%tl207714207994%_
                                               _%e207715207997%_
                                               _%hd207716208000%_
                                               _%tl207717208002%_
                                               _%e207718208005%_
                                               _%hd207719208008%_
                                               _%tl207720208010%_
                                               _%e207721208013%_
                                               _%hd207722208016%_
                                               _%tl207723208018%_
                                               _%e207724208021%_
                                               _%hd207725208024%_
                                               _%tl207726208026%_
                                               _%e207727208029%_
                                               _%hd207728208032%_
                                               _%tl207729208034%_
                                               _%e207730208037%_
                                               _%hd207731208040%_
                                               _%tl207732208042%_
                                               _%e207733208045%_
                                               _%hd207734208048%_
                                               _%tl207735208050%_
                                               _%e207736208053%_
                                               _%hd207737208056%_
                                               _%tl207738208058%_
                                               _%e207739208061%_
                                               _%hd207740208064%_
                                               _%tl207741208066%_
                                               _%e207742208069%_
                                               _%hd207743208072%_
                                               _%tl207744208074%_
                                               _%e207745208077%_
                                               _%hd207746208080%_
                                               _%tl207747208082%_)
                                              (_%__kont208650208651%_))
                                          (_%__kont208650208651%_))))
                                  (_%__kont208650208651%_))
                              (_%__kont208650208651%_))
                          (_%__kont208650208651%_))))
                  (_%__kont208650208651%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl207732208042%_))
                                                      (if (let ((__tmp209002
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp209002 'bind-method!))
                  (let ((_%L207911%_ _%hd207737208056%_)
                        (_%L207912%_ _%hd207728208032%_)
                        (_%L207913%_ _%hd207719208008%_)
                        (_%L207914%_ _%hd207710207984%_))
                    (_%__kont208648208649%_
                     _%L207911%_
                     _%L207912%_
                     _%L207913%_
                     _%L207914%_))
                  (_%__kont208650208651%_))
              (_%__kont208650208651%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont208650208651%_))))
                                      (_%__kont208650208651%_))
                                  (_%__kont208650208651%_))
                              (_%__kont208650208651%_))))
                      (_%__kont208650208651%_))))
              (_%__kont208650208651%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont208650208651%_))))
                                          (_%__kont208650208651%_))
                                      (_%__kont208650208651%_))
                                  (_%__kont208650208651%_))))
                          (_%__kont208650208651%_))))
                  (_%__kont208650208651%_))
              (_%__kont208650208651%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont208650208651%_))
                                          (_%__kont208650208651%_))
                                      (_%__kont208650208651%_))))
                              (_%__kont208650208651%_))))
                      (_%__kont208650208651%_))
                  (_%__kont208650208651%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont208650208651%_))
                                              (_%__kont208650208651%_))
                                          (_%__kont208650208651%_))))
                                  (_%__kont208650208651%_))))
                          (_%__kont208650208651%_))))
                  (_%__kont208650208651%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self207512%_ _%stx207513%_)
        (let* ((_%__stx208888208889%_ _%stx207513%_)
               (_%g207516207556%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx208888208889%_)))))
          (let ((_%__kont208890208891%_
                 (lambda (_%L207662%_ _%L207663%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L207663%_))
                               (cons _%L207662%_ '())))))
                (_%__kont208892208893%_
                 (lambda (_%L207585%_ _%L207586%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx208888208889%_))
                (let ((_%e207520207606%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx208888208889%_))))
                  (let ((_%tl207522207611%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207520207606%_)))
                        (_%hd207521207609%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207520207606%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl207522207611%_))
                        (let ((_%e207523207614%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl207522207611%_))))
                          (let ((_%tl207525207619%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207523207614%_)))
                                (_%hd207524207617%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207523207614%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd207524207617%_))
                                (let ((_%e207526207622%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd207524207617%_))))
                                  (let ((_%tl207528207627%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e207526207622%_)))
                                        (_%hd207527207625%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e207526207622%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd207527207625%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd207527207625%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl207528207627%_))
                                                (let ((_%e207529207630%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl207528207627%_))))
                                                  (let ((_%tl207531207635%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e207529207630%_)))
                                                        (_%hd207530207633%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e207529207630%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl207531207635%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl207525207619%_))
                                                            (let ((_%e207532207638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl207525207619%_))))
                      (let ((_%tl207534207643%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e207532207638%_)))
                            (_%hd207533207641%_
                             (let ()
                               (declare (not safe))
                               (##car _%e207532207638%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd207533207641%_))
                            (let ((_%e207535207646%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd207533207641%_))))
                              (let ((_%tl207537207651%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e207535207646%_)))
                                    (_%hd207536207649%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e207535207646%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd207536207649%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd207536207649%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl207537207651%_))
                                            (let ((_%e207538207654%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl207537207651%_))))
                                              (let ((_%tl207540207659%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e207538207654%_)))
                                                    (_%hd207539207657%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e207538207654%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl207540207659%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl207534207643%_))
                                                        (_%__kont208890208891%_
                                                         _%hd207539207657%_
                                                         _%hd207530207633%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g207516207556%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl207534207643%_))
                                                        (_%__kont208892208893%_
                                                         _%hd207533207641%_
                                                         _%hd207524207617%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g207516207556%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl207534207643%_))
                                                (_%__kont208892208893%_
                                                 _%hd207533207641%_
                                                 _%hd207524207617%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g207516207556%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl207534207643%_))
                                            (_%__kont208892208893%_
                                             _%hd207533207641%_
                                             _%hd207524207617%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g207516207556%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl207534207643%_))
                                        (_%__kont208892208893%_
                                         _%hd207533207641%_
                                         _%hd207524207617%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g207516207556%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl207534207643%_))
                                (_%__kont208892208893%_
                                 _%hd207533207641%_
                                 _%hd207524207617%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g207516207556%_))))))
                    (let () (declare (not safe)) (_%g207516207556%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl207525207619%_))
                    (let ((_%e207549207577%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl207525207619%_))))
                      (let ((_%tl207551207582%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e207549207577%_)))
                            (_%hd207550207580%_
                             (let ()
                               (declare (not safe))
                               (##car _%e207549207577%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl207551207582%_))
                            (_%__kont208892208893%_
                             _%hd207550207580%_
                             _%hd207524207617%_)
                            (let ()
                              (declare (not safe))
                              (_%g207516207556%_)))))
                    (let () (declare (not safe)) (_%g207516207556%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl207525207619%_))
                                                    (let ((_%e207549207577%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl207525207619%_))))
                                                      (let ((_%tl207551207582%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e207549207577%_)))
                    (_%hd207550207580%_
                     (let () (declare (not safe)) (##car _%e207549207577%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl207551207582%_))
                    (_%__kont208892208893%_
                     _%hd207550207580%_
                     _%hd207524207617%_)
                    (let () (declare (not safe)) (_%g207516207556%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g207516207556%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl207525207619%_))
                                                (let ((_%e207549207577%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl207525207619%_))))
                                                  (let ((_%tl207551207582%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e207549207577%_)))
                                                        (_%hd207550207580%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e207549207577%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl207551207582%_))
                                                        (_%__kont208892208893%_
                                                         _%hd207550207580%_
                                                         _%hd207524207617%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g207516207556%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g207516207556%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl207525207619%_))
                                            (let ((_%e207549207577%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl207525207619%_))))
                                              (let ((_%tl207551207582%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e207549207577%_)))
                                                    (_%hd207550207580%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e207549207577%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl207551207582%_))
                                                    (_%__kont208892208893%_
                                                     _%hd207550207580%_
                                                     _%hd207524207617%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g207516207556%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g207516207556%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl207525207619%_))
                                    (let ((_%e207549207577%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl207525207619%_))))
                                      (let ((_%tl207551207582%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e207549207577%_)))
                                            (_%hd207550207580%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e207549207577%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl207551207582%_))
                                            (_%__kont208892208893%_
                                             _%hd207550207580%_
                                             _%hd207524207617%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g207516207556%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g207516207556%_))))))
                        (let () (declare (not safe)) (_%g207516207556%_)))))
                (let () (declare (not safe)) (_%g207516207556%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self207499%_)
        (let ((_%self207502%_ _%self207499%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self207502%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self207272%_)
        (let* ((_%self207275%_ _%self207272%_)
               (_%self207284207300%_ _%self207275%_)
               (_%E207286207304%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self207284207300%_
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
               (_%K207287207319%_
                (lambda (_%methods207307%_
                         _%metaclass207308%_
                         _%system?207309%_
                         _%final?207310%_
                         _%struct?207311%_
                         _%constructor207312%_
                         _%fields207313%_
                         _%slots207314%_
                         _%precendence-list207315%_
                         _%super207316%_
                         _%id207317%_)
                  (cons '@class
                        (cons _%id207317%_
                              (cons _%super207316%_
                                    (cons _%precendence-list207315%_
                                          (cons _%slots207314%_
                                                (cons _%fields207313%_
                                                      (cons _%constructor207312%_
                                                            (cons _%struct?207311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?207310%_
                                (cons _%system?207309%_
                                      (cons _%metaclass207308%_
                                            (cons (if _%methods207307%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods207307%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e207288207322%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207284207300%_ '1 '#f '#f)))
               (_%id207325%_ _%e207288207322%_)
               (_%e207289207327%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207284207300%_ '2 '#f '#f)))
               (_%super207330%_ _%e207289207327%_)
               (_%e207290207332%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207284207300%_ '3 '#f '#f)))
               (_%precendence-list207335%_ _%e207290207332%_)
               (_%e207291207337%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207284207300%_ '4 '#f '#f)))
               (_%slots207340%_ _%e207291207337%_)
               (_%e207292207342%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207284207300%_ '5 '#f '#f)))
               (_%fields207345%_ _%e207292207342%_)
               (_%e207293207347%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207284207300%_ '6 '#f '#f)))
               (_%constructor207350%_ _%e207293207347%_)
               (_%e207294207352%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207284207300%_ '7 '#f '#f)))
               (_%struct?207355%_ _%e207294207352%_)
               (_%e207295207357%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207284207300%_ '8 '#f '#f)))
               (_%final?207360%_ _%e207295207357%_)
               (_%e207296207362%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self207284207300%_ '9 '#f '#f)))
               (_%system?207365%_ _%e207296207362%_)
               (_%e207297207367%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self207284207300%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass207370%_ _%e207297207367%_)
               (_%e207298207372%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self207284207300%_
                   '11
                   '#f
                   '#f)))
               (_%methods207375%_ _%e207298207372%_))
          (_%K207287207319%_
           _%methods207375%_
           _%metaclass207370%_
           _%system?207365%_
           _%final?207360%_
           _%struct?207355%_
           _%constructor207350%_
           _%fields207345%_
           _%slots207340%_
           _%precendence-list207335%_
           _%super207330%_
           _%id207325%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self207137%_)
        (let ((_%self207140%_ _%self207137%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self207140%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self207002%_)
        (let ((_%self207005%_ _%self207002%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self207005%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self206867%_)
        (let ((_%self206870%_ _%self206867%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self206870%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self206870%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self206870%_
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
      (lambda (_%self206732%_)
        (let ((_%self206735%_ _%self206732%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self206735%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self206735%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self206735%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self206597%_)
        (let ((_%self206600%_ _%self206597%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self206600%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self206600%_
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
      (lambda (_%self206410%_)
        (let* ((_%self206413%_ _%self206410%_)
               (_%self206422206431%_ _%self206413%_)
               (_%E206424206435%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self206422206431%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K206425206454%_
                (lambda (_%dispatch206438%_
                         _%arity206439%_
                         _%signature206440%_)
                  (if _%signature206440%_
                      (let ((_%signature206442%_ _%signature206440%_))
                        (cons '@lambda
                              (cons _%arity206439%_
                                    (cons _%dispatch206438%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature206442%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature206442%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature206442%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature206442%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature206442%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity206439%_
                                  (cons _%dispatch206438%_ '()))))))
               (_%e206426206457%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206422206431%_ '1 '#f '#f)))
               (_%e206427206460%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206422206431%_ '2 '#f '#f)))
               (_%signature206463%_ _%e206427206460%_)
               (_%e206428206465%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206422206431%_ '3 '#f '#f)))
               (_%arity206468%_ _%e206428206465%_)
               (_%e206429206470%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self206422206431%_ '4 '#f '#f)))
               (_%dispatch206473%_ _%e206429206470%_))
          (_%K206425206454%_
           _%dispatch206473%_
           _%arity206468%_
           _%signature206463%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self206270%_)
        (let ((_%self206273%_ _%self206270%_))
          (letrec ((_%clause-e206284%_
                    (lambda (_%clause206286%_)
                      (cdr (let ((__method208976
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause206286%_
                                     'typedecl))))
                             (if __method208976
                                 (let ()
                                   (declare (not safe))
                                   (__method208976 _%clause206286%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause206286%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e206284%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self206273%_
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
      (lambda (_%self206135%_)
        (let ((_%self206138%_ _%self206135%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self206138%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self206138%_
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
      (lambda (_%self206000%_)
        (let ((_%self206003%_ _%self206000%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self206003%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self206003%_
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
      (lambda (_%self205865%_)
        (let ((_%self205868%_ _%self205865%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self205868%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
