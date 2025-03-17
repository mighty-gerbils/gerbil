(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1742223880)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp201930
                   (let ((__obj201924
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
                       (gxc#optimizer-info:::init! __obj201924))
                     __obj201924)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp201930)))))
    (define gxc#optimize!
      (lambda (_%ctx201533%_)
        (let ((__tmp201933
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx201533%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx201533%_)
                 (let ((__tmp201935
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp201934
                        (##structure-ref
                         _%ctx201533%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp201935 __tmp201934 '#t))
                 (let ((_%code201536%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx201533%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx201533%_
                    _%code201536%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp201932 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp201931 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp201933
           gxc#current-compile-mutators
           __tmp201932
           gxc#current-compile-local-type
           __tmp201931))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx201519%_)
        (letrec ((_%load-it!201521%_
                  (lambda (_%id201531%_)
                    (if (let ((__tmp201936
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp201936 _%id201531%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id201531%_)
                          (let ((__tmp201937
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp201937 _%id201531%_ '#t)))))))
          (let* ((_%modid201523%_
                  (##structure-ref
                   _%ctx201519%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str201525%_ (symbol->string _%modid201523%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str201525%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str201525%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!201521%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!201521%_
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
      (lambda (_%ctx201456%_)
        (letrec* ((_%deps201458%_
                   (let* ((_%imports201509%_
                           (##structure-ref
                            _%ctx201456%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e201511%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx201456%_))))
                     (if _%$e201511%_
                         ((lambda (_%g201513201515%_)
                            (cons _%g201513201515%_ _%imports201509%_))
                          _%$e201511%_)
                         _%imports201509%_))))
          (let _%lp201460%_ ((_%rest201462%_ _%deps201458%_))
            (let* ((_%rest201463201471%_ _%rest201462%_)
                   (_%else201465201479%_ (lambda () '#!void))
                   (_%K201467201497%_
                    (lambda (_%rest201482%_ _%hd201483%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd201483%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp201939
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp201938
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd201483%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp201939 __tmp201938))
                                '#!void
                                (begin
                                  (let ((_%$e201486%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd201483%_))))
                                    (if _%$e201486%_
                                        ((lambda (_%pre201489%_)
                                           (_%lp201460%_
                                            (cons _%pre201489%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%hd201483%_
                                                     '8
                                                     '#f
                                                     '#f)))))
                                         _%$e201486%_)
                                        (_%lp201460%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd201483%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd201483%_)))
                            (_%lp201460%_ _%rest201482%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd201483%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp201941
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp201940
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd201483%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp201941 __tmp201940))
                                    '#!void
                                    (begin
                                      (_%lp201460%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd201483%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd201483%_)))
                                (_%lp201460%_ _%rest201482%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd201483%_
                                     'gx#module-import::t))
                                  (_%lp201460%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd201483%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest201482%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd201483%_
                                         'gx#module-export::t))
                                      (_%lp201460%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd201483%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest201482%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd201483%_
                                             'gx#import-set::t))
                                          (_%lp201460%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd201483%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest201482%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd201483%_))))))))))
              (if (pair? _%rest201463201471%_)
                  (let ((_%hd201468201500%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest201463201471%_)))
                        (_%tl201469201502%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest201463201471%_))))
                    (let* ((_%hd201505%_ _%hd201468201500%_)
                           (_%rest201507%_ _%tl201469201502%_))
                      (_%K201467201497%_ _%rest201507%_ _%hd201505%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx201436%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx201436%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx201436%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht201438%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id201440%_
                    (##structure-ref
                     _%ctx201436%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod201442%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht201438%_ _%id201440%_)))
                   (_%$e201445%_ _%mod201442%_))
              (if _%$e201445%_
                  _%$e201445%_
                  (let* ((_%mod201448%_
                          (gxc#optimizer-import-ssxi _%ctx201436%_))
                         (_%val201453%_
                          (let ((_%$e201450%_ _%mod201448%_))
                            (if _%$e201450%_ _%$e201450%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht201438%_ _%id201440%_ _%val201453%_))
                    _%val201453%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx201434%_)
        (if (##structure-ref _%ctx201434%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx201434%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id201411%_)
        (letrec ((_%catch-e201413%_
                  (lambda (_%exn201432%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn201432%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn201432%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id201411%_))))
                    '#f))
                 (_%import-e201414%_
                  (lambda ()
                    (let* ((_%str-id201417%_
                            (let ((__tmp201942
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id201411%_))))
                              (declare (not safe))
                              (##string-append __tmp201942 '".ssxi")))
                           (_%artefact-path201425%_
                            (let ((_%odir201418201420%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir201418201420%_
                                  (let ((_%odir201423%_ _%odir201418201420%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id201417%_
                                        '".ss"))
                                     _%odir201423%_))
                                  '#f)))
                           (_%library-path201427%_
                            (let ((__tmp201943
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id201417%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp201943)))
                           (_%ssxi-path201429%_
                            (if (and _%artefact-path201425%_
                                     (file-exists? _%artefact-path201425%_))
                                _%artefact-path201425%_
                                _%library-path201427%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path201429%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path201429%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e201413%_ _%import-e201414%_)))))
    (define gxc#optimize-source
      (lambda (_%stx201396%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx201396%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx201396%_))
        (let* ((_%stx201398%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx201396%_)))
               (_%stx201400%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx201398%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx201400%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx201400%_))
          (let _%fixpoint201403%_ ((_%current201405%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx201400%_))
            (let ((_%refined201407%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current201405%_ _%refined201407%_)
                  '#!void
                  (_%fixpoint201403%_ _%refined201407%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx201400%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx201400%_))
          (let ((_%stx201409%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx201400%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx201409%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp201945 (list gxc#::generate-runtime-empty::t))
            (__tmp201944 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp201945
         '()
         __tmp201944
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args201393%_
        (apply make-instance gxc#::generate-ssxi::t _%$args201393%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp201946
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
        (__make-promise __tmp201946)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx201385%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self201388%_
                (let ((__obj201926
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj201926))
               (__tmp201947
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self201388%_ _%stx201385%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp201947
           gxc#current-compile-method
           _%self201388%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self201345%_ _%stx201346%_)
        (let* ((_%g201348201358%_
                (lambda (_%g201349201355%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201349201355%_))))
               (_%g201347201382%_
                (lambda (_%g201349201361%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201349201361%_))
                      (let ((_%e201351201363%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201349201361%_))))
                        (let ((_%hd201352201366%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201351201363%_)))
                              (_%tl201353201368%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201351201363%_))))
                          ((lambda (_%L201371%_)
                             (let ((__tmp201950
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self201345%_
                                         _%stx201346%_))))
                                   (__tmp201948
                                    (let ((__tmp201949
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp201949 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp201950
                                gx#current-expander-phi
                                __tmp201948)))
                           _%tl201353201368%_)))
                      (_%g201348201358%_ _%g201349201361%_)))))
          (_%g201347201382%_ _%stx201346%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self201284%_ _%stx201285%_)
        (let* ((_%g201287201301%_
                (lambda (_%g201288201298%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201288201298%_))))
               (_%g201286201342%_
                (lambda (_%g201288201304%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201288201304%_))
                      (let ((_%e201291201306%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g201288201304%_))))
                        (let ((_%hd201292201309%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201291201306%_)))
                              (_%tl201293201311%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201291201306%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201293201311%_))
                              (let ((_%e201294201314%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl201293201311%_))))
                                (let ((_%hd201295201317%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201294201314%_)))
                                      (_%tl201296201319%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201294201314%_))))
                                  ((lambda (_%L201322%_ _%L201323%_)
                                     (let* ((_%ctx201336%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L201323%_)))
                                            (_%code201338%_
                                             (##structure-ref
                                              _%ctx201336%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp201951
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self201284%_
                                                  _%code201338%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp201951
                                        gx#current-expander-context
                                        _%ctx201336%_)))
                                   _%tl201296201319%_
                                   _%hd201295201317%_)))
                              (_%g201287201301%_ _%g201288201304%_))))
                      (_%g201287201301%_ _%g201288201304%_)))))
          (_%g201286201342%_ _%stx201285%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self201089%_ _%stx201090%_)
        (letrec ((_%generate-e201092%_
                  (lambda (_%id201269%_)
                    (let* ((_%sym201271%_
                            (if (let ((__tmp201952
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp201952))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id201269%_))
                                '#f))
                           (_%$e201273%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym201271%_))))
                      (if _%$e201273%_
                          ((lambda (_%klass201276%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym201271%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym201271%_
                                                     (cons (let ((__method201927
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass201276%_ 'typedecl))))
                     (if __method201927
                         (let ()
                           (declare (not safe))
                           (__method201927 _%klass201276%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass201276%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym201271%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym201271%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e201273%_)
                          (let ((_%$e201278%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym201271%_))))
                            (if _%$e201278%_
                                ((lambda (_%type201281%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym201271%_
                                      '" "
                                      _%type201281%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type201281%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym201271%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym201271%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type201281%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym201271%_
                                                   (cons (let ((__method201928
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type201281%_ 'typedecl))))
                   (if __method201928
                       (let ()
                         (declare (not safe))
                         (__method201928 _%type201281%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type201281%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e201278%_)
                                '(begin))))))))
          (let* ((_%__stx201539201540%_ _%stx201090%_)
                 (_%g201095201133%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx201539201540%_)))))
            (let ((_%__kont201541201542%_
                   (lambda (_%L201251%_) (_%generate-e201092%_ _%L201251%_)))
                  (_%__kont201543201544%_
                   (lambda (_%L201186%_)
                     (let ((_%types201212%_
                            (map _%generate-e201092%_
                                 (let ((__tmp201953
                                        (lambda (_%g201204201207%_
                                                 _%g201205201209%_)
                                          (cons _%g201204201207%_
                                                _%g201205201209%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp201953 '() _%L201186%_)))))
                       (cons 'begin _%types201212%_)))))
              (let ((_%__match201594201595%_
                     (lambda (_%e201111201138%_
                              _%hd201112201141%_
                              _%tl201113201143%_
                              _%e201114201146%_
                              _%hd201115201149%_
                              _%tl201116201151%_
                              _%__splice201545201546%_
                              _%target201117201154%_
                              _%tl201119201156%_)
                       (letrec ((_%loop201120201159%_
                                 (lambda (_%hd201118201162%_
                                          _%id201124201164%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd201118201162%_))
                                       (let ((_%e201121201167%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd201118201162%_))))
                                         (let ((_%lp-tl201123201172%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e201121201167%_)))
                                               (_%lp-hd201122201170%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e201121201167%_))))
                                           (_%loop201120201159%_
                                            _%lp-tl201123201172%_
                                            (cons _%lp-hd201122201170%_
                                                  _%id201124201164%_))))
                                       (let ((_%id201125201175%_
                                              (reverse _%id201124201164%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl201116201151%_))
                                             (let ((_%e201126201178%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl201116201151%_))))
                                               (let ((_%tl201128201183%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e201126201178%_)))
                                                     (_%hd201127201181%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e201126201178%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl201128201183%_))
                                                     (_%__kont201543201544%_
                                                      _%id201125201175%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g201095201133%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g201095201133%_))))))))
                         (_%loop201120201159%_ _%target201117201154%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx201539201540%_))
                    (let ((_%e201098201219%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx201539201540%_))))
                      (let ((_%tl201100201224%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201098201219%_)))
                            (_%hd201099201222%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201098201219%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl201100201224%_))
                            (let ((_%e201101201227%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl201100201224%_))))
                              (let ((_%tl201103201232%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e201101201227%_)))
                                    (_%hd201102201230%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e201101201227%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd201102201230%_))
                                    (let ((_%e201104201235%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd201102201230%_))))
                                      (let ((_%tl201106201240%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e201104201235%_)))
                                            (_%hd201105201238%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e201104201235%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl201106201240%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl201103201232%_))
                                                (let ((_%e201107201243%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl201103201232%_))))
                                                  (let ((_%tl201109201248%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e201107201243%_)))
                                                        (_%hd201108201246%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e201107201243%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl201109201248%_))
                                                        (_%__kont201541201542%_
                                                         _%hd201105201238%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd201102201230%_))
                                                            (let ((_%__splice201545201546%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%hd201102201230%_
                              '0))))
                      (let ((_%tl201119201156%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice201545201546%_ '1)))
                            (_%target201117201154%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice201545201546%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl201119201156%_))
                            (_%__match201594201595%_
                             _%e201098201219%_
                             _%hd201099201222%_
                             _%tl201100201224%_
                             _%e201101201227%_
                             _%hd201102201230%_
                             _%tl201103201232%_
                             _%__splice201545201546%_
                             _%target201117201154%_
                             _%tl201119201156%_)
                            (let ()
                              (declare (not safe))
                              (_%g201095201133%_)))))
                    (let () (declare (not safe)) (_%g201095201133%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd201102201230%_))
                                                    (let ((_%__splice201545201546%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%hd201102201230%_
                                                              '0))))
                                                      (let ((_%tl201119201156%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice201545201546%_ '1)))
                    (_%target201117201154%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice201545201546%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl201119201156%_))
                    (_%__match201594201595%_
                     _%e201098201219%_
                     _%hd201099201222%_
                     _%tl201100201224%_
                     _%e201101201227%_
                     _%hd201102201230%_
                     _%tl201103201232%_
                     _%__splice201545201546%_
                     _%target201117201154%_
                     _%tl201119201156%_)
                    (let () (declare (not safe)) (_%g201095201133%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g201095201133%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd201102201230%_))
                                                (let ((_%__splice201545201546%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%hd201102201230%_
                                                          '0))))
                                                  (let ((_%tl201119201156%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice201545201546%_
                                                            '1)))
                                                        (_%target201117201154%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice201545201546%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl201119201156%_))
                                                        (_%__match201594201595%_
                                                         _%e201098201219%_
                                                         _%hd201099201222%_
                                                         _%tl201100201224%_
                                                         _%e201101201227%_
                                                         _%hd201102201230%_
                                                         _%tl201103201232%_
                                                         _%__splice201545201546%_
                                                         _%target201117201154%_
                                                         _%tl201119201156%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g201095201133%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g201095201133%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd201102201230%_))
                                        (let ((_%__splice201545201546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%hd201102201230%_
                                                  '0))))
                                          (let ((_%tl201119201156%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201545201546%_
                                                    '1)))
                                                (_%target201117201154%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice201545201546%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201119201156%_))
                                                (_%__match201594201595%_
                                                 _%e201098201219%_
                                                 _%hd201099201222%_
                                                 _%tl201100201224%_
                                                 _%e201101201227%_
                                                 _%hd201102201230%_
                                                 _%tl201103201232%_
                                                 _%__splice201545201546%_
                                                 _%target201117201154%_
                                                 _%tl201119201156%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g201095201133%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g201095201133%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g201095201133%_)))))
                    (let () (declare (not safe)) (_%g201095201133%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self200642%_ _%stx200643%_)
        (let* ((_%__stx201597201598%_ _%stx200643%_)
               (_%g200647200749%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201597201598%_)))))
          (let ((_%__kont201599201600%_
                 (lambda (_%L201039%_
                          _%L201040%_
                          _%L201041%_
                          _%L201042%_
                          _%L201043%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L201042%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L201041%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L201040%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L201039%_))
                                                 '())))))))
                (_%__kont201601201602%_
                 (lambda (_%L200865%_ _%L200866%_ _%L200867%_ _%L200868%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L200867%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L200866%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L200865%_))
                                           (cons '#f '())))))))
                (_%__kont201603201604%_ (lambda () '(begin))))
            (let ((_%__match201732201733%_
                   (lambda (_%e200654200911%_
                            _%hd200655200914%_
                            _%tl200656200916%_
                            _%e200657200919%_
                            _%hd200658200922%_
                            _%tl200659200924%_
                            _%e200660200927%_
                            _%hd200661200930%_
                            _%tl200662200932%_
                            _%e200663200935%_
                            _%hd200664200938%_
                            _%tl200665200940%_
                            _%e200666200943%_
                            _%hd200667200946%_
                            _%tl200668200948%_
                            _%e200669200951%_
                            _%hd200670200954%_
                            _%tl200671200956%_
                            _%e200672200959%_
                            _%hd200673200962%_
                            _%tl200674200964%_
                            _%e200675200967%_
                            _%hd200676200970%_
                            _%tl200677200972%_
                            _%e200678200975%_
                            _%hd200679200978%_
                            _%tl200680200980%_
                            _%e200681200983%_
                            _%hd200682200986%_
                            _%tl200683200988%_
                            _%e200684200991%_
                            _%hd200685200994%_
                            _%tl200686200996%_
                            _%e200687200999%_
                            _%hd200688201002%_
                            _%tl200689201004%_
                            _%e200690201007%_
                            _%hd200691201010%_
                            _%tl200692201012%_
                            _%e200693201015%_
                            _%hd200694201018%_
                            _%tl200695201020%_
                            _%e200696201023%_
                            _%hd200697201026%_
                            _%tl200698201028%_
                            _%e200699201031%_
                            _%hd200700201034%_
                            _%tl200701201036%_)
                     (let ((_%L201039%_ _%hd200700201034%_)
                           (_%L201040%_ _%hd200691201010%_)
                           (_%L201041%_ _%hd200682200986%_)
                           (_%L201042%_ _%hd200673200962%_)
                           (_%L201043%_ _%hd200664200938%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L201043%_
                              'bind-method!))
                           (_%__kont201599201600%_
                            _%L201039%_
                            _%L201040%_
                            _%L201041%_
                            _%L201042%_
                            _%L201043%_)
                           (_%__kont201603201604%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx201597201598%_))
                  (let ((_%e200654200911%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx201597201598%_))))
                    (let ((_%tl200656200916%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200654200911%_)))
                          (_%hd200655200914%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200654200911%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200656200916%_))
                          (let ((_%e200657200919%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl200656200916%_))))
                            (let ((_%tl200659200924%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200657200919%_)))
                                  (_%hd200658200922%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200657200919%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd200658200922%_))
                                  (let ((_%e200660200927%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd200658200922%_))))
                                    (let ((_%tl200662200932%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200660200927%_)))
                                          (_%hd200661200930%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200660200927%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd200661200930%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd200661200930%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200662200932%_))
                                                  (let ((_%e200663200935%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200662200932%_))))
                                                    (let ((_%tl200665200940%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200663200935%_)))
                                                          (_%hd200664200938%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200663200935%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl200665200940%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl200659200924%_))
                      (let ((_%e200666200943%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl200659200924%_))))
                        (let ((_%tl200668200948%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200666200943%_)))
                              (_%hd200667200946%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200666200943%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd200667200946%_))
                              (let ((_%e200669200951%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd200667200946%_))))
                                (let ((_%tl200671200956%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200669200951%_)))
                                      (_%hd200670200954%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200669200951%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd200670200954%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd200670200954%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200671200956%_))
                                              (let ((_%e200672200959%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl200671200956%_))))
                                                (let ((_%tl200674200964%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200672200959%_)))
                                                      (_%hd200673200962%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200672200959%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200674200964%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200668200948%_))
                                                          (let ((_%e200675200967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl200668200948%_))))
                    (let ((_%tl200677200972%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200675200967%_)))
                          (_%hd200676200970%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200675200967%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd200676200970%_))
                          (let ((_%e200678200975%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd200676200970%_))))
                            (let ((_%tl200680200980%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200678200975%_)))
                                  (_%hd200679200978%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200678200975%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd200679200978%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd200679200978%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl200680200980%_))
                                          (let ((_%e200681200983%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl200680200980%_))))
                                            (let ((_%tl200683200988%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200681200983%_)))
                                                  (_%hd200682200986%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200681200983%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200683200988%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl200677200972%_))
                                                      (let ((_%e200684200991%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl200677200972%_))))
                (let ((_%tl200686200996%_
                       (let () (declare (not safe)) (##cdr _%e200684200991%_)))
                      (_%hd200685200994%_
                       (let ()
                         (declare (not safe))
                         (##car _%e200684200991%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd200685200994%_))
                      (let ((_%e200687200999%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd200685200994%_))))
                        (let ((_%tl200689201004%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200687200999%_)))
                              (_%hd200688201002%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200687200999%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd200688201002%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd200688201002%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl200689201004%_))
                                      (let ((_%e200690201007%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl200689201004%_))))
                                        (let ((_%tl200692201012%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200690201007%_)))
                                              (_%hd200691201010%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200690201007%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200692201012%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200686200996%_))
                                                  (let ((_%e200693201015%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl200686200996%_))))
                                                    (let ((_%tl200695201020%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200693201015%_)))
                                                          (_%hd200694201018%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200693201015%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd200694201018%_))
                                                          (let ((_%e200696201023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd200694201018%_))))
                    (let ((_%tl200698201028%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200696201023%_)))
                          (_%hd200697201026%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200696201023%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd200697201026%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd200697201026%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200698201028%_))
                                  (let ((_%e200699201031%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl200698201028%_))))
                                    (let ((_%tl200701201036%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200699201031%_)))
                                          (_%hd200700201034%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200699201031%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl200701201036%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200695201020%_))
                                              (_%__match201732201733%_
                                               _%e200654200911%_
                                               _%hd200655200914%_
                                               _%tl200656200916%_
                                               _%e200657200919%_
                                               _%hd200658200922%_
                                               _%tl200659200924%_
                                               _%e200660200927%_
                                               _%hd200661200930%_
                                               _%tl200662200932%_
                                               _%e200663200935%_
                                               _%hd200664200938%_
                                               _%tl200665200940%_
                                               _%e200666200943%_
                                               _%hd200667200946%_
                                               _%tl200668200948%_
                                               _%e200669200951%_
                                               _%hd200670200954%_
                                               _%tl200671200956%_
                                               _%e200672200959%_
                                               _%hd200673200962%_
                                               _%tl200674200964%_
                                               _%e200675200967%_
                                               _%hd200676200970%_
                                               _%tl200677200972%_
                                               _%e200678200975%_
                                               _%hd200679200978%_
                                               _%tl200680200980%_
                                               _%e200681200983%_
                                               _%hd200682200986%_
                                               _%tl200683200988%_
                                               _%e200684200991%_
                                               _%hd200685200994%_
                                               _%tl200686200996%_
                                               _%e200687200999%_
                                               _%hd200688201002%_
                                               _%tl200689201004%_
                                               _%e200690201007%_
                                               _%hd200691201010%_
                                               _%tl200692201012%_
                                               _%e200693201015%_
                                               _%hd200694201018%_
                                               _%tl200695201020%_
                                               _%e200696201023%_
                                               _%hd200697201026%_
                                               _%tl200698201028%_
                                               _%e200699201031%_
                                               _%hd200700201034%_
                                               _%tl200701201036%_)
                                              (_%__kont201603201604%_))
                                          (_%__kont201603201604%_))))
                                  (_%__kont201603201604%_))
                              (_%__kont201603201604%_))
                          (_%__kont201603201604%_))))
                  (_%__kont201603201604%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200686200996%_))
                                                      (if (let ((__tmp201954
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp201954 'bind-method!))
                  (let ((_%L200865%_ _%hd200691201010%_)
                        (_%L200866%_ _%hd200682200986%_)
                        (_%L200867%_ _%hd200673200962%_)
                        (_%L200868%_ _%hd200664200938%_))
                    (_%__kont201601201602%_
                     _%L200865%_
                     _%L200866%_
                     _%L200867%_
                     _%L200868%_))
                  (_%__kont201603201604%_))
              (_%__kont201603201604%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont201603201604%_))))
                                      (_%__kont201603201604%_))
                                  (_%__kont201603201604%_))
                              (_%__kont201603201604%_))))
                      (_%__kont201603201604%_))))
              (_%__kont201603201604%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont201603201604%_))))
                                          (_%__kont201603201604%_))
                                      (_%__kont201603201604%_))
                                  (_%__kont201603201604%_))))
                          (_%__kont201603201604%_))))
                  (_%__kont201603201604%_))
              (_%__kont201603201604%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont201603201604%_))
                                          (_%__kont201603201604%_))
                                      (_%__kont201603201604%_))))
                              (_%__kont201603201604%_))))
                      (_%__kont201603201604%_))
                  (_%__kont201603201604%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont201603201604%_))
                                              (_%__kont201603201604%_))
                                          (_%__kont201603201604%_))))
                                  (_%__kont201603201604%_))))
                          (_%__kont201603201604%_))))
                  (_%__kont201603201604%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self200466%_ _%stx200467%_)
        (let* ((_%__stx201841201842%_ _%stx200467%_)
               (_%g200470200510%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx201841201842%_)))))
          (let ((_%__kont201843201844%_
                 (lambda (_%L200616%_ _%L200617%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L200617%_))
                               (cons _%L200616%_ '())))))
                (_%__kont201845201846%_
                 (lambda (_%L200539%_ _%L200540%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx201841201842%_))
                (let ((_%e200474200560%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx201841201842%_))))
                  (let ((_%tl200476200565%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200474200560%_)))
                        (_%hd200475200563%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200474200560%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200476200565%_))
                        (let ((_%e200477200568%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl200476200565%_))))
                          (let ((_%tl200479200573%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200477200568%_)))
                                (_%hd200478200571%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200477200568%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd200478200571%_))
                                (let ((_%e200480200576%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd200478200571%_))))
                                  (let ((_%tl200482200581%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200480200576%_)))
                                        (_%hd200481200579%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200480200576%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd200481200579%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd200481200579%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200482200581%_))
                                                (let ((_%e200483200584%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200482200581%_))))
                                                  (let ((_%tl200485200589%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200483200584%_)))
                                                        (_%hd200484200587%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200483200584%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200485200589%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl200479200573%_))
                                                            (let ((_%e200486200592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200479200573%_))))
                      (let ((_%tl200488200597%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200486200592%_)))
                            (_%hd200487200595%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200486200592%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd200487200595%_))
                            (let ((_%e200489200600%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd200487200595%_))))
                              (let ((_%tl200491200605%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200489200600%_)))
                                    (_%hd200490200603%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200489200600%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd200490200603%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd200490200603%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200491200605%_))
                                            (let ((_%e200492200608%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200491200605%_))))
                                              (let ((_%tl200494200613%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200492200608%_)))
                                                    (_%hd200493200611%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200492200608%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl200494200613%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200488200597%_))
                                                        (_%__kont201843201844%_
                                                         _%hd200493200611%_
                                                         _%hd200484200587%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g200470200510%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200488200597%_))
                                                        (_%__kont201845201846%_
                                                         _%hd200487200595%_
                                                         _%hd200478200571%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g200470200510%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl200488200597%_))
                                                (_%__kont201845201846%_
                                                 _%hd200487200595%_
                                                 _%hd200478200571%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200470200510%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl200488200597%_))
                                            (_%__kont201845201846%_
                                             _%hd200487200595%_
                                             _%hd200478200571%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g200470200510%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200488200597%_))
                                        (_%__kont201845201846%_
                                         _%hd200487200595%_
                                         _%hd200478200571%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g200470200510%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl200488200597%_))
                                (_%__kont201845201846%_
                                 _%hd200487200595%_
                                 _%hd200478200571%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g200470200510%_))))))
                    (let () (declare (not safe)) (_%g200470200510%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl200479200573%_))
                    (let ((_%e200503200531%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl200479200573%_))))
                      (let ((_%tl200505200536%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200503200531%_)))
                            (_%hd200504200534%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200503200531%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200505200536%_))
                            (_%__kont201845201846%_
                             _%hd200504200534%_
                             _%hd200478200571%_)
                            (let ()
                              (declare (not safe))
                              (_%g200470200510%_)))))
                    (let () (declare (not safe)) (_%g200470200510%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl200479200573%_))
                                                    (let ((_%e200503200531%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl200479200573%_))))
                                                      (let ((_%tl200505200536%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e200503200531%_)))
                    (_%hd200504200534%_
                     (let () (declare (not safe)) (##car _%e200503200531%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl200505200536%_))
                    (_%__kont201845201846%_
                     _%hd200504200534%_
                     _%hd200478200571%_)
                    (let () (declare (not safe)) (_%g200470200510%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200470200510%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200479200573%_))
                                                (let ((_%e200503200531%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200479200573%_))))
                                                  (let ((_%tl200505200536%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200503200531%_)))
                                                        (_%hd200504200534%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200503200531%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200505200536%_))
                                                        (_%__kont201845201846%_
                                                         _%hd200504200534%_
                                                         _%hd200478200571%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g200470200510%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g200470200510%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200479200573%_))
                                            (let ((_%e200503200531%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl200479200573%_))))
                                              (let ((_%tl200505200536%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200503200531%_)))
                                                    (_%hd200504200534%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200503200531%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl200505200536%_))
                                                    (_%__kont201845201846%_
                                                     _%hd200504200534%_
                                                     _%hd200478200571%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200470200510%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g200470200510%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl200479200573%_))
                                    (let ((_%e200503200531%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl200479200573%_))))
                                      (let ((_%tl200505200536%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e200503200531%_)))
                                            (_%hd200504200534%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e200503200531%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl200505200536%_))
                                            (_%__kont201845201846%_
                                             _%hd200504200534%_
                                             _%hd200478200571%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g200470200510%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g200470200510%_))))))
                        (let () (declare (not safe)) (_%g200470200510%_)))))
                (let () (declare (not safe)) (_%g200470200510%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self198660200451%_)
        (let* ((_%self200454%_ _%self198660200451%_)
               (_%self200456%_ _%self200454%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self200456%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self198661200222%_)
        (let* ((_%self200225%_ _%self198661200222%_)
               (_%self200227%_ _%self200225%_)
               (_%self200236200252%_ _%self200227%_)
               (_%E200238200256%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self200236200252%_
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
               (_%K200239200271%_
                (lambda (_%methods200259%_
                         _%metaclass200260%_
                         _%system?200261%_
                         _%final?200262%_
                         _%struct?200263%_
                         _%constructor200264%_
                         _%fields200265%_
                         _%slots200266%_
                         _%precendence-list200267%_
                         _%super200268%_
                         _%id200269%_)
                  (cons '@class
                        (cons _%id200269%_
                              (cons _%super200268%_
                                    (cons _%precendence-list200267%_
                                          (cons _%slots200266%_
                                                (cons _%fields200265%_
                                                      (cons _%constructor200264%_
                                                            (cons _%struct?200263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?200262%_
                                (cons _%system?200261%_
                                      (cons _%metaclass200260%_
                                            (cons (if _%methods200259%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods200259%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%e200240200274%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200236200252%_ '1 '#f '#f)))
               (_%id200277%_ _%e200240200274%_)
               (_%e200241200279%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200236200252%_ '2 '#f '#f)))
               (_%super200282%_ _%e200241200279%_)
               (_%e200242200284%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200236200252%_ '3 '#f '#f)))
               (_%precendence-list200287%_ _%e200242200284%_)
               (_%e200243200289%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200236200252%_ '4 '#f '#f)))
               (_%slots200292%_ _%e200243200289%_)
               (_%e200244200294%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200236200252%_ '5 '#f '#f)))
               (_%fields200297%_ _%e200244200294%_)
               (_%e200245200299%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200236200252%_ '6 '#f '#f)))
               (_%constructor200302%_ _%e200245200299%_)
               (_%e200246200304%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200236200252%_ '7 '#f '#f)))
               (_%struct?200307%_ _%e200246200304%_)
               (_%e200247200309%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200236200252%_ '8 '#f '#f)))
               (_%final?200312%_ _%e200247200309%_)
               (_%e200248200314%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self200236200252%_ '9 '#f '#f)))
               (_%system?200317%_ _%e200248200314%_)
               (_%e200249200319%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self200236200252%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass200322%_ _%e200249200319%_)
               (_%e200250200324%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%self200236200252%_
                   '11
                   '#f
                   '#f)))
               (_%methods200327%_ _%e200250200324%_))
          (_%K200239200271%_
           _%methods200327%_
           _%metaclass200322%_
           _%system?200317%_
           _%final?200312%_
           _%struct?200307%_
           _%constructor200302%_
           _%fields200297%_
           _%slots200292%_
           _%precendence-list200287%_
           _%super200282%_
           _%id200277%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self198662200085%_)
        (let* ((_%self200088%_ _%self198662200085%_)
               (_%self200090%_ _%self200088%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self200090%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self198663199948%_)
        (let* ((_%self199951%_ _%self198663199948%_)
               (_%self199953%_ _%self199951%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199953%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self198664199811%_)
        (let* ((_%self199814%_ _%self198664199811%_)
               (_%self199816%_ _%self199814%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199816%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self199816%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self199816%_
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
      (lambda (_%self198665199674%_)
        (let* ((_%self199677%_ _%self198665199674%_)
               (_%self199679%_ _%self199677%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199679%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self199679%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self199679%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self198666199537%_)
        (let* ((_%self199540%_ _%self198666199537%_)
               (_%self199542%_ _%self199540%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199542%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self199542%_
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
      (lambda (_%self198667199348%_)
        (let* ((_%self199351%_ _%self198667199348%_)
               (_%self199353%_ _%self199351%_)
               (_%self199362199371%_ _%self199353%_)
               (_%E199364199375%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self199362199371%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K199365199394%_
                (lambda (_%dispatch199378%_
                         _%arity199379%_
                         _%signature199380%_)
                  (if _%signature199380%_
                      (let ((_%signature199382%_ _%signature199380%_))
                        (cons '@lambda
                              (cons _%arity199379%_
                                    (cons _%dispatch199378%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature199382%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature199382%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature199382%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature199382%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature199382%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity199379%_
                                  (cons _%dispatch199378%_ '()))))))
               (_%e199366199397%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199362199371%_ '1 '#f '#f)))
               (_%e199367199400%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199362199371%_ '2 '#f '#f)))
               (_%signature199403%_ _%e199367199400%_)
               (_%e199368199405%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199362199371%_ '3 '#f '#f)))
               (_%arity199408%_ _%e199368199405%_)
               (_%e199369199410%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%self199362199371%_ '4 '#f '#f)))
               (_%dispatch199413%_ _%e199369199410%_))
          (_%K199365199394%_
           _%dispatch199413%_
           _%arity199408%_
           _%signature199403%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self198668199207%_)
        (let* ((_%self199210%_ _%self198668199207%_)
               (_%self199212%_ _%self199210%_))
          (letrec ((_%clause-e199222%_
                    (lambda (_%clause199224%_)
                      (cdr (let ((__method201929
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause199224%_
                                     'typedecl))))
                             (if __method201929
                                 (let ()
                                   (declare (not safe))
                                   (__method201929 _%clause199224%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause199224%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e199222%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self199212%_
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
      (lambda (_%self198669199070%_)
        (let* ((_%self199073%_ _%self198669199070%_)
               (_%self199075%_ _%self199073%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self199075%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self199075%_
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
      (lambda (_%self198670198933%_)
        (let* ((_%self198936%_ _%self198670198933%_)
               (_%self198938%_ _%self198936%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198938%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self198938%_
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
      (lambda (_%self198671198796%_)
        (let* ((_%self198799%_ _%self198671198796%_)
               (_%self198801%_ _%self198799%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self198801%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
