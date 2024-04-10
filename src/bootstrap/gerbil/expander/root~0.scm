(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1712757955)
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
      (lambda (_%self127946%_ _%bind?127947%_)
        (let ((_%self127950%_ _%self127946%_))
          (if (##fx< '2 (##structure-length _%self127950%_))
              (begin
                (##unchecked-structure-set! _%self127950%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self127950%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self127950%_
                     '2
                     (##vector-length _%self127950%_)))
          (if _%bind?127947%_
              (begin
                (let ((__method128005
                       (__method-ref
                        _%self127950%_
                        'bind-core-syntax-expanders!)))
                  (if __method128005
                      (__method128005 _%self127950%_)
                      (begin
                        (error '"Missing method"
                               _%self127950%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method128006
                       (__method-ref
                        _%self127950%_
                        'bind-core-macro-expanders!)))
                  (if __method128006
                      (__method128006 _%self127950%_)
                      (begin
                        (error '"Missing method"
                               _%self127950%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method128007
                       (__method-ref _%self127950%_ 'bind-core-features!)))
                  (if __method128007
                      (__method128007 _%self127950%_)
                      (begin
                        (error '"Missing method"
                               _%self127950%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self127963%_)
        (let ((_%bind?127965%_ '#t))
          (gx#root-context:::init!__% _%self127963%_ _%bind?127965%_))))
    (define gx#root-context:::init!
      (lambda _g128010_
        (let ((_g128009_ (##length _g128010_)))
          (cond ((##fx= _g128009_ 1)
                 (apply gx#root-context:::init!__0 _g128010_))
                ((##fx= _g128009_ 2)
                 (apply gx#root-context:::init!__% _g128010_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g128010_))))))
    (__bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self127791%_ _%super127792%_)
        (let* ((_%self127795%_ _%self127791%_)
               (_%super127811%_
                (let ((_%$e127805%_ _%super127792%_))
                  (if _%$e127805%_
                      _%$e127805%_
                      (let ((_%$e127808%_ (gx#core-context-root__0)))
                        (if _%$e127808%_
                            _%$e127808%_
                            (let ((__obj128008
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init! __obj128008)
                              __obj128008)))))))
          (if (##fx< '5 (##structure-length _%self127795%_))
              (begin
                (##unchecked-structure-set! _%self127795%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self127795%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self127795%_
                 _%super127811%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self127795%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self127795%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self127795%_
                     '5
                     (##vector-length _%self127795%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self127816%_)
        (let ((_%super127818%_ '#f))
          (gx#top-context:::init!__% _%self127816%_ _%super127818%_))))
    (define gx#top-context:::init!
      (lambda _g128012_
        (let ((_g128011_ (##length _g128012_)))
          (cond ((##fx= _g128011_ 1)
                 (apply gx#top-context:::init!__0 _g128012_))
                ((##fx= _g128011_ 2)
                 (apply gx#top-context:::init!__% _g128012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g128012_))))))
    (__bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self127511%_ _%bindings127512%_)
        (let ((_%self127515%_ _%self127511%_))
          (for-each
           (lambda (_%bind127525%_)
             (let* ((_%bind127526127533%_ _%bind127525%_)
                    (_%E127528127537%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind127526127533%_
                              '([id . rest]))
                       '#!void))
                    (_%K127529127646%_
                     (lambda (_%rest127540%_ _%id127541%_)
                       (gx#core-context-put!
                        _%self127515%_
                        _%id127541%_
                        (##structure
                         gx#syntax-binding::t
                         _%id127541%_
                         _%id127541%_
                         '#f
                         (let* ((_%rest127542127553%_ _%rest127540%_)
                                (_%E127544127557%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest127542127553%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K127545127622%_
                                 (lambda (_%compiler127560%_
                                          _%expander127561%_
                                          _%key127562%_)
                                   ((let* ((_%key127563127576%_ _%key127562%_)
                                           (_%E127569127580%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key127563127576%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K127574127616%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K127573127609%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K127572127601%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K127571127593%_
                                             (lambda () gx#make-special-form))
                                            (_%K127570127585%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match127568127588%_
                                                (lambda ()
                                                  (if (##eq? _%key127563127576%_
                                                             'expr:)
                                                      (_%K127570127585%_)
                                                      (_%E127569127580%_))))
                                               (_%try-match127567127596%_
                                                (lambda ()
                                                  (if (##eq? _%key127563127576%_
                                                             'special:)
                                                      (_%K127571127593%_)
                                                      (_%try-match127568127588%_))))
                                               (_%try-match127566127604%_
                                                (lambda ()
                                                  (if (##eq? _%key127563127576%_
                                                             'define:)
                                                      (_%K127572127601%_)
                                                      (_%try-match127567127596%_))))
                                               (_%try-match127565127612%_
                                                (lambda ()
                                                  (if (##eq? _%key127563127576%_
                                                             'module:)
                                                      (_%K127573127609%_)
                                                      (_%try-match127566127604%_)))))
                                          (if (##eq? _%key127563127576%_ 'top:)
                                              (_%K127574127616%_)
                                              (_%try-match127565127612%_)))))
                                    _%expander127561%_
                                    _%id127541%_
                                    (let ((_%$e127619%_ _%compiler127560%_))
                                      (if _%$e127619%_
                                          _%$e127619%_
                                          gx#core-compile-top-error))))))
                           (if (##pair? _%rest127542127553%_)
                               (let ((_%hd127546127625%_
                                      (##car _%rest127542127553%_))
                                     (_%tl127547127627%_
                                      (##cdr _%rest127542127553%_)))
                                 (let ((_%key127630%_ _%hd127546127625%_))
                                   (if (##pair? _%tl127547127627%_)
                                       (let ((_%hd127548127632%_
                                              (##car _%tl127547127627%_))
                                             (_%tl127549127634%_
                                              (##cdr _%tl127547127627%_)))
                                         (let ((_%expander127637%_
                                                _%hd127548127632%_))
                                           (if (##pair? _%tl127549127634%_)
                                               (let ((_%hd127550127639%_
                                                      (##car _%tl127549127634%_))
                                                     (_%tl127551127641%_
                                                      (##cdr _%tl127549127634%_)))
                                                 (let ((_%compiler127644%_
                                                        _%hd127550127639%_))
                                                   (if (##null? _%tl127551127641%_)
                                                       (_%K127545127622%_
                                                        _%compiler127644%_
                                                        _%expander127637%_
                                                        _%key127630%_)
                                                       (_%E127544127557%_))))
                                               (_%E127544127557%_))))
                                       (_%E127544127557%_))))
                               (_%E127544127557%_))))))))
               (if (##pair? _%bind127526127533%_)
                   (let ((_%hd127530127649%_ (##car _%bind127526127533%_))
                         (_%tl127531127651%_ (##cdr _%bind127526127533%_)))
                     (let* ((_%id127654%_ _%hd127530127649%_)
                            (_%rest127656%_ _%tl127531127651%_))
                       (_%K127529127646%_ _%rest127656%_ _%id127654%_)))
                   (_%E127528127537%_))))
           _%bindings127512%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self127661%_)
        (let ((_%bindings127663%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self127661%_
           _%bindings127663%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g128014_
        (let ((_g128013_ (##length _g128014_)))
          (cond ((##fx= _g128013_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g128014_))
                ((##fx= _g128013_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g128014_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g128014_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self127272%_ _%bindings127273%_)
        (let ((_%self127276%_ _%self127272%_))
          (for-each
           (lambda (_%bind127286%_)
             (let* ((_%bind127287127294%_ _%bind127286%_)
                    (_%E127289127298%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind127287127294%_
                              '([id . rest]))
                       '#!void))
                    (_%K127290127366%_
                     (lambda (_%rest127301%_ _%id127302%_)
                       (gx#core-context-put!
                        _%self127276%_
                        _%id127302%_
                        (##structure
                         gx#syntax-binding::t
                         _%id127302%_
                         _%id127302%_
                         '#f
                         (let* ((_%rest127303127318%_ _%rest127301%_)
                                (_%E127307127322%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest127303127318%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K127312127351%_
                                  (lambda (_%core-id127349%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id127349%_)))
                                 (_%K127309127336%_
                                  (lambda (_%proc127334%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc127334%_)))
                                 (_%K127308127327%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id127302%_))))
                             (let ((_%try-match127306127330%_
                                    (lambda ()
                                      (if (##null? _%rest127303127318%_)
                                          (_%K127308127327%_)
                                          (_%E127307127322%_)))))
                               (if (##pair? _%rest127303127318%_)
                                   (let ((_%tl127314127356%_
                                          (##cdr _%rest127303127318%_))
                                         (_%hd127313127354%_
                                          (##car _%rest127303127318%_)))
                                     (if (##eq? _%hd127313127354%_ '=>)
                                         (if (##pair? _%tl127314127356%_)
                                             (let ((_%tl127316127361%_
                                                    (##cdr _%tl127314127356%_))
                                                   (_%hd127315127359%_
                                                    (##car _%tl127314127356%_)))
                                               (if (##null? _%tl127316127361%_)
                                                   (let ((_%core-id127364%_
                                                          _%hd127315127359%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id127364%_))
                                                   (_%E127307127322%_)))
                                             (if (##null? _%tl127314127356%_)
                                                 (let ((_%proc127344%_
                                                        _%hd127313127354%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc127344%_))
                                                 (_%E127307127322%_)))
                                         (if (##null? _%tl127314127356%_)
                                             (let ((_%proc127344%_
                                                    _%hd127313127354%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc127344%_))
                                             (_%E127307127322%_))))
                                   (_%try-match127306127330%_))))))))))
               (if (##pair? _%bind127287127294%_)
                   (let ((_%hd127291127369%_ (##car _%bind127287127294%_))
                         (_%tl127292127371%_ (##cdr _%bind127287127294%_)))
                     (let* ((_%id127374%_ _%hd127291127369%_)
                            (_%rest127376%_ _%tl127292127371%_))
                       (_%K127290127366%_ _%rest127376%_ _%id127374%_)))
                   (_%E127289127298%_))))
           _%bindings127273%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self127381%_)
        (let ((_%bindings127383%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self127381%_
           _%bindings127383%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g128016_
        (let ((_g128015_ (##length _g128016_)))
          (cond ((##fx= _g128015_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g128016_))
                ((##fx= _g128015_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g128016_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g128016_))))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self127004%_)
        (let ((_%self127007%_ _%self127004%_))
          (letrec ((_%linux-variant?127017%_
                    (lambda (_%sys-type127117%_)
                      (let* ((_%g127118127126%_
                              (__string-split
                               (symbol->string _%sys-type127117%_)
                               '#\-))
                             (_%else127120127134%_ (lambda () '#f))
                             (_%K127122127139%_
                              (lambda (_%rest127137%_)
                                (not (null? _%rest127137%_)))))
                        (if (##pair? _%g127118127126%_)
                            (let ((_%hd127123127142%_
                                   (##car _%g127118127126%_))
                                  (_%tl127124127144%_
                                   (##cdr _%g127118127126%_)))
                              (if (equal? _%hd127123127142%_ '"linux")
                                  (let ((_%rest127147%_ _%tl127124127144%_))
                                    (_%K127122127139%_ _%rest127147%_))
                                  (_%else127120127134%_)))
                            (_%else127120127134%_)))))
                   (_%bsd-variant127018%_
                    (lambda (_%sys-type127076%_)
                      (let ((_%sys-type-str127078%_
                             (symbol->string _%sys-type127076%_)))
                        (let _%lp127080%_ ((_%rest127082%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest127083127091%_ _%rest127082%_)
                                 (_%else127085127099%_ (lambda () '#f))
                                 (_%K127087127105%_
                                  (lambda (_%rest127102%_ _%sys127103%_)
                                    (if (string-prefix?
                                         _%sys127103%_
                                         _%sys-type-str127078%_)
                                        _%sys127103%_
                                        (_%lp127080%_ _%rest127102%_)))))
                            (if (##pair? _%rest127083127091%_)
                                (let ((_%hd127088127108%_
                                       (##car _%rest127083127091%_))
                                      (_%tl127089127110%_
                                       (##cdr _%rest127083127091%_)))
                                  (let* ((_%sys127113%_ _%hd127088127108%_)
                                         (_%rest127115%_ _%tl127089127110%_))
                                    (_%K127087127105%_
                                     _%rest127115%_
                                     _%sys127113%_)))
                                (_%else127085127099%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self127007%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self127007%_)
            (let* ((_%g127019127031%_ (system-type))
                   (_%else127021127039%_ (lambda () '#!void))
                   (_%K127023127052%_
                    (lambda (_%sys-type127042%_
                             _%sys-vendor127043%_
                             _%sys-cpu127044%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu127044%_
                       '#f
                       '0
                       _%self127007%_)
                      (gx#core-bind-feature!__%
                       _%sys-type127042%_
                       '#f
                       '0
                       _%self127007%_)
                      (if (_%linux-variant?127017%_ _%sys-type127042%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self127007%_)
                          (let ((_%$e127047%_
                                 (_%bsd-variant127018%_ _%sys-type127042%_)))
                            (if _%$e127047%_
                                ((lambda (_%sys-prefix127050%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self127007%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix127050%_)
                                    '#f
                                    '0
                                    _%self127007%_))
                                 _%$e127047%_)
                                '#!void))))))
              (if (##pair? _%g127019127031%_)
                  (let ((_%hd127024127055%_ (##car _%g127019127031%_))
                        (_%tl127025127057%_ (##cdr _%g127019127031%_)))
                    (let ((_%sys-cpu127060%_ _%hd127024127055%_))
                      (if (##pair? _%tl127025127057%_)
                          (let ((_%hd127026127062%_ (##car _%tl127025127057%_))
                                (_%tl127027127064%_
                                 (##cdr _%tl127025127057%_)))
                            (let ((_%sys-vendor127067%_ _%hd127026127062%_))
                              (if (##pair? _%tl127027127064%_)
                                  (let ((_%hd127028127069%_
                                         (##car _%tl127027127064%_))
                                        (_%tl127029127071%_
                                         (##cdr _%tl127027127064%_)))
                                    (let ((_%sys-type127074%_
                                           _%hd127028127069%_))
                                      (if (##null? _%tl127029127071%_)
                                          (_%K127023127052%_
                                           _%sys-type127074%_
                                           _%sys-vendor127067%_
                                           _%sys-cpu127060%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self127007%_)
                '#!void)))))
    (__bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
