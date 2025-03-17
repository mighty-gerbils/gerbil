(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1742223873)
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
      (lambda (_%self131431132511%_ _%bind?132513%_)
        (let* ((_%self132515%_ _%self131431132511%_)
               (_%self132517%_ _%self132515%_))
          (if (##fx< '2 (##structure-length _%self132517%_))
              (begin
                (##unchecked-structure-set! _%self132517%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self132517%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self132517%_
                     '2
                     (##structure-length _%self132517%_)))
          (if _%bind?132513%_
              (begin
                (let ((__method132580
                       (__method-ref
                        _%self132517%_
                        'bind-core-syntax-expanders!)))
                  (if __method132580
                      (__method132580 _%self132517%_)
                      (begin
                        (error '"Missing method"
                               _%self132517%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method132581
                       (__method-ref
                        _%self132517%_
                        'bind-core-macro-expanders!)))
                  (if __method132581
                      (__method132581 _%self132517%_)
                      (begin
                        (error '"Missing method"
                               _%self132517%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method132582
                       (__method-ref _%self132517%_ 'bind-core-features!)))
                  (if __method132582
                      (__method132582 _%self132517%_)
                      (begin
                        (error '"Missing method"
                               _%self132517%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self131431132530%_)
        (let ((_%bind?132532%_ '#t))
          (gx#root-context:::init!__% _%self131431132530%_ _%bind?132532%_))))
    (define gx#root-context:::init!
      (lambda _g132585_
        (let ((_g132584_ (##length _g132585_)))
          (cond ((##fx= _g132584_ 1)
                 (apply gx#root-context:::init!__0 _g132585_))
                ((##fx= _g132584_ 2)
                 (apply gx#root-context:::init!__% _g132585_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g132585_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass132536 __method-table132537)
        (let ((__bind-core-syntax-expanders!132538
               (__make-promise
                (lambda ()
                  (let ((__method132541
                         (symbolic-table-ref
                          __method-table132537
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method132541
                        __method132541
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!132539
               (__make-promise
                (lambda ()
                  (let ((__method132542
                         (symbolic-table-ref
                          __method-table132537
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method132542
                        __method132542
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!132540
               (__make-promise
                (lambda ()
                  (let ((__method132543
                         (symbolic-table-ref
                          __method-table132537
                          'bind-core-features!
                          '#f)))
                    (if __method132543
                        __method132543
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_%opt-lambda132509132527%_
                 (lambda (_%self131431132511%_ _%bind?132513%_)
                   (let* ((_%self132515%_ _%self131431132511%_)
                          (_%self132517%_ _%self132515%_))
                     (if (##fx< '2 (##structure-length _%self132517%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self132517%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self132517%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self132517%_
                                '2
                                (##structure-length _%self132517%_)))
                     (if _%bind?132513%_
                         (begin
                           ((force __bind-core-syntax-expanders!132538)
                            _%self132517%_)
                           ((force __bind-core-macro-expanders!132539)
                            _%self132517%_)
                           ((force __bind-core-features!132540)
                            _%self132517%_))
                         '#!void)))))
            (lambda _g132587_
              (let ((_g132586_ (##length _g132587_)))
                (cond ((##fx= _g132586_ 1)
                       (apply (lambda (_%self131431132530%_)
                                (let ((_%bind?132532%_ '#t))
                                  (_%opt-lambda132509132527%_
                                   _%self131431132530%_
                                   _%bind?132532%_)))
                              _g132587_))
                      ((##fx= _g132586_ 2)
                       (apply _%opt-lambda132509132527%_ _g132587_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g132587_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self131432132354%_ _%super132356%_)
        (let* ((_%self132358%_ _%self131432132354%_)
               (_%self132360%_ _%self132358%_)
               (_%super132376%_
                (let ((_%$e132370%_ _%super132356%_))
                  (if _%$e132370%_
                      _%$e132370%_
                      (let ((_%$e132373%_ (gx#core-context-root__0)))
                        (if _%$e132373%_
                            _%$e132373%_
                            (let ((__obj132583
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj132583)
                              __obj132583)))))))
          (if (##fx< '5 (##structure-length _%self132360%_))
              (begin
                (##unchecked-structure-set! _%self132360%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self132360%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self132360%_
                 _%super132376%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self132360%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self132360%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self132360%_
                     '5
                     (##structure-length _%self132360%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self131432132381%_)
        (let ((_%super132383%_ '#f))
          (gx#top-context:::init!__% _%self131432132381%_ _%super132383%_))))
    (define gx#top-context:::init!
      (lambda _g132589_
        (let ((_g132588_ (##length _g132589_)))
          (cond ((##fx= _g132588_ 1)
                 (apply gx#top-context:::init!__0 _g132589_))
                ((##fx= _g132588_ 2)
                 (apply gx#top-context:::init!__% _g132589_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g132589_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self131433132072%_ _%bindings132074%_)
        (let* ((_%self132076%_ _%self131433132072%_)
               (_%self132078%_ _%self132076%_))
          (for-each
           (lambda (_%bind132088%_)
             (let* ((_%bind132089132096%_ _%bind132088%_)
                    (_%E132091132100%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind132089132096%_
                              '([id . rest]))
                       '#!void))
                    (_%K132092132209%_
                     (lambda (_%rest132103%_ _%id132104%_)
                       (gx#core-context-put!
                        _%self132078%_
                        _%id132104%_
                        (##structure
                         gx#syntax-binding::t
                         _%id132104%_
                         _%id132104%_
                         '#f
                         (let* ((_%rest132105132116%_ _%rest132103%_)
                                (_%E132107132120%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest132105132116%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K132108132185%_
                                 (lambda (_%compiler132123%_
                                          _%expander132124%_
                                          _%key132125%_)
                                   ((let* ((_%key132126132139%_ _%key132125%_)
                                           (_%E132132132143%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key132126132139%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K132137132179%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K132136132172%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K132135132164%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K132134132156%_
                                             (lambda () gx#make-special-form))
                                            (_%K132133132148%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match132131132151%_
                                                (lambda ()
                                                  (if (##eq? _%key132126132139%_
                                                             'expr:)
                                                      (_%K132133132148%_)
                                                      (_%E132132132143%_))))
                                               (_%try-match132130132159%_
                                                (lambda ()
                                                  (if (##eq? _%key132126132139%_
                                                             'special:)
                                                      (_%K132134132156%_)
                                                      (_%try-match132131132151%_))))
                                               (_%try-match132129132167%_
                                                (lambda ()
                                                  (if (##eq? _%key132126132139%_
                                                             'define:)
                                                      (_%K132135132164%_)
                                                      (_%try-match132130132159%_))))
                                               (_%try-match132128132175%_
                                                (lambda ()
                                                  (if (##eq? _%key132126132139%_
                                                             'module:)
                                                      (_%K132136132172%_)
                                                      (_%try-match132129132167%_)))))
                                          (if (##eq? _%key132126132139%_ 'top:)
                                              (_%K132137132179%_)
                                              (_%try-match132128132175%_)))))
                                    _%expander132124%_
                                    _%id132104%_
                                    (let ((_%$e132182%_ _%compiler132123%_))
                                      (if _%$e132182%_
                                          _%$e132182%_
                                          gx#core-compile-top-error))))))
                           (if (pair? _%rest132105132116%_)
                               (let ((_%hd132109132188%_
                                      (##car _%rest132105132116%_))
                                     (_%tl132110132190%_
                                      (##cdr _%rest132105132116%_)))
                                 (let ((_%key132193%_ _%hd132109132188%_))
                                   (if (pair? _%tl132110132190%_)
                                       (let ((_%hd132111132195%_
                                              (##car _%tl132110132190%_))
                                             (_%tl132112132197%_
                                              (##cdr _%tl132110132190%_)))
                                         (let ((_%expander132200%_
                                                _%hd132111132195%_))
                                           (if (pair? _%tl132112132197%_)
                                               (let ((_%hd132113132202%_
                                                      (##car _%tl132112132197%_))
                                                     (_%tl132114132204%_
                                                      (##cdr _%tl132112132197%_)))
                                                 (let ((_%compiler132207%_
                                                        _%hd132113132202%_))
                                                   (if (null? _%tl132114132204%_)
                                                       (_%K132108132185%_
                                                        _%compiler132207%_
                                                        _%expander132200%_
                                                        _%key132193%_)
                                                       (_%E132107132120%_))))
                                               (_%E132107132120%_))))
                                       (_%E132107132120%_))))
                               (_%E132107132120%_))))))))
               (if (pair? _%bind132089132096%_)
                   (let ((_%hd132093132212%_ (##car _%bind132089132096%_))
                         (_%tl132094132214%_ (##cdr _%bind132089132096%_)))
                     (let* ((_%id132217%_ _%hd132093132212%_)
                            (_%rest132219%_ _%tl132094132214%_))
                       (_%K132092132209%_ _%rest132219%_ _%id132217%_)))
                   (_%E132091132100%_))))
           _%bindings132074%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self131433132224%_)
        (let ((_%bindings132226%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self131433132224%_
           _%bindings132226%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g132591_
        (let ((_g132590_ (##length _g132591_)))
          (cond ((##fx= _g132590_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g132591_))
                ((##fx= _g132590_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g132591_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g132591_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self131434131831%_ _%bindings131833%_)
        (let* ((_%self131835%_ _%self131434131831%_)
               (_%self131837%_ _%self131835%_))
          (for-each
           (lambda (_%bind131847%_)
             (let* ((_%bind131848131855%_ _%bind131847%_)
                    (_%E131850131859%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind131848131855%_
                              '([id . rest]))
                       '#!void))
                    (_%K131851131927%_
                     (lambda (_%rest131862%_ _%id131863%_)
                       (gx#core-context-put!
                        _%self131837%_
                        _%id131863%_
                        (##structure
                         gx#syntax-binding::t
                         _%id131863%_
                         _%id131863%_
                         '#f
                         (let* ((_%rest131864131879%_ _%rest131862%_)
                                (_%E131868131883%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest131864131879%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K131873131912%_
                                  (lambda (_%core-id131910%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id131910%_)))
                                 (_%K131870131897%_
                                  (lambda (_%proc131895%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc131895%_)))
                                 (_%K131869131888%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id131863%_))))
                             (let ((_%try-match131867131891%_
                                    (lambda ()
                                      (if (null? _%rest131864131879%_)
                                          (_%K131869131888%_)
                                          (_%E131868131883%_)))))
                               (if (pair? _%rest131864131879%_)
                                   (let ((_%tl131875131917%_
                                          (##cdr _%rest131864131879%_))
                                         (_%hd131874131915%_
                                          (##car _%rest131864131879%_)))
                                     (if (##eq? _%hd131874131915%_ '=>)
                                         (if (pair? _%tl131875131917%_)
                                             (let ((_%tl131877131922%_
                                                    (##cdr _%tl131875131917%_))
                                                   (_%hd131876131920%_
                                                    (##car _%tl131875131917%_)))
                                               (if (null? _%tl131877131922%_)
                                                   (let ((_%core-id131925%_
                                                          _%hd131876131920%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id131925%_))
                                                   (_%E131868131883%_)))
                                             (if (null? _%tl131875131917%_)
                                                 (let ((_%proc131905%_
                                                        _%hd131874131915%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc131905%_))
                                                 (_%E131868131883%_)))
                                         (if (null? _%tl131875131917%_)
                                             (let ((_%proc131905%_
                                                    _%hd131874131915%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc131905%_))
                                             (_%E131868131883%_))))
                                   (_%try-match131867131891%_))))))))))
               (if (pair? _%bind131848131855%_)
                   (let ((_%hd131852131930%_ (##car _%bind131848131855%_))
                         (_%tl131853131932%_ (##cdr _%bind131848131855%_)))
                     (let* ((_%id131935%_ _%hd131852131930%_)
                            (_%rest131937%_ _%tl131853131932%_))
                       (_%K131851131927%_ _%rest131937%_ _%id131935%_)))
                   (_%E131850131859%_))))
           _%bindings131833%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self131434131942%_)
        (let ((_%bindings131944%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self131434131942%_
           _%bindings131944%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g132593_
        (let ((_g132592_ (##length _g132593_)))
          (cond ((##fx= _g132592_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g132593_))
                ((##fx= _g132592_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g132593_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g132593_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self131435131561%_)
        (let* ((_%self131564%_ _%self131435131561%_)
               (_%self131566%_ _%self131564%_))
          (letrec ((_%linux-variant?131576%_
                    (lambda (_%sys-type131676%_)
                      (let* ((_%g131677131685%_
                              (__string-split
                               (symbol->string _%sys-type131676%_)
                               '#\-))
                             (_%else131679131693%_ (lambda () '#f))
                             (_%K131681131698%_
                              (lambda (_%rest131696%_)
                                (not (null? _%rest131696%_)))))
                        (if (pair? _%g131677131685%_)
                            (let ((_%hd131682131701%_
                                   (##car _%g131677131685%_))
                                  (_%tl131683131703%_
                                   (##cdr _%g131677131685%_)))
                              (if (equal? _%hd131682131701%_ '"linux")
                                  (let ((_%rest131706%_ _%tl131683131703%_))
                                    (_%K131681131698%_ _%rest131706%_))
                                  (_%else131679131693%_)))
                            (_%else131679131693%_)))))
                   (_%bsd-variant131577%_
                    (lambda (_%sys-type131635%_)
                      (let ((_%sys-type-str131637%_
                             (symbol->string _%sys-type131635%_)))
                        (let _%lp131639%_ ((_%rest131641%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest131642131650%_ _%rest131641%_)
                                 (_%else131644131658%_ (lambda () '#f))
                                 (_%K131646131664%_
                                  (lambda (_%rest131661%_ _%sys131662%_)
                                    (if (string-prefix?
                                         _%sys131662%_
                                         _%sys-type-str131637%_)
                                        _%sys131662%_
                                        (_%lp131639%_ _%rest131661%_)))))
                            (if (pair? _%rest131642131650%_)
                                (let ((_%hd131647131667%_
                                       (##car _%rest131642131650%_))
                                      (_%tl131648131669%_
                                       (##cdr _%rest131642131650%_)))
                                  (let* ((_%sys131672%_ _%hd131647131667%_)
                                         (_%rest131674%_ _%tl131648131669%_))
                                    (_%K131646131664%_
                                     _%rest131674%_
                                     _%sys131672%_)))
                                (_%else131644131658%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self131566%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self131566%_)
            (let* ((_%g131578131590%_ (system-type))
                   (_%else131580131598%_ (lambda () '#!void))
                   (_%K131582131611%_
                    (lambda (_%sys-type131601%_
                             _%sys-vendor131602%_
                             _%sys-cpu131603%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu131603%_
                       '#f
                       '0
                       _%self131566%_)
                      (gx#core-bind-feature!__%
                       _%sys-type131601%_
                       '#f
                       '0
                       _%self131566%_)
                      (if (_%linux-variant?131576%_ _%sys-type131601%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self131566%_)
                          (let ((_%$e131606%_
                                 (_%bsd-variant131577%_ _%sys-type131601%_)))
                            (if _%$e131606%_
                                ((lambda (_%sys-prefix131609%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self131566%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix131609%_)
                                    '#f
                                    '0
                                    _%self131566%_))
                                 _%$e131606%_)
                                '#!void))))))
              (if (pair? _%g131578131590%_)
                  (let ((_%hd131583131614%_ (##car _%g131578131590%_))
                        (_%tl131584131616%_ (##cdr _%g131578131590%_)))
                    (let ((_%sys-cpu131619%_ _%hd131583131614%_))
                      (if (pair? _%tl131584131616%_)
                          (let ((_%hd131585131621%_ (##car _%tl131584131616%_))
                                (_%tl131586131623%_
                                 (##cdr _%tl131584131616%_)))
                            (let ((_%sys-vendor131626%_ _%hd131585131621%_))
                              (if (pair? _%tl131586131623%_)
                                  (let ((_%hd131587131628%_
                                         (##car _%tl131586131623%_))
                                        (_%tl131588131630%_
                                         (##cdr _%tl131586131623%_)))
                                    (let ((_%sys-type131633%_
                                           _%hd131587131628%_))
                                      (if (null? _%tl131588131630%_)
                                          (_%K131582131611%_
                                           _%sys-type131633%_
                                           _%sys-vendor131626%_
                                           _%sys-cpu131619%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self131566%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
