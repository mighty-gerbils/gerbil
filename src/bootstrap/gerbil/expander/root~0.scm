(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1734280447)
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
      (lambda (_%self131396132476%_ _%bind?132478%_)
        (let* ((_%self132480%_ _%self131396132476%_)
               (_%self132482%_ _%self132480%_))
          (if (##fx< '2 (##structure-length _%self132482%_))
              (begin
                (##unchecked-structure-set! _%self132482%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self132482%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self132482%_
                     '2
                     (##vector-length _%self132482%_)))
          (if _%bind?132478%_
              (begin
                (let ((__method132545
                       (__method-ref
                        _%self132482%_
                        'bind-core-syntax-expanders!)))
                  (if __method132545
                      (__method132545 _%self132482%_)
                      (begin
                        (error '"Missing method"
                               _%self132482%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method132546
                       (__method-ref
                        _%self132482%_
                        'bind-core-macro-expanders!)))
                  (if __method132546
                      (__method132546 _%self132482%_)
                      (begin
                        (error '"Missing method"
                               _%self132482%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method132547
                       (__method-ref _%self132482%_ 'bind-core-features!)))
                  (if __method132547
                      (__method132547 _%self132482%_)
                      (begin
                        (error '"Missing method"
                               _%self132482%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self131396132495%_)
        (let ((_%bind?132497%_ '#t))
          (gx#root-context:::init!__% _%self131396132495%_ _%bind?132497%_))))
    (define gx#root-context:::init!
      (lambda _g132550_
        (let ((_g132549_ (##length _g132550_)))
          (cond ((##fx= _g132549_ 1)
                 (apply gx#root-context:::init!__0 _g132550_))
                ((##fx= _g132549_ 2)
                 (apply gx#root-context:::init!__% _g132550_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g132550_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass132501 __method-table132502)
        (let ((__bind-core-macro-expanders!132503
               (__make-promise
                (lambda ()
                  (let ((__method132506
                         (symbolic-table-ref
                          __method-table132502
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method132506
                        __method132506
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!132504
               (__make-promise
                (lambda ()
                  (let ((__method132507
                         (symbolic-table-ref
                          __method-table132502
                          'bind-core-features!
                          '#f)))
                    (if __method132507
                        __method132507
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!132505
               (__make-promise
                (lambda ()
                  (let ((__method132508
                         (symbolic-table-ref
                          __method-table132502
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method132508
                        __method132508
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_%opt-lambda132474132492%_
                 (lambda (_%self131396132476%_ _%bind?132478%_)
                   (let* ((_%self132480%_ _%self131396132476%_)
                          (_%self132482%_ _%self132480%_))
                     (if (##fx< '2 (##structure-length _%self132482%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self132482%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self132482%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self132482%_
                                '2
                                (##vector-length _%self132482%_)))
                     (if _%bind?132478%_
                         (begin
                           ((force __bind-core-syntax-expanders!132505)
                            _%self132482%_)
                           ((force __bind-core-macro-expanders!132503)
                            _%self132482%_)
                           ((force __bind-core-features!132504)
                            _%self132482%_))
                         '#!void)))))
            (lambda _g132552_
              (let ((_g132551_ (##length _g132552_)))
                (cond ((##fx= _g132551_ 1)
                       (apply (lambda (_%self131396132495%_)
                                (let ((_%bind?132497%_ '#t))
                                  (_%opt-lambda132474132492%_
                                   _%self131396132495%_
                                   _%bind?132497%_)))
                              _g132552_))
                      ((##fx= _g132551_ 2)
                       (apply _%opt-lambda132474132492%_ _g132552_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g132552_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self131397132319%_ _%super132321%_)
        (let* ((_%self132323%_ _%self131397132319%_)
               (_%self132325%_ _%self132323%_)
               (_%super132341%_
                (let ((_%$e132335%_ _%super132321%_))
                  (if _%$e132335%_
                      _%$e132335%_
                      (let ((_%$e132338%_ (gx#core-context-root__0)))
                        (if _%$e132338%_
                            _%$e132338%_
                            (let ((__obj132548
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj132548)
                              __obj132548)))))))
          (if (##fx< '5 (##structure-length _%self132325%_))
              (begin
                (##unchecked-structure-set! _%self132325%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self132325%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self132325%_
                 _%super132341%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self132325%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self132325%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self132325%_
                     '5
                     (##vector-length _%self132325%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self131397132346%_)
        (let ((_%super132348%_ '#f))
          (gx#top-context:::init!__% _%self131397132346%_ _%super132348%_))))
    (define gx#top-context:::init!
      (lambda _g132554_
        (let ((_g132553_ (##length _g132554_)))
          (cond ((##fx= _g132553_ 1)
                 (apply gx#top-context:::init!__0 _g132554_))
                ((##fx= _g132553_ 2)
                 (apply gx#top-context:::init!__% _g132554_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g132554_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self131398132037%_ _%bindings132039%_)
        (let* ((_%self132041%_ _%self131398132037%_)
               (_%self132043%_ _%self132041%_))
          (for-each
           (lambda (_%bind132053%_)
             (let* ((_%bind132054132061%_ _%bind132053%_)
                    (_%E132056132065%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind132054132061%_
                              '([id . rest]))
                       '#!void))
                    (_%K132057132174%_
                     (lambda (_%rest132068%_ _%id132069%_)
                       (gx#core-context-put!
                        _%self132043%_
                        _%id132069%_
                        (##structure
                         gx#syntax-binding::t
                         _%id132069%_
                         _%id132069%_
                         '#f
                         (let* ((_%rest132070132081%_ _%rest132068%_)
                                (_%E132072132085%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest132070132081%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K132073132150%_
                                 (lambda (_%compiler132088%_
                                          _%expander132089%_
                                          _%key132090%_)
                                   ((let* ((_%key132091132104%_ _%key132090%_)
                                           (_%E132097132108%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key132091132104%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K132102132144%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K132101132137%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K132100132129%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K132099132121%_
                                             (lambda () gx#make-special-form))
                                            (_%K132098132113%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match132096132116%_
                                                (lambda ()
                                                  (if (##eq? _%key132091132104%_
                                                             'expr:)
                                                      (_%K132098132113%_)
                                                      (_%E132097132108%_))))
                                               (_%try-match132095132124%_
                                                (lambda ()
                                                  (if (##eq? _%key132091132104%_
                                                             'special:)
                                                      (_%K132099132121%_)
                                                      (_%try-match132096132116%_))))
                                               (_%try-match132094132132%_
                                                (lambda ()
                                                  (if (##eq? _%key132091132104%_
                                                             'define:)
                                                      (_%K132100132129%_)
                                                      (_%try-match132095132124%_))))
                                               (_%try-match132093132140%_
                                                (lambda ()
                                                  (if (##eq? _%key132091132104%_
                                                             'module:)
                                                      (_%K132101132137%_)
                                                      (_%try-match132094132132%_)))))
                                          (if (##eq? _%key132091132104%_ 'top:)
                                              (_%K132102132144%_)
                                              (_%try-match132093132140%_)))))
                                    _%expander132089%_
                                    _%id132069%_
                                    (let ((_%$e132147%_ _%compiler132088%_))
                                      (if _%$e132147%_
                                          _%$e132147%_
                                          gx#core-compile-top-error))))))
                           (if (pair? _%rest132070132081%_)
                               (let ((_%hd132074132153%_
                                      (##car _%rest132070132081%_))
                                     (_%tl132075132155%_
                                      (##cdr _%rest132070132081%_)))
                                 (let ((_%key132158%_ _%hd132074132153%_))
                                   (if (pair? _%tl132075132155%_)
                                       (let ((_%hd132076132160%_
                                              (##car _%tl132075132155%_))
                                             (_%tl132077132162%_
                                              (##cdr _%tl132075132155%_)))
                                         (let ((_%expander132165%_
                                                _%hd132076132160%_))
                                           (if (pair? _%tl132077132162%_)
                                               (let ((_%hd132078132167%_
                                                      (##car _%tl132077132162%_))
                                                     (_%tl132079132169%_
                                                      (##cdr _%tl132077132162%_)))
                                                 (let ((_%compiler132172%_
                                                        _%hd132078132167%_))
                                                   (if (null? _%tl132079132169%_)
                                                       (_%K132073132150%_
                                                        _%compiler132172%_
                                                        _%expander132165%_
                                                        _%key132158%_)
                                                       (_%E132072132085%_))))
                                               (_%E132072132085%_))))
                                       (_%E132072132085%_))))
                               (_%E132072132085%_))))))))
               (if (pair? _%bind132054132061%_)
                   (let ((_%hd132058132177%_ (##car _%bind132054132061%_))
                         (_%tl132059132179%_ (##cdr _%bind132054132061%_)))
                     (let* ((_%id132182%_ _%hd132058132177%_)
                            (_%rest132184%_ _%tl132059132179%_))
                       (_%K132057132174%_ _%rest132184%_ _%id132182%_)))
                   (_%E132056132065%_))))
           _%bindings132039%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self131398132189%_)
        (let ((_%bindings132191%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self131398132189%_
           _%bindings132191%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g132556_
        (let ((_g132555_ (##length _g132556_)))
          (cond ((##fx= _g132555_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g132556_))
                ((##fx= _g132555_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g132556_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g132556_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self131399131796%_ _%bindings131798%_)
        (let* ((_%self131800%_ _%self131399131796%_)
               (_%self131802%_ _%self131800%_))
          (for-each
           (lambda (_%bind131812%_)
             (let* ((_%bind131813131820%_ _%bind131812%_)
                    (_%E131815131824%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind131813131820%_
                              '([id . rest]))
                       '#!void))
                    (_%K131816131892%_
                     (lambda (_%rest131827%_ _%id131828%_)
                       (gx#core-context-put!
                        _%self131802%_
                        _%id131828%_
                        (##structure
                         gx#syntax-binding::t
                         _%id131828%_
                         _%id131828%_
                         '#f
                         (let* ((_%rest131829131844%_ _%rest131827%_)
                                (_%E131833131848%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest131829131844%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K131838131877%_
                                  (lambda (_%core-id131875%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id131875%_)))
                                 (_%K131835131862%_
                                  (lambda (_%proc131860%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc131860%_)))
                                 (_%K131834131853%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id131828%_))))
                             (let ((_%try-match131832131856%_
                                    (lambda ()
                                      (if (null? _%rest131829131844%_)
                                          (_%K131834131853%_)
                                          (_%E131833131848%_)))))
                               (if (pair? _%rest131829131844%_)
                                   (let ((_%tl131840131882%_
                                          (##cdr _%rest131829131844%_))
                                         (_%hd131839131880%_
                                          (##car _%rest131829131844%_)))
                                     (if (##eq? _%hd131839131880%_ '=>)
                                         (if (pair? _%tl131840131882%_)
                                             (let ((_%tl131842131887%_
                                                    (##cdr _%tl131840131882%_))
                                                   (_%hd131841131885%_
                                                    (##car _%tl131840131882%_)))
                                               (if (null? _%tl131842131887%_)
                                                   (let ((_%core-id131890%_
                                                          _%hd131841131885%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id131890%_))
                                                   (_%E131833131848%_)))
                                             (if (null? _%tl131840131882%_)
                                                 (let ((_%proc131870%_
                                                        _%hd131839131880%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc131870%_))
                                                 (_%E131833131848%_)))
                                         (if (null? _%tl131840131882%_)
                                             (let ((_%proc131870%_
                                                    _%hd131839131880%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc131870%_))
                                             (_%E131833131848%_))))
                                   (_%try-match131832131856%_))))))))))
               (if (pair? _%bind131813131820%_)
                   (let ((_%hd131817131895%_ (##car _%bind131813131820%_))
                         (_%tl131818131897%_ (##cdr _%bind131813131820%_)))
                     (let* ((_%id131900%_ _%hd131817131895%_)
                            (_%rest131902%_ _%tl131818131897%_))
                       (_%K131816131892%_ _%rest131902%_ _%id131900%_)))
                   (_%E131815131824%_))))
           _%bindings131798%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self131399131907%_)
        (let ((_%bindings131909%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self131399131907%_
           _%bindings131909%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g132558_
        (let ((_g132557_ (##length _g132558_)))
          (cond ((##fx= _g132557_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g132558_))
                ((##fx= _g132557_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g132558_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g132558_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self131400131526%_)
        (let* ((_%self131529%_ _%self131400131526%_)
               (_%self131531%_ _%self131529%_))
          (letrec ((_%linux-variant?131541%_
                    (lambda (_%sys-type131641%_)
                      (let* ((_%g131642131650%_
                              (__string-split
                               (symbol->string _%sys-type131641%_)
                               '#\-))
                             (_%else131644131658%_ (lambda () '#f))
                             (_%K131646131663%_
                              (lambda (_%rest131661%_)
                                (not (null? _%rest131661%_)))))
                        (if (pair? _%g131642131650%_)
                            (let ((_%hd131647131666%_
                                   (##car _%g131642131650%_))
                                  (_%tl131648131668%_
                                   (##cdr _%g131642131650%_)))
                              (if (equal? _%hd131647131666%_ '"linux")
                                  (let ((_%rest131671%_ _%tl131648131668%_))
                                    (_%K131646131663%_ _%rest131671%_))
                                  (_%else131644131658%_)))
                            (_%else131644131658%_)))))
                   (_%bsd-variant131542%_
                    (lambda (_%sys-type131600%_)
                      (let ((_%sys-type-str131602%_
                             (symbol->string _%sys-type131600%_)))
                        (let _%lp131604%_ ((_%rest131606%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest131607131615%_ _%rest131606%_)
                                 (_%else131609131623%_ (lambda () '#f))
                                 (_%K131611131629%_
                                  (lambda (_%rest131626%_ _%sys131627%_)
                                    (if (string-prefix?
                                         _%sys131627%_
                                         _%sys-type-str131602%_)
                                        _%sys131627%_
                                        (_%lp131604%_ _%rest131626%_)))))
                            (if (pair? _%rest131607131615%_)
                                (let ((_%hd131612131632%_
                                       (##car _%rest131607131615%_))
                                      (_%tl131613131634%_
                                       (##cdr _%rest131607131615%_)))
                                  (let* ((_%sys131637%_ _%hd131612131632%_)
                                         (_%rest131639%_ _%tl131613131634%_))
                                    (_%K131611131629%_
                                     _%rest131639%_
                                     _%sys131637%_)))
                                (_%else131609131623%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self131531%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self131531%_)
            (let* ((_%g131543131555%_ (system-type))
                   (_%else131545131563%_ (lambda () '#!void))
                   (_%K131547131576%_
                    (lambda (_%sys-type131566%_
                             _%sys-vendor131567%_
                             _%sys-cpu131568%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu131568%_
                       '#f
                       '0
                       _%self131531%_)
                      (gx#core-bind-feature!__%
                       _%sys-type131566%_
                       '#f
                       '0
                       _%self131531%_)
                      (if (_%linux-variant?131541%_ _%sys-type131566%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self131531%_)
                          (let ((_%$e131571%_
                                 (_%bsd-variant131542%_ _%sys-type131566%_)))
                            (if _%$e131571%_
                                ((lambda (_%sys-prefix131574%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self131531%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix131574%_)
                                    '#f
                                    '0
                                    _%self131531%_))
                                 _%$e131571%_)
                                '#!void))))))
              (if (pair? _%g131543131555%_)
                  (let ((_%hd131548131579%_ (##car _%g131543131555%_))
                        (_%tl131549131581%_ (##cdr _%g131543131555%_)))
                    (let ((_%sys-cpu131584%_ _%hd131548131579%_))
                      (if (pair? _%tl131549131581%_)
                          (let ((_%hd131550131586%_ (##car _%tl131549131581%_))
                                (_%tl131551131588%_
                                 (##cdr _%tl131549131581%_)))
                            (let ((_%sys-vendor131591%_ _%hd131550131586%_))
                              (if (pair? _%tl131551131588%_)
                                  (let ((_%hd131552131593%_
                                         (##car _%tl131551131588%_))
                                        (_%tl131553131595%_
                                         (##cdr _%tl131551131588%_)))
                                    (let ((_%sys-type131598%_
                                           _%hd131552131593%_))
                                      (if (null? _%tl131553131595%_)
                                          (_%K131547131576%_
                                           _%sys-type131598%_
                                           _%sys-vendor131591%_
                                           _%sys-cpu131584%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self131531%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
