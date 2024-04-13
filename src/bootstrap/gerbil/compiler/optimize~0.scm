(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1713004417)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp199198
                   (let ((__obj199192
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
                       (gxc#optimizer-info:::init! __obj199192))
                     __obj199192)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp199198)))))
    (define gxc#optimize!
      (lambda (_%ctx198801%_)
        (let ((__tmp199201
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx198801%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx198801%_)
                 (let ((__tmp199203
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp199202
                        (##structure-ref
                         _%ctx198801%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp199203 __tmp199202 '#t))
                 (let ((_%code198804%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx198801%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx198801%_
                    _%code198804%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp199200 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp199199 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp199201
           gxc#current-compile-mutators
           __tmp199200
           gxc#current-compile-local-type
           __tmp199199))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx198787%_)
        (letrec ((_%load-it!198789%_
                  (lambda (_%id198799%_)
                    (if (let ((__tmp199204
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp199204 _%id198799%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id198799%_)
                          (let ((__tmp199205
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp199205 _%id198799%_ '#t)))))))
          (let* ((_%modid198791%_
                  (##structure-ref
                   _%ctx198787%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str198793%_ (symbol->string _%modid198791%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str198793%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str198793%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!198789%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!198789%_
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
      (lambda (_%ctx198724%_)
        (letrec* ((_%deps198726%_
                   (let* ((_%imports198777%_
                           (##structure-ref
                            _%ctx198724%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e198779%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx198724%_))))
                     (if _%$e198779%_
                         ((lambda (_%g198781198783%_)
                            (cons _%g198781198783%_ _%imports198777%_))
                          _%$e198779%_)
                         _%imports198777%_))))
          (let _%lp198728%_ ((_%rest198730%_ _%deps198726%_))
            (let* ((_%rest198731198739%_ _%rest198730%_)
                   (_%else198733198747%_ (lambda () '#!void))
                   (_%K198735198765%_
                    (lambda (_%rest198750%_ _%hd198751%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd198751%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp199207
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp199206
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd198751%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp199207 __tmp199206))
                                '#!void
                                (begin
                                  (let ((_%$e198754%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd198751%_))))
                                    (if _%$e198754%_
                                        ((lambda (_%pre198757%_)
                                           (_%lp198728%_
                                            (cons _%pre198757%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd198751%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e198754%_)
                                        (_%lp198728%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd198751%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd198751%_)))
                            (_%lp198728%_ _%rest198750%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd198751%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp199209
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp199208
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd198751%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp199209 __tmp199208))
                                    '#!void
                                    (begin
                                      (_%lp198728%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd198751%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd198751%_)))
                                (_%lp198728%_ _%rest198750%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd198751%_
                                     'gx#module-import::t))
                                  (_%lp198728%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd198751%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest198750%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd198751%_
                                         'gx#module-export::t))
                                      (_%lp198728%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd198751%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest198750%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd198751%_
                                             'gx#import-set::t))
                                          (_%lp198728%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd198751%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest198750%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd198751%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest198731198739%_))
                  (let ((_%hd198736198768%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest198731198739%_)))
                        (_%tl198737198770%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest198731198739%_))))
                    (let* ((_%hd198773%_ _%hd198736198768%_)
                           (_%rest198775%_ _%tl198737198770%_))
                      (_%K198735198765%_ _%rest198775%_ _%hd198773%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx198704%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx198704%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx198704%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht198706%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id198708%_
                    (##structure-ref
                     _%ctx198704%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod198710%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht198706%_ _%id198708%_)))
                   (_%$e198713%_ _%mod198710%_))
              (if _%$e198713%_
                  _%$e198713%_
                  (let* ((_%mod198716%_
                          (gxc#optimizer-import-ssxi _%ctx198704%_))
                         (_%val198721%_
                          (let ((_%$e198718%_ _%mod198716%_))
                            (if _%$e198718%_ _%$e198718%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht198706%_ _%id198708%_ _%val198721%_))
                    _%val198721%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx198702%_)
        (if (##structure-ref _%ctx198702%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx198702%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id198679%_)
        (letrec ((_%catch-e198681%_
                  (lambda (_%exn198700%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn198700%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn198700%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id198679%_))))
                    '#f))
                 (_%import-e198682%_
                  (lambda ()
                    (let* ((_%str-id198685%_
                            (let ((__tmp199210
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id198679%_))))
                              (declare (not safe))
                              (##string-append __tmp199210 '".ssxi")))
                           (_%artefact-path198693%_
                            (let ((_%odir198686198688%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir198686198688%_
                                  (let ((_%odir198691%_ _%odir198686198688%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id198685%_
                                        '".ss"))
                                     _%odir198691%_))
                                  '#f)))
                           (_%library-path198695%_
                            (let ((__tmp199211
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id198685%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp199211)))
                           (_%ssxi-path198697%_
                            (if (and _%artefact-path198693%_
                                     (file-exists? _%artefact-path198693%_))
                                _%artefact-path198693%_
                                _%library-path198695%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path198697%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path198697%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e198681%_ _%import-e198682%_)))))
    (define gxc#optimize-source
      (lambda (_%stx198664%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx198664%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx198664%_))
        (let* ((_%stx198666%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx198664%_)))
               (_%stx198668%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx198666%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx198668%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx198668%_))
          (let _%fixpoint198671%_ ((_%current198673%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx198668%_))
            (let ((_%refined198675%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current198673%_ _%refined198675%_)
                  '#!void
                  (_%fixpoint198671%_ _%refined198675%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx198668%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx198668%_))
          (let ((_%stx198677%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx198668%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx198677%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp199213 (list gxc#::generate-runtime-empty::t))
            (__tmp199212 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp199213
         '()
         __tmp199212
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args198661%_
        (apply make-instance gxc#::generate-ssxi::t _%$args198661%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp199214
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
        (__make-promise __tmp199214)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx198653%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self198656%_
                (let ((__obj199194
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj199194))
               (__tmp199215
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self198656%_ _%stx198653%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp199215
           gxc#current-compile-method
           _%self198656%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self198613%_ _%stx198614%_)
        (let* ((_%g198616198626%_
                (lambda (_%g198617198623%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198617198623%_))))
               (_%g198615198650%_
                (lambda (_%g198617198629%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198617198629%_))
                      (let ((_%e198619198631%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198617198629%_))))
                        (let ((_%hd198620198634%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198619198631%_)))
                              (_%tl198621198636%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198619198631%_))))
                          ((lambda (_%L198639%_)
                             (let ((__tmp199218
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self198613%_
                                         _%stx198614%_))))
                                   (__tmp199216
                                    (let ((__tmp199217
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp199217 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp199218
                                gx#current-expander-phi
                                __tmp199216)))
                           _%tl198621198636%_)))
                      (_%g198616198626%_ _%g198617198629%_)))))
          (_%g198615198650%_ _%stx198614%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self198552%_ _%stx198553%_)
        (let* ((_%g198555198569%_
                (lambda (_%g198556198566%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198556198566%_))))
               (_%g198554198610%_
                (lambda (_%g198556198572%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198556198572%_))
                      (let ((_%e198559198574%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198556198572%_))))
                        (let ((_%hd198560198577%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198559198574%_)))
                              (_%tl198561198579%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198559198574%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198561198579%_))
                              (let ((_%e198562198582%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198561198579%_))))
                                (let ((_%hd198563198585%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198562198582%_)))
                                      (_%tl198564198587%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198562198582%_))))
                                  ((lambda (_%L198590%_ _%L198591%_)
                                     (let* ((_%ctx198604%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L198591%_)))
                                            (_%code198606%_
                                             (##structure-ref
                                              _%ctx198604%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp199219
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self198552%_
                                                  _%code198606%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp199219
                                        gx#current-expander-context
                                        _%ctx198604%_)))
                                   _%tl198564198587%_
                                   _%hd198563198585%_)))
                              (_%g198555198569%_ _%g198556198572%_))))
                      (_%g198555198569%_ _%g198556198572%_)))))
          (_%g198554198610%_ _%stx198553%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self198357%_ _%stx198358%_)
        (letrec ((_%generate-e198360%_
                  (lambda (_%id198537%_)
                    (let* ((_%sym198539%_
                            (if (let ((__tmp199220
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp199220))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id198537%_))
                                '#f))
                           (_%$e198541%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym198539%_))))
                      (if _%$e198541%_
                          ((lambda (_%klass198544%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym198539%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym198539%_
                                                     (cons (let ((__method199195
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass198544%_ 'typedecl))))
                     (if __method199195
                         (let ()
                           (declare (not safe))
                           (__method199195 _%klass198544%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass198544%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym198539%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym198539%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e198541%_)
                          (let ((_%$e198546%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym198539%_))))
                            (if _%$e198546%_
                                ((lambda (_%type198549%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym198539%_
                                      '" "
                                      _%type198549%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type198549%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym198539%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym198539%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type198549%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym198539%_
                                                   (cons (let ((__method199196
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type198549%_ 'typedecl))))
                   (if __method199196
                       (let ()
                         (declare (not safe))
                         (__method199196 _%type198549%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type198549%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e198546%_)
                                '(begin))))))))
          (let* ((_%__stx198807198808%_ _%stx198358%_)
                 (_%g198363198401%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx198807198808%_)))))
            (let ((_%__kont198809198810%_
                   (lambda (_%L198519%_) (_%generate-e198360%_ _%L198519%_)))
                  (_%__kont198811198812%_
                   (lambda (_%L198454%_)
                     (let ((_%types198480%_
                            (map _%generate-e198360%_
                                 (let ((__tmp199221
                                        (lambda (_%g198472198475%_
                                                 _%g198473198477%_)
                                          (cons _%g198472198475%_
                                                _%g198473198477%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp199221 '() _%L198454%_)))))
                       (cons 'begin _%types198480%_)))))
              (let ((_%__match198862198863%_
                     (lambda (_%e198379198406%_
                              _%hd198380198409%_
                              _%tl198381198411%_
                              _%e198382198414%_
                              _%hd198383198417%_
                              _%tl198384198419%_
                              _%__splice198813198814%_
                              _%target198385198422%_
                              _%tl198387198424%_)
                       (letrec ((_%loop198388198427%_
                                 (lambda (_%hd198386198430%_
                                          _%id198392198432%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd198386198430%_))
                                       (let ((_%e198389198435%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd198386198430%_))))
                                         (let ((_%lp-tl198391198440%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e198389198435%_)))
                                               (_%lp-hd198390198438%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e198389198435%_))))
                                           (_%loop198388198427%_
                                            _%lp-tl198391198440%_
                                            (cons _%lp-hd198390198438%_
                                                  _%id198392198432%_))))
                                       (let ((_%id198393198443%_
                                              (reverse _%id198392198432%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl198384198419%_))
                                             (let ((_%e198394198446%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl198384198419%_))))
                                               (let ((_%tl198396198451%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e198394198446%_)))
                                                     (_%hd198395198449%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e198394198446%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl198396198451%_))
                                                     (_%__kont198811198812%_
                                                      _%id198393198443%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g198363198401%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g198363198401%_))))))))
                         (_%loop198388198427%_ _%target198385198422%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx198807198808%_))
                    (let ((_%e198366198487%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx198807198808%_))))
                      (let ((_%tl198368198492%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e198366198487%_)))
                            (_%hd198367198490%_
                             (let ()
                               (declare (not safe))
                               (##car _%e198366198487%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl198368198492%_))
                            (let ((_%e198369198495%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl198368198492%_))))
                              (let ((_%tl198371198500%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e198369198495%_)))
                                    (_%hd198370198498%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e198369198495%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd198370198498%_))
                                    (let ((_%e198372198503%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd198370198498%_))))
                                      (let ((_%tl198374198508%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e198372198503%_)))
                                            (_%hd198373198506%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e198372198503%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl198374198508%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl198371198500%_))
                                                (let ((_%e198375198511%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl198371198500%_))))
                                                  (let ((_%tl198377198516%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e198375198511%_)))
                                                        (_%hd198376198514%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e198375198511%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl198377198516%_))
                                                        (_%__kont198809198810%_
                                                         _%hd198373198506%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd198370198498%_))
                                                            (let ((_%__splice198813198814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd198370198498%_ '0))))
                      (let ((_%tl198387198424%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice198813198814%_ '1)))
                            (_%target198385198422%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice198813198814%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl198387198424%_))
                            (_%__match198862198863%_
                             _%e198366198487%_
                             _%hd198367198490%_
                             _%tl198368198492%_
                             _%e198369198495%_
                             _%hd198370198498%_
                             _%tl198371198500%_
                             _%__splice198813198814%_
                             _%target198385198422%_
                             _%tl198387198424%_)
                            (let ()
                              (declare (not safe))
                              (_%g198363198401%_)))))
                    (let () (declare (not safe)) (_%g198363198401%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd198370198498%_))
                                                    (let ((_%__splice198813198814%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd198370198498%_
                                                              '0))))
                                                      (let ((_%tl198387198424%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice198813198814%_ '1)))
                    (_%target198385198422%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice198813198814%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl198387198424%_))
                    (_%__match198862198863%_
                     _%e198366198487%_
                     _%hd198367198490%_
                     _%tl198368198492%_
                     _%e198369198495%_
                     _%hd198370198498%_
                     _%tl198371198500%_
                     _%__splice198813198814%_
                     _%target198385198422%_
                     _%tl198387198424%_)
                    (let () (declare (not safe)) (_%g198363198401%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g198363198401%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd198370198498%_))
                                                (let ((_%__splice198813198814%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd198370198498%_
                                                          '0))))
                                                  (let ((_%tl198387198424%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice198813198814%_
                                                            '1)))
                                                        (_%target198385198422%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice198813198814%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl198387198424%_))
                                                        (_%__match198862198863%_
                                                         _%e198366198487%_
                                                         _%hd198367198490%_
                                                         _%tl198368198492%_
                                                         _%e198369198495%_
                                                         _%hd198370198498%_
                                                         _%tl198371198500%_
                                                         _%__splice198813198814%_
                                                         _%target198385198422%_
                                                         _%tl198387198424%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g198363198401%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g198363198401%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd198370198498%_))
                                        (let ((_%__splice198813198814%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd198370198498%_
                                                  '0))))
                                          (let ((_%tl198387198424%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice198813198814%_
                                                    '1)))
                                                (_%target198385198422%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice198813198814%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl198387198424%_))
                                                (_%__match198862198863%_
                                                 _%e198366198487%_
                                                 _%hd198367198490%_
                                                 _%tl198368198492%_
                                                 _%e198369198495%_
                                                 _%hd198370198498%_
                                                 _%tl198371198500%_
                                                 _%__splice198813198814%_
                                                 _%target198385198422%_
                                                 _%tl198387198424%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g198363198401%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g198363198401%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g198363198401%_)))))
                    (let () (declare (not safe)) (_%g198363198401%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self197910%_ _%stx197911%_)
        (let* ((_%__stx198865198866%_ _%stx197911%_)
               (_%g197915198017%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx198865198866%_)))))
          (let ((_%__kont198867198868%_
                 (lambda (_%L198307%_
                          _%L198308%_
                          _%L198309%_
                          _%L198310%_
                          _%L198311%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L198310%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L198309%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L198308%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L198307%_))
                                                 '())))))))
                (_%__kont198869198870%_
                 (lambda (_%L198133%_ _%L198134%_ _%L198135%_ _%L198136%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L198135%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L198134%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L198133%_))
                                           (cons '#f '())))))))
                (_%__kont198871198872%_ (lambda () '(begin))))
            (let ((_%__match199000199001%_
                   (lambda (_%e197922198179%_
                            _%hd197923198182%_
                            _%tl197924198184%_
                            _%e197925198187%_
                            _%hd197926198190%_
                            _%tl197927198192%_
                            _%e197928198195%_
                            _%hd197929198198%_
                            _%tl197930198200%_
                            _%e197931198203%_
                            _%hd197932198206%_
                            _%tl197933198208%_
                            _%e197934198211%_
                            _%hd197935198214%_
                            _%tl197936198216%_
                            _%e197937198219%_
                            _%hd197938198222%_
                            _%tl197939198224%_
                            _%e197940198227%_
                            _%hd197941198230%_
                            _%tl197942198232%_
                            _%e197943198235%_
                            _%hd197944198238%_
                            _%tl197945198240%_
                            _%e197946198243%_
                            _%hd197947198246%_
                            _%tl197948198248%_
                            _%e197949198251%_
                            _%hd197950198254%_
                            _%tl197951198256%_
                            _%e197952198259%_
                            _%hd197953198262%_
                            _%tl197954198264%_
                            _%e197955198267%_
                            _%hd197956198270%_
                            _%tl197957198272%_
                            _%e197958198275%_
                            _%hd197959198278%_
                            _%tl197960198280%_
                            _%e197961198283%_
                            _%hd197962198286%_
                            _%tl197963198288%_
                            _%e197964198291%_
                            _%hd197965198294%_
                            _%tl197966198296%_
                            _%e197967198299%_
                            _%hd197968198302%_
                            _%tl197969198304%_)
                     (let ((_%L198307%_ _%hd197968198302%_)
                           (_%L198308%_ _%hd197959198278%_)
                           (_%L198309%_ _%hd197950198254%_)
                           (_%L198310%_ _%hd197941198230%_)
                           (_%L198311%_ _%hd197932198206%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L198311%_
                              'bind-method!))
                           (_%__kont198867198868%_
                            _%L198307%_
                            _%L198308%_
                            _%L198309%_
                            _%L198310%_
                            _%L198311%_)
                           (_%__kont198871198872%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx198865198866%_))
                  (let ((_%e197922198179%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx198865198866%_))))
                    (let ((_%tl197924198184%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197922198179%_)))
                          (_%hd197923198182%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197922198179%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197924198184%_))
                          (let ((_%e197925198187%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl197924198184%_))))
                            (let ((_%tl197927198192%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197925198187%_)))
                                  (_%hd197926198190%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197925198187%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd197926198190%_))
                                  (let ((_%e197928198195%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd197926198190%_))))
                                    (let ((_%tl197930198200%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197928198195%_)))
                                          (_%hd197929198198%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197928198195%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd197929198198%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd197929198198%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197930198200%_))
                                                  (let ((_%e197931198203%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197930198200%_))))
                                                    (let ((_%tl197933198208%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197931198203%_)))
                                                          (_%hd197932198206%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197931198203%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197933198208%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl197927198192%_))
                      (let ((_%e197934198211%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl197927198192%_))))
                        (let ((_%tl197936198216%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197934198211%_)))
                              (_%hd197935198214%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197934198211%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd197935198214%_))
                              (let ((_%e197937198219%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd197935198214%_))))
                                (let ((_%tl197939198224%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197937198219%_)))
                                      (_%hd197938198222%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197937198219%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd197938198222%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd197938198222%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl197939198224%_))
                                              (let ((_%e197940198227%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl197939198224%_))))
                                                (let ((_%tl197942198232%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e197940198227%_)))
                                                      (_%hd197941198230%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e197940198227%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197942198232%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl197936198216%_))
                                                          (let ((_%e197943198235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl197936198216%_))))
                    (let ((_%tl197945198240%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197943198235%_)))
                          (_%hd197944198238%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197943198235%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd197944198238%_))
                          (let ((_%e197946198243%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd197944198238%_))))
                            (let ((_%tl197948198248%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197946198243%_)))
                                  (_%hd197947198246%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197946198243%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd197947198246%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd197947198246%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl197948198248%_))
                                          (let ((_%e197949198251%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl197948198248%_))))
                                            (let ((_%tl197951198256%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e197949198251%_)))
                                                  (_%hd197950198254%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e197949198251%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl197951198256%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl197945198240%_))
                                                      (let ((_%e197952198259%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl197945198240%_))))
                (let ((_%tl197954198264%_
                       (let () (declare (not safe)) (##cdr _%e197952198259%_)))
                      (_%hd197953198262%_
                       (let ()
                         (declare (not safe))
                         (##car _%e197952198259%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd197953198262%_))
                      (let ((_%e197955198267%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd197953198262%_))))
                        (let ((_%tl197957198272%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197955198267%_)))
                              (_%hd197956198270%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197955198267%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd197956198270%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd197956198270%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197957198272%_))
                                      (let ((_%e197958198275%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl197957198272%_))))
                                        (let ((_%tl197960198280%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197958198275%_)))
                                              (_%hd197959198278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197958198275%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197960198280%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197954198264%_))
                                                  (let ((_%e197961198283%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl197954198264%_))))
                                                    (let ((_%tl197963198288%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197961198283%_)))
                                                          (_%hd197962198286%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197961198283%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd197962198286%_))
                                                          (let ((_%e197964198291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd197962198286%_))))
                    (let ((_%tl197966198296%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197964198291%_)))
                          (_%hd197965198294%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197964198291%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd197965198294%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd197965198294%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197966198296%_))
                                  (let ((_%e197967198299%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl197966198296%_))))
                                    (let ((_%tl197969198304%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197967198299%_)))
                                          (_%hd197968198302%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197967198299%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl197969198304%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197963198288%_))
                                              (_%__match199000199001%_
                                               _%e197922198179%_
                                               _%hd197923198182%_
                                               _%tl197924198184%_
                                               _%e197925198187%_
                                               _%hd197926198190%_
                                               _%tl197927198192%_
                                               _%e197928198195%_
                                               _%hd197929198198%_
                                               _%tl197930198200%_
                                               _%e197931198203%_
                                               _%hd197932198206%_
                                               _%tl197933198208%_
                                               _%e197934198211%_
                                               _%hd197935198214%_
                                               _%tl197936198216%_
                                               _%e197937198219%_
                                               _%hd197938198222%_
                                               _%tl197939198224%_
                                               _%e197940198227%_
                                               _%hd197941198230%_
                                               _%tl197942198232%_
                                               _%e197943198235%_
                                               _%hd197944198238%_
                                               _%tl197945198240%_
                                               _%e197946198243%_
                                               _%hd197947198246%_
                                               _%tl197948198248%_
                                               _%e197949198251%_
                                               _%hd197950198254%_
                                               _%tl197951198256%_
                                               _%e197952198259%_
                                               _%hd197953198262%_
                                               _%tl197954198264%_
                                               _%e197955198267%_
                                               _%hd197956198270%_
                                               _%tl197957198272%_
                                               _%e197958198275%_
                                               _%hd197959198278%_
                                               _%tl197960198280%_
                                               _%e197961198283%_
                                               _%hd197962198286%_
                                               _%tl197963198288%_
                                               _%e197964198291%_
                                               _%hd197965198294%_
                                               _%tl197966198296%_
                                               _%e197967198299%_
                                               _%hd197968198302%_
                                               _%tl197969198304%_)
                                              (_%__kont198871198872%_))
                                          (_%__kont198871198872%_))))
                                  (_%__kont198871198872%_))
                              (_%__kont198871198872%_))
                          (_%__kont198871198872%_))))
                  (_%__kont198871198872%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197954198264%_))
                                                      (if (let ((__tmp199222
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp199222 'bind-method!))
                  (let ((_%L198133%_ _%hd197959198278%_)
                        (_%L198134%_ _%hd197950198254%_)
                        (_%L198135%_ _%hd197941198230%_)
                        (_%L198136%_ _%hd197932198206%_))
                    (_%__kont198869198870%_
                     _%L198133%_
                     _%L198134%_
                     _%L198135%_
                     _%L198136%_))
                  (_%__kont198871198872%_))
              (_%__kont198871198872%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont198871198872%_))))
                                      (_%__kont198871198872%_))
                                  (_%__kont198871198872%_))
                              (_%__kont198871198872%_))))
                      (_%__kont198871198872%_))))
              (_%__kont198871198872%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont198871198872%_))))
                                          (_%__kont198871198872%_))
                                      (_%__kont198871198872%_))
                                  (_%__kont198871198872%_))))
                          (_%__kont198871198872%_))))
                  (_%__kont198871198872%_))
              (_%__kont198871198872%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont198871198872%_))
                                          (_%__kont198871198872%_))
                                      (_%__kont198871198872%_))))
                              (_%__kont198871198872%_))))
                      (_%__kont198871198872%_))
                  (_%__kont198871198872%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont198871198872%_))
                                              (_%__kont198871198872%_))
                                          (_%__kont198871198872%_))))
                                  (_%__kont198871198872%_))))
                          (_%__kont198871198872%_))))
                  (_%__kont198871198872%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self197734%_ _%stx197735%_)
        (let* ((_%__stx199109199110%_ _%stx197735%_)
               (_%g197738197778%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx199109199110%_)))))
          (let ((_%__kont199111199112%_
                 (lambda (_%L197884%_ _%L197885%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L197885%_))
                               (cons _%L197884%_ '())))))
                (_%__kont199113199114%_
                 (lambda (_%L197807%_ _%L197808%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx199109199110%_))
                (let ((_%e197742197828%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx199109199110%_))))
                  (let ((_%tl197744197833%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197742197828%_)))
                        (_%hd197743197831%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197742197828%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl197744197833%_))
                        (let ((_%e197745197836%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl197744197833%_))))
                          (let ((_%tl197747197841%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197745197836%_)))
                                (_%hd197746197839%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197745197836%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd197746197839%_))
                                (let ((_%e197748197844%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd197746197839%_))))
                                  (let ((_%tl197750197849%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197748197844%_)))
                                        (_%hd197749197847%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197748197844%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd197749197847%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd197749197847%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197750197849%_))
                                                (let ((_%e197751197852%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197750197849%_))))
                                                  (let ((_%tl197753197857%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197751197852%_)))
                                                        (_%hd197752197855%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197751197852%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197753197857%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl197747197841%_))
                                                            (let ((_%e197754197860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197747197841%_))))
                      (let ((_%tl197756197865%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197754197860%_)))
                            (_%hd197755197863%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197754197860%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd197755197863%_))
                            (let ((_%e197757197868%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd197755197863%_))))
                              (let ((_%tl197759197873%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e197757197868%_)))
                                    (_%hd197758197871%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e197757197868%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd197758197871%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd197758197871%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197759197873%_))
                                            (let ((_%e197760197876%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl197759197873%_))))
                                              (let ((_%tl197762197881%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197760197876%_)))
                                                    (_%hd197761197879%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197760197876%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197762197881%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197756197865%_))
                                                        (_%__kont199111199112%_
                                                         _%hd197761197879%_
                                                         _%hd197752197855%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197738197778%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197756197865%_))
                                                        (_%__kont199113199114%_
                                                         _%hd197755197863%_
                                                         _%hd197746197839%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197738197778%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197756197865%_))
                                                (_%__kont199113199114%_
                                                 _%hd197755197863%_
                                                 _%hd197746197839%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197738197778%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197756197865%_))
                                            (_%__kont199113199114%_
                                             _%hd197755197863%_
                                             _%hd197746197839%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g197738197778%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197756197865%_))
                                        (_%__kont199113199114%_
                                         _%hd197755197863%_
                                         _%hd197746197839%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g197738197778%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl197756197865%_))
                                (_%__kont199113199114%_
                                 _%hd197755197863%_
                                 _%hd197746197839%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g197738197778%_))))))
                    (let () (declare (not safe)) (_%g197738197778%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl197747197841%_))
                    (let ((_%e197771197799%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl197747197841%_))))
                      (let ((_%tl197773197804%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e197771197799%_)))
                            (_%hd197772197802%_
                             (let ()
                               (declare (not safe))
                               (##car _%e197771197799%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl197773197804%_))
                            (_%__kont199113199114%_
                             _%hd197772197802%_
                             _%hd197746197839%_)
                            (let ()
                              (declare (not safe))
                              (_%g197738197778%_)))))
                    (let () (declare (not safe)) (_%g197738197778%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl197747197841%_))
                                                    (let ((_%e197771197799%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl197747197841%_))))
                                                      (let ((_%tl197773197804%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e197771197799%_)))
                    (_%hd197772197802%_
                     (let () (declare (not safe)) (##car _%e197771197799%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl197773197804%_))
                    (_%__kont199113199114%_
                     _%hd197772197802%_
                     _%hd197746197839%_)
                    (let () (declare (not safe)) (_%g197738197778%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197738197778%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl197747197841%_))
                                                (let ((_%e197771197799%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl197747197841%_))))
                                                  (let ((_%tl197773197804%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e197771197799%_)))
                                                        (_%hd197772197802%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e197771197799%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl197773197804%_))
                                                        (_%__kont199113199114%_
                                                         _%hd197772197802%_
                                                         _%hd197746197839%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g197738197778%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g197738197778%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl197747197841%_))
                                            (let ((_%e197771197799%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl197747197841%_))))
                                              (let ((_%tl197773197804%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e197771197799%_)))
                                                    (_%hd197772197802%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e197771197799%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl197773197804%_))
                                                    (_%__kont199113199114%_
                                                     _%hd197772197802%_
                                                     _%hd197746197839%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g197738197778%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g197738197778%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl197747197841%_))
                                    (let ((_%e197771197799%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl197747197841%_))))
                                      (let ((_%tl197773197804%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e197771197799%_)))
                                            (_%hd197772197802%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e197771197799%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl197773197804%_))
                                            (_%__kont199113199114%_
                                             _%hd197772197802%_
                                             _%hd197746197839%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g197738197778%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g197738197778%_))))))
                        (let () (declare (not safe)) (_%g197738197778%_)))))
                (let () (declare (not safe)) (_%g197738197778%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self195928197719%_)
        (let* ((_%self197722%_ _%self195928197719%_)
               (_%self197724%_ _%self197722%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197724%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self195929197490%_)
        (let* ((_%self197493%_ _%self195929197490%_)
               (_%self197495%_ _%self197493%_)
               (_%self197504197520%_ _%self197495%_)
               (_%E197506197524%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self197504197520%_
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
               (_%K197507197539%_
                (lambda (_%methods197527%_
                         _%metaclass197528%_
                         _%system?197529%_
                         _%final?197530%_
                         _%struct?197531%_
                         _%constructor197532%_
                         _%fields197533%_
                         _%slots197534%_
                         _%precendence-list197535%_
                         _%super197536%_
                         _%id197537%_)
                  (cons '@class
                        (cons _%id197537%_
                              (cons _%super197536%_
                                    (cons _%precendence-list197535%_
                                          (cons _%slots197534%_
                                                (cons _%fields197533%_
                                                      (cons _%constructor197532%_
                                                            (cons _%struct?197531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?197530%_
                                (cons _%system?197529%_
                                      (cons _%metaclass197528%_
                                            (cons (if _%methods197527%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods197527%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e197508197542%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197504197520%_ '1 '#f '#f)))
               (_%id197545%_ _%e197508197542%_)
               (_%e197509197547%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197504197520%_ '2 '#f '#f)))
               (_%super197550%_ _%e197509197547%_)
               (_%e197510197552%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197504197520%_ '3 '#f '#f)))
               (_%precendence-list197555%_ _%e197510197552%_)
               (_%e197511197557%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197504197520%_ '4 '#f '#f)))
               (_%slots197560%_ _%e197511197557%_)
               (_%e197512197562%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197504197520%_ '5 '#f '#f)))
               (_%fields197565%_ _%e197512197562%_)
               (_%e197513197567%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197504197520%_ '6 '#f '#f)))
               (_%constructor197570%_ _%e197513197567%_)
               (_%e197514197572%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197504197520%_ '7 '#f '#f)))
               (_%struct?197575%_ _%e197514197572%_)
               (_%e197515197577%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197504197520%_ '8 '#f '#f)))
               (_%final?197580%_ _%e197515197577%_)
               (_%e197516197582%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self197504197520%_ '9 '#f '#f)))
               (_%system?197585%_ _%e197516197582%_)
               (_%e197517197587%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self197504197520%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass197590%_ _%e197517197587%_)
               (_%e197518197592%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self197504197520%_
                   '11
                   '#f
                   '#f)))
               (_%methods197595%_ _%e197518197592%_))
          (_%K197507197539%_
           _%methods197595%_
           _%metaclass197590%_
           _%system?197585%_
           _%final?197580%_
           _%struct?197575%_
           _%constructor197570%_
           _%fields197565%_
           _%slots197560%_
           _%precendence-list197555%_
           _%super197550%_
           _%id197545%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self195930197353%_)
        (let* ((_%self197356%_ _%self195930197353%_)
               (_%self197358%_ _%self197356%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197358%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self195931197216%_)
        (let* ((_%self197219%_ _%self195931197216%_)
               (_%self197221%_ _%self197219%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197221%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self195932197079%_)
        (let* ((_%self197082%_ _%self195932197079%_)
               (_%self197084%_ _%self197082%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self197084%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self197084%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self197084%_
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
      (lambda (_%self195933196942%_)
        (let* ((_%self196945%_ _%self195933196942%_)
               (_%self196947%_ _%self196945%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196947%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self196947%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self196947%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self195934196805%_)
        (let* ((_%self196808%_ _%self195934196805%_)
               (_%self196810%_ _%self196808%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196810%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self196810%_
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
      (lambda (_%self195935196616%_)
        (let* ((_%self196619%_ _%self195935196616%_)
               (_%self196621%_ _%self196619%_)
               (_%self196630196639%_ _%self196621%_)
               (_%E196632196643%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self196630196639%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K196633196662%_
                (lambda (_%dispatch196646%_
                         _%arity196647%_
                         _%signature196648%_)
                  (if _%signature196648%_
                      (let ((_%signature196650%_ _%signature196648%_))
                        (cons '@lambda
                              (cons _%arity196647%_
                                    (cons _%dispatch196646%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature196650%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature196650%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature196650%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature196650%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature196650%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity196647%_
                                  (cons _%dispatch196646%_ '()))))))
               (_%e196634196665%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196630196639%_ '1 '#f '#f)))
               (_%e196635196668%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196630196639%_ '2 '#f '#f)))
               (_%signature196671%_ _%e196635196668%_)
               (_%e196636196673%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196630196639%_ '3 '#f '#f)))
               (_%arity196676%_ _%e196636196673%_)
               (_%e196637196678%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self196630196639%_ '4 '#f '#f)))
               (_%dispatch196681%_ _%e196637196678%_))
          (_%K196633196662%_
           _%dispatch196681%_
           _%arity196676%_
           _%signature196671%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self195936196475%_)
        (let* ((_%self196478%_ _%self195936196475%_)
               (_%self196480%_ _%self196478%_))
          (letrec ((_%clause-e196490%_
                    (lambda (_%clause196492%_)
                      (cdr (let ((__method199197
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause196492%_
                                     'typedecl))))
                             (if __method199197
                                 (let ()
                                   (declare (not safe))
                                   (__method199197 _%clause196492%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause196492%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e196490%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self196480%_
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
      (lambda (_%self195937196338%_)
        (let* ((_%self196341%_ _%self195937196338%_)
               (_%self196343%_ _%self196341%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196343%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self196343%_
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
      (lambda (_%self195938196201%_)
        (let* ((_%self196204%_ _%self195938196201%_)
               (_%self196206%_ _%self196204%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196206%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self196206%_
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
      (lambda (_%self195939196064%_)
        (let* ((_%self196067%_ _%self195939196064%_)
               (_%self196069%_ _%self196067%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self196069%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
