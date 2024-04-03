(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1712121899)
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
      (lambda (_%self127620%_ _%bind?127621%_)
        (let ()
          (let ((_%self127624%_ _%self127620%_))
            (let ()
              (if (##fx< '2 (##structure-length _%self127624%_))
                  (begin
                    (##unchecked-structure-set!
                     _%self127624%_
                     'root
                     '1
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self127624%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self127624%_
                         '2
                         (##vector-length _%self127624%_)))
              (if _%bind?127621%_
                  (begin
                    (let ((__method127679
                           (__method-ref
                            _%self127624%_
                            'bind-core-syntax-expanders!)))
                      (if __method127679
                          (__method127679 _%self127624%_)
                          (error '"Missing method"
                                 _%self127624%_
                                 'bind-core-syntax-expanders!)))
                    (let ((__method127680
                           (__method-ref
                            _%self127624%_
                            'bind-core-macro-expanders!)))
                      (if __method127680
                          (__method127680 _%self127624%_)
                          (error '"Missing method"
                                 _%self127624%_
                                 'bind-core-macro-expanders!)))
                    (let ((__method127681
                           (__method-ref _%self127624%_ 'bind-core-features!)))
                      (if __method127681
                          (__method127681 _%self127624%_)
                          (error '"Missing method"
                                 _%self127624%_
                                 'bind-core-features!))))
                  '#!void))))))
    (define gx#root-context:::init!__0
      (lambda (_%self127637%_)
        (let ((_%bind?127639%_ '#t))
          (gx#root-context:::init!__% _%self127637%_ _%bind?127639%_))))
    (define gx#root-context:::init!
      (lambda _g127684_
        (let ((_g127683_ (##length _g127684_)))
          (cond ((##fx= _g127683_ 1)
                 (apply (lambda (_%self127637%_)
                          (gx#root-context:::init!__0 _%self127637%_))
                        _g127684_))
                ((##fx= _g127683_ 2)
                 (apply (lambda (_%self127641%_ _%bind?127642%_)
                          (gx#root-context:::init!__%
                           _%self127641%_
                           _%bind?127642%_))
                        _g127684_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g127684_))))))
    (__bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self127465%_ _%super127466%_)
        (let ()
          (let ((_%self127469%_ _%self127465%_))
            (let ()
              (let ((_%super127485%_
                     (let ((_%$e127479%_ _%super127466%_))
                       (if _%$e127479%_
                           _%$e127479%_
                           (let ((_%$e127482%_ (gx#core-context-root__0)))
                             (if _%$e127482%_
                                 _%$e127482%_
                                 (let ((__obj127682
                                        (##structure
                                         gx#root-context::t
                                         '#f
                                         '#f)))
                                   (gx#root-context:::init! __obj127682)
                                   __obj127682)))))))
                (if (##fx< '5 (##structure-length _%self127469%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self127469%_
                       'top
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127469%_
                       (make-hash-table-eq)
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127469%_
                       _%super127485%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127469%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127469%_
                       '#f
                       '5
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self127469%_
                           '5
                           (##vector-length _%self127469%_)))))))))
    (define gx#top-context:::init!__0
      (lambda (_%self127490%_)
        (let ((_%super127492%_ '#f))
          (gx#top-context:::init!__% _%self127490%_ _%super127492%_))))
    (define gx#top-context:::init!
      (lambda _g127686_
        (let ((_g127685_ (##length _g127686_)))
          (cond ((##fx= _g127685_ 1)
                 (apply (lambda (_%self127490%_)
                          (gx#top-context:::init!__0 _%self127490%_))
                        _g127686_))
                ((##fx= _g127685_ 2)
                 (apply (lambda (_%self127494%_ _%super127495%_)
                          (gx#top-context:::init!__%
                           _%self127494%_
                           _%super127495%_))
                        _g127686_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g127686_))))))
    (__bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self127185%_ _%bindings127186%_)
        (let ()
          (let ((_%self127189%_ _%self127185%_))
            (let ()
              (for-each
               (lambda (_%bind127199%_)
                 (let* ((_%bind127200127207%_ _%bind127199%_)
                        (_%E127202127211%_
                         (lambda ()
                           (error '"No clause matching"
                                  _%bind127200127207%_
                                  '([id . rest]))
                           '#!void))
                        (_%K127203127320%_
                         (lambda (_%rest127214%_ _%id127215%_)
                           (gx#core-context-put!
                            _%self127189%_
                            _%id127215%_
                            (##structure
                             gx#syntax-binding::t
                             _%id127215%_
                             _%id127215%_
                             '#f
                             (let* ((_%rest127216127227%_ _%rest127214%_)
                                    (_%E127218127231%_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _%rest127216127227%_
                                              '([key expander compiler]))
                                       '#!void))
                                    (_%K127219127296%_
                                     (lambda (_%compiler127234%_
                                              _%expander127235%_
                                              _%key127236%_)
                                       ((let* ((_%key127237127250%_
                                                _%key127236%_)
                                               (_%E127243127254%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%key127237127250%_
                                                         '(top:)
                                                         '(module:)
                                                         '(define:)
                                                         '(special:)
                                                         '(expr:))
                                                  '#!void)))
                                          (let ((_%K127248127290%_
                                                 (lambda ()
                                                   gx#make-top-special-form))
                                                (_%K127247127283%_
                                                 (lambda ()
                                                   gx#make-module-special-form))
                                                (_%K127246127275%_
                                                 (lambda ()
                                                   gx#make-definition-form))
                                                (_%K127245127267%_
                                                 (lambda ()
                                                   gx#make-special-form))
                                                (_%K127244127259%_
                                                 (lambda ()
                                                   gx#make-expression-form)))
                                            (let* ((_%try-match127242127262%_
                                                    (lambda ()
                                                      (if (##eq? _%key127237127250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'expr:)
                  (_%K127244127259%_)
                  (_%E127243127254%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%try-match127241127270%_
                                                    (lambda ()
                                                      (if (##eq? _%key127237127250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'special:)
                  (_%K127245127267%_)
                  (_%try-match127242127262%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%try-match127240127278%_
                                                    (lambda ()
                                                      (if (##eq? _%key127237127250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'define:)
                  (_%K127246127275%_)
                  (_%try-match127241127270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%try-match127239127286%_
                                                    (lambda ()
                                                      (if (##eq? _%key127237127250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'module:)
                  (_%K127247127283%_)
                  (_%try-match127240127278%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##eq? _%key127237127250%_
                                                         'top:)
                                                  (_%K127248127290%_)
                                                  (_%try-match127239127286%_)))))
                                        _%expander127235%_
                                        _%id127215%_
                                        (let ((_%$e127293%_
                                               _%compiler127234%_))
                                          (if _%$e127293%_
                                              _%$e127293%_
                                              gx#core-compile-top-error))))))
                               (if (##pair? _%rest127216127227%_)
                                   (let ((_%hd127220127299%_
                                          (##car _%rest127216127227%_))
                                         (_%tl127221127301%_
                                          (##cdr _%rest127216127227%_)))
                                     (let ((_%key127304%_ _%hd127220127299%_))
                                       (if (##pair? _%tl127221127301%_)
                                           (let ((_%hd127222127306%_
                                                  (##car _%tl127221127301%_))
                                                 (_%tl127223127308%_
                                                  (##cdr _%tl127221127301%_)))
                                             (let ((_%expander127311%_
                                                    _%hd127222127306%_))
                                               (if (##pair? _%tl127223127308%_)
                                                   (let ((_%hd127224127313%_
                                                          (##car _%tl127223127308%_))
                                                         (_%tl127225127315%_
                                                          (##cdr _%tl127223127308%_)))
                                                     (let ((_%compiler127318%_
                                                            _%hd127224127313%_))
                                                       (if (##null? _%tl127225127315%_)
                                                           (_%K127219127296%_
                                                            _%compiler127318%_
                                                            _%expander127311%_
                                                            _%key127304%_)
                                                           (_%E127218127231%_))))
                                                   (_%E127218127231%_))))
                                           (_%E127218127231%_))))
                                   (_%E127218127231%_))))))))
                   (if (##pair? _%bind127200127207%_)
                       (let ((_%hd127204127323%_ (##car _%bind127200127207%_))
                             (_%tl127205127325%_ (##cdr _%bind127200127207%_)))
                         (let* ((_%id127328%_ _%hd127204127323%_)
                                (_%rest127330%_ _%tl127205127325%_))
                           (_%K127203127320%_ _%rest127330%_ _%id127328%_)))
                       (_%E127202127211%_))))
               _%bindings127186%_))))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self127335%_)
        (let ((_%bindings127337%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self127335%_
           _%bindings127337%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g127688_
        (let ((_g127687_ (##length _g127688_)))
          (cond ((##fx= _g127687_ 1)
                 (apply (lambda (_%self127335%_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _%self127335%_))
                        _g127688_))
                ((##fx= _g127687_ 2)
                 (apply (lambda (_%self127339%_ _%bindings127340%_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _%self127339%_
                           _%bindings127340%_))
                        _g127688_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g127688_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self126946%_ _%bindings126947%_)
        (let ()
          (let ((_%self126950%_ _%self126946%_))
            (let ()
              (for-each
               (lambda (_%bind126960%_)
                 (let* ((_%bind126961126968%_ _%bind126960%_)
                        (_%E126963126972%_
                         (lambda ()
                           (error '"No clause matching"
                                  _%bind126961126968%_
                                  '([id . rest]))
                           '#!void))
                        (_%K126964127040%_
                         (lambda (_%rest126975%_ _%id126976%_)
                           (gx#core-context-put!
                            _%self126950%_
                            _%id126976%_
                            (##structure
                             gx#syntax-binding::t
                             _%id126976%_
                             _%id126976%_
                             '#f
                             (let* ((_%rest126977126992%_ _%rest126975%_)
                                    (_%E126981126996%_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _%rest126977126992%_
                                              '(['=> core-id])
                                              '([proc])
                                              '([]))
                                       '#!void)))
                               (let ((_%K126986127025%_
                                      (lambda (_%core-id127023%_)
                                        (##structure
                                         gx#rename-macro-expander::t
                                         _%core-id127023%_)))
                                     (_%K126983127010%_
                                      (lambda (_%proc127008%_)
                                        (##structure
                                         gx#macro-expander::t
                                         _%proc127008%_)))
                                     (_%K126982127001%_
                                      (lambda ()
                                        (##structure
                                         gx#reserved-expander::t
                                         _%id126976%_))))
                                 (let ((_%try-match126980127004%_
                                        (lambda ()
                                          (if (##null? _%rest126977126992%_)
                                              (_%K126982127001%_)
                                              (_%E126981126996%_)))))
                                   (if (##pair? _%rest126977126992%_)
                                       (let ((_%tl126988127030%_
                                              (##cdr _%rest126977126992%_))
                                             (_%hd126987127028%_
                                              (##car _%rest126977126992%_)))
                                         (if (##eq? _%hd126987127028%_ '=>)
                                             (if (##pair? _%tl126988127030%_)
                                                 (let ((_%tl126990127035%_
                                                        (##cdr _%tl126988127030%_))
                                                       (_%hd126989127033%_
                                                        (##car _%tl126988127030%_)))
                                                   (if (##null? _%tl126990127035%_)
                                                       (let ((_%core-id127038%_
                                                              _%hd126989127033%_))
                                                         (##structure
                                                          gx#rename-macro-expander::t
                                                          _%core-id127038%_))
                                                       (_%E126981126996%_)))
                                                 (if (##null? _%tl126988127030%_)
                                                     (let ((_%proc127018%_
                                                            _%hd126987127028%_))
                                                       (##structure
                                                        gx#macro-expander::t
                                                        _%proc127018%_))
                                                     (_%E126981126996%_)))
                                             (if (##null? _%tl126988127030%_)
                                                 (let ((_%proc127018%_
                                                        _%hd126987127028%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc127018%_))
                                                 (_%E126981126996%_))))
                                       (_%try-match126980127004%_))))))))))
                   (if (##pair? _%bind126961126968%_)
                       (let ((_%hd126965127043%_ (##car _%bind126961126968%_))
                             (_%tl126966127045%_ (##cdr _%bind126961126968%_)))
                         (let* ((_%id127048%_ _%hd126965127043%_)
                                (_%rest127050%_ _%tl126966127045%_))
                           (_%K126964127040%_ _%rest127050%_ _%id127048%_)))
                       (_%E126963126972%_))))
               _%bindings126947%_))))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self127055%_)
        (let ((_%bindings127057%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self127055%_
           _%bindings127057%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g127690_
        (let ((_g127689_ (##length _g127690_)))
          (cond ((##fx= _g127689_ 1)
                 (apply (lambda (_%self127055%_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _%self127055%_))
                        _g127690_))
                ((##fx= _g127689_ 2)
                 (apply (lambda (_%self127059%_ _%bindings127060%_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _%self127059%_
                           _%bindings127060%_))
                        _g127690_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g127690_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self126678%_)
        (let ()
          (let ((_%self126681%_ _%self126678%_))
            (let ()
              (letrec ((_%linux-variant?126691%_
                        (lambda (_%sys-type126791%_)
                          (let* ((_%g126792126800%_
                                  (__string-split
                                   (symbol->string _%sys-type126791%_)
                                   '#\-))
                                 (_%else126794126808%_ (lambda () '#f))
                                 (_%K126796126813%_
                                  (lambda (_%rest126811%_)
                                    (not (null? _%rest126811%_)))))
                            (if (##pair? _%g126792126800%_)
                                (let ((_%hd126797126816%_
                                       (##car _%g126792126800%_))
                                      (_%tl126798126818%_
                                       (##cdr _%g126792126800%_)))
                                  (if (equal? _%hd126797126816%_ '"linux")
                                      (let ((_%rest126821%_
                                             _%tl126798126818%_))
                                        (_%K126796126813%_ _%rest126821%_))
                                      (_%else126794126808%_)))
                                (_%else126794126808%_)))))
                       (_%bsd-variant126692%_
                        (lambda (_%sys-type126750%_)
                          (let ((_%sys-type-str126752%_
                                 (symbol->string _%sys-type126750%_)))
                            (let _%lp126754%_ ((_%rest126756%_
                                                '("openbsd"
                                                  "netbsd"
                                                  "freebsd"
                                                  "darwin")))
                              (let* ((_%rest126757126765%_ _%rest126756%_)
                                     (_%else126759126773%_ (lambda () '#f))
                                     (_%K126761126779%_
                                      (lambda (_%rest126776%_ _%sys126777%_)
                                        (if (string-prefix?
                                             _%sys126777%_
                                             _%sys-type-str126752%_)
                                            _%sys126777%_
                                            (_%lp126754%_ _%rest126776%_)))))
                                (if (##pair? _%rest126757126765%_)
                                    (let ((_%hd126762126782%_
                                           (##car _%rest126757126765%_))
                                          (_%tl126763126784%_
                                           (##cdr _%rest126757126765%_)))
                                      (let* ((_%sys126787%_ _%hd126762126782%_)
                                             (_%rest126789%_
                                              _%tl126763126784%_))
                                        (_%K126761126779%_
                                         _%rest126789%_
                                         _%sys126787%_)))
                                    (_%else126759126773%_))))))))
                (gx#core-bind-feature!__% 'gerbil '#f '0 _%self126681%_)
                (gx#core-bind-feature!__%
                 (gerbil-system)
                 '#f
                 '0
                 _%self126681%_)
                (let* ((_%g126693126705%_ (system-type))
                       (_%else126695126713%_ (lambda () '#!void))
                       (_%K126697126726%_
                        (lambda (_%sys-type126716%_
                                 _%sys-vendor126717%_
                                 _%sys-cpu126718%_)
                          (gx#core-bind-feature!__%
                           _%sys-cpu126718%_
                           '#f
                           '0
                           _%self126681%_)
                          (gx#core-bind-feature!__%
                           _%sys-type126716%_
                           '#f
                           '0
                           _%self126681%_)
                          (if (_%linux-variant?126691%_ _%sys-type126716%_)
                              (let ()
                                (gx#core-bind-feature!__%
                                 (##string->symbol '"linux")
                                 '#f
                                 '0
                                 _%self126681%_))
                              (let ((_%$e126721%_
                                     (_%bsd-variant126692%_
                                      _%sys-type126716%_)))
                                (if _%$e126721%_
                                    ((lambda (_%sys-prefix126724%_)
                                       (gx#core-bind-feature!__%
                                        (##string->symbol '"bsd")
                                        '#f
                                        '0
                                        _%self126681%_)
                                       (gx#core-bind-feature!__%
                                        (string->symbol _%sys-prefix126724%_)
                                        '#f
                                        '0
                                        _%self126681%_))
                                     _%$e126721%_)
                                    '#!void))))))
                  (if (##pair? _%g126693126705%_)
                      (let ((_%hd126698126729%_ (##car _%g126693126705%_))
                            (_%tl126699126731%_ (##cdr _%g126693126705%_)))
                        (let ((_%sys-cpu126734%_ _%hd126698126729%_))
                          (if (##pair? _%tl126699126731%_)
                              (let ((_%hd126700126736%_
                                     (##car _%tl126699126731%_))
                                    (_%tl126701126738%_
                                     (##cdr _%tl126699126731%_)))
                                (let ((_%sys-vendor126741%_
                                       _%hd126700126736%_))
                                  (if (##pair? _%tl126701126738%_)
                                      (let ((_%hd126702126743%_
                                             (##car _%tl126701126738%_))
                                            (_%tl126703126745%_
                                             (##cdr _%tl126701126738%_)))
                                        (let ((_%sys-type126748%_
                                               _%hd126702126743%_))
                                          (if (##null? _%tl126703126745%_)
                                              (_%K126697126726%_
                                               _%sys-type126748%_
                                               _%sys-vendor126741%_
                                               _%sys-cpu126734%_)
                                              '#!void)))
                                      '#!void)))
                              '#!void)))
                      '#!void))
                (if (gerbil-runtime-smp?)
                    (gx#core-bind-feature!__%
                     'gerbil-smp
                     '#f
                     '0
                     _%self126681%_)
                    '#!void)))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
