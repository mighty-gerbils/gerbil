(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1770744577)
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
      (lambda (_%self186033%_ _%bind?186034%_)
        (let ((_%self186037%_ _%self186033%_))
          (if (##fx< '2 (##structure-length _%self186037%_))
              (begin
                (##unchecked-structure-set! _%self186037%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self186037%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self186037%_
                     '2
                     (##structure-length _%self186037%_)))
          (if _%bind?186034%_
              (begin
                (let ((__method186101
                       (__method-ref
                        _%self186037%_
                        'bind-core-syntax-expanders!)))
                  (if __method186101
                      (__method186101 _%self186037%_)
                      (begin
                        (error '"Missing method"
                               _%self186037%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method186102
                       (__method-ref
                        _%self186037%_
                        'bind-core-macro-expanders!)))
                  (if __method186102
                      (__method186102 _%self186037%_)
                      (begin
                        (error '"Missing method"
                               _%self186037%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method186103
                       (__method-ref _%self186037%_ 'bind-core-features!)))
                  (if __method186103
                      (__method186103 _%self186037%_)
                      (begin
                        (error '"Missing method"
                               _%self186037%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self186051%_)
        (let ((_%bind?186053%_ '#t))
          (gx#root-context:::init!__% _%self186051%_ _%bind?186053%_))))
    (define gx#root-context:::init!
      (lambda _g186107_
        (let ((_g186108_ (##length _g186107_)))
          (cond ((##fx= _g186108_ 1)
                 (apply gx#root-context:::init!__0 _g186107_))
                ((##fx= _g186108_ 2)
                 (apply gx#root-context:::init!__% _g186107_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g186107_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass186057 __method-table186058)
        (let ((__bind-core-syntax-expanders!186059
               (__make-promise
                (lambda ()
                  (let ((__method186062
                         (symbolic-table-ref
                          __method-table186058
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method186062
                        __method186062
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!186060
               (__make-promise
                (lambda ()
                  (let ((__method186063
                         (symbolic-table-ref
                          __method-table186058
                          'bind-core-features!
                          '#f)))
                    (if __method186063
                        __method186063
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!186061
               (__make-promise
                (lambda ()
                  (let ((__method186064
                         (symbolic-table-ref
                          __method-table186058
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method186064
                        __method186064
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%opt-lambda186031186048%_
                 (lambda (_%self186033%_ _%bind?186034%_)
                   (let ((_%self186037%_ _%self186033%_))
                     (if (##fx< '2 (##structure-length _%self186037%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self186037%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self186037%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self186037%_
                                '2
                                (##structure-length _%self186037%_)))
                     (if _%bind?186034%_
                         (begin
                           ((force __bind-core-syntax-expanders!186059)
                            _%self186037%_)
                           ((force __bind-core-macro-expanders!186061)
                            _%self186037%_)
                           ((force __bind-core-features!186060)
                            _%self186037%_))
                         '#!void)))))
            (lambda _g186109_
              (let ((_g186110_ (##length _g186109_)))
                (cond ((##fx= _g186110_ 1)
                       (apply (lambda (_%self186051%_)
                                (let ((_%bind?186053%_ '#t))
                                  (_%opt-lambda186031186048%_
                                   _%self186051%_
                                   _%bind?186053%_)))
                              _g186109_))
                      ((##fx= _g186110_ 2)
                       (apply _%opt-lambda186031186048%_ _g186109_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g186109_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self185878%_ _%super185879%_)
        (let* ((_%self185882%_ _%self185878%_)
               (_%super185898%_
                (let ((_%$e185892%_ _%super185879%_))
                  (if _%$e185892%_
                      _%$e185892%_
                      (let ((_%$e185895%_ (gx#core-context-root__0)))
                        (if _%$e185895%_
                            _%$e185895%_
                            (let ((__obj186104
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj186104)
                              __obj186104)))))))
          (if (##fx< '5 (##structure-length _%self185882%_))
              (begin
                (##unchecked-structure-set! _%self185882%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self185882%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self185882%_
                 _%super185898%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self185882%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self185882%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self185882%_
                     '5
                     (##structure-length _%self185882%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self185903%_)
        (let ((_%super185905%_ '#f))
          (gx#top-context:::init!__% _%self185903%_ _%super185905%_))))
    (define gx#top-context:::init!
      (lambda _g186111_
        (let ((_g186112_ (##length _g186111_)))
          (cond ((##fx= _g186112_ 1)
                 (apply gx#top-context:::init!__0 _g186111_))
                ((##fx= _g186112_ 2)
                 (apply gx#top-context:::init!__% _g186111_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g186111_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self185599%_ _%bindings185600%_)
        (let ((_%self185603%_ _%self185599%_))
          (for-each
           (lambda (_%bind185613%_)
             (let* ((_%bind185614185621%_ _%bind185613%_)
                    (_%E185616185624%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind185614185621%_
                              '([id . rest]))
                       '#!void))
                    (_%K185617185733%_
                     (lambda (_%rest185627%_ _%id185628%_)
                       (gx#core-context-put!
                        _%self185603%_
                        _%id185628%_
                        (let ((__obj186105
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj186105
                           _%id185628%_
                           _%id185628%_
                           '#f
                           (let* ((_%rest185629185640%_ _%rest185627%_)
                                  (_%E185631185644%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest185629185640%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%K185632185709%_
                                   (lambda (_%compiler185647%_
                                            _%expander185648%_
                                            _%key185649%_)
                                     ((let* ((_%key185650185663%_
                                              _%key185649%_)
                                             (_%E185656185667%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%key185650185663%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%K185661185703%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%K185660185696%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%K185659185688%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%K185658185680%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%K185657185672%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%try-match185655185675%_
                                                  (lambda ()
                                                    (if (##eq? _%key185650185663%_
                                                               'expr:)
                                                        (_%K185657185672%_)
                                                        (_%E185656185667%_))))
                                                 (_%try-match185654185683%_
                                                  (lambda ()
                                                    (if (##eq? _%key185650185663%_
                                                               'special:)
                                                        (_%K185658185680%_)
                                                        (_%try-match185655185675%_))))
                                                 (_%try-match185653185691%_
                                                  (lambda ()
                                                    (if (##eq? _%key185650185663%_
                                                               'define:)
                                                        (_%K185659185688%_)
                                                        (_%try-match185654185683%_))))
                                                 (_%try-match185652185699%_
                                                  (lambda ()
                                                    (if (##eq? _%key185650185663%_
                                                               'module:)
                                                        (_%K185660185696%_)
                                                        (_%try-match185653185691%_)))))
                                            (if (##eq? _%key185650185663%_
                                                       'top:)
                                                (_%K185661185703%_)
                                                (_%try-match185652185699%_)))))
                                      _%expander185648%_
                                      _%id185628%_
                                      (let ((_%$e185706%_ _%compiler185647%_))
                                        (if _%$e185706%_
                                            _%$e185706%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%rest185629185640%_)
                                 (let ((_%hd185633185712%_
                                        (##car _%rest185629185640%_))
                                       (_%tl185634185714%_
                                        (##cdr _%rest185629185640%_)))
                                   (let ((_%key185717%_ _%hd185633185712%_))
                                     (if (pair? _%tl185634185714%_)
                                         (let ((_%hd185635185719%_
                                                (##car _%tl185634185714%_))
                                               (_%tl185636185721%_
                                                (##cdr _%tl185634185714%_)))
                                           (let ((_%expander185724%_
                                                  _%hd185635185719%_))
                                             (if (pair? _%tl185636185721%_)
                                                 (let ((_%hd185637185726%_
                                                        (##car _%tl185636185721%_))
                                                       (_%tl185638185728%_
                                                        (##cdr _%tl185636185721%_)))
                                                   (let ((_%compiler185731%_
                                                          _%hd185637185726%_))
                                                     (if (null? _%tl185638185728%_)
                                                         (_%K185632185709%_
                                                          _%compiler185731%_
                                                          _%expander185724%_
                                                          _%key185717%_)
                                                         (_%E185631185644%_))))
                                                 (_%E185631185644%_))))
                                         (_%E185631185644%_))))
                                 (_%E185631185644%_))))
                          __obj186105)))))
               (if (pair? _%bind185614185621%_)
                   (let ((_%hd185618185736%_ (##car _%bind185614185621%_))
                         (_%tl185619185738%_ (##cdr _%bind185614185621%_)))
                     (let* ((_%id185741%_ _%hd185618185736%_)
                            (_%rest185743%_ _%tl185619185738%_))
                       (_%K185617185733%_ _%rest185743%_ _%id185741%_)))
                   (_%E185616185624%_))))
           _%bindings185600%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self185748%_)
        (let ((_%bindings185750%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self185748%_
           _%bindings185750%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g186113_
        (let ((_g186114_ (##length _g186113_)))
          (cond ((##fx= _g186114_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g186113_))
                ((##fx= _g186114_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g186113_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g186113_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self185361%_ _%bindings185362%_)
        (let ((_%self185365%_ _%self185361%_))
          (for-each
           (lambda (_%bind185375%_)
             (let* ((_%bind185376185383%_ _%bind185375%_)
                    (_%E185378185386%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind185376185383%_
                              '([id . rest]))
                       '#!void))
                    (_%K185379185454%_
                     (lambda (_%rest185389%_ _%id185390%_)
                       (gx#core-context-put!
                        _%self185365%_
                        _%id185390%_
                        (let ((__obj186106
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj186106
                           _%id185390%_
                           _%id185390%_
                           '#f
                           (let* ((_%rest185391185406%_ _%rest185389%_)
                                  (_%E185395185410%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest185391185406%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%K185400185439%_
                                    (lambda (_%core-id185437%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id185437%_)))
                                   (_%K185397185424%_
                                    (lambda (_%proc185422%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc185422%_)))
                                   (_%K185396185415%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id185390%_))))
                               (let ((_%try-match185394185418%_
                                      (lambda ()
                                        (if (null? _%rest185391185406%_)
                                            (_%K185396185415%_)
                                            (_%E185395185410%_)))))
                                 (if (pair? _%rest185391185406%_)
                                     (let ((_%tl185402185444%_
                                            (##cdr _%rest185391185406%_))
                                           (_%hd185401185442%_
                                            (##car _%rest185391185406%_)))
                                       (if (##eq? _%hd185401185442%_ '=>)
                                           (if (pair? _%tl185402185444%_)
                                               (let ((_%tl185404185449%_
                                                      (##cdr _%tl185402185444%_))
                                                     (_%hd185403185447%_
                                                      (##car _%tl185402185444%_)))
                                                 (if (null? _%tl185404185449%_)
                                                     (let ((_%core-id185452%_
                                                            _%hd185403185447%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id185452%_))
                                                     (_%E185395185410%_)))
                                               (if (null? _%tl185402185444%_)
                                                   (let ((_%proc185432%_
                                                          _%hd185401185442%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc185432%_))
                                                   (_%E185395185410%_)))
                                           (if (null? _%tl185402185444%_)
                                               (let ((_%proc185432%_
                                                      _%hd185401185442%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc185432%_))
                                               (_%E185395185410%_))))
                                     (_%try-match185394185418%_))))))
                          __obj186106)))))
               (if (pair? _%bind185376185383%_)
                   (let ((_%hd185380185457%_ (##car _%bind185376185383%_))
                         (_%tl185381185459%_ (##cdr _%bind185376185383%_)))
                     (let* ((_%id185462%_ _%hd185380185457%_)
                            (_%rest185464%_ _%tl185381185459%_))
                       (_%K185379185454%_ _%rest185464%_ _%id185462%_)))
                   (_%E185378185386%_))))
           _%bindings185362%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self185469%_)
        (let ((_%bindings185471%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self185469%_
           _%bindings185471%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g186115_
        (let ((_g186116_ (##length _g186115_)))
          (cond ((##fx= _g186116_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g186115_))
                ((##fx= _g186116_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g186115_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g186115_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self185092%_)
        (let ((_%self185095%_ _%self185092%_))
          (letrec ((_%linux-variant?185106%_
                    (lambda (_%sys-type185206%_)
                      (let* ((_%g185207185215%_
                              (__string-split
                               (symbol->string _%sys-type185206%_)
                               '#\-))
                             (_%else185209185223%_ (lambda () '#f))
                             (_%K185211185228%_
                              (lambda (_%rest185226%_)
                                (not (null? _%rest185226%_)))))
                        (if (pair? _%g185207185215%_)
                            (let ((_%hd185212185231%_
                                   (##car _%g185207185215%_))
                                  (_%tl185213185233%_
                                   (##cdr _%g185207185215%_)))
                              (if (equal? _%hd185212185231%_ '"linux")
                                  (let ((_%rest185236%_ _%tl185213185233%_))
                                    (_%K185211185228%_ _%rest185236%_))
                                  (_%else185209185223%_)))
                            (_%else185209185223%_)))))
                   (_%bsd-variant185107%_
                    (lambda (_%sys-type185165%_)
                      (let ((_%sys-type-str185167%_
                             (symbol->string _%sys-type185165%_)))
                        (let _%lp185169%_ ((_%rest185171%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest185172185180%_ _%rest185171%_)
                                 (_%else185174185188%_ (lambda () '#f))
                                 (_%K185176185194%_
                                  (lambda (_%rest185191%_ _%sys185192%_)
                                    (if (string-prefix?
                                         _%sys185192%_
                                         _%sys-type-str185167%_)
                                        _%sys185192%_
                                        (_%lp185169%_ _%rest185191%_)))))
                            (if (pair? _%rest185172185180%_)
                                (let ((_%hd185177185197%_
                                       (##car _%rest185172185180%_))
                                      (_%tl185178185199%_
                                       (##cdr _%rest185172185180%_)))
                                  (let* ((_%sys185202%_ _%hd185177185197%_)
                                         (_%rest185204%_ _%tl185178185199%_))
                                    (_%K185176185194%_
                                     _%rest185204%_
                                     _%sys185202%_)))
                                (_%else185174185188%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self185095%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self185095%_)
            (let* ((_%g185108185120%_ (system-type))
                   (_%else185110185128%_ (lambda () '#!void))
                   (_%K185112185141%_
                    (lambda (_%sys-type185131%_
                             _%sys-vendor185132%_
                             _%sys-cpu185133%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu185133%_
                       '#f
                       '0
                       _%self185095%_)
                      (gx#core-bind-feature!__%
                       _%sys-type185131%_
                       '#f
                       '0
                       _%self185095%_)
                      (if (_%linux-variant?185106%_ _%sys-type185131%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self185095%_)
                          (let ((_%$e185136%_
                                 (_%bsd-variant185107%_ _%sys-type185131%_)))
                            (if _%$e185136%_
                                ((lambda (_%sys-prefix185139%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self185095%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix185139%_)
                                    '#f
                                    '0
                                    _%self185095%_))
                                 _%$e185136%_)
                                '#!void))))))
              (if (pair? _%g185108185120%_)
                  (let ((_%hd185113185144%_ (##car _%g185108185120%_))
                        (_%tl185114185146%_ (##cdr _%g185108185120%_)))
                    (let ((_%sys-cpu185149%_ _%hd185113185144%_))
                      (if (pair? _%tl185114185146%_)
                          (let ((_%hd185115185151%_ (##car _%tl185114185146%_))
                                (_%tl185116185153%_
                                 (##cdr _%tl185114185146%_)))
                            (let ((_%sys-vendor185156%_ _%hd185115185151%_))
                              (if (pair? _%tl185116185153%_)
                                  (let ((_%hd185117185158%_
                                         (##car _%tl185116185153%_))
                                        (_%tl185118185160%_
                                         (##cdr _%tl185116185153%_)))
                                    (let ((_%sys-type185163%_
                                           _%hd185117185158%_))
                                      (if (null? _%tl185118185160%_)
                                          (_%K185112185141%_
                                           _%sys-type185163%_
                                           _%sys-vendor185156%_
                                           _%sys-cpu185149%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self185095%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
