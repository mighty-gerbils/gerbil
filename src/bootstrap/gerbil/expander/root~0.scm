(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1713631266)
  (begin
    (declare (not safe))
    (define gx#*core-syntax-expanders*
      (cons (cons '%#begin
                  (cons 'top:
                        (cons gx#core-expand-begin%
                              (cons gx#core-compile-top-begin% '()))))
            (cons (cons '%#begin-syntax
                        (cons 'top:
                              (cons gx#core-expand-begin-syntax%
                                    (cons gx#core-compile-top-begin-syntax%
                                          '()))))
                  (cons (cons '%#begin-foreign
                              (cons 'top:
                                    (cons gx#core-expand-begin-foreign%
                                          (cons gx#core-compile-top-begin-foreign%
                                                '()))))
                        (cons (cons '%#begin-module
                                    (cons 'top:
                                          (cons gx#core-expand-begin-module%
                                                (cons '#f '()))))
                              (cons (cons '%#extern
                                          (cons 'top:
                                                (cons gx#core-expand-extern%
                                                      (cons gx#core-compile-top-extern%
                                                            '()))))
                                    (cons (cons '%#import
                                                (cons 'top:
                                                      (cons gx#core-expand-import%
                                                            (cons gx#core-compile-top-import%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons '%#module
                                                      (cons 'top:
                                                            (cons gx#core-expand-module%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons gx#core-compile-top-module% '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons '%#export
                                                            (cons 'top:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons gx#core-expand-export%
                                (cons gx#core-compile-top-export% '()))))
              (cons (cons '%#provide
                          (cons 'module:
                                (cons gx#core-expand-provide%
                                      (cons gx#core-compile-top-provide%
                                            '()))))
                    (cons (cons '%#declare
                                (cons 'module:
                                      (cons gx#core-expand-declare%
                                            (cons gx#core-compile-top-declare%
                                                  '()))))
                          (cons (cons '%#cond-expand
                                      (cons 'special:
                                            (cons gx#core-expand-cond-expand%
                                                  (cons '#f '()))))
                                (cons (cons '%#include
                                            (cons 'special:
                                                  (cons gx#core-expand-include%
                                                        (cons '#f '()))))
                                      (cons (cons '%#define-values
                                                  (cons 'define:
                                                        (cons gx#core-expand-define-values%
                                                              (cons gx#core-compile-top-define-values%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons '%#define-syntax
                                                        (cons 'define:
                                                              (cons gx#core-expand-define-syntax%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons gx#core-compile-top-define-syntax% '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons '%#define-alias
                                                              (cons 'define:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons gx#core-expand-define-alias%
                                  (cons gx#core-compile-top-define-alias%
                                        '()))))
                (cons (cons '%#define-runtime
                            (cons 'define:
                                  (cons gx#core-expand-define-runtime%
                                        (cons gx#core-compile-top-define-runtime%
                                              '()))))
                      (cons (cons '%#begin-annotation
                                  (cons 'expr:
                                        (cons gx#core-expand-begin-annotation%
                                              (cons gx#core-compile-top-begin-annotation%
                                                    '()))))
                            (cons (cons '%#lambda
                                        (cons 'expr:
                                              (cons gx#core-expand-lambda%
                                                    (cons gx#core-compile-top-lambda%
                                                          '()))))
                                  (cons (cons '%#case-lambda
                                              (cons 'expr:
                                                    (cons gx#core-expand-case-lambda%
                                                          (cons gx#core-compile-top-case-lambda%
                                                                '()))))
                                        (cons (cons '%#let-values
                                                    (cons 'expr:
                                                          (cons gx#core-expand-let-values%
                                                                (cons gx#core-compile-top-let-values%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons '%#letrec-values
                                                          (cons 'expr:
                                                                (cons gx#core-expand-letrec-values%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons gx#core-compile-top-letrec-values% '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#letrec*-values
                                                                (cons 'expr:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons gx#core-expand-letrec*-values%
                                    (cons gx#core-compile-top-letrec*-values%
                                          '()))))
                  (cons (cons '%#let-syntax
                              (cons 'expr:
                                    (cons gx#core-expand-let-syntax%
                                          (cons '#f '()))))
                        (cons (cons '%#letrec-syntax
                                    (cons 'expr:
                                          (cons gx#core-expand-letrec-syntax%
                                                (cons '#f '()))))
                              (cons (cons '%#quote
                                          (cons 'expr:
                                                (cons gx#core-expand-quote%
                                                      (cons gx#core-compile-top-quote%
                                                            '()))))
                                    (cons (cons '%#quote-syntax
                                                (cons 'expr:
                                                      (cons gx#core-expand-quote-syntax%
                                                            (cons gx#core-compile-top-quote-syntax%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons '%#call
                                                      (cons 'expr:
                                                            (cons gx#core-expand-call%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons gx#core-compile-top-call% '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons '%#if
                                                            (cons 'expr:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons gx#core-expand-if%
                                (cons gx#core-compile-top-if% '()))))
              (cons (cons '%#ref
                          (cons 'expr:
                                (cons gx#core-expand-ref%
                                      (cons gx#core-compile-top-ref% '()))))
                    (cons (cons '%#set!
                                (cons 'expr:
                                      (cons gx#core-expand-setq%
                                            (cons gx#core-compile-top-setq%
                                                  '()))))
                          (cons (cons '%#expression
                                      (cons 'expr:
                                            (cons gx#core-expand-expression%
                                                  (cons '#f '()))))
                                '()))))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    (define gx#*core-macro-expanders*
      (cons (cons 'begin (cons '=> (cons '%#begin '())))
            (cons (cons 'begin-syntax (cons '=> (cons '%#begin-syntax '())))
                  (cons (cons 'begin-foreign
                              (cons '=> (cons '%#begin-foreign '())))
                        (cons (cons 'begin-annotation
                                    (cons '=> (cons '%#begin-annotation '())))
                              (cons (cons 'import
                                          (cons '=> (cons '%#import '())))
                                    (cons (cons 'module
                                                (cons '=>
                                                      (cons '%#module '())))
                                          (cons (cons 'export
                                                      (cons '=>
                                                            (cons '%#export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons 'provide
                                                            (cons '=>
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#provide '())))
              (cons (cons 'declare (cons '=> (cons '%#declare '())))
                    (cons (cons 'include (cons '=> (cons '%#include '())))
                          (cons (cons 'cond-expand
                                      (cons '=> (cons '%#cond-expand '())))
                                (cons (cons 'quote
                                            (cons '=> (cons '%#quote '())))
                                      (cons (cons 'quote-syntax
                                                  (cons '=>
                                                        (cons '%#quote-syntax
                                                              '())))
                                            (cons (cons 'let-syntax
                                                        (cons '=>
                                                              (cons '%#let-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'letrec-syntax
                                                              (cons '=>
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '%#letrec-syntax '())))
                (cons (cons 'extern (cons gx#macro-expand-extern '()))
                      (cons (cons 'define-values
                                  (cons gx#macro-expand-define-values '()))
                            (cons (cons 'define-syntax
                                        (cons gx#macro-expand-define-syntax
                                              '()))
                                  (cons (cons 'define-alias
                                              (cons gx#macro-expand-define-alias
                                                    '()))
                                        (cons (cons 'lambda%
                                                    (cons gx#macro-expand-lambda%
                                                          '()))
                                              (cons (cons 'case-lambda
                                                          (cons gx#macro-expand-case-lambda
                                                                '()))
                                                    (cons (cons 'let-values
                                                                (cons gx#macro-expand-let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'letrec-values
                              (cons gx#macro-expand-letrec-values '()))
                        (cons (cons 'letrec*-values
                                    (cons gx#macro-expand-letrec*-values '()))
                              (cons (cons 'if (cons gx#macro-expand-if '()))
                                    (cons (cons '%%app
                                                (cons '=> (cons '%#call '())))
                                          (cons (cons '%%ref
                                                      (cons '=>
                                                            (cons '%#ref '())))
                                                (cons (cons '%%begin-module
                                                            (cons '=>
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#begin-module '())))
              (cons (cons '_ '())
                    (cons (cons '... '())
                          (cons (cons 'else '())
                                (cons (cons '=> '())
                                      (cons (cons 'unquote '())
                                            (cons (cons 'unquote-splicing '())
                                                  (cons (cons 'unsyntax '())
                                                        (cons (cons 'unsyntax-splicing
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      '())))))))))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    (define gx#root-context:::init!__%
      (lambda (_%self130208131288%_ _%bind?131290%_)
        (let* ((_%self131292%_ _%self130208131288%_)
               (_%self131294%_ _%self131292%_))
          (if (##fx< '2 (##structure-length _%self131294%_))
              (begin
                (##unchecked-structure-set! _%self131294%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self131294%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self131294%_
                     '2
                     (##vector-length _%self131294%_)))
          (if _%bind?131290%_
              (begin
                (let ((__method131357
                       (__method-ref
                        _%self131294%_
                        'bind-core-syntax-expanders!)))
                  (if __method131357
                      (__method131357 _%self131294%_)
                      (begin
                        (error '"Missing method"
                               _%self131294%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method131358
                       (__method-ref
                        _%self131294%_
                        'bind-core-macro-expanders!)))
                  (if __method131358
                      (__method131358 _%self131294%_)
                      (begin
                        (error '"Missing method"
                               _%self131294%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method131359
                       (__method-ref _%self131294%_ 'bind-core-features!)))
                  (if __method131359
                      (__method131359 _%self131294%_)
                      (begin
                        (error '"Missing method"
                               _%self131294%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self130208131307%_)
        (let ((_%bind?131309%_ '#t))
          (gx#root-context:::init!__% _%self130208131307%_ _%bind?131309%_))))
    (define gx#root-context:::init!
      (lambda _g131362_
        (let ((_g131361_ (##length _g131362_)))
          (cond ((##fx= _g131361_ 1)
                 (apply gx#root-context:::init!__0 _g131362_))
                ((##fx= _g131361_ 2)
                 (apply gx#root-context:::init!__% _g131362_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g131362_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass131313 __method-table131314)
        (let ((__bind-core-features!131315
               (__make-promise
                (lambda ()
                  (let ((__method131318
                         (symbolic-table-ref
                          __method-table131314
                          'bind-core-features!
                          '#f)))
                    (if __method131318
                        __method131318
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!131316
               (__make-promise
                (lambda ()
                  (let ((__method131319
                         (symbolic-table-ref
                          __method-table131314
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method131319
                        __method131319
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!131317
               (__make-promise
                (lambda ()
                  (let ((__method131320
                         (symbolic-table-ref
                          __method-table131314
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method131320
                        __method131320
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_%opt-lambda131286131304%_
                 (lambda (_%self130208131288%_ _%bind?131290%_)
                   (let* ((_%self131292%_ _%self130208131288%_)
                          (_%self131294%_ _%self131292%_))
                     (if (##fx< '2 (##structure-length _%self131294%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self131294%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self131294%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self131294%_
                                '2
                                (##vector-length _%self131294%_)))
                     (if _%bind?131290%_
                         (begin
                           ((force __bind-core-syntax-expanders!131317)
                            _%self131294%_)
                           ((force __bind-core-macro-expanders!131316)
                            _%self131294%_)
                           ((force __bind-core-features!131315)
                            _%self131294%_))
                         '#!void)))))
            (lambda _g131364_
              (let ((_g131363_ (##length _g131364_)))
                (cond ((##fx= _g131363_ 1)
                       (apply (lambda (_%self130208131307%_)
                                (let ((_%bind?131309%_ '#t))
                                  (_%opt-lambda131286131304%_
                                   _%self130208131307%_
                                   _%bind?131309%_)))
                              _g131364_))
                      ((##fx= _g131363_ 2)
                       (apply _%opt-lambda131286131304%_ _g131364_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g131364_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self130209131131%_ _%super131133%_)
        (let* ((_%self131135%_ _%self130209131131%_)
               (_%self131137%_ _%self131135%_)
               (_%super131153%_
                (let ((_%$e131147%_ _%super131133%_))
                  (if _%$e131147%_
                      _%$e131147%_
                      (let ((_%$e131150%_ (gx#core-context-root__0)))
                        (if _%$e131150%_
                            _%$e131150%_
                            (let ((__obj131360
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj131360)
                              __obj131360)))))))
          (if (##fx< '5 (##structure-length _%self131137%_))
              (begin
                (##unchecked-structure-set! _%self131137%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self131137%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self131137%_
                 _%super131153%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self131137%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self131137%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self131137%_
                     '5
                     (##vector-length _%self131137%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self130209131158%_)
        (let ((_%super131160%_ '#f))
          (gx#top-context:::init!__% _%self130209131158%_ _%super131160%_))))
    (define gx#top-context:::init!
      (lambda _g131366_
        (let ((_g131365_ (##length _g131366_)))
          (cond ((##fx= _g131365_ 1)
                 (apply gx#top-context:::init!__0 _g131366_))
                ((##fx= _g131365_ 2)
                 (apply gx#top-context:::init!__% _g131366_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g131366_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self130210130849%_ _%bindings130851%_)
        (let* ((_%self130853%_ _%self130210130849%_)
               (_%self130855%_ _%self130853%_))
          (for-each
           (lambda (_%bind130865%_)
             (let* ((_%bind130866130873%_ _%bind130865%_)
                    (_%E130868130877%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind130866130873%_
                              '([id . rest]))
                       '#!void))
                    (_%K130869130986%_
                     (lambda (_%rest130880%_ _%id130881%_)
                       (gx#core-context-put!
                        _%self130855%_
                        _%id130881%_
                        (##structure
                         gx#syntax-binding::t
                         _%id130881%_
                         _%id130881%_
                         '#f
                         (let* ((_%rest130882130893%_ _%rest130880%_)
                                (_%E130884130897%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest130882130893%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K130885130962%_
                                 (lambda (_%compiler130900%_
                                          _%expander130901%_
                                          _%key130902%_)
                                   ((let* ((_%key130903130916%_ _%key130902%_)
                                           (_%E130909130920%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key130903130916%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K130914130956%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K130913130949%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K130912130941%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K130911130933%_
                                             (lambda () gx#make-special-form))
                                            (_%K130910130925%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match130908130928%_
                                                (lambda ()
                                                  (if (##eq? _%key130903130916%_
                                                             'expr:)
                                                      (_%K130910130925%_)
                                                      (_%E130909130920%_))))
                                               (_%try-match130907130936%_
                                                (lambda ()
                                                  (if (##eq? _%key130903130916%_
                                                             'special:)
                                                      (_%K130911130933%_)
                                                      (_%try-match130908130928%_))))
                                               (_%try-match130906130944%_
                                                (lambda ()
                                                  (if (##eq? _%key130903130916%_
                                                             'define:)
                                                      (_%K130912130941%_)
                                                      (_%try-match130907130936%_))))
                                               (_%try-match130905130952%_
                                                (lambda ()
                                                  (if (##eq? _%key130903130916%_
                                                             'module:)
                                                      (_%K130913130949%_)
                                                      (_%try-match130906130944%_)))))
                                          (if (##eq? _%key130903130916%_ 'top:)
                                              (_%K130914130956%_)
                                              (_%try-match130905130952%_)))))
                                    _%expander130901%_
                                    _%id130881%_
                                    (let ((_%$e130959%_ _%compiler130900%_))
                                      (if _%$e130959%_
                                          _%$e130959%_
                                          gx#core-compile-top-error))))))
                           (if (pair? _%rest130882130893%_)
                               (let ((_%hd130886130965%_
                                      (##car _%rest130882130893%_))
                                     (_%tl130887130967%_
                                      (##cdr _%rest130882130893%_)))
                                 (let ((_%key130970%_ _%hd130886130965%_))
                                   (if (pair? _%tl130887130967%_)
                                       (let ((_%hd130888130972%_
                                              (##car _%tl130887130967%_))
                                             (_%tl130889130974%_
                                              (##cdr _%tl130887130967%_)))
                                         (let ((_%expander130977%_
                                                _%hd130888130972%_))
                                           (if (pair? _%tl130889130974%_)
                                               (let ((_%hd130890130979%_
                                                      (##car _%tl130889130974%_))
                                                     (_%tl130891130981%_
                                                      (##cdr _%tl130889130974%_)))
                                                 (let ((_%compiler130984%_
                                                        _%hd130890130979%_))
                                                   (if (null? _%tl130891130981%_)
                                                       (_%K130885130962%_
                                                        _%compiler130984%_
                                                        _%expander130977%_
                                                        _%key130970%_)
                                                       (_%E130884130897%_))))
                                               (_%E130884130897%_))))
                                       (_%E130884130897%_))))
                               (_%E130884130897%_))))))))
               (if (pair? _%bind130866130873%_)
                   (let ((_%hd130870130989%_ (##car _%bind130866130873%_))
                         (_%tl130871130991%_ (##cdr _%bind130866130873%_)))
                     (let* ((_%id130994%_ _%hd130870130989%_)
                            (_%rest130996%_ _%tl130871130991%_))
                       (_%K130869130986%_ _%rest130996%_ _%id130994%_)))
                   (_%E130868130877%_))))
           _%bindings130851%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self130210131001%_)
        (let ((_%bindings131003%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self130210131001%_
           _%bindings131003%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g131368_
        (let ((_g131367_ (##length _g131368_)))
          (cond ((##fx= _g131367_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g131368_))
                ((##fx= _g131367_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g131368_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g131368_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self130211130608%_ _%bindings130610%_)
        (let* ((_%self130612%_ _%self130211130608%_)
               (_%self130614%_ _%self130612%_))
          (for-each
           (lambda (_%bind130624%_)
             (let* ((_%bind130625130632%_ _%bind130624%_)
                    (_%E130627130636%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind130625130632%_
                              '([id . rest]))
                       '#!void))
                    (_%K130628130704%_
                     (lambda (_%rest130639%_ _%id130640%_)
                       (gx#core-context-put!
                        _%self130614%_
                        _%id130640%_
                        (##structure
                         gx#syntax-binding::t
                         _%id130640%_
                         _%id130640%_
                         '#f
                         (let* ((_%rest130641130656%_ _%rest130639%_)
                                (_%E130645130660%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest130641130656%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K130650130689%_
                                  (lambda (_%core-id130687%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id130687%_)))
                                 (_%K130647130674%_
                                  (lambda (_%proc130672%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc130672%_)))
                                 (_%K130646130665%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id130640%_))))
                             (let ((_%try-match130644130668%_
                                    (lambda ()
                                      (if (null? _%rest130641130656%_)
                                          (_%K130646130665%_)
                                          (_%E130645130660%_)))))
                               (if (pair? _%rest130641130656%_)
                                   (let ((_%tl130652130694%_
                                          (##cdr _%rest130641130656%_))
                                         (_%hd130651130692%_
                                          (##car _%rest130641130656%_)))
                                     (if (##eq? _%hd130651130692%_ '=>)
                                         (if (pair? _%tl130652130694%_)
                                             (let ((_%tl130654130699%_
                                                    (##cdr _%tl130652130694%_))
                                                   (_%hd130653130697%_
                                                    (##car _%tl130652130694%_)))
                                               (if (null? _%tl130654130699%_)
                                                   (let ((_%core-id130702%_
                                                          _%hd130653130697%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id130702%_))
                                                   (_%E130645130660%_)))
                                             (if (null? _%tl130652130694%_)
                                                 (let ((_%proc130682%_
                                                        _%hd130651130692%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc130682%_))
                                                 (_%E130645130660%_)))
                                         (if (null? _%tl130652130694%_)
                                             (let ((_%proc130682%_
                                                    _%hd130651130692%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc130682%_))
                                             (_%E130645130660%_))))
                                   (_%try-match130644130668%_))))))))))
               (if (pair? _%bind130625130632%_)
                   (let ((_%hd130629130707%_ (##car _%bind130625130632%_))
                         (_%tl130630130709%_ (##cdr _%bind130625130632%_)))
                     (let* ((_%id130712%_ _%hd130629130707%_)
                            (_%rest130714%_ _%tl130630130709%_))
                       (_%K130628130704%_ _%rest130714%_ _%id130712%_)))
                   (_%E130627130636%_))))
           _%bindings130610%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self130211130719%_)
        (let ((_%bindings130721%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self130211130719%_
           _%bindings130721%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g131370_
        (let ((_g131369_ (##length _g131370_)))
          (cond ((##fx= _g131369_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g131370_))
                ((##fx= _g131369_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g131370_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g131370_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self130212130338%_)
        (let* ((_%self130341%_ _%self130212130338%_)
               (_%self130343%_ _%self130341%_))
          (letrec ((_%linux-variant?130353%_
                    (lambda (_%sys-type130453%_)
                      (let* ((_%g130454130462%_
                              (__string-split
                               (symbol->string _%sys-type130453%_)
                               '#\-))
                             (_%else130456130470%_ (lambda () '#f))
                             (_%K130458130475%_
                              (lambda (_%rest130473%_)
                                (not (null? _%rest130473%_)))))
                        (if (pair? _%g130454130462%_)
                            (let ((_%hd130459130478%_
                                   (##car _%g130454130462%_))
                                  (_%tl130460130480%_
                                   (##cdr _%g130454130462%_)))
                              (if (equal? _%hd130459130478%_ '"linux")
                                  (let ((_%rest130483%_ _%tl130460130480%_))
                                    (_%K130458130475%_ _%rest130483%_))
                                  (_%else130456130470%_)))
                            (_%else130456130470%_)))))
                   (_%bsd-variant130354%_
                    (lambda (_%sys-type130412%_)
                      (let ((_%sys-type-str130414%_
                             (symbol->string _%sys-type130412%_)))
                        (let _%lp130416%_ ((_%rest130418%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest130419130427%_ _%rest130418%_)
                                 (_%else130421130435%_ (lambda () '#f))
                                 (_%K130423130441%_
                                  (lambda (_%rest130438%_ _%sys130439%_)
                                    (if (string-prefix?
                                         _%sys130439%_
                                         _%sys-type-str130414%_)
                                        _%sys130439%_
                                        (_%lp130416%_ _%rest130438%_)))))
                            (if (pair? _%rest130419130427%_)
                                (let ((_%hd130424130444%_
                                       (##car _%rest130419130427%_))
                                      (_%tl130425130446%_
                                       (##cdr _%rest130419130427%_)))
                                  (let* ((_%sys130449%_ _%hd130424130444%_)
                                         (_%rest130451%_ _%tl130425130446%_))
                                    (_%K130423130441%_
                                     _%rest130451%_
                                     _%sys130449%_)))
                                (_%else130421130435%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self130343%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self130343%_)
            (let* ((_%g130355130367%_ (system-type))
                   (_%else130357130375%_ (lambda () '#!void))
                   (_%K130359130388%_
                    (lambda (_%sys-type130378%_
                             _%sys-vendor130379%_
                             _%sys-cpu130380%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu130380%_
                       '#f
                       '0
                       _%self130343%_)
                      (gx#core-bind-feature!__%
                       _%sys-type130378%_
                       '#f
                       '0
                       _%self130343%_)
                      (if (_%linux-variant?130353%_ _%sys-type130378%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self130343%_)
                          (let ((_%$e130383%_
                                 (_%bsd-variant130354%_ _%sys-type130378%_)))
                            (if _%$e130383%_
                                ((lambda (_%sys-prefix130386%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self130343%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix130386%_)
                                    '#f
                                    '0
                                    _%self130343%_))
                                 _%$e130383%_)
                                '#!void))))))
              (if (pair? _%g130355130367%_)
                  (let ((_%hd130360130391%_ (##car _%g130355130367%_))
                        (_%tl130361130393%_ (##cdr _%g130355130367%_)))
                    (let ((_%sys-cpu130396%_ _%hd130360130391%_))
                      (if (pair? _%tl130361130393%_)
                          (let ((_%hd130362130398%_ (##car _%tl130361130393%_))
                                (_%tl130363130400%_
                                 (##cdr _%tl130361130393%_)))
                            (let ((_%sys-vendor130403%_ _%hd130362130398%_))
                              (if (pair? _%tl130363130400%_)
                                  (let ((_%hd130364130405%_
                                         (##car _%tl130363130400%_))
                                        (_%tl130365130407%_
                                         (##cdr _%tl130363130400%_)))
                                    (let ((_%sys-type130410%_
                                           _%hd130364130405%_))
                                      (if (null? _%tl130365130407%_)
                                          (_%K130359130388%_
                                           _%sys-type130410%_
                                           _%sys-vendor130403%_
                                           _%sys-cpu130396%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self130343%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
