(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1756715353)
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
      (lambda (_%self139961%_ _%bind?139962%_)
        (let ((_%self139965%_ _%self139961%_))
          (if (##fx< '2 (##structure-length _%self139965%_))
              (begin
                (##unchecked-structure-set! _%self139965%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self139965%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self139965%_
                     '2
                     (##structure-length _%self139965%_)))
          (if _%bind?139962%_
              (begin
                (let ((__method140029
                       (__method-ref
                        _%self139965%_
                        'bind-core-syntax-expanders!)))
                  (if __method140029
                      (__method140029 _%self139965%_)
                      (begin
                        (error '"Missing method"
                               _%self139965%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method140030
                       (__method-ref
                        _%self139965%_
                        'bind-core-macro-expanders!)))
                  (if __method140030
                      (__method140030 _%self139965%_)
                      (begin
                        (error '"Missing method"
                               _%self139965%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method140031
                       (__method-ref _%self139965%_ 'bind-core-features!)))
                  (if __method140031
                      (__method140031 _%self139965%_)
                      (begin
                        (error '"Missing method"
                               _%self139965%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self139979%_)
        (let ((_%bind?139981%_ '#t))
          (gx#root-context:::init!__% _%self139979%_ _%bind?139981%_))))
    (define gx#root-context:::init!
      (lambda _g140033_
        (let ((_g140034_ (##length _g140033_)))
          (cond ((##fx= _g140034_ 1)
                 (apply gx#root-context:::init!__0 _g140033_))
                ((##fx= _g140034_ 2)
                 (apply gx#root-context:::init!__% _g140033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g140033_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass139985 __method-table139986)
        (let ((__bind-core-macro-expanders!139987
               (__make-promise
                (lambda ()
                  (let ((__method139990
                         (symbolic-table-ref
                          __method-table139986
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method139990
                        __method139990
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!139988
               (__make-promise
                (lambda ()
                  (let ((__method139991
                         (symbolic-table-ref
                          __method-table139986
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method139991
                        __method139991
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!139989
               (__make-promise
                (lambda ()
                  (let ((__method139992
                         (symbolic-table-ref
                          __method-table139986
                          'bind-core-features!
                          '#f)))
                    (if __method139992
                        __method139992
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_%opt-lambda139959139976%_
                 (lambda (_%self139961%_ _%bind?139962%_)
                   (let ((_%self139965%_ _%self139961%_))
                     (if (##fx< '2 (##structure-length _%self139965%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self139965%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self139965%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self139965%_
                                '2
                                (##structure-length _%self139965%_)))
                     (if _%bind?139962%_
                         (begin
                           ((force __bind-core-syntax-expanders!139988)
                            _%self139965%_)
                           ((force __bind-core-macro-expanders!139987)
                            _%self139965%_)
                           ((force __bind-core-features!139989)
                            _%self139965%_))
                         '#!void)))))
            (lambda _g140035_
              (let ((_g140036_ (##length _g140035_)))
                (cond ((##fx= _g140036_ 1)
                       (apply (lambda (_%self139979%_)
                                (let ((_%bind?139981%_ '#t))
                                  (_%opt-lambda139959139976%_
                                   _%self139979%_
                                   _%bind?139981%_)))
                              _g140035_))
                      ((##fx= _g140036_ 2)
                       (apply _%opt-lambda139959139976%_ _g140035_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g140035_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self139806%_ _%super139807%_)
        (let* ((_%self139810%_ _%self139806%_)
               (_%super139826%_
                (let ((_%$e139820%_ _%super139807%_))
                  (if _%$e139820%_
                      _%$e139820%_
                      (let ((_%$e139823%_ (gx#core-context-root__0)))
                        (if _%$e139823%_
                            _%$e139823%_
                            (let ((__obj140032
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj140032)
                              __obj140032)))))))
          (if (##fx< '5 (##structure-length _%self139810%_))
              (begin
                (##unchecked-structure-set! _%self139810%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self139810%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self139810%_
                 _%super139826%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self139810%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self139810%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self139810%_
                     '5
                     (##structure-length _%self139810%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self139831%_)
        (let ((_%super139833%_ '#f))
          (gx#top-context:::init!__% _%self139831%_ _%super139833%_))))
    (define gx#top-context:::init!
      (lambda _g140037_
        (let ((_g140038_ (##length _g140037_)))
          (cond ((##fx= _g140038_ 1)
                 (apply gx#top-context:::init!__0 _g140037_))
                ((##fx= _g140038_ 2)
                 (apply gx#top-context:::init!__% _g140037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g140037_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self139526%_ _%bindings139527%_)
        (let ((_%self139530%_ _%self139526%_))
          (for-each
           (lambda (_%bind139540%_)
             (let* ((_%bind139541139548%_ _%bind139540%_)
                    (_%E139543139552%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind139541139548%_
                              '([id . rest]))
                       '#!void))
                    (_%K139544139661%_
                     (lambda (_%rest139555%_ _%id139556%_)
                       (gx#core-context-put!
                        _%self139530%_
                        _%id139556%_
                        (##structure
                         gx#syntax-binding::t
                         _%id139556%_
                         _%id139556%_
                         '#f
                         (let* ((_%rest139557139568%_ _%rest139555%_)
                                (_%E139559139572%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest139557139568%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K139560139637%_
                                 (lambda (_%compiler139575%_
                                          _%expander139576%_
                                          _%key139577%_)
                                   ((let* ((_%key139578139591%_ _%key139577%_)
                                           (_%E139584139595%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key139578139591%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K139589139631%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K139588139624%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K139587139616%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K139586139608%_
                                             (lambda () gx#make-special-form))
                                            (_%K139585139600%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match139583139603%_
                                                (lambda ()
                                                  (if (##eq? _%key139578139591%_
                                                             'expr:)
                                                      (_%K139585139600%_)
                                                      (_%E139584139595%_))))
                                               (_%try-match139582139611%_
                                                (lambda ()
                                                  (if (##eq? _%key139578139591%_
                                                             'special:)
                                                      (_%K139586139608%_)
                                                      (_%try-match139583139603%_))))
                                               (_%try-match139581139619%_
                                                (lambda ()
                                                  (if (##eq? _%key139578139591%_
                                                             'define:)
                                                      (_%K139587139616%_)
                                                      (_%try-match139582139611%_))))
                                               (_%try-match139580139627%_
                                                (lambda ()
                                                  (if (##eq? _%key139578139591%_
                                                             'module:)
                                                      (_%K139588139624%_)
                                                      (_%try-match139581139619%_)))))
                                          (if (##eq? _%key139578139591%_ 'top:)
                                              (_%K139589139631%_)
                                              (_%try-match139580139627%_)))))
                                    _%expander139576%_
                                    _%id139556%_
                                    (let ((_%$e139634%_ _%compiler139575%_))
                                      (if _%$e139634%_
                                          _%$e139634%_
                                          gx#core-compile-top-error))))))
                           (if (pair? _%rest139557139568%_)
                               (let ((_%hd139561139640%_
                                      (##car _%rest139557139568%_))
                                     (_%tl139562139642%_
                                      (##cdr _%rest139557139568%_)))
                                 (let ((_%key139645%_ _%hd139561139640%_))
                                   (if (pair? _%tl139562139642%_)
                                       (let ((_%hd139563139647%_
                                              (##car _%tl139562139642%_))
                                             (_%tl139564139649%_
                                              (##cdr _%tl139562139642%_)))
                                         (let ((_%expander139652%_
                                                _%hd139563139647%_))
                                           (if (pair? _%tl139564139649%_)
                                               (let ((_%hd139565139654%_
                                                      (##car _%tl139564139649%_))
                                                     (_%tl139566139656%_
                                                      (##cdr _%tl139564139649%_)))
                                                 (let ((_%compiler139659%_
                                                        _%hd139565139654%_))
                                                   (if (null? _%tl139566139656%_)
                                                       (_%K139560139637%_
                                                        _%compiler139659%_
                                                        _%expander139652%_
                                                        _%key139645%_)
                                                       (_%E139559139572%_))))
                                               (_%E139559139572%_))))
                                       (_%E139559139572%_))))
                               (_%E139559139572%_))))))))
               (if (pair? _%bind139541139548%_)
                   (let ((_%hd139545139664%_ (##car _%bind139541139548%_))
                         (_%tl139546139666%_ (##cdr _%bind139541139548%_)))
                     (let* ((_%id139669%_ _%hd139545139664%_)
                            (_%rest139671%_ _%tl139546139666%_))
                       (_%K139544139661%_ _%rest139671%_ _%id139669%_)))
                   (_%E139543139552%_))))
           _%bindings139527%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self139676%_)
        (let ((_%bindings139678%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self139676%_
           _%bindings139678%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g140039_
        (let ((_g140040_ (##length _g140039_)))
          (cond ((##fx= _g140040_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g140039_))
                ((##fx= _g140040_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g140039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g140039_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self139287%_ _%bindings139288%_)
        (let ((_%self139291%_ _%self139287%_))
          (for-each
           (lambda (_%bind139301%_)
             (let* ((_%bind139302139309%_ _%bind139301%_)
                    (_%E139304139313%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind139302139309%_
                              '([id . rest]))
                       '#!void))
                    (_%K139305139381%_
                     (lambda (_%rest139316%_ _%id139317%_)
                       (gx#core-context-put!
                        _%self139291%_
                        _%id139317%_
                        (##structure
                         gx#syntax-binding::t
                         _%id139317%_
                         _%id139317%_
                         '#f
                         (let* ((_%rest139318139333%_ _%rest139316%_)
                                (_%E139322139337%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest139318139333%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K139327139366%_
                                  (lambda (_%core-id139364%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id139364%_)))
                                 (_%K139324139351%_
                                  (lambda (_%proc139349%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc139349%_)))
                                 (_%K139323139342%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id139317%_))))
                             (let ((_%try-match139321139345%_
                                    (lambda ()
                                      (if (null? _%rest139318139333%_)
                                          (_%K139323139342%_)
                                          (_%E139322139337%_)))))
                               (if (pair? _%rest139318139333%_)
                                   (let ((_%tl139329139371%_
                                          (##cdr _%rest139318139333%_))
                                         (_%hd139328139369%_
                                          (##car _%rest139318139333%_)))
                                     (if (##eq? _%hd139328139369%_ '=>)
                                         (if (pair? _%tl139329139371%_)
                                             (let ((_%tl139331139376%_
                                                    (##cdr _%tl139329139371%_))
                                                   (_%hd139330139374%_
                                                    (##car _%tl139329139371%_)))
                                               (if (null? _%tl139331139376%_)
                                                   (let ((_%core-id139379%_
                                                          _%hd139330139374%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id139379%_))
                                                   (_%E139322139337%_)))
                                             (if (null? _%tl139329139371%_)
                                                 (let ((_%proc139359%_
                                                        _%hd139328139369%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc139359%_))
                                                 (_%E139322139337%_)))
                                         (if (null? _%tl139329139371%_)
                                             (let ((_%proc139359%_
                                                    _%hd139328139369%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc139359%_))
                                             (_%E139322139337%_))))
                                   (_%try-match139321139345%_))))))))))
               (if (pair? _%bind139302139309%_)
                   (let ((_%hd139306139384%_ (##car _%bind139302139309%_))
                         (_%tl139307139386%_ (##cdr _%bind139302139309%_)))
                     (let* ((_%id139389%_ _%hd139306139384%_)
                            (_%rest139391%_ _%tl139307139386%_))
                       (_%K139305139381%_ _%rest139391%_ _%id139389%_)))
                   (_%E139304139313%_))))
           _%bindings139288%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self139396%_)
        (let ((_%bindings139398%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self139396%_
           _%bindings139398%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g140041_
        (let ((_g140042_ (##length _g140041_)))
          (cond ((##fx= _g140042_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g140041_))
                ((##fx= _g140042_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g140041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g140041_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self139018%_)
        (let ((_%self139021%_ _%self139018%_))
          (letrec ((_%linux-variant?139032%_
                    (lambda (_%sys-type139132%_)
                      (let* ((_%g139133139141%_
                              (__string-split
                               (symbol->string _%sys-type139132%_)
                               '#\-))
                             (_%else139135139149%_ (lambda () '#f))
                             (_%K139137139154%_
                              (lambda (_%rest139152%_)
                                (not (null? _%rest139152%_)))))
                        (if (pair? _%g139133139141%_)
                            (let ((_%hd139138139157%_
                                   (##car _%g139133139141%_))
                                  (_%tl139139139159%_
                                   (##cdr _%g139133139141%_)))
                              (if (equal? _%hd139138139157%_ '"linux")
                                  (let ((_%rest139162%_ _%tl139139139159%_))
                                    (_%K139137139154%_ _%rest139162%_))
                                  (_%else139135139149%_)))
                            (_%else139135139149%_)))))
                   (_%bsd-variant139033%_
                    (lambda (_%sys-type139091%_)
                      (let ((_%sys-type-str139093%_
                             (symbol->string _%sys-type139091%_)))
                        (let _%lp139095%_ ((_%rest139097%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest139098139106%_ _%rest139097%_)
                                 (_%else139100139114%_ (lambda () '#f))
                                 (_%K139102139120%_
                                  (lambda (_%rest139117%_ _%sys139118%_)
                                    (if (string-prefix?
                                         _%sys139118%_
                                         _%sys-type-str139093%_)
                                        _%sys139118%_
                                        (_%lp139095%_ _%rest139117%_)))))
                            (if (pair? _%rest139098139106%_)
                                (let ((_%hd139103139123%_
                                       (##car _%rest139098139106%_))
                                      (_%tl139104139125%_
                                       (##cdr _%rest139098139106%_)))
                                  (let* ((_%sys139128%_ _%hd139103139123%_)
                                         (_%rest139130%_ _%tl139104139125%_))
                                    (_%K139102139120%_
                                     _%rest139130%_
                                     _%sys139128%_)))
                                (_%else139100139114%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self139021%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self139021%_)
            (let* ((_%g139034139046%_ (system-type))
                   (_%else139036139054%_ (lambda () '#!void))
                   (_%K139038139067%_
                    (lambda (_%sys-type139057%_
                             _%sys-vendor139058%_
                             _%sys-cpu139059%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu139059%_
                       '#f
                       '0
                       _%self139021%_)
                      (gx#core-bind-feature!__%
                       _%sys-type139057%_
                       '#f
                       '0
                       _%self139021%_)
                      (if (_%linux-variant?139032%_ _%sys-type139057%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self139021%_)
                          (let ((_%$e139062%_
                                 (_%bsd-variant139033%_ _%sys-type139057%_)))
                            (if _%$e139062%_
                                ((lambda (_%sys-prefix139065%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self139021%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix139065%_)
                                    '#f
                                    '0
                                    _%self139021%_))
                                 _%$e139062%_)
                                '#!void))))))
              (if (pair? _%g139034139046%_)
                  (let ((_%hd139039139070%_ (##car _%g139034139046%_))
                        (_%tl139040139072%_ (##cdr _%g139034139046%_)))
                    (let ((_%sys-cpu139075%_ _%hd139039139070%_))
                      (if (pair? _%tl139040139072%_)
                          (let ((_%hd139041139077%_ (##car _%tl139040139072%_))
                                (_%tl139042139079%_
                                 (##cdr _%tl139040139072%_)))
                            (let ((_%sys-vendor139082%_ _%hd139041139077%_))
                              (if (pair? _%tl139042139079%_)
                                  (let ((_%hd139043139084%_
                                         (##car _%tl139042139079%_))
                                        (_%tl139044139086%_
                                         (##cdr _%tl139042139079%_)))
                                    (let ((_%sys-type139089%_
                                           _%hd139043139084%_))
                                      (if (null? _%tl139044139086%_)
                                          (_%K139038139067%_
                                           _%sys-type139089%_
                                           _%sys-vendor139082%_
                                           _%sys-cpu139075%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self139021%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
