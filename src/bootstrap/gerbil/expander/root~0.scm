(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1742226232)
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
      (lambda (_%self131450132530%_ _%bind?132532%_)
        (let* ((_%self132534%_ _%self131450132530%_)
               (_%self132536%_ _%self132534%_))
          (if (##fx< '2 (##structure-length _%self132536%_))
              (begin
                (##unchecked-structure-set! _%self132536%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self132536%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self132536%_
                     '2
                     (##structure-length _%self132536%_)))
          (if _%bind?132532%_
              (begin
                (let ((__method132599
                       (__method-ref
                        _%self132536%_
                        'bind-core-syntax-expanders!)))
                  (if __method132599
                      (__method132599 _%self132536%_)
                      (begin
                        (error '"Missing method"
                               _%self132536%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method132600
                       (__method-ref
                        _%self132536%_
                        'bind-core-macro-expanders!)))
                  (if __method132600
                      (__method132600 _%self132536%_)
                      (begin
                        (error '"Missing method"
                               _%self132536%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method132601
                       (__method-ref _%self132536%_ 'bind-core-features!)))
                  (if __method132601
                      (__method132601 _%self132536%_)
                      (begin
                        (error '"Missing method"
                               _%self132536%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self131450132549%_)
        (let ((_%bind?132551%_ '#t))
          (gx#root-context:::init!__% _%self131450132549%_ _%bind?132551%_))))
    (define gx#root-context:::init!
      (lambda _g132604_
        (let ((_g132603_ (##length _g132604_)))
          (cond ((##fx= _g132603_ 1)
                 (apply gx#root-context:::init!__0 _g132604_))
                ((##fx= _g132603_ 2)
                 (apply gx#root-context:::init!__% _g132604_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g132604_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass132555 __method-table132556)
        (let ((__bind-core-macro-expanders!132557
               (__make-promise
                (lambda ()
                  (let ((__method132560
                         (symbolic-table-ref
                          __method-table132556
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method132560
                        __method132560
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!132558
               (__make-promise
                (lambda ()
                  (let ((__method132561
                         (symbolic-table-ref
                          __method-table132556
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method132561
                        __method132561
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!132559
               (__make-promise
                (lambda ()
                  (let ((__method132562
                         (symbolic-table-ref
                          __method-table132556
                          'bind-core-features!
                          '#f)))
                    (if __method132562
                        __method132562
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_%opt-lambda132528132546%_
                 (lambda (_%self131450132530%_ _%bind?132532%_)
                   (let* ((_%self132534%_ _%self131450132530%_)
                          (_%self132536%_ _%self132534%_))
                     (if (##fx< '2 (##structure-length _%self132536%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self132536%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self132536%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self132536%_
                                '2
                                (##structure-length _%self132536%_)))
                     (if _%bind?132532%_
                         (begin
                           ((force __bind-core-syntax-expanders!132558)
                            _%self132536%_)
                           ((force __bind-core-macro-expanders!132557)
                            _%self132536%_)
                           ((force __bind-core-features!132559)
                            _%self132536%_))
                         '#!void)))))
            (lambda _g132606_
              (let ((_g132605_ (##length _g132606_)))
                (cond ((##fx= _g132605_ 1)
                       (apply (lambda (_%self131450132549%_)
                                (let ((_%bind?132551%_ '#t))
                                  (_%opt-lambda132528132546%_
                                   _%self131450132549%_
                                   _%bind?132551%_)))
                              _g132606_))
                      ((##fx= _g132605_ 2)
                       (apply _%opt-lambda132528132546%_ _g132606_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g132606_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self131451132373%_ _%super132375%_)
        (let* ((_%self132377%_ _%self131451132373%_)
               (_%self132379%_ _%self132377%_)
               (_%super132395%_
                (let ((_%$e132389%_ _%super132375%_))
                  (if _%$e132389%_
                      _%$e132389%_
                      (let ((_%$e132392%_ (gx#core-context-root__0)))
                        (if _%$e132392%_
                            _%$e132392%_
                            (let ((__obj132602
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj132602)
                              __obj132602)))))))
          (if (##fx< '5 (##structure-length _%self132379%_))
              (begin
                (##unchecked-structure-set! _%self132379%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self132379%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self132379%_
                 _%super132395%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self132379%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self132379%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self132379%_
                     '5
                     (##structure-length _%self132379%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self131451132400%_)
        (let ((_%super132402%_ '#f))
          (gx#top-context:::init!__% _%self131451132400%_ _%super132402%_))))
    (define gx#top-context:::init!
      (lambda _g132608_
        (let ((_g132607_ (##length _g132608_)))
          (cond ((##fx= _g132607_ 1)
                 (apply gx#top-context:::init!__0 _g132608_))
                ((##fx= _g132607_ 2)
                 (apply gx#top-context:::init!__% _g132608_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g132608_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self131452132091%_ _%bindings132093%_)
        (let* ((_%self132095%_ _%self131452132091%_)
               (_%self132097%_ _%self132095%_))
          (for-each
           (lambda (_%bind132107%_)
             (let* ((_%bind132108132115%_ _%bind132107%_)
                    (_%E132110132119%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind132108132115%_
                              '([id . rest]))
                       '#!void))
                    (_%K132111132228%_
                     (lambda (_%rest132122%_ _%id132123%_)
                       (gx#core-context-put!
                        _%self132097%_
                        _%id132123%_
                        (##structure
                         gx#syntax-binding::t
                         _%id132123%_
                         _%id132123%_
                         '#f
                         (let* ((_%rest132124132135%_ _%rest132122%_)
                                (_%E132126132139%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest132124132135%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K132127132204%_
                                 (lambda (_%compiler132142%_
                                          _%expander132143%_
                                          _%key132144%_)
                                   ((let* ((_%key132145132158%_ _%key132144%_)
                                           (_%E132151132162%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key132145132158%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K132156132198%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K132155132191%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K132154132183%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K132153132175%_
                                             (lambda () gx#make-special-form))
                                            (_%K132152132167%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match132150132170%_
                                                (lambda ()
                                                  (if (##eq? _%key132145132158%_
                                                             'expr:)
                                                      (_%K132152132167%_)
                                                      (_%E132151132162%_))))
                                               (_%try-match132149132178%_
                                                (lambda ()
                                                  (if (##eq? _%key132145132158%_
                                                             'special:)
                                                      (_%K132153132175%_)
                                                      (_%try-match132150132170%_))))
                                               (_%try-match132148132186%_
                                                (lambda ()
                                                  (if (##eq? _%key132145132158%_
                                                             'define:)
                                                      (_%K132154132183%_)
                                                      (_%try-match132149132178%_))))
                                               (_%try-match132147132194%_
                                                (lambda ()
                                                  (if (##eq? _%key132145132158%_
                                                             'module:)
                                                      (_%K132155132191%_)
                                                      (_%try-match132148132186%_)))))
                                          (if (##eq? _%key132145132158%_ 'top:)
                                              (_%K132156132198%_)
                                              (_%try-match132147132194%_)))))
                                    _%expander132143%_
                                    _%id132123%_
                                    (let ((_%$e132201%_ _%compiler132142%_))
                                      (if _%$e132201%_
                                          _%$e132201%_
                                          gx#core-compile-top-error))))))
                           (if (pair? _%rest132124132135%_)
                               (let ((_%hd132128132207%_
                                      (##car _%rest132124132135%_))
                                     (_%tl132129132209%_
                                      (##cdr _%rest132124132135%_)))
                                 (let ((_%key132212%_ _%hd132128132207%_))
                                   (if (pair? _%tl132129132209%_)
                                       (let ((_%hd132130132214%_
                                              (##car _%tl132129132209%_))
                                             (_%tl132131132216%_
                                              (##cdr _%tl132129132209%_)))
                                         (let ((_%expander132219%_
                                                _%hd132130132214%_))
                                           (if (pair? _%tl132131132216%_)
                                               (let ((_%hd132132132221%_
                                                      (##car _%tl132131132216%_))
                                                     (_%tl132133132223%_
                                                      (##cdr _%tl132131132216%_)))
                                                 (let ((_%compiler132226%_
                                                        _%hd132132132221%_))
                                                   (if (null? _%tl132133132223%_)
                                                       (_%K132127132204%_
                                                        _%compiler132226%_
                                                        _%expander132219%_
                                                        _%key132212%_)
                                                       (_%E132126132139%_))))
                                               (_%E132126132139%_))))
                                       (_%E132126132139%_))))
                               (_%E132126132139%_))))))))
               (if (pair? _%bind132108132115%_)
                   (let ((_%hd132112132231%_ (##car _%bind132108132115%_))
                         (_%tl132113132233%_ (##cdr _%bind132108132115%_)))
                     (let* ((_%id132236%_ _%hd132112132231%_)
                            (_%rest132238%_ _%tl132113132233%_))
                       (_%K132111132228%_ _%rest132238%_ _%id132236%_)))
                   (_%E132110132119%_))))
           _%bindings132093%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self131452132243%_)
        (let ((_%bindings132245%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self131452132243%_
           _%bindings132245%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g132610_
        (let ((_g132609_ (##length _g132610_)))
          (cond ((##fx= _g132609_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g132610_))
                ((##fx= _g132609_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g132610_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g132610_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self131453131850%_ _%bindings131852%_)
        (let* ((_%self131854%_ _%self131453131850%_)
               (_%self131856%_ _%self131854%_))
          (for-each
           (lambda (_%bind131866%_)
             (let* ((_%bind131867131874%_ _%bind131866%_)
                    (_%E131869131878%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind131867131874%_
                              '([id . rest]))
                       '#!void))
                    (_%K131870131946%_
                     (lambda (_%rest131881%_ _%id131882%_)
                       (gx#core-context-put!
                        _%self131856%_
                        _%id131882%_
                        (##structure
                         gx#syntax-binding::t
                         _%id131882%_
                         _%id131882%_
                         '#f
                         (let* ((_%rest131883131898%_ _%rest131881%_)
                                (_%E131887131902%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest131883131898%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K131892131931%_
                                  (lambda (_%core-id131929%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id131929%_)))
                                 (_%K131889131916%_
                                  (lambda (_%proc131914%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc131914%_)))
                                 (_%K131888131907%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id131882%_))))
                             (let ((_%try-match131886131910%_
                                    (lambda ()
                                      (if (null? _%rest131883131898%_)
                                          (_%K131888131907%_)
                                          (_%E131887131902%_)))))
                               (if (pair? _%rest131883131898%_)
                                   (let ((_%tl131894131936%_
                                          (##cdr _%rest131883131898%_))
                                         (_%hd131893131934%_
                                          (##car _%rest131883131898%_)))
                                     (if (##eq? _%hd131893131934%_ '=>)
                                         (if (pair? _%tl131894131936%_)
                                             (let ((_%tl131896131941%_
                                                    (##cdr _%tl131894131936%_))
                                                   (_%hd131895131939%_
                                                    (##car _%tl131894131936%_)))
                                               (if (null? _%tl131896131941%_)
                                                   (let ((_%core-id131944%_
                                                          _%hd131895131939%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id131944%_))
                                                   (_%E131887131902%_)))
                                             (if (null? _%tl131894131936%_)
                                                 (let ((_%proc131924%_
                                                        _%hd131893131934%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc131924%_))
                                                 (_%E131887131902%_)))
                                         (if (null? _%tl131894131936%_)
                                             (let ((_%proc131924%_
                                                    _%hd131893131934%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc131924%_))
                                             (_%E131887131902%_))))
                                   (_%try-match131886131910%_))))))))))
               (if (pair? _%bind131867131874%_)
                   (let ((_%hd131871131949%_ (##car _%bind131867131874%_))
                         (_%tl131872131951%_ (##cdr _%bind131867131874%_)))
                     (let* ((_%id131954%_ _%hd131871131949%_)
                            (_%rest131956%_ _%tl131872131951%_))
                       (_%K131870131946%_ _%rest131956%_ _%id131954%_)))
                   (_%E131869131878%_))))
           _%bindings131852%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self131453131961%_)
        (let ((_%bindings131963%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self131453131961%_
           _%bindings131963%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g132612_
        (let ((_g132611_ (##length _g132612_)))
          (cond ((##fx= _g132611_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g132612_))
                ((##fx= _g132611_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g132612_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g132612_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self131454131580%_)
        (let* ((_%self131583%_ _%self131454131580%_)
               (_%self131585%_ _%self131583%_))
          (letrec ((_%linux-variant?131595%_
                    (lambda (_%sys-type131695%_)
                      (let* ((_%g131696131704%_
                              (__string-split
                               (symbol->string _%sys-type131695%_)
                               '#\-))
                             (_%else131698131712%_ (lambda () '#f))
                             (_%K131700131717%_
                              (lambda (_%rest131715%_)
                                (not (null? _%rest131715%_)))))
                        (if (pair? _%g131696131704%_)
                            (let ((_%hd131701131720%_
                                   (##car _%g131696131704%_))
                                  (_%tl131702131722%_
                                   (##cdr _%g131696131704%_)))
                              (if (equal? _%hd131701131720%_ '"linux")
                                  (let ((_%rest131725%_ _%tl131702131722%_))
                                    (_%K131700131717%_ _%rest131725%_))
                                  (_%else131698131712%_)))
                            (_%else131698131712%_)))))
                   (_%bsd-variant131596%_
                    (lambda (_%sys-type131654%_)
                      (let ((_%sys-type-str131656%_
                             (symbol->string _%sys-type131654%_)))
                        (let _%lp131658%_ ((_%rest131660%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest131661131669%_ _%rest131660%_)
                                 (_%else131663131677%_ (lambda () '#f))
                                 (_%K131665131683%_
                                  (lambda (_%rest131680%_ _%sys131681%_)
                                    (if (string-prefix?
                                         _%sys131681%_
                                         _%sys-type-str131656%_)
                                        _%sys131681%_
                                        (_%lp131658%_ _%rest131680%_)))))
                            (if (pair? _%rest131661131669%_)
                                (let ((_%hd131666131686%_
                                       (##car _%rest131661131669%_))
                                      (_%tl131667131688%_
                                       (##cdr _%rest131661131669%_)))
                                  (let* ((_%sys131691%_ _%hd131666131686%_)
                                         (_%rest131693%_ _%tl131667131688%_))
                                    (_%K131665131683%_
                                     _%rest131693%_
                                     _%sys131691%_)))
                                (_%else131663131677%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self131585%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self131585%_)
            (let* ((_%g131597131609%_ (system-type))
                   (_%else131599131617%_ (lambda () '#!void))
                   (_%K131601131630%_
                    (lambda (_%sys-type131620%_
                             _%sys-vendor131621%_
                             _%sys-cpu131622%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu131622%_
                       '#f
                       '0
                       _%self131585%_)
                      (gx#core-bind-feature!__%
                       _%sys-type131620%_
                       '#f
                       '0
                       _%self131585%_)
                      (if (_%linux-variant?131595%_ _%sys-type131620%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self131585%_)
                          (let ((_%$e131625%_
                                 (_%bsd-variant131596%_ _%sys-type131620%_)))
                            (if _%$e131625%_
                                ((lambda (_%sys-prefix131628%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self131585%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix131628%_)
                                    '#f
                                    '0
                                    _%self131585%_))
                                 _%$e131625%_)
                                '#!void))))))
              (if (pair? _%g131597131609%_)
                  (let ((_%hd131602131633%_ (##car _%g131597131609%_))
                        (_%tl131603131635%_ (##cdr _%g131597131609%_)))
                    (let ((_%sys-cpu131638%_ _%hd131602131633%_))
                      (if (pair? _%tl131603131635%_)
                          (let ((_%hd131604131640%_ (##car _%tl131603131635%_))
                                (_%tl131605131642%_
                                 (##cdr _%tl131603131635%_)))
                            (let ((_%sys-vendor131645%_ _%hd131604131640%_))
                              (if (pair? _%tl131605131642%_)
                                  (let ((_%hd131606131647%_
                                         (##car _%tl131605131642%_))
                                        (_%tl131607131649%_
                                         (##cdr _%tl131605131642%_)))
                                    (let ((_%sys-type131652%_
                                           _%hd131606131647%_))
                                      (if (null? _%tl131607131649%_)
                                          (_%K131601131630%_
                                           _%sys-type131652%_
                                           _%sys-vendor131645%_
                                           _%sys-cpu131638%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self131585%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
