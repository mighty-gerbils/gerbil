(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712784671)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp194935
                   (let ((__obj194929
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#optimizer-info::t
                             '#f
                             '#f
                             '#f
                             '#f))))
                     (gxc#optimizer-info:::init! __obj194929)
                     __obj194929)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp194935)))))
    (define gxc#optimize!
      (lambda (_%ctx194538%_)
        (let ((__tmp194938
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx194538%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx194538%_)
                 (let ((__tmp194940
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp194939
                        (##structure-ref
                         _%ctx194538%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp194940 __tmp194939 '#t))
                 (let ((_%code194541%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx194538%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx194538%_
                    _%code194541%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp194937 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp194936 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp194938
           gxc#current-compile-mutators
           __tmp194937
           gxc#current-compile-local-type
           __tmp194936))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx194524%_)
        (letrec ((_%load-it!194526%_
                  (lambda (_%id194536%_)
                    (if (let ((__tmp194941
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp194941 _%id194536%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id194536%_)
                          (let ((__tmp194942
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp194942 _%id194536%_ '#t)))))))
          (let* ((_%modid194528%_
                  (##structure-ref
                   _%ctx194524%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str194530%_ (symbol->string _%modid194528%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str194530%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str194530%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!194526%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!194526%_
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
      (lambda (_%ctx194461%_)
        (letrec* ((_%deps194463%_
                   (let* ((_%imports194514%_
                           (##structure-ref
                            _%ctx194461%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e194516%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx194461%_))))
                     (if _%$e194516%_
                         ((lambda (_%g194518194520%_)
                            (cons _%g194518194520%_ _%imports194514%_))
                          _%$e194516%_)
                         _%imports194514%_))))
          (let _%lp194465%_ ((_%rest194467%_ _%deps194463%_))
            (let* ((_%rest194468194476%_ _%rest194467%_)
                   (_%else194470194484%_ (lambda () '#!void))
                   (_%K194472194502%_
                    (lambda (_%rest194487%_ _%hd194488%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd194488%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp194944
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp194943
                                       (##structure-ref
                                        _%hd194488%_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp194944 __tmp194943))
                                '#!void
                                (begin
                                  (let ((_%$e194491%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd194488%_))))
                                    (if _%$e194491%_
                                        ((lambda (_%pre194494%_)
                                           (_%lp194465%_
                                            (cons _%pre194494%_
                                                  (##structure-ref
                                                   _%hd194488%_
                                                   '8
                                                   gx#module-context::t
                                                   '#f))))
                                         _%$e194491%_)
                                        (_%lp194465%_
                                         (##structure-ref
                                          _%hd194488%_
                                          '8
                                          gx#module-context::t
                                          '#f))))
                                  (gxc#optimizer-load-ssxi _%hd194488%_)))
                            (_%lp194465%_ _%rest194487%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd194488%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp194946
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp194945
                                           (##structure-ref
                                            _%hd194488%_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp194946 __tmp194945))
                                    '#!void
                                    (begin
                                      (_%lp194465%_
                                       (##structure-ref
                                        _%hd194488%_
                                        '7
                                        gx#prelude-context::t
                                        '#f))
                                      (gxc#optimizer-load-ssxi _%hd194488%_)))
                                (_%lp194465%_ _%rest194487%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd194488%_
                                     'gx#module-import::t))
                                  (_%lp194465%_
                                   (cons (##direct-structure-ref
                                          _%hd194488%_
                                          '1
                                          gx#module-import::t
                                          '#f)
                                         _%rest194487%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd194488%_
                                         'gx#module-export::t))
                                      (_%lp194465%_
                                       (cons (##direct-structure-ref
                                              _%hd194488%_
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             _%rest194487%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd194488%_
                                             'gx#import-set::t))
                                          (_%lp194465%_
                                           (cons (##direct-structure-ref
                                                  _%hd194488%_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 _%rest194487%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd194488%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest194468194476%_))
                  (let ((_%hd194473194505%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194468194476%_)))
                        (_%tl194474194507%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194468194476%_))))
                    (let* ((_%hd194510%_ _%hd194473194505%_)
                           (_%rest194512%_ _%tl194474194507%_))
                      (_%K194472194502%_ _%rest194512%_ _%hd194510%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx194441%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx194441%_
                    'gx#module-context::t))
                 (list? (##structure-ref
                         _%ctx194441%_
                         '7
                         gx#module-context::t
                         '#f)))
            '#!void
            (let* ((_%ht194443%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id194445%_
                    (##structure-ref
                     _%ctx194441%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod194447%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht194443%_ _%id194445%_)))
                   (_%$e194450%_ _%mod194447%_))
              (if _%$e194450%_
                  _%$e194450%_
                  (let* ((_%mod194453%_
                          (gxc#optimizer-import-ssxi _%ctx194441%_))
                         (_%val194458%_
                          (let ((_%$e194455%_ _%mod194453%_))
                            (if _%$e194455%_ _%$e194455%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht194443%_ _%id194445%_ _%val194458%_))
                    _%val194458%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx194439%_)
        (if (##structure-ref _%ctx194439%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx194439%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id194416%_)
        (letrec ((_%catch-e194418%_
                  (lambda (_%exn194437%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn194437%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (display-exception _%exn194437%_)
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id194416%_))))
                    '#f))
                 (_%import-e194419%_
                  (lambda ()
                    (let* ((_%str-id194422%_
                            (let ((__tmp194947
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id194416%_))))
                              (declare (not safe))
                              (##string-append __tmp194947 '".ssxi")))
                           (_%artefact-path194430%_
                            (let ((_%odir194423194425%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir194423194425%_
                                  (let ((_%odir194428%_ _%odir194423194425%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id194422%_
                                        '".ss"))
                                     _%odir194428%_))
                                  '#f)))
                           (_%library-path194432%_
                            (let ((__tmp194948
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id194422%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp194948)))
                           (_%ssxi-path194434%_
                            (if (and _%artefact-path194430%_
                                     (file-exists? _%artefact-path194430%_))
                                _%artefact-path194430%_
                                _%library-path194432%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path194434%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path194434%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e194418%_ _%import-e194419%_)))))
    (define gxc#optimize-source
      (lambda (_%stx194407%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx194407%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx194407%_))
        (let* ((_%stx194409%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx194407%_)))
               (_%stx194411%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx194409%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx194411%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx194411%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx194411%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx194411%_))
          (let ((_%stx194414%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx194411%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx194414%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp194950 (list gxc#::generate-runtime-empty::t))
            (__tmp194949 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp194950
         '()
         __tmp194949
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args194404%_
        (apply make-instance gxc#::generate-ssxi::t _%$args194404%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp194951
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
        (__make-promise __tmp194951)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx194396%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self194399%_
                (let ((__obj194931
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj194931))
               (__tmp194952
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self194399%_ _%stx194396%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp194952
           gxc#current-compile-method
           _%self194399%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self194356%_ _%stx194357%_)
        (let* ((_%g194359194369%_
                (lambda (_%g194360194366%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194360194366%_))))
               (_%g194358194393%_
                (lambda (_%g194360194372%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194360194372%_))
                      (let ((_%e194362194374%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194360194372%_))))
                        (let ((_%hd194363194377%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194362194374%_)))
                              (_%tl194364194379%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194362194374%_))))
                          ((lambda (_%L194382%_)
                             (let ((__tmp194955
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self194356%_
                                         _%stx194357%_))))
                                   (__tmp194953
                                    (let ((__tmp194954
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp194954 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp194955
                                gx#current-expander-phi
                                __tmp194953)))
                           _%tl194364194379%_)))
                      (_%g194359194369%_ _%g194360194372%_)))))
          (_%g194358194393%_ _%stx194357%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self194295%_ _%stx194296%_)
        (let* ((_%g194298194312%_
                (lambda (_%g194299194309%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g194299194309%_))))
               (_%g194297194353%_
                (lambda (_%g194299194315%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g194299194315%_))
                      (let ((_%e194302194317%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g194299194315%_))))
                        (let ((_%hd194303194320%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e194302194317%_)))
                              (_%tl194304194322%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e194302194317%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl194304194322%_))
                              (let ((_%e194305194325%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl194304194322%_))))
                                (let ((_%hd194306194328%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e194305194325%_)))
                                      (_%tl194307194330%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e194305194325%_))))
                                  ((lambda (_%L194333%_ _%L194334%_)
                                     (let* ((_%ctx194347%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L194334%_)))
                                            (_%code194349%_
                                             (##structure-ref
                                              _%ctx194347%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp194956
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self194295%_
                                                  _%code194349%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp194956
                                        gx#current-expander-context
                                        _%ctx194347%_)))
                                   _%tl194307194330%_
                                   _%hd194306194328%_)))
                              (_%g194298194312%_ _%g194299194315%_))))
                      (_%g194298194312%_ _%g194299194315%_)))))
          (_%g194297194353%_ _%stx194296%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self194100%_ _%stx194101%_)
        (letrec ((_%generate-e194103%_
                  (lambda (_%id194280%_)
                    (let* ((_%sym194282%_
                            (if (let ((__tmp194957
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp194957))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id194280%_))
                                '#f))
                           (_%$e194284%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym194282%_))))
                      (if _%$e194284%_
                          ((lambda (_%klass194287%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym194282%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym194282%_
                                                     (cons (let ((__method194932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass194287%_ 'typedecl))))
                     (if __method194932
                         (let ()
                           (declare (not safe))
                           (__method194932 _%klass194287%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass194287%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym194282%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym194282%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e194284%_)
                          (let ((_%$e194289%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym194282%_))))
                            (if _%$e194289%_
                                ((lambda (_%type194292%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym194282%_
                                      '" "
                                      _%type194292%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type194292%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym194282%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym194282%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type194292%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym194282%_
                                                   (cons (let ((__method194933
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type194292%_ 'typedecl))))
                   (if __method194933
                       (let ()
                         (declare (not safe))
                         (__method194933 _%type194292%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type194292%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e194289%_)
                                '(begin))))))))
          (let* ((_%__stx194544194545%_ _%stx194101%_)
                 (_%g194106194144%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx194544194545%_)))))
            (let ((_%__kont194546194547%_
                   (lambda (_%L194262%_) (_%generate-e194103%_ _%L194262%_)))
                  (_%__kont194548194549%_
                   (lambda (_%L194197%_)
                     (let ((_%types194223%_
                            (map _%generate-e194103%_
                                 (let ((__tmp194958
                                        (lambda (_%g194215194218%_
                                                 _%g194216194220%_)
                                          (cons _%g194215194218%_
                                                _%g194216194220%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp194958 '() _%L194197%_)))))
                       (cons 'begin _%types194223%_)))))
              (let ((_%__match194599194600%_
                     (lambda (_%e194122194149%_
                              _%hd194123194152%_
                              _%tl194124194154%_
                              _%e194125194157%_
                              _%hd194126194160%_
                              _%tl194127194162%_
                              _%__splice194550194551%_
                              _%target194128194165%_
                              _%tl194130194167%_)
                       (letrec ((_%loop194131194170%_
                                 (lambda (_%hd194129194173%_
                                          _%id194135194175%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd194129194173%_))
                                       (let ((_%e194132194178%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd194129194173%_))))
                                         (let ((_%lp-tl194134194183%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e194132194178%_)))
                                               (_%lp-hd194133194181%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e194132194178%_))))
                                           (_%loop194131194170%_
                                            _%lp-tl194134194183%_
                                            (cons _%lp-hd194133194181%_
                                                  _%id194135194175%_))))
                                       (let ((_%id194136194186%_
                                              (reverse _%id194135194175%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl194127194162%_))
                                             (let ((_%e194137194189%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl194127194162%_))))
                                               (let ((_%tl194139194194%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e194137194189%_)))
                                                     (_%hd194138194192%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e194137194189%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl194139194194%_))
                                                     (_%__kont194548194549%_
                                                      _%id194136194186%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g194106194144%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g194106194144%_))))))))
                         (_%loop194131194170%_ _%target194128194165%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx194544194545%_))
                    (let ((_%e194109194230%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx194544194545%_))))
                      (let ((_%tl194111194235%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e194109194230%_)))
                            (_%hd194110194233%_
                             (let ()
                               (declare (not safe))
                               (##car _%e194109194230%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl194111194235%_))
                            (let ((_%e194112194238%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl194111194235%_))))
                              (let ((_%tl194114194243%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e194112194238%_)))
                                    (_%hd194113194241%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e194112194238%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd194113194241%_))
                                    (let ((_%e194115194246%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd194113194241%_))))
                                      (let ((_%tl194117194251%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e194115194246%_)))
                                            (_%hd194116194249%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e194115194246%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl194117194251%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl194114194243%_))
                                                (let ((_%e194118194254%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl194114194243%_))))
                                                  (let ((_%tl194120194259%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e194118194254%_)))
                                                        (_%hd194119194257%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e194118194254%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194120194259%_))
                                                        (_%__kont194546194547%_
                                                         _%hd194116194249%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd194113194241%_))
                                                            (let ((_%__splice194550194551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd194113194241%_ '0))))
                      (let ((_%tl194130194167%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice194550194551%_ '1)))
                            (_%target194128194165%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice194550194551%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl194130194167%_))
                            (_%__match194599194600%_
                             _%e194109194230%_
                             _%hd194110194233%_
                             _%tl194111194235%_
                             _%e194112194238%_
                             _%hd194113194241%_
                             _%tl194114194243%_
                             _%__splice194550194551%_
                             _%target194128194165%_
                             _%tl194130194167%_)
                            (let ()
                              (declare (not safe))
                              (_%g194106194144%_)))))
                    (let () (declare (not safe)) (_%g194106194144%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd194113194241%_))
                                                    (let ((_%__splice194550194551%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd194113194241%_
                                                              '0))))
                                                      (let ((_%tl194130194167%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice194550194551%_ '1)))
                    (_%target194128194165%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice194550194551%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl194130194167%_))
                    (_%__match194599194600%_
                     _%e194109194230%_
                     _%hd194110194233%_
                     _%tl194111194235%_
                     _%e194112194238%_
                     _%hd194113194241%_
                     _%tl194114194243%_
                     _%__splice194550194551%_
                     _%target194128194165%_
                     _%tl194130194167%_)
                    (let () (declare (not safe)) (_%g194106194144%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g194106194144%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd194113194241%_))
                                                (let ((_%__splice194550194551%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd194113194241%_
                                                          '0))))
                                                  (let ((_%tl194130194167%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice194550194551%_
                                                            '1)))
                                                        (_%target194128194165%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice194550194551%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl194130194167%_))
                                                        (_%__match194599194600%_
                                                         _%e194109194230%_
                                                         _%hd194110194233%_
                                                         _%tl194111194235%_
                                                         _%e194112194238%_
                                                         _%hd194113194241%_
                                                         _%tl194114194243%_
                                                         _%__splice194550194551%_
                                                         _%target194128194165%_
                                                         _%tl194130194167%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g194106194144%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g194106194144%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd194113194241%_))
                                        (let ((_%__splice194550194551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd194113194241%_
                                                  '0))))
                                          (let ((_%tl194130194167%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice194550194551%_
                                                    '1)))
                                                (_%target194128194165%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice194550194551%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl194130194167%_))
                                                (_%__match194599194600%_
                                                 _%e194109194230%_
                                                 _%hd194110194233%_
                                                 _%tl194111194235%_
                                                 _%e194112194238%_
                                                 _%hd194113194241%_
                                                 _%tl194114194243%_
                                                 _%__splice194550194551%_
                                                 _%target194128194165%_
                                                 _%tl194130194167%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g194106194144%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g194106194144%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g194106194144%_)))))
                    (let () (declare (not safe)) (_%g194106194144%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self193653%_ _%stx193654%_)
        (let* ((_%__stx194602194603%_ _%stx193654%_)
               (_%g193658193760%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194602194603%_)))))
          (let ((_%__kont194604194605%_
                 (lambda (_%L194050%_
                          _%L194051%_
                          _%L194052%_
                          _%L194053%_
                          _%L194054%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L194053%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L194052%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L194051%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L194050%_))
                                                 '())))))))
                (_%__kont194606194607%_
                 (lambda (_%L193876%_ _%L193877%_ _%L193878%_ _%L193879%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L193878%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L193877%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L193876%_))
                                           (cons '#f '())))))))
                (_%__kont194608194609%_ (lambda () '(begin))))
            (let ((_%__match194737194738%_
                   (lambda (_%e193665193922%_
                            _%hd193666193925%_
                            _%tl193667193927%_
                            _%e193668193930%_
                            _%hd193669193933%_
                            _%tl193670193935%_
                            _%e193671193938%_
                            _%hd193672193941%_
                            _%tl193673193943%_
                            _%e193674193946%_
                            _%hd193675193949%_
                            _%tl193676193951%_
                            _%e193677193954%_
                            _%hd193678193957%_
                            _%tl193679193959%_
                            _%e193680193962%_
                            _%hd193681193965%_
                            _%tl193682193967%_
                            _%e193683193970%_
                            _%hd193684193973%_
                            _%tl193685193975%_
                            _%e193686193978%_
                            _%hd193687193981%_
                            _%tl193688193983%_
                            _%e193689193986%_
                            _%hd193690193989%_
                            _%tl193691193991%_
                            _%e193692193994%_
                            _%hd193693193997%_
                            _%tl193694193999%_
                            _%e193695194002%_
                            _%hd193696194005%_
                            _%tl193697194007%_
                            _%e193698194010%_
                            _%hd193699194013%_
                            _%tl193700194015%_
                            _%e193701194018%_
                            _%hd193702194021%_
                            _%tl193703194023%_
                            _%e193704194026%_
                            _%hd193705194029%_
                            _%tl193706194031%_
                            _%e193707194034%_
                            _%hd193708194037%_
                            _%tl193709194039%_
                            _%e193710194042%_
                            _%hd193711194045%_
                            _%tl193712194047%_)
                     (let ((_%L194050%_ _%hd193711194045%_)
                           (_%L194051%_ _%hd193702194021%_)
                           (_%L194052%_ _%hd193693193997%_)
                           (_%L194053%_ _%hd193684193973%_)
                           (_%L194054%_ _%hd193675193949%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L194054%_
                              'bind-method!))
                           (_%__kont194604194605%_
                            _%L194050%_
                            _%L194051%_
                            _%L194052%_
                            _%L194053%_
                            _%L194054%_)
                           (_%__kont194608194609%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx194602194603%_))
                  (let ((_%e193665193922%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx194602194603%_))))
                    (let ((_%tl193667193927%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193665193922%_)))
                          (_%hd193666193925%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193665193922%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193667193927%_))
                          (let ((_%e193668193930%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193667193927%_))))
                            (let ((_%tl193670193935%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193668193930%_)))
                                  (_%hd193669193933%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193668193930%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd193669193933%_))
                                  (let ((_%e193671193938%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd193669193933%_))))
                                    (let ((_%tl193673193943%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193671193938%_)))
                                          (_%hd193672193941%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193671193938%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd193672193941%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd193672193941%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193673193943%_))
                                                  (let ((_%e193674193946%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193673193943%_))))
                                                    (let ((_%tl193676193951%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193674193946%_)))
                                                          (_%hd193675193949%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193674193946%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193676193951%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl193670193935%_))
                      (let ((_%e193677193954%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193670193935%_))))
                        (let ((_%tl193679193959%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193677193954%_)))
                              (_%hd193678193957%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193677193954%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd193678193957%_))
                              (let ((_%e193680193962%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd193678193957%_))))
                                (let ((_%tl193682193967%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193680193962%_)))
                                      (_%hd193681193965%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193680193962%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd193681193965%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd193681193965%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193682193967%_))
                                              (let ((_%e193683193970%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193682193967%_))))
                                                (let ((_%tl193685193975%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193683193970%_)))
                                                      (_%hd193684193973%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193683193970%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193685193975%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193679193959%_))
                                                          (let ((_%e193686193978%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193679193959%_))))
                    (let ((_%tl193688193983%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193686193978%_)))
                          (_%hd193687193981%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193686193978%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd193687193981%_))
                          (let ((_%e193689193986%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd193687193981%_))))
                            (let ((_%tl193691193991%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193689193986%_)))
                                  (_%hd193690193989%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193689193986%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd193690193989%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd193690193989%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193691193991%_))
                                          (let ((_%e193692193994%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193691193991%_))))
                                            (let ((_%tl193694193999%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193692193994%_)))
                                                  (_%hd193693193997%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193692193994%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193694193999%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193688193983%_))
                                                      (let ((_%e193695194002%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193688193983%_))))
                (let ((_%tl193697194007%_
                       (let () (declare (not safe)) (##cdr _%e193695194002%_)))
                      (_%hd193696194005%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193695194002%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd193696194005%_))
                      (let ((_%e193698194010%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd193696194005%_))))
                        (let ((_%tl193700194015%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193698194010%_)))
                              (_%hd193699194013%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193698194010%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd193699194013%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd193699194013%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193700194015%_))
                                      (let ((_%e193701194018%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193700194015%_))))
                                        (let ((_%tl193703194023%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193701194018%_)))
                                              (_%hd193702194021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193701194018%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193703194023%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193697194007%_))
                                                  (let ((_%e193704194026%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193697194007%_))))
                                                    (let ((_%tl193706194031%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193704194026%_)))
                                                          (_%hd193705194029%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193704194026%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd193705194029%_))
                                                          (let ((_%e193707194034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd193705194029%_))))
                    (let ((_%tl193709194039%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193707194034%_)))
                          (_%hd193708194037%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193707194034%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd193708194037%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd193708194037%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193709194039%_))
                                  (let ((_%e193710194042%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193709194039%_))))
                                    (let ((_%tl193712194047%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193710194042%_)))
                                          (_%hd193711194045%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193710194042%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193712194047%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193706194031%_))
                                              (_%__match194737194738%_
                                               _%e193665193922%_
                                               _%hd193666193925%_
                                               _%tl193667193927%_
                                               _%e193668193930%_
                                               _%hd193669193933%_
                                               _%tl193670193935%_
                                               _%e193671193938%_
                                               _%hd193672193941%_
                                               _%tl193673193943%_
                                               _%e193674193946%_
                                               _%hd193675193949%_
                                               _%tl193676193951%_
                                               _%e193677193954%_
                                               _%hd193678193957%_
                                               _%tl193679193959%_
                                               _%e193680193962%_
                                               _%hd193681193965%_
                                               _%tl193682193967%_
                                               _%e193683193970%_
                                               _%hd193684193973%_
                                               _%tl193685193975%_
                                               _%e193686193978%_
                                               _%hd193687193981%_
                                               _%tl193688193983%_
                                               _%e193689193986%_
                                               _%hd193690193989%_
                                               _%tl193691193991%_
                                               _%e193692193994%_
                                               _%hd193693193997%_
                                               _%tl193694193999%_
                                               _%e193695194002%_
                                               _%hd193696194005%_
                                               _%tl193697194007%_
                                               _%e193698194010%_
                                               _%hd193699194013%_
                                               _%tl193700194015%_
                                               _%e193701194018%_
                                               _%hd193702194021%_
                                               _%tl193703194023%_
                                               _%e193704194026%_
                                               _%hd193705194029%_
                                               _%tl193706194031%_
                                               _%e193707194034%_
                                               _%hd193708194037%_
                                               _%tl193709194039%_
                                               _%e193710194042%_
                                               _%hd193711194045%_
                                               _%tl193712194047%_)
                                              (_%__kont194608194609%_))
                                          (_%__kont194608194609%_))))
                                  (_%__kont194608194609%_))
                              (_%__kont194608194609%_))
                          (_%__kont194608194609%_))))
                  (_%__kont194608194609%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193697194007%_))
                                                      (if (let ((__tmp194959
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp194959 'bind-method!))
                  (let ((_%L193876%_ _%hd193702194021%_)
                        (_%L193877%_ _%hd193693193997%_)
                        (_%L193878%_ _%hd193684193973%_)
                        (_%L193879%_ _%hd193675193949%_))
                    (_%__kont194606194607%_
                     _%L193876%_
                     _%L193877%_
                     _%L193878%_
                     _%L193879%_))
                  (_%__kont194608194609%_))
              (_%__kont194608194609%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont194608194609%_))))
                                      (_%__kont194608194609%_))
                                  (_%__kont194608194609%_))
                              (_%__kont194608194609%_))))
                      (_%__kont194608194609%_))))
              (_%__kont194608194609%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont194608194609%_))))
                                          (_%__kont194608194609%_))
                                      (_%__kont194608194609%_))
                                  (_%__kont194608194609%_))))
                          (_%__kont194608194609%_))))
                  (_%__kont194608194609%_))
              (_%__kont194608194609%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont194608194609%_))
                                          (_%__kont194608194609%_))
                                      (_%__kont194608194609%_))))
                              (_%__kont194608194609%_))))
                      (_%__kont194608194609%_))
                  (_%__kont194608194609%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont194608194609%_))
                                              (_%__kont194608194609%_))
                                          (_%__kont194608194609%_))))
                                  (_%__kont194608194609%_))))
                          (_%__kont194608194609%_))))
                  (_%__kont194608194609%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self193477%_ _%stx193478%_)
        (let* ((_%__stx194846194847%_ _%stx193478%_)
               (_%g193481193521%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194846194847%_)))))
          (let ((_%__kont194848194849%_
                 (lambda (_%L193627%_ _%L193628%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L193628%_))
                               (cons _%L193627%_ '())))))
                (_%__kont194850194851%_
                 (lambda (_%L193550%_ _%L193551%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx194846194847%_))
                (let ((_%e193485193571%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx194846194847%_))))
                  (let ((_%tl193487193576%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e193485193571%_)))
                        (_%hd193486193574%_
                         (let ()
                           (declare (not safe))
                           (##car _%e193485193571%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl193487193576%_))
                        (let ((_%e193488193579%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl193487193576%_))))
                          (let ((_%tl193490193584%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193488193579%_)))
                                (_%hd193489193582%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193488193579%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd193489193582%_))
                                (let ((_%e193491193587%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd193489193582%_))))
                                  (let ((_%tl193493193592%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193491193587%_)))
                                        (_%hd193492193590%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193491193587%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd193492193590%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd193492193590%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193493193592%_))
                                                (let ((_%e193494193595%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193493193592%_))))
                                                  (let ((_%tl193496193600%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193494193595%_)))
                                                        (_%hd193495193598%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193494193595%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193496193600%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl193490193584%_))
                                                            (let ((_%e193497193603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl193490193584%_))))
                      (let ((_%tl193499193608%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193497193603%_)))
                            (_%hd193498193606%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193497193603%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd193498193606%_))
                            (let ((_%e193500193611%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd193498193606%_))))
                              (let ((_%tl193502193616%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193500193611%_)))
                                    (_%hd193501193614%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193500193611%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd193501193614%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd193501193614%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl193502193616%_))
                                            (let ((_%e193503193619%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl193502193616%_))))
                                              (let ((_%tl193505193624%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e193503193619%_)))
                                                    (_%hd193504193622%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e193503193619%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl193505193624%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193499193608%_))
                                                        (_%__kont194848194849%_
                                                         _%hd193504193622%_
                                                         _%hd193495193598%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g193481193521%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193499193608%_))
                                                        (_%__kont194850194851%_
                                                         _%hd193498193606%_
                                                         _%hd193489193582%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g193481193521%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193499193608%_))
                                                (_%__kont194850194851%_
                                                 _%hd193498193606%_
                                                 _%hd193489193582%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g193481193521%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl193499193608%_))
                                            (_%__kont194850194851%_
                                             _%hd193498193606%_
                                             _%hd193489193582%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g193481193521%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl193499193608%_))
                                        (_%__kont194850194851%_
                                         _%hd193498193606%_
                                         _%hd193489193582%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g193481193521%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl193499193608%_))
                                (_%__kont194850194851%_
                                 _%hd193498193606%_
                                 _%hd193489193582%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g193481193521%_))))))
                    (let () (declare (not safe)) (_%g193481193521%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl193490193584%_))
                    (let ((_%e193514193542%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl193490193584%_))))
                      (let ((_%tl193516193547%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193514193542%_)))
                            (_%hd193515193545%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193514193542%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl193516193547%_))
                            (_%__kont194850194851%_
                             _%hd193515193545%_
                             _%hd193489193582%_)
                            (let ()
                              (declare (not safe))
                              (_%g193481193521%_)))))
                    (let () (declare (not safe)) (_%g193481193521%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl193490193584%_))
                                                    (let ((_%e193514193542%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl193490193584%_))))
                                                      (let ((_%tl193516193547%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e193514193542%_)))
                    (_%hd193515193545%_
                     (let () (declare (not safe)) (##car _%e193514193542%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl193516193547%_))
                    (_%__kont194850194851%_
                     _%hd193515193545%_
                     _%hd193489193582%_)
                    (let () (declare (not safe)) (_%g193481193521%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g193481193521%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193490193584%_))
                                                (let ((_%e193514193542%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193490193584%_))))
                                                  (let ((_%tl193516193547%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193514193542%_)))
                                                        (_%hd193515193545%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193514193542%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193516193547%_))
                                                        (_%__kont194850194851%_
                                                         _%hd193515193545%_
                                                         _%hd193489193582%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g193481193521%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g193481193521%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl193490193584%_))
                                            (let ((_%e193514193542%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl193490193584%_))))
                                              (let ((_%tl193516193547%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e193514193542%_)))
                                                    (_%hd193515193545%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e193514193542%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl193516193547%_))
                                                    (_%__kont194850194851%_
                                                     _%hd193515193545%_
                                                     _%hd193489193582%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g193481193521%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g193481193521%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl193490193584%_))
                                    (let ((_%e193514193542%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl193490193584%_))))
                                      (let ((_%tl193516193547%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e193514193542%_)))
                                            (_%hd193515193545%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e193514193542%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl193516193547%_))
                                            (_%__kont194850194851%_
                                             _%hd193515193545%_
                                             _%hd193489193582%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g193481193521%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g193481193521%_))))))
                        (let () (declare (not safe)) (_%g193481193521%_)))))
                (let () (declare (not safe)) (_%g193481193521%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self191671193462%_)
        (let* ((_%self193465%_ _%self191671193462%_)
               (_%self193467%_ _%self193465%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self193467%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self191672193233%_)
        (let* ((_%self193236%_ _%self191672193233%_)
               (_%self193238%_ _%self193236%_)
               (_%self193247193263%_ _%self193238%_)
               (_%E193249193267%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self193247193263%_
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
               (_%K193250193282%_
                (lambda (_%methods193270%_
                         _%metaclass193271%_
                         _%system?193272%_
                         _%final?193273%_
                         _%struct?193274%_
                         _%constructor193275%_
                         _%fields193276%_
                         _%slots193277%_
                         _%precendence-list193278%_
                         _%super193279%_
                         _%id193280%_)
                  (cons '@class
                        (cons _%id193280%_
                              (cons _%super193279%_
                                    (cons _%precendence-list193278%_
                                          (cons _%slots193277%_
                                                (cons _%fields193276%_
                                                      (cons _%constructor193275%_
                                                            (cons _%struct?193274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?193273%_
                                (cons _%system?193272%_
                                      (cons _%metaclass193271%_
                                            (cons (if _%methods193270%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods193270%_))
                                                      '#f)
                                                  '())))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
          (if '#t
              (let* ((_%e193251193285%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193247193263%_
                         '1
                         '#f
                         '#f)))
                     (_%id193288%_ _%e193251193285%_)
                     (_%e193252193290%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193247193263%_
                         '2
                         '#f
                         '#f)))
                     (_%super193293%_ _%e193252193290%_)
                     (_%e193253193295%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193247193263%_
                         '3
                         '#f
                         '#f)))
                     (_%precendence-list193298%_ _%e193253193295%_)
                     (_%e193254193300%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193247193263%_
                         '4
                         '#f
                         '#f)))
                     (_%slots193303%_ _%e193254193300%_)
                     (_%e193255193305%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193247193263%_
                         '5
                         '#f
                         '#f)))
                     (_%fields193308%_ _%e193255193305%_)
                     (_%e193256193310%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193247193263%_
                         '6
                         '#f
                         '#f)))
                     (_%constructor193313%_ _%e193256193310%_)
                     (_%e193257193315%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193247193263%_
                         '7
                         '#f
                         '#f)))
                     (_%struct?193318%_ _%e193257193315%_)
                     (_%e193258193320%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193247193263%_
                         '8
                         '#f
                         '#f)))
                     (_%final?193323%_ _%e193258193320%_)
                     (_%e193259193325%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193247193263%_
                         '9
                         '#f
                         '#f)))
                     (_%system?193328%_ _%e193259193325%_)
                     (_%e193260193330%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193247193263%_
                         '10
                         '#f
                         '#f)))
                     (_%metaclass193333%_ _%e193260193330%_)
                     (_%e193261193335%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self193247193263%_
                         '11
                         '#f
                         '#f)))
                     (_%methods193338%_ _%e193261193335%_))
                (_%K193250193282%_
                 _%methods193338%_
                 _%metaclass193333%_
                 _%system?193328%_
                 _%final?193323%_
                 _%struct?193318%_
                 _%constructor193313%_
                 _%fields193308%_
                 _%slots193303%_
                 _%precendence-list193298%_
                 _%super193293%_
                 _%id193288%_))
              (_%E193249193267%_)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self191673193096%_)
        (let* ((_%self193099%_ _%self191673193096%_)
               (_%self193101%_ _%self193099%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self193101%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self191674192959%_)
        (let* ((_%self192962%_ _%self191674192959%_)
               (_%self192964%_ _%self192962%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192964%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self191675192822%_)
        (let* ((_%self192825%_ _%self191675192822%_)
               (_%self192827%_ _%self192825%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192827%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192827%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self192827%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_%self191676192685%_)
        (let* ((_%self192688%_ _%self191676192685%_)
               (_%self192690%_ _%self192688%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192690%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192690%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self192690%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self191677192548%_)
        (let* ((_%self192551%_ _%self191677192548%_)
               (_%self192553%_ _%self192551%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192553%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192553%_
                               '2
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!interface::t
       'typedecl
       gxc#!interface::typedecl
       '#f))
    (define gxc#!lambda::typedecl
      (lambda (_%self191678192359%_)
        (let* ((_%self192362%_ _%self191678192359%_)
               (_%self192364%_ _%self192362%_)
               (_%self192373192382%_ _%self192364%_)
               (_%E192375192386%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self192373192382%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K192376192405%_
                (lambda (_%dispatch192389%_
                         _%arity192390%_
                         _%signature192391%_)
                  (if _%signature192391%_
                      (let ((_%signature192393%_ _%signature192391%_))
                        (cons '@lambda
                              (cons _%arity192390%_
                                    (cons _%dispatch192389%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature192393%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature192393%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature192393%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature192393%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature192393%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity192390%_
                                  (cons _%dispatch192389%_ '())))))))
          (if '#t
              (let* ((_%e192377192408%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self192373192382%_
                         '1
                         '#f
                         '#f)))
                     (_%e192378192411%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self192373192382%_
                         '2
                         '#f
                         '#f)))
                     (_%signature192414%_ _%e192378192411%_)
                     (_%e192379192416%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self192373192382%_
                         '3
                         '#f
                         '#f)))
                     (_%arity192419%_ _%e192379192416%_)
                     (_%e192380192421%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self192373192382%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch192424%_ _%e192380192421%_))
                (_%K192376192405%_
                 _%dispatch192424%_
                 _%arity192419%_
                 _%signature192414%_))
              (_%E192375192386%_)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self191679192218%_)
        (let* ((_%self192221%_ _%self191679192218%_)
               (_%self192223%_ _%self192221%_))
          (letrec ((_%clause-e192233%_
                    (lambda (_%clause192235%_)
                      (cdr (let ((__method194934
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause192235%_
                                     'typedecl))))
                             (if __method194934
                                 (let ()
                                   (declare (not safe))
                                   (__method194934 _%clause192235%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause192235%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e192233%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self192223%_
                          '3
                          '#f
                          '#f))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_%self191680192081%_)
        (let* ((_%self192084%_ _%self191680192081%_)
               (_%self192086%_ _%self192084%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192086%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192086%_
                               '4
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_%self191681191944%_)
        (let* ((_%self191947%_ _%self191681191944%_)
               (_%self191949%_ _%self191947%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191949%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191949%_
                               '4
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))
    (define gxc#!primitive-predicate::typedecl
      (lambda (_%self191682191807%_)
        (let* ((_%self191810%_ _%self191682191807%_)
               (_%self191812%_ _%self191810%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191812%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
