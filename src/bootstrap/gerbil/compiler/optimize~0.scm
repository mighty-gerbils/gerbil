(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1781119062)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (gxc#current-compile-optimizer-info)
            '#!void
            (gxc#current-compile-optimizer-info (gxc#make-optimizer-info)))))
    (define gxc#optimize!
      (lambda (_%ctx226798%_)
        (call-with-parameters
         (lambda ()
           (call-with-parameters
            (lambda ()
              (gxc#optimizer-load-builtin-ssxi _%ctx226798%_)
              (gxc#optimizer-load-ssxi-deps _%ctx226798%_)
              (hash-put!
               (gxc#optimizer-info-ssxi (gxc#current-compile-optimizer-info))
               (gx#expander-context-id _%ctx226798%_)
               '#t)
              (let ((_%code226802%_
                     (gxc#optimize-source
                      (gx#module-context-code _%ctx226798%_))))
                (gx#module-context-code-set! _%ctx226798%_ _%code226802%_)))
            gxc#current-compile-local-type
            (make-hash-table-eq)))
         gxc#current-compile-mutators
         (make-hash-table-eq))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx226784%_)
        (letrec ((_%load-it!226786%_
                  (lambda (_%id226796%_)
                    (if (hash-get
                         (gxc#optimizer-info-ssxi
                          (gxc#current-compile-optimizer-info))
                         _%id226796%_)
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id226796%_)
                          (hash-put!
                           (gxc#optimizer-info-ssxi
                            (gxc#current-compile-optimizer-info))
                           _%id226796%_
                           '#t))))))
          (let* ((_%modid226788%_ (gx#expander-context-id _%ctx226784%_))
                 (_%modid-str226790%_ (symbol->string _%modid226788%_)))
            (if (or (string-prefix? '"gerbil/runtime" _%modid-str226790%_)
                    (string-prefix? '"gerbil/core" _%modid-str226790%_))
                (for-each
                 _%load-it!226786%_
                 '(gerbil/builtin gerbil/builtin-inline-rules))
                (for-each
                 _%load-it!226786%_
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
                   gerbil/runtime)))))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_%ctx226721%_)
        (letrec* ((_%deps226723%_
                   (let* ((_%imports226774%_
                           (gx#module-context-import _%ctx226721%_))
                          (_%$e226776%_
                           (gx#core-context-prelude _%ctx226721%_)))
                     (if _%$e226776%_
                         ((lambda (_%$%g226778226780%_)
                            (cons _%$%g226778226780%_ _%imports226774%_))
                          _%$e226776%_)
                         _%imports226774%_))))
          (let _%lp226725%_ ((_%rest226727%_ _%deps226723%_))
            (let* ((_%$%rest226728226736%_ _%rest226727%_)
                   (_%$%E226731226740%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest226728226736%_
                             '([hd . rest])
                             'else)
                      (void)))
                   (_%$%else226730226744%_ (lambda () (void)))
                   (_%$%K226732226762%_
                    (lambda (_%rest226747%_ _%hd226748%_)
                      (if (gx#module-context? _%hd226748%_)
                          (let ()
                            (if (hash-get
                                 (gxc#optimizer-info-ssxi
                                  (gxc#current-compile-optimizer-info))
                                 (gx#expander-context-id _%hd226748%_))
                                '#!void
                                (begin
                                  (let ((_%$e226751%_
                                         (gx#core-context-prelude
                                          _%hd226748%_)))
                                    (if _%$e226751%_
                                        ((lambda (_%pre226754%_)
                                           (_%lp226725%_
                                            (cons _%pre226754%_
                                                  (gx#module-context-import
                                                   _%hd226748%_))))
                                         _%$e226751%_)
                                        (_%lp226725%_
                                         (gx#module-context-import
                                          _%hd226748%_))))
                                  (gxc#optimizer-load-ssxi _%hd226748%_)))
                            (_%lp226725%_ _%rest226747%_))
                          (if (gx#prelude-context? _%hd226748%_)
                              (let ()
                                (if (hash-get
                                     (gxc#optimizer-info-ssxi
                                      (gxc#current-compile-optimizer-info))
                                     (gx#expander-context-id _%hd226748%_))
                                    '#!void
                                    (begin
                                      (_%lp226725%_
                                       (gx#prelude-context-import
                                        _%hd226748%_))
                                      (gxc#optimizer-load-ssxi _%hd226748%_)))
                                (_%lp226725%_ _%rest226747%_))
                              (if (gx#module-import? _%hd226748%_)
                                  (_%lp226725%_
                                   (cons (gx#module-import-source _%hd226748%_)
                                         _%rest226747%_))
                                  (if (gx#module-export? _%hd226748%_)
                                      (_%lp226725%_
                                       (cons (gx#module-export-context
                                              _%hd226748%_)
                                             _%rest226747%_))
                                      (if (gx#import-set? _%hd226748%_)
                                          (_%lp226725%_
                                           (cons (gx#import-set-source
                                                  _%hd226748%_)
                                                 _%rest226747%_))
                                          (error '"Unexpected module import"
                                                 _%hd226748%_)))))))))
              (if (pair? _%$%rest226728226736%_)
                  (let ((_%$%hd226733226765%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest226728226736%_)))
                        (_%$%tl226734226767%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest226728226736%_))))
                    (let* ((_%hd226770%_ _%$%hd226733226765%_)
                           (_%rest226772%_ _%$%tl226734226767%_))
                      (_%$%K226732226762%_ _%rest226772%_ _%hd226770%_)))
                  (_%$%else226730226744%_)))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx226701%_)
        (if (and (gx#module-context? _%ctx226701%_)
                 (list? (gx#module-context-path _%ctx226701%_)))
            '#!void
            (let* ((_%ht226703%_
                    (gxc#optimizer-info-ssxi
                     (gxc#current-compile-optimizer-info)))
                   (_%id226705%_ (gx#expander-context-id _%ctx226701%_))
                   (_%mod226707%_ (hash-get _%ht226703%_ _%id226705%_))
                   (_%$e226710%_ _%mod226707%_))
              (if _%$e226710%_
                  _%$e226710%_
                  (let* ((_%mod226713%_
                          (gxc#optimizer-import-ssxi _%ctx226701%_))
                         (_%val226718%_
                          (let ((_%$e226715%_ _%mod226713%_))
                            (if _%$e226715%_ _%$e226715%_ '#!void))))
                    (hash-put! _%ht226703%_ _%id226705%_ _%val226718%_)
                    _%val226718%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx226699%_)
        (if (gx#expander-context-id _%ctx226699%_)
            (gxc#optimizer-import-ssxi-by-id
             (gx#expander-context-id _%ctx226699%_))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id226677%_)
        (letrec ((_%catch-e226679%_
                  (lambda (_%exn226697%_)
                    (if (equal? (error-message _%exn226697%_)
                                '"cannot find library module")
                        '#!void
                        (begin
                          (display-exception _%exn226697%_)
                          (displayln
                           '"*** WARNING Failed to load ssxi module for "
                           _%id226677%_)))
                    '#f))
                 (_%import-e226680%_
                  (lambda ()
                    (let* ((_%str-id226683%_
                            (string-append
                             (gxc#module-id->path-string _%id226677%_)
                             '".ssxi"))
                           (_%artefact-path226690%_
                            (let ((_%$%odir226684226686%_
                                   (gxc#current-compile-output-dir)))
                              (if _%$%odir226684226686%_
                                  (let ((_%odir226688%_
                                         _%$%odir226684226686%_))
                                    (path-expand
                                     (string-append _%str-id226683%_ '".ss")
                                     _%odir226688%_))
                                  '#f)))
                           (_%library-path226692%_
                            (string->symbol
                             (string-append '":" _%str-id226683%_ '".ss")))
                           (_%ssxi-path226694%_
                            (if (and _%artefact-path226690%_
                                     (file-exists? _%artefact-path226690%_))
                                _%artefact-path226690%_
                                _%library-path226692%_)))
                      (gxc#verbose '"Loading ssxi module " _%ssxi-path226694%_)
                      (gx#import-module _%ssxi-path226694%_ '#t '#t)))))
          (with-catch _%catch-e226679%_ _%import-e226680%_))))
    (define gxc#optimize-source
      (lambda (_%stx226662%_)
        (gxc#apply-collect-mutators _%stx226662%_)
        (gxc#apply-collect-top-level-type-info _%stx226662%_)
        (let* ((_%stx226664%_
                (gxc#apply-generate-method-specializers _%stx226662%_))
               (_%stx226666%_ (gxc#apply-lift-top-lambdas _%stx226664%_)))
          (gxc#apply-collect-type-info _%stx226666%_)
          (gxc#apply-collect-mutable-type-info _%stx226666%_)
          (let _%fixpoint226669%_ ((_%current226671%_
                                    (gxc#optimizer-current-types)))
            (gxc#apply-refine-type-info _%stx226666%_)
            (let ((_%refined226673%_ (gxc#optimizer-current-types)))
              (if (equal? _%current226671%_ _%refined226673%_)
                  '#!void
                  (_%fixpoint226669%_ _%refined226673%_))))
          (gxc#apply-check-return-type _%stx226666%_)
          (gxc#apply-collect-top-level-declarations _%stx226666%_)
          (let ((_%stx226675%_ (gxc#apply-optimize-annotated _%stx226666%_)))
            (gxc#apply-optimize-call _%stx226675%_)))))
    (define gxc#::generate-ssxi::t
      (make-class-type
       'gxc#::generate-ssxi::t
       '::generate-ssxi
       (list gxc#::generate-runtime-empty::t)
       '()
       (cons (cons 'final: '#t) '())
       '#f))
    (define gxc#::generate-ssxi? (make-class-predicate gxc#::generate-ssxi::t))
    (define gxc#make-::generate-ssxi
      (lambda _%$args226659%_
        (apply make-instance gxc#::generate-ssxi::t _%$args226659%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (make-atomic-promise
       (lambda ()
         (force gxc#::generate-runtime-empty-bind-methods!)
         (bind-method!
          gxc#::generate-ssxi::t
          '%#begin
          gxc#generate-runtime-begin%)
         (bind-method!
          gxc#::generate-ssxi::t
          '%#begin-syntax
          gxc#generate-ssxi-begin-syntax%)
         (bind-method!
          gxc#::generate-ssxi::t
          '%#begin-annotation
          gxc#generate-ssxi-begin-annotation%)
         (bind-method!
          gxc#::generate-ssxi::t
          '%#module
          gxc#generate-ssxi-module%)
         (bind-method!
          gxc#::generate-ssxi::t
          '%#define-values
          gxc#generate-ssxi-define-values%)
         (bind-method! gxc#::generate-ssxi::t '%#call gxc#generate-ssxi-call%)
         (seal-class! gxc#::generate-ssxi::t))))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx226651%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let ((_%self226654%_ (gxc#make-::generate-ssxi)))
          (call-with-parameters
           (lambda () (gxc#compile-e _%self226654%_ _%stx226651%_))
           gxc#current-compile-method
           _%self226654%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self226611%_ _%stx226612%_)
        (let* ((_%$%g226614226624%_
                (lambda (_%$%g226615226621%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g226615226621%_)))
               (_%$%g226613226648%_
                (lambda (_%$%g226615226627%_)
                  (if (gx#stx-pair? _%$%g226615226627%_)
                      (let ((_%$%e226617226629%_
                             (gx#stx-e _%$%g226615226627%_)))
                        (let ((_%$%hd226618226632%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226617226629%_)))
                              (_%$%tl226619226634%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226617226629%_))))
                          ((lambda (_%$%g226616226637%_)
                             (call-with-parameters
                              (lambda ()
                                (gxc#generate-runtime-begin%
                                 _%self226611%_
                                 _%stx226612%_))
                              gx#current-expander-phi
                              (fx1+ (gx#current-expander-phi))))
                           _%$%tl226619226634%_)))
                      (_%$%g226614226624%_ _%$%g226615226627%_)))))
          (_%$%g226613226648%_ _%stx226612%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self226550%_ _%stx226551%_)
        (let* ((_%$%g226553226567%_
                (lambda (_%$%g226554226564%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g226554226564%_)))
               (_%$%g226552226608%_
                (lambda (_%$%g226554226570%_)
                  (if (gx#stx-pair? _%$%g226554226570%_)
                      (let ((_%$%e226557226572%_
                             (gx#stx-e _%$%g226554226570%_)))
                        (let ((_%$%hd226558226575%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e226557226572%_)))
                              (_%$%tl226559226577%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e226557226572%_))))
                          (if (gx#stx-pair? _%$%tl226559226577%_)
                              (let ((_%$%e226560226580%_
                                     (gx#stx-e _%$%tl226559226577%_)))
                                (let ((_%$%hd226561226583%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e226560226580%_)))
                                      (_%$%tl226562226585%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e226560226580%_))))
                                  ((lambda (_%$%g226555226588%_
                                            _%$%g226556226589%_)
                                     (let* ((_%ctx226602%_
                                             (gx#syntax-local-e
                                              _%$%g226556226589%_))
                                            (_%code226604%_
                                             (gx#module-context-code
                                              _%ctx226602%_)))
                                       (call-with-parameters
                                        (lambda ()
                                          (gxc#compile-e
                                           _%self226550%_
                                           _%code226604%_))
                                        gx#current-expander-context
                                        _%ctx226602%_)))
                                   _%$%tl226562226585%_
                                   _%$%hd226561226583%_)))
                              (_%$%g226553226567%_ _%$%g226554226570%_))))
                      (_%$%g226553226567%_ _%$%g226554226570%_)))))
          (_%$%g226552226608%_ _%stx226551%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self226357%_ _%stx226358%_)
        (letrec ((_%generate-e226360%_
                  (lambda (_%id226535%_)
                    (let* ((_%sym226537%_
                            (if (gx#identifier? (gx#datum->syntax '#f 'id))
                                (gxc#identifier-symbol _%id226535%_)
                                '#f))
                           (_%$e226539%_
                            (gxc#optimizer-lookup-class _%sym226537%_)))
                      (if _%$e226539%_
                          ((lambda (_%klass226542%_)
                             (gxc#verbose '"generate class decl" _%sym226537%_)
                             (cons 'begin
                                   (cons (cons 'declare-class
                                               (cons _%sym226537%_
                                                     (cons (call-method
                                                            _%klass226542%_
                                                            'typedecl)
                                                           '())))
                                         (cons (cons 'declare-type
                                                     (cons _%sym226537%_
                                                           (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons 'quote
                                           (cons (cons 'typedecl
                                                       (cons _%sym226537%_
                                                             '()))
                                                 '()))
                                     (cons (cons 'quote (cons 'class::t '()))
                                           '())))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%$e226539%_)
                          (let ((_%$e226544%_
                                 (gxc#optimizer-lookup-type _%sym226537%_)))
                            (if _%$e226544%_
                                ((lambda (_%type226547%_)
                                   (gxc#verbose
                                    '"generate typedecl "
                                    _%sym226537%_
                                    '" "
                                    _%type226547%_)
                                   (if (gxc#!class? _%type226547%_)
                                       (cons 'declare-type
                                             (cons _%sym226537%_
                                                   (cons (cons 'optimizer-resolve-class
                                                               (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons 'typedecl
                                               (cons _%sym226537%_ '()))
                                         '()))
                             (cons (cons 'quote
                                         (cons (gxc#optimizer-lookup-class-name
                                                _%type226547%_)
                                               '()))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons 'declare-type
                                             (cons _%sym226537%_
                                                   (cons (call-method
                                                          _%type226547%_
                                                          'typedecl)
                                                         '())))))
                                 _%$e226544%_)
                                '(begin))))))))
          (let* ((_%$%g226363226401%_
                  (lambda (_%$%g226364226398%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g226364226398%_)))
                 (_%$%g226362226480%_
                  (lambda (_%$%g226364226404%_)
                    (if (gx#stx-pair? _%$%g226364226404%_)
                        (let ((_%$%e226379226406%_
                               (gx#stx-e _%$%g226364226404%_)))
                          (let ((_%$%hd226380226409%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e226379226406%_)))
                                (_%$%tl226381226411%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e226379226406%_))))
                            (if (gx#stx-pair? _%$%tl226381226411%_)
                                (let ((_%$%e226382226414%_
                                       (gx#stx-e _%$%tl226381226411%_)))
                                  (let ((_%$%hd226383226417%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e226382226414%_)))
                                        (_%$%tl226384226419%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e226382226414%_))))
                                    (if (gx#stx-pair/null?
                                         _%$%hd226383226417%_)
                                        (let ((_g226804_
                                               (gx#syntax-split-splice
                                                _%$%hd226383226417%_
                                                '0)))
                                          (begin
                                            (let ((_g226805_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g226804_)
                                                         (##values-length
                                                          _g226804_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g226805_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g226805_)))
                                            (let ((_%$%target226385226422%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g226804_
                                                      0)))
                                                  (_%$%tl226387226424%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g226804_
                                                      1))))
                                              (if (gx#stx-null?
                                                   _%$%tl226387226424%_)
                                                  (letrec ((_%$%loop226388226427%_
                                                            (lambda (_%$%hd226386226430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%id226392226432%_)
                      (if (gx#stx-pair? _%$%hd226386226430%_)
                          (let ((_%$%e226389226434%_
                                 (gx#stx-e _%$%hd226386226430%_)))
                            (let ((_%$%lp-hd226390226437%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e226389226434%_)))
                                  (_%$%lp-tl226391226439%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e226389226434%_))))
                              (_%$%loop226388226427%_
                               _%$%lp-tl226391226439%_
                               (cons _%$%lp-hd226390226437%_
                                     _%$%id226392226432%_))))
                          (let ((_%$%id226393226442%_
                                 (reverse _%$%id226392226432%_)))
                            (if (gx#stx-pair? _%$%tl226384226419%_)
                                (let ((_%$%e226394226444%_
                                       (gx#stx-e _%$%tl226384226419%_)))
                                  (let ((_%$%hd226395226447%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e226394226444%_)))
                                        (_%$%tl226396226449%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e226394226444%_))))
                                    (if (gx#stx-null? _%$%tl226396226449%_)
                                        ((lambda (_%$%g226378226452%_)
                                           (let ((_%types226478%_
                                                  (map _%generate-e226360%_
                                                       (foldr (lambda (_%$%g226470226473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g226471226475%_)
                        (cons _%$%g226470226473%_ _%$%g226471226475%_))
                      '()
                      _%$%g226378226452%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons 'begin _%types226478%_)))
                                         _%$%id226393226442%_)
                                        (_%$%g226363226401%_
                                         _%$%g226364226404%_))))
                                (_%$%g226363226401%_ _%$%g226364226404%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%loop226388226427%_
                                                     _%$%target226385226422%_
                                                     '()))
                                                  (_%$%g226363226401%_
                                                   _%$%g226364226404%_)))))
                                        (_%$%g226363226401%_
                                         _%$%g226364226404%_))))
                                (_%$%g226363226401%_ _%$%g226364226404%_))))
                        (_%$%g226363226401%_ _%$%g226364226404%_))))
                 (_%$%g226361226532%_
                  (lambda (_%$%g226364226483%_)
                    (if (gx#stx-pair? _%$%g226364226483%_)
                        (let ((_%$%e226366226485%_
                               (gx#stx-e _%$%g226364226483%_)))
                          (let ((_%$%hd226367226488%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e226366226485%_)))
                                (_%$%tl226368226490%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e226366226485%_))))
                            (if (gx#stx-pair? _%$%tl226368226490%_)
                                (let ((_%$%e226369226493%_
                                       (gx#stx-e _%$%tl226368226490%_)))
                                  (let ((_%$%hd226370226496%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e226369226493%_)))
                                        (_%$%tl226371226498%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e226369226493%_))))
                                    (if (gx#stx-pair? _%$%hd226370226496%_)
                                        (let ((_%$%e226372226501%_
                                               (gx#stx-e
                                                _%$%hd226370226496%_)))
                                          (let ((_%$%hd226373226504%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e226372226501%_)))
                                                (_%$%tl226374226506%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e226372226501%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl226374226506%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl226371226498%_)
                                                    (let ((_%$%e226375226509%_
                                                           (gx#stx-e
                                                            _%$%tl226371226498%_)))
                                                      (let ((_%$%hd226376226512%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e226375226509%_)))
                    (_%$%tl226377226514%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e226375226509%_))))
                (if (gx#stx-null? _%$%tl226377226514%_)
                    ((lambda (_%$%g226365226517%_)
                       (_%generate-e226360%_ _%$%g226365226517%_))
                     _%$%hd226373226504%_)
                    (_%$%g226362226480%_ _%$%g226364226483%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g226362226480%_
                                                     _%$%g226364226483%_))
                                                (_%$%g226362226480%_
                                                 _%$%g226364226483%_))))
                                        (_%$%g226362226480%_
                                         _%$%g226364226483%_))))
                                (_%$%g226362226480%_ _%$%g226364226483%_))))
                        (_%$%g226362226480%_ _%$%g226364226483%_)))))
            (_%$%g226361226532%_ _%stx226358%_)))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self225910%_ _%stx225911%_)
        (let* ((_%$%g225915226017%_
                (lambda (_%$%g225916226014%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g225916226014%_)))
               (_%$%g225914226024%_
                (lambda (_%$%g225916226020%_) ((lambda () '(begin)))))
               (_%$%g225913226174%_
                (lambda (_%$%g225916226027%_)
                  (if (gx#stx-pair? _%$%g225916226027%_)
                      (let ((_%$%e225974226029%_
                             (gx#stx-e _%$%g225916226027%_)))
                        (let ((_%$%hd225975226032%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e225974226029%_)))
                              (_%$%tl225976226034%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e225974226029%_))))
                          (if (gx#stx-pair? _%$%tl225976226034%_)
                              (let ((_%$%e225977226037%_
                                     (gx#stx-e _%$%tl225976226034%_)))
                                (let ((_%$%hd225978226040%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e225977226037%_)))
                                      (_%$%tl225979226042%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e225977226037%_))))
                                  (if (gx#stx-pair? _%$%hd225978226040%_)
                                      (let ((_%$%e225980226045%_
                                             (gx#stx-e _%$%hd225978226040%_)))
                                        (let ((_%$%hd225981226048%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e225980226045%_)))
                                              (_%$%tl225982226050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e225980226045%_))))
                                          (if (gx#identifier?
                                               _%$%hd225981226048%_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd225981226048%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl225982226050%_)
                                                      (let ((_%$%e225983226053%_
                                                             (gx#stx-e
                                                              _%$%tl225982226050%_)))
                                                        (let ((_%$%hd225984226056%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e225983226053%_)))
                      (_%$%tl225985226058%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e225983226053%_))))
                  (if (gx#stx-null? _%$%tl225985226058%_)
                      (if (gx#stx-pair? _%$%tl225979226042%_)
                          (let ((_%$%e225986226061%_
                                 (gx#stx-e _%$%tl225979226042%_)))
                            (let ((_%$%hd225987226064%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e225986226061%_)))
                                  (_%$%tl225988226066%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e225986226061%_))))
                              (if (gx#stx-pair? _%$%hd225987226064%_)
                                  (let ((_%$%e225989226069%_
                                         (gx#stx-e _%$%hd225987226064%_)))
                                    (let ((_%$%hd225990226072%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e225989226069%_)))
                                          (_%$%tl225991226074%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e225989226069%_))))
                                      (if (gx#identifier? _%$%hd225990226072%_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _%$%hd225990226072%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl225991226074%_)
                                                  (let ((_%$%e225992226077%_
                                                         (gx#stx-e
                                                          _%$%tl225991226074%_)))
                                                    (let ((_%$%hd225993226080%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e225992226077%_)))
                                                          (_%$%tl225994226082%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e225992226077%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl225994226082%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl225988226066%_)
                                                              (let ((_%$%e225995226085%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl225988226066%_)))
                        (let ((_%$%hd225996226088%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e225995226085%_)))
                              (_%$%tl225997226090%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e225995226085%_))))
                          (if (gx#stx-pair? _%$%hd225996226088%_)
                              (let ((_%$%e225998226093%_
                                     (gx#stx-e _%$%hd225996226088%_)))
                                (let ((_%$%hd225999226096%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e225998226093%_)))
                                      (_%$%tl226000226098%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e225998226093%_))))
                                  (if (gx#identifier? _%$%hd225999226096%_)
                                      (if (gx#stx-eq?
                                           '%#quote
                                           _%$%hd225999226096%_)
                                          (if (gx#stx-pair?
                                               _%$%tl226000226098%_)
                                              (let ((_%$%e226001226101%_
                                                     (gx#stx-e
                                                      _%$%tl226000226098%_)))
                                                (let ((_%$%hd226002226104%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e226001226101%_)))
                                                      (_%$%tl226003226106%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e226001226101%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl226003226106%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl225997226090%_)
                                                          (let ((_%$%e226004226109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl225997226090%_)))
                    (let ((_%$%hd226005226112%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e226004226109%_)))
                          (_%$%tl226006226114%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e226004226109%_))))
                      (if (gx#stx-pair? _%$%hd226005226112%_)
                          (let ((_%$%e226007226117%_
                                 (gx#stx-e _%$%hd226005226112%_)))
                            (let ((_%$%hd226008226120%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e226007226117%_)))
                                  (_%$%tl226009226122%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e226007226117%_))))
                              (if (gx#identifier? _%$%hd226008226120%_)
                                  (if (gx#stx-eq? '%#ref _%$%hd226008226120%_)
                                      (if (gx#stx-pair? _%$%tl226009226122%_)
                                          (let ((_%$%e226010226125%_
                                                 (gx#stx-e
                                                  _%$%tl226009226122%_)))
                                            (let ((_%$%hd226011226128%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e226010226125%_)))
                                                  (_%$%tl226012226130%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e226010226125%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl226012226130%_)
                                                  (if (gx#stx-null?
                                                       _%$%tl226006226114%_)
                                                      ((lambda (_%$%g225970226133%_
                                                                _%$%g225971226134%_
                                                                _%$%g225972226135%_
                                                                _%$%g225973226136%_)
                                                         (if (gxc#runtime-identifier=?
                                                              (gx#datum->syntax
                                                               '#f
                                                               '-bind-method)
                                                              'bind-method!)
                                                             (cons 'declare-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gxc#identifier-symbol _%$%g225972226135%_)
                                 (cons (gx#stx-e _%$%g225971226134%_)
                                       (cons (gxc#identifier-symbol
                                              _%$%g225970226133%_)
                                             (cons '#f '())))))
                     (_%$%g225914226024%_ _%$%g225916226027%_)))
               _%$%hd226011226128%_
               _%$%hd226002226104%_
               _%$%hd225993226080%_
               _%$%hd225984226056%_)
              (_%$%g225914226024%_ _%$%g225916226027%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g225914226024%_
                                                   _%$%g225916226027%_))))
                                          (_%$%g225914226024%_
                                           _%$%g225916226027%_))
                                      (_%$%g225914226024%_
                                       _%$%g225916226027%_))
                                  (_%$%g225914226024%_ _%$%g225916226027%_))))
                          (_%$%g225914226024%_ _%$%g225916226027%_))))
                  (_%$%g225914226024%_ _%$%g225916226027%_))
              (_%$%g225914226024%_ _%$%g225916226027%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g225914226024%_
                                               _%$%g225916226027%_))
                                          (_%$%g225914226024%_
                                           _%$%g225916226027%_))
                                      (_%$%g225914226024%_
                                       _%$%g225916226027%_))))
                              (_%$%g225914226024%_ _%$%g225916226027%_))))
                      (_%$%g225914226024%_ _%$%g225916226027%_))
                  (_%$%g225914226024%_ _%$%g225916226027%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g225914226024%_
                                                   _%$%g225916226027%_))
                                              (_%$%g225914226024%_
                                               _%$%g225916226027%_))
                                          (_%$%g225914226024%_
                                           _%$%g225916226027%_))))
                                  (_%$%g225914226024%_ _%$%g225916226027%_))))
                          (_%$%g225914226024%_ _%$%g225916226027%_))
                      (_%$%g225914226024%_ _%$%g225916226027%_))))
              (_%$%g225914226024%_ _%$%g225916226027%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g225914226024%_
                                                   _%$%g225916226027%_))
                                              (_%$%g225914226024%_
                                               _%$%g225916226027%_))))
                                      (_%$%g225914226024%_
                                       _%$%g225916226027%_))))
                              (_%$%g225914226024%_ _%$%g225916226027%_))))
                      (_%$%g225914226024%_ _%$%g225916226027%_))))
               (_%$%g225912226354%_
                (lambda (_%$%g225916226177%_)
                  (if (gx#stx-pair? _%$%g225916226177%_)
                      (let ((_%$%e225922226179%_
                             (gx#stx-e _%$%g225916226177%_)))
                        (let ((_%$%hd225923226182%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e225922226179%_)))
                              (_%$%tl225924226184%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e225922226179%_))))
                          (if (gx#stx-pair? _%$%tl225924226184%_)
                              (let ((_%$%e225925226187%_
                                     (gx#stx-e _%$%tl225924226184%_)))
                                (let ((_%$%hd225926226190%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e225925226187%_)))
                                      (_%$%tl225927226192%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e225925226187%_))))
                                  (if (gx#stx-pair? _%$%hd225926226190%_)
                                      (let ((_%$%e225928226195%_
                                             (gx#stx-e _%$%hd225926226190%_)))
                                        (let ((_%$%hd225929226198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e225928226195%_)))
                                              (_%$%tl225930226200%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e225928226195%_))))
                                          (if (gx#identifier?
                                               _%$%hd225929226198%_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd225929226198%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl225930226200%_)
                                                      (let ((_%$%e225931226203%_
                                                             (gx#stx-e
                                                              _%$%tl225930226200%_)))
                                                        (let ((_%$%hd225932226206%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e225931226203%_)))
                      (_%$%tl225933226208%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e225931226203%_))))
                  (if (gx#stx-null? _%$%tl225933226208%_)
                      (if (gx#stx-pair? _%$%tl225927226192%_)
                          (let ((_%$%e225934226211%_
                                 (gx#stx-e _%$%tl225927226192%_)))
                            (let ((_%$%hd225935226214%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e225934226211%_)))
                                  (_%$%tl225936226216%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e225934226211%_))))
                              (if (gx#stx-pair? _%$%hd225935226214%_)
                                  (let ((_%$%e225937226219%_
                                         (gx#stx-e _%$%hd225935226214%_)))
                                    (let ((_%$%hd225938226222%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e225937226219%_)))
                                          (_%$%tl225939226224%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e225937226219%_))))
                                      (if (gx#identifier? _%$%hd225938226222%_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _%$%hd225938226222%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl225939226224%_)
                                                  (let ((_%$%e225940226227%_
                                                         (gx#stx-e
                                                          _%$%tl225939226224%_)))
                                                    (let ((_%$%hd225941226230%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e225940226227%_)))
                                                          (_%$%tl225942226232%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e225940226227%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl225942226232%_)
                                                          (if (gx#stx-pair?
                                                               _%$%tl225936226216%_)
                                                              (let ((_%$%e225943226235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _%$%tl225936226216%_)))
                        (let ((_%$%hd225944226238%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e225943226235%_)))
                              (_%$%tl225945226240%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e225943226235%_))))
                          (if (gx#stx-pair? _%$%hd225944226238%_)
                              (let ((_%$%e225946226243%_
                                     (gx#stx-e _%$%hd225944226238%_)))
                                (let ((_%$%hd225947226246%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e225946226243%_)))
                                      (_%$%tl225948226248%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e225946226243%_))))
                                  (if (gx#identifier? _%$%hd225947226246%_)
                                      (if (gx#stx-eq?
                                           '%#quote
                                           _%$%hd225947226246%_)
                                          (if (gx#stx-pair?
                                               _%$%tl225948226248%_)
                                              (let ((_%$%e225949226251%_
                                                     (gx#stx-e
                                                      _%$%tl225948226248%_)))
                                                (let ((_%$%hd225950226254%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e225949226251%_)))
                                                      (_%$%tl225951226256%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e225949226251%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl225951226256%_)
                                                      (if (gx#stx-pair?
                                                           _%$%tl225945226240%_)
                                                          (let ((_%$%e225952226259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%tl225945226240%_)))
                    (let ((_%$%hd225953226262%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e225952226259%_)))
                          (_%$%tl225954226264%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e225952226259%_))))
                      (if (gx#stx-pair? _%$%hd225953226262%_)
                          (let ((_%$%e225955226267%_
                                 (gx#stx-e _%$%hd225953226262%_)))
                            (let ((_%$%hd225956226270%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e225955226267%_)))
                                  (_%$%tl225957226272%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e225955226267%_))))
                              (if (gx#identifier? _%$%hd225956226270%_)
                                  (if (gx#stx-eq? '%#ref _%$%hd225956226270%_)
                                      (if (gx#stx-pair? _%$%tl225957226272%_)
                                          (let ((_%$%e225958226275%_
                                                 (gx#stx-e
                                                  _%$%tl225957226272%_)))
                                            (let ((_%$%hd225959226278%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e225958226275%_)))
                                                  (_%$%tl225960226280%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e225958226275%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl225960226280%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl225954226264%_)
                                                      (let ((_%$%e225961226283%_
                                                             (gx#stx-e
                                                              _%$%tl225954226264%_)))
                                                        (let ((_%$%hd225962226286%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e225961226283%_)))
                      (_%$%tl225963226288%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e225961226283%_))))
                  (if (gx#stx-pair? _%$%hd225962226286%_)
                      (let ((_%$%e225964226291%_
                             (gx#stx-e _%$%hd225962226286%_)))
                        (let ((_%$%hd225965226294%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e225964226291%_)))
                              (_%$%tl225966226296%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e225964226291%_))))
                          (if (gx#identifier? _%$%hd225965226294%_)
                              (if (gx#stx-eq? '%#quote _%$%hd225965226294%_)
                                  (if (gx#stx-pair? _%$%tl225966226296%_)
                                      (let ((_%$%e225967226299%_
                                             (gx#stx-e _%$%tl225966226296%_)))
                                        (let ((_%$%hd225968226302%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e225967226299%_)))
                                              (_%$%tl225969226304%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e225967226299%_))))
                                          (if (gx#stx-null?
                                               _%$%tl225969226304%_)
                                              (if (gx#stx-null?
                                                   _%$%tl225963226288%_)
                                                  ((lambda (_%$%g225917226307%_
                                                            _%$%g225918226308%_
                                                            _%$%g225919226309%_
                                                            _%$%g225920226310%_
                                                            _%$%g225921226311%_)
                                                     (if (gxc#runtime-identifier=?
                                                          _%$%g225921226311%_
                                                          'bind-method!)
                                                         (cons 'declare-method
                                                               (cons (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g225920226310%_)
                             (cons (gx#stx-e _%$%g225919226309%_)
                                   (cons (gxc#identifier-symbol
                                          _%$%g225918226308%_)
                                         (cons (gx#stx-e _%$%g225917226307%_)
                                               '())))))
                 (_%$%g225913226174%_ _%$%g225916226177%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$%hd225968226302%_
                                                   _%$%hd225959226278%_
                                                   _%$%hd225950226254%_
                                                   _%$%hd225941226230%_
                                                   _%$%hd225932226206%_)
                                                  (_%$%g225913226174%_
                                                   _%$%g225916226177%_))
                                              (_%$%g225913226174%_
                                               _%$%g225916226177%_))))
                                      (_%$%g225913226174%_
                                       _%$%g225916226177%_))
                                  (_%$%g225913226174%_ _%$%g225916226177%_))
                              (_%$%g225913226174%_ _%$%g225916226177%_))))
                      (_%$%g225913226174%_ _%$%g225916226177%_))))
              (_%$%g225913226174%_ _%$%g225916226177%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g225913226174%_
                                                   _%$%g225916226177%_))))
                                          (_%$%g225913226174%_
                                           _%$%g225916226177%_))
                                      (_%$%g225913226174%_
                                       _%$%g225916226177%_))
                                  (_%$%g225913226174%_ _%$%g225916226177%_))))
                          (_%$%g225913226174%_ _%$%g225916226177%_))))
                  (_%$%g225913226174%_ _%$%g225916226177%_))
              (_%$%g225913226174%_ _%$%g225916226177%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g225913226174%_
                                               _%$%g225916226177%_))
                                          (_%$%g225913226174%_
                                           _%$%g225916226177%_))
                                      (_%$%g225913226174%_
                                       _%$%g225916226177%_))))
                              (_%$%g225913226174%_ _%$%g225916226177%_))))
                      (_%$%g225913226174%_ _%$%g225916226177%_))
                  (_%$%g225913226174%_ _%$%g225916226177%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g225913226174%_
                                                   _%$%g225916226177%_))
                                              (_%$%g225913226174%_
                                               _%$%g225916226177%_))
                                          (_%$%g225913226174%_
                                           _%$%g225916226177%_))))
                                  (_%$%g225913226174%_ _%$%g225916226177%_))))
                          (_%$%g225913226174%_ _%$%g225916226177%_))
                      (_%$%g225913226174%_ _%$%g225916226177%_))))
              (_%$%g225913226174%_ _%$%g225916226177%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g225913226174%_
                                                   _%$%g225916226177%_))
                                              (_%$%g225913226174%_
                                               _%$%g225916226177%_))))
                                      (_%$%g225913226174%_
                                       _%$%g225916226177%_))))
                              (_%$%g225913226174%_ _%$%g225916226177%_))))
                      (_%$%g225913226174%_ _%$%g225916226177%_)))))
          (_%$%g225912226354%_ _%stx225911%_))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self225734%_ _%stx225735%_)
        (let* ((_%$%g225738225778%_
                (lambda (_%$%g225739225775%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g225739225775%_)))
               (_%$%g225737225823%_
                (lambda (_%$%g225739225781%_)
                  (if (gx#stx-pair? _%$%g225739225781%_)
                      (let ((_%$%e225765225783%_
                             (gx#stx-e _%$%g225739225781%_)))
                        (let ((_%$%hd225766225786%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e225765225783%_)))
                              (_%$%tl225767225788%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e225765225783%_))))
                          (if (gx#stx-pair? _%$%tl225767225788%_)
                              (let ((_%$%e225768225791%_
                                     (gx#stx-e _%$%tl225767225788%_)))
                                (let ((_%$%hd225769225794%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e225768225791%_)))
                                      (_%$%tl225770225796%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e225768225791%_))))
                                  (if (gx#stx-pair? _%$%tl225770225796%_)
                                      (let ((_%$%e225771225799%_
                                             (gx#stx-e _%$%tl225770225796%_)))
                                        (let ((_%$%hd225772225802%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e225771225799%_)))
                                              (_%$%tl225773225804%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e225771225799%_))))
                                          (if (gx#stx-null?
                                               _%$%tl225773225804%_)
                                              ((lambda (_%$%g225763225807%_
                                                        _%$%g225764225808%_)
                                                 '(begin))
                                               _%$%hd225772225802%_
                                               _%$%hd225769225794%_)
                                              (_%$%g225738225778%_
                                               _%$%g225739225781%_))))
                                      (_%$%g225738225778%_
                                       _%$%g225739225781%_))))
                              (_%$%g225738225778%_ _%$%g225739225781%_))))
                      (_%$%g225738225778%_ _%$%g225739225781%_))))
               (_%$%g225736225907%_
                (lambda (_%$%g225739225826%_)
                  (if (gx#stx-pair? _%$%g225739225826%_)
                      (let ((_%$%e225742225828%_
                             (gx#stx-e _%$%g225739225826%_)))
                        (let ((_%$%hd225743225831%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e225742225828%_)))
                              (_%$%tl225744225833%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e225742225828%_))))
                          (if (gx#stx-pair? _%$%tl225744225833%_)
                              (let ((_%$%e225745225836%_
                                     (gx#stx-e _%$%tl225744225833%_)))
                                (let ((_%$%hd225746225839%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e225745225836%_)))
                                      (_%$%tl225747225841%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e225745225836%_))))
                                  (if (gx#stx-pair? _%$%hd225746225839%_)
                                      (let ((_%$%e225748225844%_
                                             (gx#stx-e _%$%hd225746225839%_)))
                                        (let ((_%$%hd225749225847%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e225748225844%_)))
                                              (_%$%tl225750225849%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e225748225844%_))))
                                          (if (gx#identifier?
                                               _%$%hd225749225847%_)
                                              (if (gx#stx-eq?
                                                   '@inline
                                                   _%$%hd225749225847%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl225750225849%_)
                                                      (let ((_%$%e225751225852%_
                                                             (gx#stx-e
                                                              _%$%tl225750225849%_)))
                                                        (let ((_%$%hd225752225855%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e225751225852%_)))
                      (_%$%tl225753225857%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e225751225852%_))))
                  (if (gx#stx-null? _%$%tl225753225857%_)
                      (if (gx#stx-pair? _%$%tl225747225841%_)
                          (let ((_%$%e225754225860%_
                                 (gx#stx-e _%$%tl225747225841%_)))
                            (let ((_%$%hd225755225863%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e225754225860%_)))
                                  (_%$%tl225756225865%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e225754225860%_))))
                              (if (gx#stx-pair? _%$%hd225755225863%_)
                                  (let ((_%$%e225757225868%_
                                         (gx#stx-e _%$%hd225755225863%_)))
                                    (let ((_%$%hd225758225871%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e225757225868%_)))
                                          (_%$%tl225759225873%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e225757225868%_))))
                                      (if (gx#identifier? _%$%hd225758225871%_)
                                          (if (gx#stx-eq?
                                               '%#quote
                                               _%$%hd225758225871%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl225759225873%_)
                                                  (let ((_%$%e225760225876%_
                                                         (gx#stx-e
                                                          _%$%tl225759225873%_)))
                                                    (let ((_%$%hd225761225879%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e225760225876%_)))
                                                          (_%$%tl225762225881%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e225760225876%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl225762225881%_)
                                                          (if (gx#stx-null?
                                                               _%$%tl225756225865%_)
                                                              ((lambda (_%$%g225740225884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%$%g225741225885%_)
                         (cons 'declare-inline-rule!
                               (cons (gxc#identifier-symbol
                                      _%$%g225741225885%_)
                                     (cons _%$%g225740225884%_ '()))))
                       _%$%hd225761225879%_
                       _%$%hd225752225855%_)
                      (_%$%g225737225823%_ _%$%g225739225826%_))
                  (_%$%g225737225823%_ _%$%g225739225826%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g225737225823%_
                                                   _%$%g225739225826%_))
                                              (_%$%g225737225823%_
                                               _%$%g225739225826%_))
                                          (_%$%g225737225823%_
                                           _%$%g225739225826%_))))
                                  (_%$%g225737225823%_ _%$%g225739225826%_))))
                          (_%$%g225737225823%_ _%$%g225739225826%_))
                      (_%$%g225737225823%_ _%$%g225739225826%_))))
              (_%$%g225737225823%_ _%$%g225739225826%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g225737225823%_
                                                   _%$%g225739225826%_))
                                              (_%$%g225737225823%_
                                               _%$%g225739225826%_))))
                                      (_%$%g225737225823%_
                                       _%$%g225739225826%_))))
                              (_%$%g225737225823%_ _%$%g225739225826%_))))
                      (_%$%g225737225823%_ _%$%g225739225826%_)))))
          (_%$%g225736225907%_ _%stx225735%_))))
    (define gxc#!alias::typedecl
      (lambda (_%self225721%_)
        (let ((_%self225724%_ _%self225721%_))
          (cons '@alias (cons (gxc#&!alias-id _%self225724%_) '())))))
    (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
    (define gxc#!class::typedecl
      (lambda (_%self225495%_)
        (let* ((_%self225498%_ _%self225495%_)
               (_%$%self225507225523%_ _%self225498%_)
               (_%$%E225509225526%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self225507225523%_
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
                                   methods)))
                  (void)))
               (_%$%K225510225541%_
                (lambda (_%methods225529%_
                         _%metaclass225530%_
                         _%system?225531%_
                         _%final?225532%_
                         _%struct?225533%_
                         _%constructor225534%_
                         _%fields225535%_
                         _%slots225536%_
                         _%precendence-list225537%_
                         _%super225538%_
                         _%id225539%_)
                  (cons '@class
                        (cons _%id225539%_
                              (cons _%super225538%_
                                    (cons _%precendence-list225537%_
                                          (cons _%slots225536%_
                                                (cons _%fields225535%_
                                                      (cons _%constructor225534%_
                                                            (cons _%struct?225533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?225532%_
                                (cons _%system?225531%_
                                      (cons _%metaclass225530%_
                                            (cons (if _%methods225529%_
                                                      (hash->list
                                                       _%methods225529%_)
                                                      '#f)
                                                  '())))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
          (if (gxc#!class? _%$%self225507225523%_)
              (let* ((_%$%e225511225544%_
                      (gxc#&!type-id _%$%self225507225523%_))
                     (_%id225547%_ _%$%e225511225544%_)
                     (_%$%e225512225549%_
                      (gxc#&!class-super _%$%self225507225523%_))
                     (_%super225552%_ _%$%e225512225549%_)
                     (_%$%e225513225554%_
                      (gxc#&!class-precedence-list _%$%self225507225523%_))
                     (_%precendence-list225557%_ _%$%e225513225554%_)
                     (_%$%e225514225559%_
                      (gxc#&!class-slots _%$%self225507225523%_))
                     (_%slots225562%_ _%$%e225514225559%_)
                     (_%$%e225515225564%_
                      (gxc#&!class-fields _%$%self225507225523%_))
                     (_%fields225567%_ _%$%e225515225564%_)
                     (_%$%e225516225569%_
                      (gxc#&!class-constructor _%$%self225507225523%_))
                     (_%constructor225572%_ _%$%e225516225569%_)
                     (_%$%e225517225574%_
                      (gxc#&!class-struct? _%$%self225507225523%_))
                     (_%struct?225577%_ _%$%e225517225574%_)
                     (_%$%e225518225579%_
                      (gxc#&!class-final? _%$%self225507225523%_))
                     (_%final?225582%_ _%$%e225518225579%_)
                     (_%$%e225519225584%_
                      (gxc#&!class-system? _%$%self225507225523%_))
                     (_%system?225587%_ _%$%e225519225584%_)
                     (_%$%e225520225589%_
                      (gxc#&!class-metaclass _%$%self225507225523%_))
                     (_%metaclass225592%_ _%$%e225520225589%_)
                     (_%$%e225521225594%_
                      (gxc#&!class-methods _%$%self225507225523%_))
                     (_%methods225597%_ _%$%e225521225594%_))
                (_%$%K225510225541%_
                 _%methods225597%_
                 _%metaclass225592%_
                 _%system?225587%_
                 _%final?225582%_
                 _%struct?225577%_
                 _%constructor225572%_
                 _%fields225567%_
                 _%slots225562%_
                 _%precendence-list225557%_
                 _%super225552%_
                 _%id225547%_))
              (_%$%E225509225526%_)))))
    (bind-method! gxc#!class::t 'typedecl gxc#!class::typedecl '#f)
    (define gxc#!predicate::typedecl
      (lambda (_%self225360%_)
        (let ((_%self225363%_ _%self225360%_))
          (cons '@predicate (cons (gxc#&!predicate-id _%self225363%_) '())))))
    (bind-method! gxc#!predicate::t 'typedecl gxc#!predicate::typedecl '#f)
    (define gxc#!constructor::typedecl
      (lambda (_%self225225%_)
        (let ((_%self225228%_ _%self225225%_))
          (cons '@constructor
                (cons (gxc#&!constructor-id _%self225228%_) '())))))
    (bind-method! gxc#!constructor::t 'typedecl gxc#!constructor::typedecl '#f)
    (define gxc#!accessor::typedecl
      (lambda (_%self225090%_)
        (let ((_%self225093%_ _%self225090%_))
          (cons '@accessor
                (cons (gxc#&!accessor-id _%self225093%_)
                      (cons (gxc#&!accessor-slot _%self225093%_)
                            (cons (gxc#&!accessor-checked? _%self225093%_)
                                  '())))))))
    (bind-method! gxc#!accessor::t 'typedecl gxc#!accessor::typedecl '#f)
    (define gxc#!mutator::typedecl
      (lambda (_%self224955%_)
        (let ((_%self224958%_ _%self224955%_))
          (cons '@mutator
                (cons (gxc#&!mutator-id _%self224958%_)
                      (cons (gxc#&!mutator-slot _%self224958%_)
                            (cons (gxc#&!mutator-checked? _%self224958%_)
                                  '())))))))
    (bind-method! gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f)
    (define gxc#!interface::typedecl
      (lambda (_%self224820%_)
        (let ((_%self224823%_ _%self224820%_))
          (cons '@interface
                (cons (gxc#&!interface-id _%self224823%_)
                      (cons (gxc#&!interface-methods _%self224823%_) '()))))))
    (bind-method! gxc#!interface::t 'typedecl gxc#!interface::typedecl '#f)
    (define gxc#!lambda::typedecl
      (lambda (_%self224634%_)
        (let* ((_%self224637%_ _%self224634%_)
               (_%$%self224646224655%_ _%self224637%_)
               (_%$%E224648224658%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self224646224655%_
                         '((!lambda _ signature arity dispatch)))
                  (void)))
               (_%$%K224649224677%_
                (lambda (_%dispatch224661%_
                         _%arity224662%_
                         _%signature224663%_)
                  (if _%signature224663%_
                      (let ((_%signature224665%_ _%signature224663%_))
                        (cons '@lambda
                              (cons _%arity224662%_
                                    (cons _%dispatch224661%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (gxc#&!signature-return
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature224665%_)
                          (cons 'effect:
                                (cons (gxc#&!signature-effect
                                       _%signature224665%_)
                                      (cons 'arguments:
                                            (cons (gxc#&!signature-arguments
                                                   _%signature224665%_)
                                                  (cons 'unchecked:
                                                        (cons (gxc#&!signature-unchecked
                                                               _%signature224665%_)
                                                              (cons 'origin:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gxc#&!signature-origin _%signature224665%_)
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity224662%_
                                  (cons _%dispatch224661%_ '())))))))
          (if (gxc#!lambda? _%$%self224646224655%_)
              (let* ((_%$%e224650224680%_
                      (gxc#&!type-id _%$%self224646224655%_))
                     (_%$%e224651224683%_
                      (gxc#&!procedure-signature _%$%self224646224655%_))
                     (_%signature224686%_ _%$%e224651224683%_)
                     (_%$%e224652224688%_
                      (gxc#&!lambda-arity _%$%self224646224655%_))
                     (_%arity224691%_ _%$%e224652224688%_)
                     (_%$%e224653224693%_
                      (gxc#&!lambda-dispatch _%$%self224646224655%_))
                     (_%dispatch224696%_ _%$%e224653224693%_))
                (_%$%K224649224677%_
                 _%dispatch224696%_
                 _%arity224691%_
                 _%signature224686%_))
              (_%$%E224648224658%_)))))
    (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
    (define gxc#!case-lambda::typedecl
      (lambda (_%self224494%_)
        (let ((_%self224497%_ _%self224494%_))
          (letrec ((_%clause-e224508%_
                    (lambda (_%clause224510%_)
                      (cdr (call-method _%clause224510%_ 'typedecl)))))
            (cons '@case-lambda
                  (map _%clause-e224508%_
                       (gxc#&!case-lambda-clauses _%self224497%_)))))))
    (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
    (define gxc#!kw-lambda::typedecl
      (lambda (_%self224359%_)
        (let ((_%self224362%_ _%self224359%_))
          (cons '@kw-lambda
                (cons (gxc#&!kw-lambda-table _%self224362%_)
                      (cons (gxc#&!kw-lambda-dispatch _%self224362%_) '()))))))
    (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_%self224224%_)
        (let ((_%self224227%_ _%self224224%_))
          (cons '@kw-lambda-dispatch
                (cons (gxc#&!kw-lambda-primary-keys _%self224227%_)
                      (cons (gxc#&!kw-lambda-primary-main _%self224227%_)
                            '()))))))
    (bind-method!
     gxc#!kw-lambda-primary::t
     'typedecl
     gxc#!kw-lambda-primary::typedecl
     '#f)
    (define gxc#!primitive-predicate::typedecl
      (lambda (_%self224089%_)
        (let ((_%self224092%_ _%self224089%_))
          (cons '@primitive-predicate
                (cons (gxc#&!primitive-predicate-id _%self224092%_) '())))))
    (bind-method!
     gxc#!primitive-predicate::t
     'typedecl
     gxc#!primitive-predicate::typedecl
     '#f)))
