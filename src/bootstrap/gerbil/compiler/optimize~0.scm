(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1712773531)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp194498
                   (let ((__obj194492
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#optimizer-info::t
                             '#f
                             '#f
                             '#f
                             '#f))))
                     (gxc#optimizer-info:::init! __obj194492)
                     __obj194492)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp194498)))))
    (define gxc#optimize!
      (lambda (_%ctx194101%_)
        (let ((__tmp194501
               (lambda ()
                 (gxc#optimizer-load-builtin-ssxi _%ctx194101%_)
                 (gxc#optimizer-load-ssxi-deps _%ctx194101%_)
                 (let ((__tmp194503
                        (##structure-ref
                         (let ()
                           (declare (not safe))
                           (gxc#current-compile-optimizer-info))
                         '3
                         gxc#optimizer-info::t
                         '#f))
                       (__tmp194502
                        (##structure-ref
                         _%ctx194101%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (hash-put! __tmp194503 __tmp194502 '#t))
                 (let ((_%code194104%_
                        (gxc#optimize-source
                         (##structure-ref
                          _%ctx194101%_
                          '11
                          gx#module-context::t
                          '#f))))
                   (##structure-set!
                    _%ctx194101%_
                    _%code194104%_
                    '11
                    gx#module-context::t
                    '#f))))
              (__tmp194500 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp194499 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (__call-with-parameters
           __tmp194501
           gxc#current-compile-mutators
           __tmp194500
           gxc#current-compile-local-type
           __tmp194499))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx194087%_)
        (letrec ((_%load-it!194089%_
                  (lambda (_%id194099%_)
                    (if (let ((__tmp194504
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp194504 _%id194099%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id194099%_)
                          (let ((__tmp194505
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp194505 _%id194099%_ '#t)))))))
          (let* ((_%modid194091%_
                  (##structure-ref
                   _%ctx194087%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str194093%_ (symbol->string _%modid194091%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str194093%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str194093%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!194089%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!194089%_
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
      (lambda (_%ctx194024%_)
        (letrec* ((_%deps194026%_
                   (let* ((_%imports194077%_
                           (##structure-ref
                            _%ctx194024%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e194079%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx194024%_))))
                     (if _%$e194079%_
                         ((lambda (_%g194081194083%_)
                            (cons _%g194081194083%_ _%imports194077%_))
                          _%$e194079%_)
                         _%imports194077%_))))
          (let _%lp194028%_ ((_%rest194030%_ _%deps194026%_))
            (let* ((_%rest194031194039%_ _%rest194030%_)
                   (_%else194033194047%_ (lambda () '#!void))
                   (_%K194035194065%_
                    (lambda (_%rest194050%_ _%hd194051%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd194051%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp194507
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp194506
                                       (##structure-ref
                                        _%hd194051%_
                                        '1
                                        gx#expander-context::t
                                        '#f)))
                                  (declare (not safe))
                                  (hash-get __tmp194507 __tmp194506))
                                '#!void
                                (begin
                                  (let ((_%$e194054%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd194051%_))))
                                    (if _%$e194054%_
                                        ((lambda (_%pre194057%_)
                                           (_%lp194028%_
                                            (cons _%pre194057%_
                                                  (##structure-ref
                                                   _%hd194051%_
                                                   '8
                                                   gx#module-context::t
                                                   '#f))))
                                         _%$e194054%_)
                                        (_%lp194028%_
                                         (##structure-ref
                                          _%hd194051%_
                                          '8
                                          gx#module-context::t
                                          '#f))))
                                  (gxc#optimizer-load-ssxi _%hd194051%_)))
                            (_%lp194028%_ _%rest194050%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd194051%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp194509
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp194508
                                           (##structure-ref
                                            _%hd194051%_
                                            '1
                                            gx#expander-context::t
                                            '#f)))
                                      (declare (not safe))
                                      (hash-get __tmp194509 __tmp194508))
                                    '#!void
                                    (begin
                                      (_%lp194028%_
                                       (##structure-ref
                                        _%hd194051%_
                                        '7
                                        gx#prelude-context::t
                                        '#f))
                                      (gxc#optimizer-load-ssxi _%hd194051%_)))
                                (_%lp194028%_ _%rest194050%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd194051%_
                                     'gx#module-import::t))
                                  (_%lp194028%_
                                   (cons (##direct-structure-ref
                                          _%hd194051%_
                                          '1
                                          gx#module-import::t
                                          '#f)
                                         _%rest194050%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd194051%_
                                         'gx#module-export::t))
                                      (_%lp194028%_
                                       (cons (##direct-structure-ref
                                              _%hd194051%_
                                              '1
                                              gx#module-export::t
                                              '#f)
                                             _%rest194050%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd194051%_
                                             'gx#import-set::t))
                                          (_%lp194028%_
                                           (cons (##direct-structure-ref
                                                  _%hd194051%_
                                                  '1
                                                  gx#import-set::t
                                                  '#f)
                                                 _%rest194050%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd194051%_))))))))))
              (if (let () (declare (not safe)) (##pair? _%rest194031194039%_))
                  (let ((_%hd194036194068%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194031194039%_)))
                        (_%tl194037194070%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194031194039%_))))
                    (let* ((_%hd194073%_ _%hd194036194068%_)
                           (_%rest194075%_ _%tl194037194070%_))
                      (_%K194035194065%_ _%rest194075%_ _%hd194073%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx194004%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx194004%_
                    'gx#module-context::t))
                 (list? (##structure-ref
                         _%ctx194004%_
                         '7
                         gx#module-context::t
                         '#f)))
            '#!void
            (let* ((_%ht194006%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id194008%_
                    (##structure-ref
                     _%ctx194004%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod194010%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht194006%_ _%id194008%_)))
                   (_%$e194013%_ _%mod194010%_))
              (if _%$e194013%_
                  _%$e194013%_
                  (let* ((_%mod194016%_
                          (gxc#optimizer-import-ssxi _%ctx194004%_))
                         (_%val194021%_
                          (let ((_%$e194018%_ _%mod194016%_))
                            (if _%$e194018%_ _%$e194018%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht194006%_ _%id194008%_ _%val194021%_))
                    _%val194021%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx194002%_)
        (if (##structure-ref _%ctx194002%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx194002%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id193979%_)
        (letrec ((_%catch-e193981%_
                  (lambda (_%exn194000%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn194000%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (display-exception _%exn194000%_)
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id193979%_))))
                    '#f))
                 (_%import-e193982%_
                  (lambda ()
                    (let* ((_%str-id193985%_
                            (let ((__tmp194510
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id193979%_))))
                              (declare (not safe))
                              (##string-append __tmp194510 '".ssxi")))
                           (_%artefact-path193993%_
                            (let ((_%odir193986193988%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%odir193986193988%_
                                  (let ((_%odir193991%_ _%odir193986193988%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id193985%_
                                        '".ss"))
                                     _%odir193991%_))
                                  '#f)))
                           (_%library-path193995%_
                            (let ((__tmp194511
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id193985%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp194511)))
                           (_%ssxi-path193997%_
                            (if (and _%artefact-path193993%_
                                     (file-exists? _%artefact-path193993%_))
                                _%artefact-path193993%_
                                _%library-path193995%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path193997%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path193997%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e193981%_ _%import-e193982%_)))))
    (define gxc#optimize-source
      (lambda (_%stx193970%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx193970%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx193970%_))
        (let* ((_%stx193972%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx193970%_)))
               (_%stx193974%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx193972%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx193974%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx193974%_))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx193974%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx193974%_))
          (let ((_%stx193977%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx193974%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx193977%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp194513 (list gxc#::generate-runtime-empty::t))
            (__tmp194512 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp194513
         '()
         __tmp194512
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args193967%_
        (apply make-instance gxc#::generate-ssxi::t _%$args193967%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp194514
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
        (__make-promise __tmp194514)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx193959%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self193962%_
                (let ((__obj194494
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj194494))
               (__tmp194515
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self193962%_ _%stx193959%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp194515
           gxc#current-compile-method
           _%self193962%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self193919%_ _%stx193920%_)
        (let* ((_%g193922193932%_
                (lambda (_%g193923193929%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193923193929%_))))
               (_%g193921193956%_
                (lambda (_%g193923193935%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193923193935%_))
                      (let ((_%e193925193937%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193923193935%_))))
                        (let ((_%hd193926193940%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193925193937%_)))
                              (_%tl193927193942%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193925193937%_))))
                          ((lambda (_%L193945%_)
                             (let ((__tmp194518
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#generate-runtime-begin%
                                         _%self193919%_
                                         _%stx193920%_))))
                                   (__tmp194516
                                    (let ((__tmp194517
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-phi))))
                                      (declare (not safe))
                                      (##fx+ __tmp194517 '1))))
                               (declare (not safe))
                               (__call-with-parameters
                                __tmp194518
                                gx#current-expander-phi
                                __tmp194516)))
                           _%tl193927193942%_)))
                      (_%g193922193932%_ _%g193923193935%_)))))
          (_%g193921193956%_ _%stx193920%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self193858%_ _%stx193859%_)
        (let* ((_%g193861193875%_
                (lambda (_%g193862193872%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g193862193872%_))))
               (_%g193860193916%_
                (lambda (_%g193862193878%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g193862193878%_))
                      (let ((_%e193865193880%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g193862193878%_))))
                        (let ((_%hd193866193883%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193865193880%_)))
                              (_%tl193867193885%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193865193880%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl193867193885%_))
                              (let ((_%e193868193888%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl193867193885%_))))
                                (let ((_%hd193869193891%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193868193888%_)))
                                      (_%tl193870193893%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193868193888%_))))
                                  ((lambda (_%L193896%_ _%L193897%_)
                                     (let* ((_%ctx193910%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-local-e__0
                                                _%L193897%_)))
                                            (_%code193912%_
                                             (##structure-ref
                                              _%ctx193910%_
                                              '11
                                              gx#module-context::t
                                              '#f))
                                            (__tmp194519
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self193858%_
                                                  _%code193912%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp194519
                                        gx#current-expander-context
                                        _%ctx193910%_)))
                                   _%tl193870193893%_
                                   _%hd193869193891%_)))
                              (_%g193861193875%_ _%g193862193878%_))))
                      (_%g193861193875%_ _%g193862193878%_)))))
          (_%g193860193916%_ _%stx193859%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self193663%_ _%stx193664%_)
        (letrec ((_%generate-e193666%_
                  (lambda (_%id193843%_)
                    (let* ((_%sym193845%_
                            (if (let ((__tmp194520
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp194520))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id193843%_))
                                '#f))
                           (_%$e193847%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym193845%_))))
                      (if _%$e193847%_
                          ((lambda (_%klass193850%_)
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"generate class decl"
                                _%sym193845%_))
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym193845%_
                                                     (cons (let ((__method194495
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__method-ref _%klass193850%_ 'typedecl))))
                     (if __method194495
                         (let ()
                           (declare (not safe))
                           (__method194495 _%klass193850%_))
                         (begin
                           (let ()
                             (declare (not safe))
                             (error '"Missing method"
                                    _%klass193850%_
                                    'typedecl))
                           '#!void)))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons 'declare-type
                                                     (cons _%sym193845%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym193845%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e193847%_)
                          (let ((_%$e193852%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym193845%_))))
                            (if _%$e193852%_
                                ((lambda (_%type193855%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#verbose
                                      '"generate typedecl "
                                      _%sym193845%_
                                      '" "
                                      _%type193855%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type193855%_
                                          'gxc#!class::t))
                                       (cons 'declare-type
                                             (cons _%sym193845%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym193845%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#optimizer-lookup-class-name
                                                  _%type193855%_))
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym193845%_
                                                   (cons (let ((__method194496
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__method-ref _%type193855%_ 'typedecl))))
                   (if __method194496
                       (let ()
                         (declare (not safe))
                         (__method194496 _%type193855%_))
                       (begin
                         (let ()
                           (declare (not safe))
                           (error '"Missing method" _%type193855%_ 'typedecl))
                         '#!void)))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%$e193852%_)
                                '(begin))))))))
          (let* ((_%__stx194107194108%_ _%stx193664%_)
                 (_%g193669193707%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx194107194108%_)))))
            (let ((_%__kont194109194110%_
                   (lambda (_%L193825%_) (_%generate-e193666%_ _%L193825%_)))
                  (_%__kont194111194112%_
                   (lambda (_%L193760%_)
                     (let ((_%types193786%_
                            (map _%generate-e193666%_
                                 (let ((__tmp194521
                                        (lambda (_%g193778193781%_
                                                 _%g193779193783%_)
                                          (cons _%g193778193781%_
                                                _%g193779193783%_))))
                                   (declare (not safe))
                                   (__foldr1 __tmp194521 '() _%L193760%_)))))
                       (cons 'begin _%types193786%_)))))
              (let ((_%__match194162194163%_
                     (lambda (_%e193685193712%_
                              _%hd193686193715%_
                              _%tl193687193717%_
                              _%e193688193720%_
                              _%hd193689193723%_
                              _%tl193690193725%_
                              _%__splice194113194114%_
                              _%target193691193728%_
                              _%tl193693193730%_)
                       (letrec ((_%loop193694193733%_
                                 (lambda (_%hd193692193736%_
                                          _%id193698193738%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%hd193692193736%_))
                                       (let ((_%e193695193741%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd193692193736%_))))
                                         (let ((_%lp-tl193697193746%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e193695193741%_)))
                                               (_%lp-hd193696193744%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e193695193741%_))))
                                           (_%loop193694193733%_
                                            _%lp-tl193697193746%_
                                            (cons _%lp-hd193696193744%_
                                                  _%id193698193738%_))))
                                       (let ((_%id193699193749%_
                                              (reverse _%id193698193738%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl193690193725%_))
                                             (let ((_%e193700193752%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%tl193690193725%_))))
                                               (let ((_%tl193702193757%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e193700193752%_)))
                                                     (_%hd193701193755%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e193700193752%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%tl193702193757%_))
                                                     (_%__kont194111194112%_
                                                      _%id193699193749%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g193669193707%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%g193669193707%_))))))))
                         (_%loop193694193733%_ _%target193691193728%_ '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx194107194108%_))
                    (let ((_%e193672193793%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx194107194108%_))))
                      (let ((_%tl193674193798%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193672193793%_)))
                            (_%hd193673193796%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193672193793%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl193674193798%_))
                            (let ((_%e193675193801%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl193674193798%_))))
                              (let ((_%tl193677193806%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193675193801%_)))
                                    (_%hd193676193804%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193675193801%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd193676193804%_))
                                    (let ((_%e193678193809%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd193676193804%_))))
                                      (let ((_%tl193680193814%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e193678193809%_)))
                                            (_%hd193679193812%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e193678193809%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl193680193814%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193677193806%_))
                                                (let ((_%e193681193817%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193677193806%_))))
                                                  (let ((_%tl193683193822%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193681193817%_)))
                                                        (_%hd193682193820%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193681193817%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193683193822%_))
                                                        (_%__kont194109194110%_
                                                         _%hd193679193812%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%hd193676193804%_))
                                                            (let ((_%__splice194113194114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice _%hd193676193804%_ '0))))
                      (let ((_%tl193693193730%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice194113194114%_ '1)))
                            (_%target193691193728%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice194113194114%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl193693193730%_))
                            (_%__match194162194163%_
                             _%e193672193793%_
                             _%hd193673193796%_
                             _%tl193674193798%_
                             _%e193675193801%_
                             _%hd193676193804%_
                             _%tl193677193806%_
                             _%__splice194113194114%_
                             _%target193691193728%_
                             _%tl193693193730%_)
                            (let ()
                              (declare (not safe))
                              (_%g193669193707%_)))))
                    (let () (declare (not safe)) (_%g193669193707%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%hd193676193804%_))
                                                    (let ((_%__splice194113194114%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice
                                                              _%hd193676193804%_
                                                              '0))))
                                                      (let ((_%tl193693193730%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice194113194114%_ '1)))
                    (_%target193691193728%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice194113194114%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl193693193730%_))
                    (_%__match194162194163%_
                     _%e193672193793%_
                     _%hd193673193796%_
                     _%tl193674193798%_
                     _%e193675193801%_
                     _%hd193676193804%_
                     _%tl193677193806%_
                     _%__splice194113194114%_
                     _%target193691193728%_
                     _%tl193693193730%_)
                    (let () (declare (not safe)) (_%g193669193707%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g193669193707%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%hd193676193804%_))
                                                (let ((_%__splice194113194114%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _%hd193676193804%_
                                                          '0))))
                                                  (let ((_%tl193693193730%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice194113194114%_
                                                            '1)))
                                                        (_%target193691193728%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice194113194114%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193693193730%_))
                                                        (_%__match194162194163%_
                                                         _%e193672193793%_
                                                         _%hd193673193796%_
                                                         _%tl193674193798%_
                                                         _%e193675193801%_
                                                         _%hd193676193804%_
                                                         _%tl193677193806%_
                                                         _%__splice194113194114%_
                                                         _%target193691193728%_
                                                         _%tl193693193730%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g193669193707%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g193669193707%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%hd193676193804%_))
                                        (let ((_%__splice194113194114%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%hd193676193804%_
                                                  '0))))
                                          (let ((_%tl193693193730%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice194113194114%_
                                                    '1)))
                                                (_%target193691193728%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice194113194114%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193693193730%_))
                                                (_%__match194162194163%_
                                                 _%e193672193793%_
                                                 _%hd193673193796%_
                                                 _%tl193674193798%_
                                                 _%e193675193801%_
                                                 _%hd193676193804%_
                                                 _%tl193677193806%_
                                                 _%__splice194113194114%_
                                                 _%target193691193728%_
                                                 _%tl193693193730%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g193669193707%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g193669193707%_))))))
                            (let ()
                              (declare (not safe))
                              (_%g193669193707%_)))))
                    (let () (declare (not safe)) (_%g193669193707%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self193216%_ _%stx193217%_)
        (let* ((_%__stx194165194166%_ _%stx193217%_)
               (_%g193221193323%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194165194166%_)))))
          (let ((_%__kont194167194168%_
                 (lambda (_%L193613%_
                          _%L193614%_
                          _%L193615%_
                          _%L193616%_
                          _%L193617%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L193616%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L193615%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L193614%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _%L193613%_))
                                                 '())))))))
                (_%__kont194169194170%_
                 (lambda (_%L193439%_ _%L193440%_ _%L193441%_ _%L193442%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L193441%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%L193440%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%L193439%_))
                                           (cons '#f '())))))))
                (_%__kont194171194172%_ (lambda () '(begin))))
            (let ((_%__match194300194301%_
                   (lambda (_%e193228193485%_
                            _%hd193229193488%_
                            _%tl193230193490%_
                            _%e193231193493%_
                            _%hd193232193496%_
                            _%tl193233193498%_
                            _%e193234193501%_
                            _%hd193235193504%_
                            _%tl193236193506%_
                            _%e193237193509%_
                            _%hd193238193512%_
                            _%tl193239193514%_
                            _%e193240193517%_
                            _%hd193241193520%_
                            _%tl193242193522%_
                            _%e193243193525%_
                            _%hd193244193528%_
                            _%tl193245193530%_
                            _%e193246193533%_
                            _%hd193247193536%_
                            _%tl193248193538%_
                            _%e193249193541%_
                            _%hd193250193544%_
                            _%tl193251193546%_
                            _%e193252193549%_
                            _%hd193253193552%_
                            _%tl193254193554%_
                            _%e193255193557%_
                            _%hd193256193560%_
                            _%tl193257193562%_
                            _%e193258193565%_
                            _%hd193259193568%_
                            _%tl193260193570%_
                            _%e193261193573%_
                            _%hd193262193576%_
                            _%tl193263193578%_
                            _%e193264193581%_
                            _%hd193265193584%_
                            _%tl193266193586%_
                            _%e193267193589%_
                            _%hd193268193592%_
                            _%tl193269193594%_
                            _%e193270193597%_
                            _%hd193271193600%_
                            _%tl193272193602%_
                            _%e193273193605%_
                            _%hd193274193608%_
                            _%tl193275193610%_)
                     (let ((_%L193613%_ _%hd193274193608%_)
                           (_%L193614%_ _%hd193265193584%_)
                           (_%L193615%_ _%hd193256193560%_)
                           (_%L193616%_ _%hd193247193536%_)
                           (_%L193617%_ _%hd193238193512%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L193617%_
                              'bind-method!))
                           (_%__kont194167194168%_
                            _%L193613%_
                            _%L193614%_
                            _%L193615%_
                            _%L193616%_
                            _%L193617%_)
                           (_%__kont194171194172%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx194165194166%_))
                  (let ((_%e193228193485%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx194165194166%_))))
                    (let ((_%tl193230193490%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193228193485%_)))
                          (_%hd193229193488%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193228193485%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl193230193490%_))
                          (let ((_%e193231193493%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl193230193490%_))))
                            (let ((_%tl193233193498%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193231193493%_)))
                                  (_%hd193232193496%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193231193493%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd193232193496%_))
                                  (let ((_%e193234193501%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd193232193496%_))))
                                    (let ((_%tl193236193506%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193234193501%_)))
                                          (_%hd193235193504%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193234193501%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd193235193504%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd193235193504%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193236193506%_))
                                                  (let ((_%e193237193509%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193236193506%_))))
                                                    (let ((_%tl193239193514%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193237193509%_)))
                                                          (_%hd193238193512%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193237193509%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl193239193514%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl193233193498%_))
                      (let ((_%e193240193517%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl193233193498%_))))
                        (let ((_%tl193242193522%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193240193517%_)))
                              (_%hd193241193520%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193240193517%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd193241193520%_))
                              (let ((_%e193243193525%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd193241193520%_))))
                                (let ((_%tl193245193530%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e193243193525%_)))
                                      (_%hd193244193528%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e193243193525%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd193244193528%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd193244193528%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl193245193530%_))
                                              (let ((_%e193246193533%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl193245193530%_))))
                                                (let ((_%tl193248193538%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e193246193533%_)))
                                                      (_%hd193247193536%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e193246193533%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193248193538%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl193242193522%_))
                                                          (let ((_%e193249193541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl193242193522%_))))
                    (let ((_%tl193251193546%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193249193541%_)))
                          (_%hd193250193544%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193249193541%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd193250193544%_))
                          (let ((_%e193252193549%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd193250193544%_))))
                            (let ((_%tl193254193554%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e193252193549%_)))
                                  (_%hd193253193552%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e193252193549%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd193253193552%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd193253193552%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl193254193554%_))
                                          (let ((_%e193255193557%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl193254193554%_))))
                                            (let ((_%tl193257193562%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e193255193557%_)))
                                                  (_%hd193256193560%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e193255193557%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl193257193562%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl193251193546%_))
                                                      (let ((_%e193258193565%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl193251193546%_))))
                (let ((_%tl193260193570%_
                       (let () (declare (not safe)) (##cdr _%e193258193565%_)))
                      (_%hd193259193568%_
                       (let ()
                         (declare (not safe))
                         (##car _%e193258193565%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd193259193568%_))
                      (let ((_%e193261193573%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd193259193568%_))))
                        (let ((_%tl193263193578%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e193261193573%_)))
                              (_%hd193262193576%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e193261193573%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd193262193576%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd193262193576%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl193263193578%_))
                                      (let ((_%e193264193581%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl193263193578%_))))
                                        (let ((_%tl193266193586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e193264193581%_)))
                                              (_%hd193265193584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e193264193581%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193266193586%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl193260193570%_))
                                                  (let ((_%e193267193589%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl193260193570%_))))
                                                    (let ((_%tl193269193594%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e193267193589%_)))
                                                          (_%hd193268193592%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e193267193589%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd193268193592%_))
                                                          (let ((_%e193270193597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd193268193592%_))))
                    (let ((_%tl193272193602%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e193270193597%_)))
                          (_%hd193271193600%_
                           (let ()
                             (declare (not safe))
                             (##car _%e193270193597%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd193271193600%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd193271193600%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl193272193602%_))
                                  (let ((_%e193273193605%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl193272193602%_))))
                                    (let ((_%tl193275193610%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e193273193605%_)))
                                          (_%hd193274193608%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e193273193605%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl193275193610%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl193269193594%_))
                                              (_%__match194300194301%_
                                               _%e193228193485%_
                                               _%hd193229193488%_
                                               _%tl193230193490%_
                                               _%e193231193493%_
                                               _%hd193232193496%_
                                               _%tl193233193498%_
                                               _%e193234193501%_
                                               _%hd193235193504%_
                                               _%tl193236193506%_
                                               _%e193237193509%_
                                               _%hd193238193512%_
                                               _%tl193239193514%_
                                               _%e193240193517%_
                                               _%hd193241193520%_
                                               _%tl193242193522%_
                                               _%e193243193525%_
                                               _%hd193244193528%_
                                               _%tl193245193530%_
                                               _%e193246193533%_
                                               _%hd193247193536%_
                                               _%tl193248193538%_
                                               _%e193249193541%_
                                               _%hd193250193544%_
                                               _%tl193251193546%_
                                               _%e193252193549%_
                                               _%hd193253193552%_
                                               _%tl193254193554%_
                                               _%e193255193557%_
                                               _%hd193256193560%_
                                               _%tl193257193562%_
                                               _%e193258193565%_
                                               _%hd193259193568%_
                                               _%tl193260193570%_
                                               _%e193261193573%_
                                               _%hd193262193576%_
                                               _%tl193263193578%_
                                               _%e193264193581%_
                                               _%hd193265193584%_
                                               _%tl193266193586%_
                                               _%e193267193589%_
                                               _%hd193268193592%_
                                               _%tl193269193594%_
                                               _%e193270193597%_
                                               _%hd193271193600%_
                                               _%tl193272193602%_
                                               _%e193273193605%_
                                               _%hd193274193608%_
                                               _%tl193275193610%_)
                                              (_%__kont194171194172%_))
                                          (_%__kont194171194172%_))))
                                  (_%__kont194171194172%_))
                              (_%__kont194171194172%_))
                          (_%__kont194171194172%_))))
                  (_%__kont194171194172%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl193260193570%_))
                                                      (if (let ((__tmp194522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp194522 'bind-method!))
                  (let ((_%L193439%_ _%hd193265193584%_)
                        (_%L193440%_ _%hd193256193560%_)
                        (_%L193441%_ _%hd193247193536%_)
                        (_%L193442%_ _%hd193238193512%_))
                    (_%__kont194169194170%_
                     _%L193439%_
                     _%L193440%_
                     _%L193441%_
                     _%L193442%_))
                  (_%__kont194171194172%_))
              (_%__kont194171194172%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont194171194172%_))))
                                      (_%__kont194171194172%_))
                                  (_%__kont194171194172%_))
                              (_%__kont194171194172%_))))
                      (_%__kont194171194172%_))))
              (_%__kont194171194172%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont194171194172%_))))
                                          (_%__kont194171194172%_))
                                      (_%__kont194171194172%_))
                                  (_%__kont194171194172%_))))
                          (_%__kont194171194172%_))))
                  (_%__kont194171194172%_))
              (_%__kont194171194172%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont194171194172%_))
                                          (_%__kont194171194172%_))
                                      (_%__kont194171194172%_))))
                              (_%__kont194171194172%_))))
                      (_%__kont194171194172%_))
                  (_%__kont194171194172%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont194171194172%_))
                                              (_%__kont194171194172%_))
                                          (_%__kont194171194172%_))))
                                  (_%__kont194171194172%_))))
                          (_%__kont194171194172%_))))
                  (_%__kont194171194172%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self193040%_ _%stx193041%_)
        (let* ((_%__stx194409194410%_ _%stx193041%_)
               (_%g193044193084%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx194409194410%_)))))
          (let ((_%__kont194411194412%_
                 (lambda (_%L193190%_ _%L193191%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%L193191%_))
                               (cons _%L193190%_ '())))))
                (_%__kont194413194414%_
                 (lambda (_%L193113%_ _%L193114%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx194409194410%_))
                (let ((_%e193048193134%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx194409194410%_))))
                  (let ((_%tl193050193139%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e193048193134%_)))
                        (_%hd193049193137%_
                         (let ()
                           (declare (not safe))
                           (##car _%e193048193134%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl193050193139%_))
                        (let ((_%e193051193142%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl193050193139%_))))
                          (let ((_%tl193053193147%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e193051193142%_)))
                                (_%hd193052193145%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e193051193142%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd193052193145%_))
                                (let ((_%e193054193150%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd193052193145%_))))
                                  (let ((_%tl193056193155%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e193054193150%_)))
                                        (_%hd193055193153%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e193054193150%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd193055193153%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%hd193055193153%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193056193155%_))
                                                (let ((_%e193057193158%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193056193155%_))))
                                                  (let ((_%tl193059193163%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193057193158%_)))
                                                        (_%hd193058193161%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193057193158%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193059193163%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl193053193147%_))
                                                            (let ((_%e193060193166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl193053193147%_))))
                      (let ((_%tl193062193171%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193060193166%_)))
                            (_%hd193061193169%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193060193166%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd193061193169%_))
                            (let ((_%e193063193174%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd193061193169%_))))
                              (let ((_%tl193065193179%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e193063193174%_)))
                                    (_%hd193064193177%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e193063193174%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd193064193177%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd193064193177%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl193065193179%_))
                                            (let ((_%e193066193182%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl193065193179%_))))
                                              (let ((_%tl193068193187%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e193066193182%_)))
                                                    (_%hd193067193185%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e193066193182%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl193068193187%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193062193171%_))
                                                        (_%__kont194411194412%_
                                                         _%hd193067193185%_
                                                         _%hd193058193161%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g193044193084%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193062193171%_))
                                                        (_%__kont194413194414%_
                                                         _%hd193061193169%_
                                                         _%hd193052193145%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g193044193084%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl193062193171%_))
                                                (_%__kont194413194414%_
                                                 _%hd193061193169%_
                                                 _%hd193052193145%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g193044193084%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl193062193171%_))
                                            (_%__kont194413194414%_
                                             _%hd193061193169%_
                                             _%hd193052193145%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g193044193084%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl193062193171%_))
                                        (_%__kont194413194414%_
                                         _%hd193061193169%_
                                         _%hd193052193145%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g193044193084%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl193062193171%_))
                                (_%__kont194413194414%_
                                 _%hd193061193169%_
                                 _%hd193052193145%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g193044193084%_))))))
                    (let () (declare (not safe)) (_%g193044193084%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl193053193147%_))
                    (let ((_%e193077193105%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl193053193147%_))))
                      (let ((_%tl193079193110%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e193077193105%_)))
                            (_%hd193078193108%_
                             (let ()
                               (declare (not safe))
                               (##car _%e193077193105%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl193079193110%_))
                            (_%__kont194413194414%_
                             _%hd193078193108%_
                             _%hd193052193145%_)
                            (let ()
                              (declare (not safe))
                              (_%g193044193084%_)))))
                    (let () (declare (not safe)) (_%g193044193084%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl193053193147%_))
                                                    (let ((_%e193077193105%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl193053193147%_))))
                                                      (let ((_%tl193079193110%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e193077193105%_)))
                    (_%hd193078193108%_
                     (let () (declare (not safe)) (##car _%e193077193105%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl193079193110%_))
                    (_%__kont194413194414%_
                     _%hd193078193108%_
                     _%hd193052193145%_)
                    (let () (declare (not safe)) (_%g193044193084%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g193044193084%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl193053193147%_))
                                                (let ((_%e193077193105%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl193053193147%_))))
                                                  (let ((_%tl193079193110%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e193077193105%_)))
                                                        (_%hd193078193108%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e193077193105%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl193079193110%_))
                                                        (_%__kont194413194414%_
                                                         _%hd193078193108%_
                                                         _%hd193052193145%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g193044193084%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g193044193084%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl193053193147%_))
                                            (let ((_%e193077193105%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl193053193147%_))))
                                              (let ((_%tl193079193110%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e193077193105%_)))
                                                    (_%hd193078193108%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e193077193105%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl193079193110%_))
                                                    (_%__kont194413194414%_
                                                     _%hd193078193108%_
                                                     _%hd193052193145%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g193044193084%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g193044193084%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl193053193147%_))
                                    (let ((_%e193077193105%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl193053193147%_))))
                                      (let ((_%tl193079193110%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e193077193105%_)))
                                            (_%hd193078193108%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e193077193105%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl193079193110%_))
                                            (_%__kont194413194414%_
                                             _%hd193078193108%_
                                             _%hd193052193145%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g193044193084%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g193044193084%_))))))
                        (let () (declare (not safe)) (_%g193044193084%_)))))
                (let () (declare (not safe)) (_%g193044193084%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self191234193025%_)
        (let* ((_%self193028%_ _%self191234193025%_)
               (_%self193030%_ _%self193028%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self193030%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self191235192796%_)
        (let* ((_%self192799%_ _%self191235192796%_)
               (_%self192801%_ _%self192799%_)
               (_%self192810192826%_ _%self192801%_)
               (_%E192812192830%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self192810192826%_
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
               (_%K192813192845%_
                (lambda (_%methods192833%_
                         _%metaclass192834%_
                         _%system?192835%_
                         _%final?192836%_
                         _%struct?192837%_
                         _%constructor192838%_
                         _%fields192839%_
                         _%slots192840%_
                         _%precendence-list192841%_
                         _%super192842%_
                         _%id192843%_)
                  (cons '@class
                        (cons _%id192843%_
                              (cons _%super192842%_
                                    (cons _%precendence-list192841%_
                                          (cons _%slots192840%_
                                                (cons _%fields192839%_
                                                      (cons _%constructor192838%_
                                                            (cons _%struct?192837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?192836%_
                                (cons _%system?192835%_
                                      (cons _%metaclass192834%_
                                            (cons (if _%methods192833%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods192833%_))
                                                      '#f)
                                                  '())))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
          (if '#t
              (let* ((_%e192814192848%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self192810192826%_
                         '1
                         '#f
                         '#f)))
                     (_%id192851%_ _%e192814192848%_)
                     (_%e192815192853%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self192810192826%_
                         '2
                         '#f
                         '#f)))
                     (_%super192856%_ _%e192815192853%_)
                     (_%e192816192858%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self192810192826%_
                         '3
                         '#f
                         '#f)))
                     (_%precendence-list192861%_ _%e192816192858%_)
                     (_%e192817192863%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self192810192826%_
                         '4
                         '#f
                         '#f)))
                     (_%slots192866%_ _%e192817192863%_)
                     (_%e192818192868%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self192810192826%_
                         '5
                         '#f
                         '#f)))
                     (_%fields192871%_ _%e192818192868%_)
                     (_%e192819192873%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self192810192826%_
                         '6
                         '#f
                         '#f)))
                     (_%constructor192876%_ _%e192819192873%_)
                     (_%e192820192878%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self192810192826%_
                         '7
                         '#f
                         '#f)))
                     (_%struct?192881%_ _%e192820192878%_)
                     (_%e192821192883%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self192810192826%_
                         '8
                         '#f
                         '#f)))
                     (_%final?192886%_ _%e192821192883%_)
                     (_%e192822192888%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self192810192826%_
                         '9
                         '#f
                         '#f)))
                     (_%system?192891%_ _%e192822192888%_)
                     (_%e192823192893%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self192810192826%_
                         '10
                         '#f
                         '#f)))
                     (_%metaclass192896%_ _%e192823192893%_)
                     (_%e192824192898%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self192810192826%_
                         '11
                         '#f
                         '#f)))
                     (_%methods192901%_ _%e192824192898%_))
                (_%K192813192845%_
                 _%methods192901%_
                 _%metaclass192896%_
                 _%system?192891%_
                 _%final?192886%_
                 _%struct?192881%_
                 _%constructor192876%_
                 _%fields192871%_
                 _%slots192866%_
                 _%precendence-list192861%_
                 _%super192856%_
                 _%id192851%_))
              (_%E192812192830%_)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self191236192659%_)
        (let* ((_%self192662%_ _%self191236192659%_)
               (_%self192664%_ _%self192662%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192664%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self191237192522%_)
        (let* ((_%self192525%_ _%self191237192522%_)
               (_%self192527%_ _%self192525%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192527%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self191238192385%_)
        (let* ((_%self192388%_ _%self191238192385%_)
               (_%self192390%_ _%self192388%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192390%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192390%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self192390%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f))
    (define gxc#!mutator::typedecl
      (lambda (_%self191239192248%_)
        (let* ((_%self192251%_ _%self191239192248%_)
               (_%self192253%_ _%self192251%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192253%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192253%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self192253%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self191240192111%_)
        (let* ((_%self192114%_ _%self191240192111%_)
               (_%self192116%_ _%self192114%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self192116%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self192116%_
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
      (lambda (_%self191241191922%_)
        (let* ((_%self191925%_ _%self191241191922%_)
               (_%self191927%_ _%self191925%_)
               (_%self191936191945%_ _%self191927%_)
               (_%E191938191949%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%self191936191945%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%K191939191968%_
                (lambda (_%dispatch191952%_
                         _%arity191953%_
                         _%signature191954%_)
                  (if _%signature191954%_
                      (let ((_%signature191956%_ _%signature191954%_))
                        (cons '@lambda
                              (cons _%arity191953%_
                                    (cons _%dispatch191952%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature191956%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature191956%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature191956%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature191956%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature191956%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity191953%_
                                  (cons _%dispatch191952%_ '())))))))
          (if '#t
              (let* ((_%e191940191971%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191936191945%_
                         '1
                         '#f
                         '#f)))
                     (_%e191941191974%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191936191945%_
                         '2
                         '#f
                         '#f)))
                     (_%signature191977%_ _%e191941191974%_)
                     (_%e191942191979%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191936191945%_
                         '3
                         '#f
                         '#f)))
                     (_%arity191982%_ _%e191942191979%_)
                     (_%e191943191984%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self191936191945%_
                         '4
                         '#f
                         '#f)))
                     (_%dispatch191987%_ _%e191943191984%_))
                (_%K191939191968%_
                 _%dispatch191987%_
                 _%arity191982%_
                 _%signature191977%_))
              (_%E191938191949%_)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self191242191781%_)
        (let* ((_%self191784%_ _%self191242191781%_)
               (_%self191786%_ _%self191784%_))
          (letrec ((_%clause-e191796%_
                    (lambda (_%clause191798%_)
                      (cdr (let ((__method194497
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause191798%_
                                     'typedecl))))
                             (if __method194497
                                 (let ()
                                   (declare (not safe))
                                   (__method194497 _%clause191798%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause191798%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e191796%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self191786%_
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
      (lambda (_%self191243191644%_)
        (let* ((_%self191647%_ _%self191243191644%_)
               (_%self191649%_ _%self191647%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191649%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191649%_
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
      (lambda (_%self191244191507%_)
        (let* ((_%self191510%_ _%self191244191507%_)
               (_%self191512%_ _%self191510%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191512%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self191512%_
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
      (lambda (_%self191245191370%_)
        (let* ((_%self191373%_ _%self191245191370%_)
               (_%self191375%_ _%self191373%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self191375%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
