(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1712093476)
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
      (lambda (_%self127709%_ _%bind?127710%_)
        (let ()
          (let ((_%self127713%_ _%self127709%_))
            (let ()
              (if (##fx< '2 (##structure-length _%self127713%_))
                  (begin
                    (##unchecked-structure-set!
                     _%self127713%_
                     'root
                     '1
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self127713%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self127713%_
                         '2
                         (##vector-length _%self127713%_)))
              (if _%bind?127710%_
                  (begin
                    (let ((__method127768
                           (__method-ref
                            _%self127713%_
                            'bind-core-syntax-expanders!)))
                      (if __method127768
                          (__method127768 _%self127713%_)
                          (error '"Missing method"
                                 _%self127713%_
                                 'bind-core-syntax-expanders!)))
                    (let ((__method127769
                           (__method-ref
                            _%self127713%_
                            'bind-core-macro-expanders!)))
                      (if __method127769
                          (__method127769 _%self127713%_)
                          (error '"Missing method"
                                 _%self127713%_
                                 'bind-core-macro-expanders!)))
                    (let ((__method127770
                           (__method-ref _%self127713%_ 'bind-core-features!)))
                      (if __method127770
                          (__method127770 _%self127713%_)
                          (error '"Missing method"
                                 _%self127713%_
                                 'bind-core-features!))))
                  '#!void))))))
    (define gx#root-context:::init!__0
      (lambda (_%self127726%_)
        (let ((_%bind?127728%_ '#t))
          (gx#root-context:::init!__% _%self127726%_ _%bind?127728%_))))
    (define gx#root-context:::init!
      (lambda _g127773_
        (let ((_g127772_ (##length _g127773_)))
          (cond ((##fx= _g127772_ 1)
                 (apply (lambda (_%self127726%_)
                          (gx#root-context:::init!__0 _%self127726%_))
                        _g127773_))
                ((##fx= _g127772_ 2)
                 (apply (lambda (_%self127730%_ _%bind?127731%_)
                          (gx#root-context:::init!__%
                           _%self127730%_
                           _%bind?127731%_))
                        _g127773_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g127773_))))))
    (__bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self127554%_ _%super127555%_)
        (let ()
          (let ((_%self127558%_ _%self127554%_))
            (let ()
              (let ((_%super127574%_
                     (let ((_%$e127568%_ _%super127555%_))
                       (if _%$e127568%_
                           _%$e127568%_
                           (let ((_%$e127571%_ (gx#core-context-root__0)))
                             (if _%$e127571%_
                                 _%$e127571%_
                                 (let ((__obj127771
                                        (##structure
                                         gx#root-context::t
                                         '#f
                                         '#f)))
                                   (gx#root-context:::init! __obj127771)
                                   __obj127771)))))))
                (if (##fx< '5 (##structure-length _%self127558%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self127558%_
                       'top
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127558%_
                       (make-hash-table-eq)
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127558%_
                       _%super127574%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127558%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self127558%_
                       '#f
                       '5
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self127558%_
                           '5
                           (##vector-length _%self127558%_)))))))))
    (define gx#top-context:::init!__0
      (lambda (_%self127579%_)
        (let ((_%super127581%_ '#f))
          (gx#top-context:::init!__% _%self127579%_ _%super127581%_))))
    (define gx#top-context:::init!
      (lambda _g127775_
        (let ((_g127774_ (##length _g127775_)))
          (cond ((##fx= _g127774_ 1)
                 (apply (lambda (_%self127579%_)
                          (gx#top-context:::init!__0 _%self127579%_))
                        _g127775_))
                ((##fx= _g127774_ 2)
                 (apply (lambda (_%self127583%_ _%super127584%_)
                          (gx#top-context:::init!__%
                           _%self127583%_
                           _%super127584%_))
                        _g127775_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g127775_))))))
    (__bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self127274%_ _%bindings127275%_)
        (let ()
          (let ((_%self127278%_ _%self127274%_))
            (let ()
              (for-each
               (lambda (_%bind127288%_)
                 (let* ((_%bind127289127296%_ _%bind127288%_)
                        (_%E127291127300%_
                         (lambda ()
                           (error '"No clause matching"
                                  _%bind127289127296%_
                                  '([id . rest]))
                           '#!void))
                        (_%K127292127409%_
                         (lambda (_%rest127303%_ _%id127304%_)
                           (gx#core-context-put!
                            _%self127278%_
                            _%id127304%_
                            (##structure
                             gx#syntax-binding::t
                             _%id127304%_
                             _%id127304%_
                             '#f
                             (let* ((_%rest127305127316%_ _%rest127303%_)
                                    (_%E127307127320%_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _%rest127305127316%_
                                              '([key expander compiler]))
                                       '#!void))
                                    (_%K127308127385%_
                                     (lambda (_%compiler127323%_
                                              _%expander127324%_
                                              _%key127325%_)
                                       ((let* ((_%key127326127339%_
                                                _%key127325%_)
                                               (_%E127332127343%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%key127326127339%_
                                                         '(top:)
                                                         '(module:)
                                                         '(define:)
                                                         '(special:)
                                                         '(expr:))
                                                  '#!void)))
                                          (let ((_%K127337127379%_
                                                 (lambda ()
                                                   gx#make-top-special-form))
                                                (_%K127336127372%_
                                                 (lambda ()
                                                   gx#make-module-special-form))
                                                (_%K127335127364%_
                                                 (lambda ()
                                                   gx#make-definition-form))
                                                (_%K127334127356%_
                                                 (lambda ()
                                                   gx#make-special-form))
                                                (_%K127333127348%_
                                                 (lambda ()
                                                   gx#make-expression-form)))
                                            (let* ((_%try-match127331127351%_
                                                    (lambda ()
                                                      (if (##eq? _%key127326127339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'expr:)
                  (_%K127333127348%_)
                  (_%E127332127343%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%try-match127330127359%_
                                                    (lambda ()
                                                      (if (##eq? _%key127326127339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'special:)
                  (_%K127334127356%_)
                  (_%try-match127331127351%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%try-match127329127367%_
                                                    (lambda ()
                                                      (if (##eq? _%key127326127339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'define:)
                  (_%K127335127364%_)
                  (_%try-match127330127359%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%try-match127328127375%_
                                                    (lambda ()
                                                      (if (##eq? _%key127326127339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'module:)
                  (_%K127336127372%_)
                  (_%try-match127329127367%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##eq? _%key127326127339%_
                                                         'top:)
                                                  (_%K127337127379%_)
                                                  (_%try-match127328127375%_)))))
                                        _%expander127324%_
                                        _%id127304%_
                                        (let ((_%$e127382%_
                                               _%compiler127323%_))
                                          (if _%$e127382%_
                                              _%$e127382%_
                                              gx#core-compile-top-error))))))
                               (if (##pair? _%rest127305127316%_)
                                   (let ((_%hd127309127388%_
                                          (##car _%rest127305127316%_))
                                         (_%tl127310127390%_
                                          (##cdr _%rest127305127316%_)))
                                     (let ((_%key127393%_ _%hd127309127388%_))
                                       (if (##pair? _%tl127310127390%_)
                                           (let ((_%hd127311127395%_
                                                  (##car _%tl127310127390%_))
                                                 (_%tl127312127397%_
                                                  (##cdr _%tl127310127390%_)))
                                             (let ((_%expander127400%_
                                                    _%hd127311127395%_))
                                               (if (##pair? _%tl127312127397%_)
                                                   (let ((_%hd127313127402%_
                                                          (##car _%tl127312127397%_))
                                                         (_%tl127314127404%_
                                                          (##cdr _%tl127312127397%_)))
                                                     (let ((_%compiler127407%_
                                                            _%hd127313127402%_))
                                                       (if (##null? _%tl127314127404%_)
                                                           (_%K127308127385%_
                                                            _%compiler127407%_
                                                            _%expander127400%_
                                                            _%key127393%_)
                                                           (_%E127307127320%_))))
                                                   (_%E127307127320%_))))
                                           (_%E127307127320%_))))
                                   (_%E127307127320%_))))))))
                   (if (##pair? _%bind127289127296%_)
                       (let ((_%hd127293127412%_ (##car _%bind127289127296%_))
                             (_%tl127294127414%_ (##cdr _%bind127289127296%_)))
                         (let* ((_%id127417%_ _%hd127293127412%_)
                                (_%rest127419%_ _%tl127294127414%_))
                           (_%K127292127409%_ _%rest127419%_ _%id127417%_)))
                       (_%E127291127300%_))))
               _%bindings127275%_))))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self127424%_)
        (let ((_%bindings127426%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self127424%_
           _%bindings127426%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g127777_
        (let ((_g127776_ (##length _g127777_)))
          (cond ((##fx= _g127776_ 1)
                 (apply (lambda (_%self127424%_)
                          (gx#expander-context::bind-core-syntax-expanders!__0
                           _%self127424%_))
                        _g127777_))
                ((##fx= _g127776_ 2)
                 (apply (lambda (_%self127428%_ _%bindings127429%_)
                          (gx#expander-context::bind-core-syntax-expanders!__%
                           _%self127428%_
                           _%bindings127429%_))
                        _g127777_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g127777_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self127035%_ _%bindings127036%_)
        (let ()
          (let ((_%self127039%_ _%self127035%_))
            (let ()
              (for-each
               (lambda (_%bind127049%_)
                 (let* ((_%bind127050127057%_ _%bind127049%_)
                        (_%E127052127061%_
                         (lambda ()
                           (error '"No clause matching"
                                  _%bind127050127057%_
                                  '([id . rest]))
                           '#!void))
                        (_%K127053127129%_
                         (lambda (_%rest127064%_ _%id127065%_)
                           (gx#core-context-put!
                            _%self127039%_
                            _%id127065%_
                            (##structure
                             gx#syntax-binding::t
                             _%id127065%_
                             _%id127065%_
                             '#f
                             (let* ((_%rest127066127081%_ _%rest127064%_)
                                    (_%E127070127085%_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _%rest127066127081%_
                                              '(['=> core-id])
                                              '([proc])
                                              '([]))
                                       '#!void)))
                               (let ((_%K127075127114%_
                                      (lambda (_%core-id127112%_)
                                        (##structure
                                         gx#rename-macro-expander::t
                                         _%core-id127112%_)))
                                     (_%K127072127099%_
                                      (lambda (_%proc127097%_)
                                        (##structure
                                         gx#macro-expander::t
                                         _%proc127097%_)))
                                     (_%K127071127090%_
                                      (lambda ()
                                        (##structure
                                         gx#reserved-expander::t
                                         _%id127065%_))))
                                 (let ((_%try-match127069127093%_
                                        (lambda ()
                                          (if (##null? _%rest127066127081%_)
                                              (_%K127071127090%_)
                                              (_%E127070127085%_)))))
                                   (if (##pair? _%rest127066127081%_)
                                       (let ((_%tl127077127119%_
                                              (##cdr _%rest127066127081%_))
                                             (_%hd127076127117%_
                                              (##car _%rest127066127081%_)))
                                         (if (##eq? _%hd127076127117%_ '=>)
                                             (if (##pair? _%tl127077127119%_)
                                                 (let ((_%tl127079127124%_
                                                        (##cdr _%tl127077127119%_))
                                                       (_%hd127078127122%_
                                                        (##car _%tl127077127119%_)))
                                                   (if (##null? _%tl127079127124%_)
                                                       (let ((_%core-id127127%_
                                                              _%hd127078127122%_))
                                                         (##structure
                                                          gx#rename-macro-expander::t
                                                          _%core-id127127%_))
                                                       (_%E127070127085%_)))
                                                 (if (##null? _%tl127077127119%_)
                                                     (let ((_%proc127107%_
                                                            _%hd127076127117%_))
                                                       (##structure
                                                        gx#macro-expander::t
                                                        _%proc127107%_))
                                                     (_%E127070127085%_)))
                                             (if (##null? _%tl127077127119%_)
                                                 (let ((_%proc127107%_
                                                        _%hd127076127117%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc127107%_))
                                                 (_%E127070127085%_))))
                                       (_%try-match127069127093%_))))))))))
                   (if (##pair? _%bind127050127057%_)
                       (let ((_%hd127054127132%_ (##car _%bind127050127057%_))
                             (_%tl127055127134%_ (##cdr _%bind127050127057%_)))
                         (let* ((_%id127137%_ _%hd127054127132%_)
                                (_%rest127139%_ _%tl127055127134%_))
                           (_%K127053127129%_ _%rest127139%_ _%id127137%_)))
                       (_%E127052127061%_))))
               _%bindings127036%_))))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self127144%_)
        (let ((_%bindings127146%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self127144%_
           _%bindings127146%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g127779_
        (let ((_g127778_ (##length _g127779_)))
          (cond ((##fx= _g127778_ 1)
                 (apply (lambda (_%self127144%_)
                          (gx#expander-context::bind-core-macro-expanders!__0
                           _%self127144%_))
                        _g127779_))
                ((##fx= _g127778_ 2)
                 (apply (lambda (_%self127148%_ _%bindings127149%_)
                          (gx#expander-context::bind-core-macro-expanders!__%
                           _%self127148%_
                           _%bindings127149%_))
                        _g127779_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g127779_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self126767%_)
        (let ()
          (let ((_%self126770%_ _%self126767%_))
            (let ()
              (letrec ((_%linux-variant?126780%_
                        (lambda (_%sys-type126880%_)
                          (let* ((_%g126881126889%_
                                  (__string-split
                                   (symbol->string _%sys-type126880%_)
                                   '#\-))
                                 (_%else126883126897%_ (lambda () '#f))
                                 (_%K126885126902%_
                                  (lambda (_%rest126900%_)
                                    (not (null? _%rest126900%_)))))
                            (if (##pair? _%g126881126889%_)
                                (let ((_%hd126886126905%_
                                       (##car _%g126881126889%_))
                                      (_%tl126887126907%_
                                       (##cdr _%g126881126889%_)))
                                  (if (equal? _%hd126886126905%_ '"linux")
                                      (let ((_%rest126910%_
                                             _%tl126887126907%_))
                                        (_%K126885126902%_ _%rest126910%_))
                                      (_%else126883126897%_)))
                                (_%else126883126897%_)))))
                       (_%bsd-variant126781%_
                        (lambda (_%sys-type126839%_)
                          (let ((_%sys-type-str126841%_
                                 (symbol->string _%sys-type126839%_)))
                            (let _%lp126843%_ ((_%rest126845%_
                                                '("openbsd"
                                                  "netbsd"
                                                  "freebsd"
                                                  "darwin")))
                              (let* ((_%rest126846126854%_ _%rest126845%_)
                                     (_%else126848126862%_ (lambda () '#f))
                                     (_%K126850126868%_
                                      (lambda (_%rest126865%_ _%sys126866%_)
                                        (if (string-prefix?
                                             _%sys126866%_
                                             _%sys-type-str126841%_)
                                            _%sys126866%_
                                            (_%lp126843%_ _%rest126865%_)))))
                                (if (##pair? _%rest126846126854%_)
                                    (let ((_%hd126851126871%_
                                           (##car _%rest126846126854%_))
                                          (_%tl126852126873%_
                                           (##cdr _%rest126846126854%_)))
                                      (let* ((_%sys126876%_ _%hd126851126871%_)
                                             (_%rest126878%_
                                              _%tl126852126873%_))
                                        (_%K126850126868%_
                                         _%rest126878%_
                                         _%sys126876%_)))
                                    (_%else126848126862%_))))))))
                (gx#core-bind-feature!__% 'gerbil '#f '0 _%self126770%_)
                (gx#core-bind-feature!__%
                 (gerbil-system)
                 '#f
                 '0
                 _%self126770%_)
                (let* ((_%g126782126794%_ (system-type))
                       (_%else126784126802%_ (lambda () '#!void))
                       (_%K126786126815%_
                        (lambda (_%sys-type126805%_
                                 _%sys-vendor126806%_
                                 _%sys-cpu126807%_)
                          (gx#core-bind-feature!__%
                           _%sys-cpu126807%_
                           '#f
                           '0
                           _%self126770%_)
                          (gx#core-bind-feature!__%
                           _%sys-type126805%_
                           '#f
                           '0
                           _%self126770%_)
                          (if (_%linux-variant?126780%_ _%sys-type126805%_)
                              (let ()
                                (gx#core-bind-feature!__%
                                 (##string->symbol '"linux")
                                 '#f
                                 '0
                                 _%self126770%_))
                              (let ((_%$e126810%_
                                     (_%bsd-variant126781%_
                                      _%sys-type126805%_)))
                                (if _%$e126810%_
                                    ((lambda (_%sys-prefix126813%_)
                                       (gx#core-bind-feature!__%
                                        (##string->symbol '"bsd")
                                        '#f
                                        '0
                                        _%self126770%_)
                                       (gx#core-bind-feature!__%
                                        (string->symbol _%sys-prefix126813%_)
                                        '#f
                                        '0
                                        _%self126770%_))
                                     _%$e126810%_)
                                    '#!void))))))
                  (if (##pair? _%g126782126794%_)
                      (let ((_%hd126787126818%_ (##car _%g126782126794%_))
                            (_%tl126788126820%_ (##cdr _%g126782126794%_)))
                        (let ((_%sys-cpu126823%_ _%hd126787126818%_))
                          (if (##pair? _%tl126788126820%_)
                              (let ((_%hd126789126825%_
                                     (##car _%tl126788126820%_))
                                    (_%tl126790126827%_
                                     (##cdr _%tl126788126820%_)))
                                (let ((_%sys-vendor126830%_
                                       _%hd126789126825%_))
                                  (if (##pair? _%tl126790126827%_)
                                      (let ((_%hd126791126832%_
                                             (##car _%tl126790126827%_))
                                            (_%tl126792126834%_
                                             (##cdr _%tl126790126827%_)))
                                        (let ((_%sys-type126837%_
                                               _%hd126791126832%_))
                                          (if (##null? _%tl126792126834%_)
                                              (_%K126786126815%_
                                               _%sys-type126837%_
                                               _%sys-vendor126830%_
                                               _%sys-cpu126823%_)
                                              '#!void)))
                                      '#!void)))
                              '#!void)))
                      '#!void))
                (if (gerbil-runtime-smp?)
                    (gx#core-bind-feature!__%
                     'gerbil-smp
                     '#f
                     '0
                     _%self126770%_)
                    '#!void)))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
