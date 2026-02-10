(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1770752337)
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
                (cons (cons 'define-values
                            (cons '=> (cons '%#define-values '())))
                      (cons (cons 'define-runtime
                                  (cons '=> (cons '%#define-runtime '())))
                            (cons (cons 'define-syntax
                                        (cons '=> (cons '%#define-syntax '())))
                                  (cons (cons 'define-alias
                                              (cons '=>
                                                    (cons '%#define-alias
                                                          '())))
                                        (cons (cons 'extern
                                                    (cons gx#macro-expand-extern
                                                          '()))
                                              (cons (cons 'lambda%
                                                          (cons gx#macro-expand-lambda%
                                                                '()))
                                                    (cons (cons 'case-lambda
                                                                (cons gx#macro-expand-case-lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'let-values
                              (cons gx#macro-expand-let-values '()))
                        (cons (cons 'letrec-values
                                    (cons gx#macro-expand-letrec-values '()))
                              (cons (cons 'letrec*-values
                                          (cons gx#macro-expand-letrec*-values
                                                '()))
                                    (cons (cons 'if
                                                (cons gx#macro-expand-if '()))
                                          (cons (cons '%%app
                                                      (cons '=>
                                                            (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons '%%ref
                                                            (cons '=>
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#ref '())))
              (cons (cons '%%begin-module
                          (cons '=> (cons '%#begin-module '())))
                    (cons (cons '_ '())
                          (cons (cons '... '())
                                (cons (cons 'else '())
                                      (cons (cons '=> '())
                                            (cons (cons 'unquote '())
                                                  (cons (cons 'unquote-splicing
                                                              '())
                                                        (cons (cons 'unsyntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (cons 'unsyntax-splicing '())
                            '()))))))))))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    (define gx#root-context:::init!__%
      (lambda (_%self186040%_ _%bind?186041%_)
        (let ((_%self186044%_ _%self186040%_))
          (if (##fx< '2 (##structure-length _%self186044%_))
              (begin
                (##unchecked-structure-set! _%self186044%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self186044%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self186044%_
                     '2
                     (##structure-length _%self186044%_)))
          (if _%bind?186041%_
              (begin
                (let ((__method186108
                       (__method-ref
                        _%self186044%_
                        'bind-core-syntax-expanders!)))
                  (if __method186108
                      (__method186108 _%self186044%_)
                      (begin
                        (error '"Missing method"
                               _%self186044%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method186109
                       (__method-ref
                        _%self186044%_
                        'bind-core-macro-expanders!)))
                  (if __method186109
                      (__method186109 _%self186044%_)
                      (begin
                        (error '"Missing method"
                               _%self186044%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method186110
                       (__method-ref _%self186044%_ 'bind-core-features!)))
                  (if __method186110
                      (__method186110 _%self186044%_)
                      (begin
                        (error '"Missing method"
                               _%self186044%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self186058%_)
        (let ((_%bind?186060%_ '#t))
          (gx#root-context:::init!__% _%self186058%_ _%bind?186060%_))))
    (define gx#root-context:::init!
      (lambda _g186114_
        (let ((_g186115_ (##length _g186114_)))
          (cond ((##fx= _g186115_ 1)
                 (apply gx#root-context:::init!__0 _g186114_))
                ((##fx= _g186115_ 2)
                 (apply gx#root-context:::init!__% _g186114_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g186114_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass186064 __method-table186065)
        (let ((__bind-core-macro-expanders!186066
               (__make-promise
                (lambda ()
                  (let ((__method186069
                         (symbolic-table-ref
                          __method-table186065
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method186069
                        __method186069
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!186067
               (__make-promise
                (lambda ()
                  (let ((__method186070
                         (symbolic-table-ref
                          __method-table186065
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method186070
                        __method186070
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!186068
               (__make-promise
                (lambda ()
                  (let ((__method186071
                         (symbolic-table-ref
                          __method-table186065
                          'bind-core-features!
                          '#f)))
                    (if __method186071
                        __method186071
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_%opt-lambda186038186055%_
                 (lambda (_%self186040%_ _%bind?186041%_)
                   (let ((_%self186044%_ _%self186040%_))
                     (if (##fx< '2 (##structure-length _%self186044%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self186044%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self186044%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self186044%_
                                '2
                                (##structure-length _%self186044%_)))
                     (if _%bind?186041%_
                         (begin
                           ((force __bind-core-syntax-expanders!186067)
                            _%self186044%_)
                           ((force __bind-core-macro-expanders!186066)
                            _%self186044%_)
                           ((force __bind-core-features!186068)
                            _%self186044%_))
                         '#!void)))))
            (lambda _g186116_
              (let ((_g186117_ (##length _g186116_)))
                (cond ((##fx= _g186117_ 1)
                       (apply (lambda (_%self186058%_)
                                (let ((_%bind?186060%_ '#t))
                                  (_%opt-lambda186038186055%_
                                   _%self186058%_
                                   _%bind?186060%_)))
                              _g186116_))
                      ((##fx= _g186117_ 2)
                       (apply _%opt-lambda186038186055%_ _g186116_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g186116_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self185885%_ _%super185886%_)
        (let* ((_%self185889%_ _%self185885%_)
               (_%super185905%_
                (let ((_%$e185899%_ _%super185886%_))
                  (if _%$e185899%_
                      _%$e185899%_
                      (let ((_%$e185902%_ (gx#core-context-root__0)))
                        (if _%$e185902%_
                            _%$e185902%_
                            (let ((__obj186111
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj186111)
                              __obj186111)))))))
          (if (##fx< '5 (##structure-length _%self185889%_))
              (begin
                (##unchecked-structure-set! _%self185889%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self185889%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self185889%_
                 _%super185905%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self185889%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self185889%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self185889%_
                     '5
                     (##structure-length _%self185889%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self185910%_)
        (let ((_%super185912%_ '#f))
          (gx#top-context:::init!__% _%self185910%_ _%super185912%_))))
    (define gx#top-context:::init!
      (lambda _g186118_
        (let ((_g186119_ (##length _g186118_)))
          (cond ((##fx= _g186119_ 1)
                 (apply gx#top-context:::init!__0 _g186118_))
                ((##fx= _g186119_ 2)
                 (apply gx#top-context:::init!__% _g186118_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g186118_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self185606%_ _%bindings185607%_)
        (let ((_%self185610%_ _%self185606%_))
          (for-each
           (lambda (_%bind185620%_)
             (let* ((_%bind185621185628%_ _%bind185620%_)
                    (_%E185623185631%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind185621185628%_
                              '([id . rest]))
                       '#!void))
                    (_%K185624185740%_
                     (lambda (_%rest185634%_ _%id185635%_)
                       (gx#core-context-put!
                        _%self185610%_
                        _%id185635%_
                        (let ((__obj186112
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj186112
                           _%id185635%_
                           _%id185635%_
                           '#f
                           (let* ((_%rest185636185647%_ _%rest185634%_)
                                  (_%E185638185651%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest185636185647%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%K185639185716%_
                                   (lambda (_%compiler185654%_
                                            _%expander185655%_
                                            _%key185656%_)
                                     ((let* ((_%key185657185670%_
                                              _%key185656%_)
                                             (_%E185663185674%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%key185657185670%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%K185668185710%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%K185667185703%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%K185666185695%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%K185665185687%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%K185664185679%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%try-match185662185682%_
                                                  (lambda ()
                                                    (if (##eq? _%key185657185670%_
                                                               'expr:)
                                                        (_%K185664185679%_)
                                                        (_%E185663185674%_))))
                                                 (_%try-match185661185690%_
                                                  (lambda ()
                                                    (if (##eq? _%key185657185670%_
                                                               'special:)
                                                        (_%K185665185687%_)
                                                        (_%try-match185662185682%_))))
                                                 (_%try-match185660185698%_
                                                  (lambda ()
                                                    (if (##eq? _%key185657185670%_
                                                               'define:)
                                                        (_%K185666185695%_)
                                                        (_%try-match185661185690%_))))
                                                 (_%try-match185659185706%_
                                                  (lambda ()
                                                    (if (##eq? _%key185657185670%_
                                                               'module:)
                                                        (_%K185667185703%_)
                                                        (_%try-match185660185698%_)))))
                                            (if (##eq? _%key185657185670%_
                                                       'top:)
                                                (_%K185668185710%_)
                                                (_%try-match185659185706%_)))))
                                      _%expander185655%_
                                      _%id185635%_
                                      (let ((_%$e185713%_ _%compiler185654%_))
                                        (if _%$e185713%_
                                            _%$e185713%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%rest185636185647%_)
                                 (let ((_%hd185640185719%_
                                        (##car _%rest185636185647%_))
                                       (_%tl185641185721%_
                                        (##cdr _%rest185636185647%_)))
                                   (let ((_%key185724%_ _%hd185640185719%_))
                                     (if (pair? _%tl185641185721%_)
                                         (let ((_%hd185642185726%_
                                                (##car _%tl185641185721%_))
                                               (_%tl185643185728%_
                                                (##cdr _%tl185641185721%_)))
                                           (let ((_%expander185731%_
                                                  _%hd185642185726%_))
                                             (if (pair? _%tl185643185728%_)
                                                 (let ((_%hd185644185733%_
                                                        (##car _%tl185643185728%_))
                                                       (_%tl185645185735%_
                                                        (##cdr _%tl185643185728%_)))
                                                   (let ((_%compiler185738%_
                                                          _%hd185644185733%_))
                                                     (if (null? _%tl185645185735%_)
                                                         (_%K185639185716%_
                                                          _%compiler185738%_
                                                          _%expander185731%_
                                                          _%key185724%_)
                                                         (_%E185638185651%_))))
                                                 (_%E185638185651%_))))
                                         (_%E185638185651%_))))
                                 (_%E185638185651%_))))
                          __obj186112)))))
               (if (pair? _%bind185621185628%_)
                   (let ((_%hd185625185743%_ (##car _%bind185621185628%_))
                         (_%tl185626185745%_ (##cdr _%bind185621185628%_)))
                     (let* ((_%id185748%_ _%hd185625185743%_)
                            (_%rest185750%_ _%tl185626185745%_))
                       (_%K185624185740%_ _%rest185750%_ _%id185748%_)))
                   (_%E185623185631%_))))
           _%bindings185607%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self185755%_)
        (let ((_%bindings185757%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self185755%_
           _%bindings185757%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g186120_
        (let ((_g186121_ (##length _g186120_)))
          (cond ((##fx= _g186121_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g186120_))
                ((##fx= _g186121_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g186120_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g186120_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self185368%_ _%bindings185369%_)
        (let ((_%self185372%_ _%self185368%_))
          (for-each
           (lambda (_%bind185382%_)
             (let* ((_%bind185383185390%_ _%bind185382%_)
                    (_%E185385185393%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind185383185390%_
                              '([id . rest]))
                       '#!void))
                    (_%K185386185461%_
                     (lambda (_%rest185396%_ _%id185397%_)
                       (gx#core-context-put!
                        _%self185372%_
                        _%id185397%_
                        (let ((__obj186113
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj186113
                           _%id185397%_
                           _%id185397%_
                           '#f
                           (let* ((_%rest185398185413%_ _%rest185396%_)
                                  (_%E185402185417%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest185398185413%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%K185407185446%_
                                    (lambda (_%core-id185444%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id185444%_)))
                                   (_%K185404185431%_
                                    (lambda (_%proc185429%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc185429%_)))
                                   (_%K185403185422%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id185397%_))))
                               (let ((_%try-match185401185425%_
                                      (lambda ()
                                        (if (null? _%rest185398185413%_)
                                            (_%K185403185422%_)
                                            (_%E185402185417%_)))))
                                 (if (pair? _%rest185398185413%_)
                                     (let ((_%tl185409185451%_
                                            (##cdr _%rest185398185413%_))
                                           (_%hd185408185449%_
                                            (##car _%rest185398185413%_)))
                                       (if (##eq? _%hd185408185449%_ '=>)
                                           (if (pair? _%tl185409185451%_)
                                               (let ((_%tl185411185456%_
                                                      (##cdr _%tl185409185451%_))
                                                     (_%hd185410185454%_
                                                      (##car _%tl185409185451%_)))
                                                 (if (null? _%tl185411185456%_)
                                                     (let ((_%core-id185459%_
                                                            _%hd185410185454%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id185459%_))
                                                     (_%E185402185417%_)))
                                               (if (null? _%tl185409185451%_)
                                                   (let ((_%proc185439%_
                                                          _%hd185408185449%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc185439%_))
                                                   (_%E185402185417%_)))
                                           (if (null? _%tl185409185451%_)
                                               (let ((_%proc185439%_
                                                      _%hd185408185449%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc185439%_))
                                               (_%E185402185417%_))))
                                     (_%try-match185401185425%_))))))
                          __obj186113)))))
               (if (pair? _%bind185383185390%_)
                   (let ((_%hd185387185464%_ (##car _%bind185383185390%_))
                         (_%tl185388185466%_ (##cdr _%bind185383185390%_)))
                     (let* ((_%id185469%_ _%hd185387185464%_)
                            (_%rest185471%_ _%tl185388185466%_))
                       (_%K185386185461%_ _%rest185471%_ _%id185469%_)))
                   (_%E185385185393%_))))
           _%bindings185369%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self185476%_)
        (let ((_%bindings185478%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self185476%_
           _%bindings185478%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g186122_
        (let ((_g186123_ (##length _g186122_)))
          (cond ((##fx= _g186123_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g186122_))
                ((##fx= _g186123_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g186122_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g186122_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self185099%_)
        (let ((_%self185102%_ _%self185099%_))
          (letrec ((_%linux-variant?185113%_
                    (lambda (_%sys-type185213%_)
                      (let* ((_%g185214185222%_
                              (__string-split
                               (symbol->string _%sys-type185213%_)
                               '#\-))
                             (_%else185216185230%_ (lambda () '#f))
                             (_%K185218185235%_
                              (lambda (_%rest185233%_)
                                (not (null? _%rest185233%_)))))
                        (if (pair? _%g185214185222%_)
                            (let ((_%hd185219185238%_
                                   (##car _%g185214185222%_))
                                  (_%tl185220185240%_
                                   (##cdr _%g185214185222%_)))
                              (if (equal? _%hd185219185238%_ '"linux")
                                  (let ((_%rest185243%_ _%tl185220185240%_))
                                    (_%K185218185235%_ _%rest185243%_))
                                  (_%else185216185230%_)))
                            (_%else185216185230%_)))))
                   (_%bsd-variant185114%_
                    (lambda (_%sys-type185172%_)
                      (let ((_%sys-type-str185174%_
                             (symbol->string _%sys-type185172%_)))
                        (let _%lp185176%_ ((_%rest185178%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest185179185187%_ _%rest185178%_)
                                 (_%else185181185195%_ (lambda () '#f))
                                 (_%K185183185201%_
                                  (lambda (_%rest185198%_ _%sys185199%_)
                                    (if (string-prefix?
                                         _%sys185199%_
                                         _%sys-type-str185174%_)
                                        _%sys185199%_
                                        (_%lp185176%_ _%rest185198%_)))))
                            (if (pair? _%rest185179185187%_)
                                (let ((_%hd185184185204%_
                                       (##car _%rest185179185187%_))
                                      (_%tl185185185206%_
                                       (##cdr _%rest185179185187%_)))
                                  (let* ((_%sys185209%_ _%hd185184185204%_)
                                         (_%rest185211%_ _%tl185185185206%_))
                                    (_%K185183185201%_
                                     _%rest185211%_
                                     _%sys185209%_)))
                                (_%else185181185195%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self185102%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self185102%_)
            (let* ((_%g185115185127%_ (system-type))
                   (_%else185117185135%_ (lambda () '#!void))
                   (_%K185119185148%_
                    (lambda (_%sys-type185138%_
                             _%sys-vendor185139%_
                             _%sys-cpu185140%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu185140%_
                       '#f
                       '0
                       _%self185102%_)
                      (gx#core-bind-feature!__%
                       _%sys-type185138%_
                       '#f
                       '0
                       _%self185102%_)
                      (if (_%linux-variant?185113%_ _%sys-type185138%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self185102%_)
                          (let ((_%$e185143%_
                                 (_%bsd-variant185114%_ _%sys-type185138%_)))
                            (if _%$e185143%_
                                ((lambda (_%sys-prefix185146%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self185102%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix185146%_)
                                    '#f
                                    '0
                                    _%self185102%_))
                                 _%$e185143%_)
                                '#!void))))))
              (if (pair? _%g185115185127%_)
                  (let ((_%hd185120185151%_ (##car _%g185115185127%_))
                        (_%tl185121185153%_ (##cdr _%g185115185127%_)))
                    (let ((_%sys-cpu185156%_ _%hd185120185151%_))
                      (if (pair? _%tl185121185153%_)
                          (let ((_%hd185122185158%_ (##car _%tl185121185153%_))
                                (_%tl185123185160%_
                                 (##cdr _%tl185121185153%_)))
                            (let ((_%sys-vendor185163%_ _%hd185122185158%_))
                              (if (pair? _%tl185123185160%_)
                                  (let ((_%hd185124185165%_
                                         (##car _%tl185123185160%_))
                                        (_%tl185125185167%_
                                         (##cdr _%tl185123185160%_)))
                                    (let ((_%sys-type185170%_
                                           _%hd185124185165%_))
                                      (if (null? _%tl185125185167%_)
                                          (_%K185119185148%_
                                           _%sys-type185170%_
                                           _%sys-vendor185163%_
                                           _%sys-cpu185156%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self185102%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
