(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1781138356)
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
                                (cons (cons '%#bind-runtime-properties!
                                            (cons 'special:
                                                  (cons gx#core-expand-bind-runtime-properties%
                                                        (cons '#f '()))))
                                      '())))))))))))))))))))))))))))))))))
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
      (lambda (_%self190400%_ _%bind?190401%_)
        (let ((_%self190404%_ _%self190400%_))
          (if (##fx< '2 (##structure-length _%self190404%_))
              (begin
                (##unchecked-structure-set! _%self190404%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self190404%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self190404%_
                     '2
                     (##structure-length _%self190404%_)))
          (if _%bind?190401%_
              (begin
                (let ((__method190468
                       (__method-ref
                        _%self190404%_
                        'bind-core-syntax-expanders!)))
                  (if __method190468
                      (__method190468 _%self190404%_)
                      (begin
                        (error '"Missing method"
                               _%self190404%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method190469
                       (__method-ref
                        _%self190404%_
                        'bind-core-macro-expanders!)))
                  (if __method190469
                      (__method190469 _%self190404%_)
                      (begin
                        (error '"Missing method"
                               _%self190404%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method190470
                       (__method-ref _%self190404%_ 'bind-core-features!)))
                  (if __method190470
                      (__method190470 _%self190404%_)
                      (begin
                        (error '"Missing method"
                               _%self190404%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self190418%_)
        (let ((_%bind?190420%_ '#t))
          (gx#root-context:::init!__% _%self190418%_ _%bind?190420%_))))
    (define gx#root-context:::init!
      (lambda _g190474_
        (let ((_g190475_ (##length _g190474_)))
          (cond ((##fx= _g190475_ 1)
                 (apply gx#root-context:::init!__0 _g190474_))
                ((##fx= _g190475_ 2)
                 (apply gx#root-context:::init!__% _g190474_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g190474_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass190424 __method-table190425)
        (let ((__bind-core-syntax-expanders!190426
               (__make-promise
                (lambda ()
                  (let ((__method190429
                         (symbolic-table-ref
                          __method-table190425
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method190429
                        __method190429
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!190427
               (__make-promise
                (lambda ()
                  (let ((__method190430
                         (symbolic-table-ref
                          __method-table190425
                          'bind-core-features!
                          '#f)))
                    (if __method190430
                        __method190430
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!190428
               (__make-promise
                (lambda ()
                  (let ((__method190431
                         (symbolic-table-ref
                          __method-table190425
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method190431
                        __method190431
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%$%opt-lambda190398190415%_
                 (lambda (_%self190400%_ _%bind?190401%_)
                   (let ((_%self190404%_ _%self190400%_))
                     (if (##fx< '2 (##structure-length _%self190404%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self190404%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self190404%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self190404%_
                                '2
                                (##structure-length _%self190404%_)))
                     (if _%bind?190401%_
                         (begin
                           ((force __bind-core-syntax-expanders!190426)
                            _%self190404%_)
                           ((force __bind-core-macro-expanders!190428)
                            _%self190404%_)
                           ((force __bind-core-features!190427)
                            _%self190404%_))
                         '#!void)))))
            (lambda _g190476_
              (let ((_g190477_ (##length _g190476_)))
                (cond ((##fx= _g190477_ 1)
                       (apply (lambda (_%self190418%_)
                                (let ((_%bind?190420%_ '#t))
                                  (_%$%opt-lambda190398190415%_
                                   _%self190418%_
                                   _%bind?190420%_)))
                              _g190476_))
                      ((##fx= _g190477_ 2)
                       (apply _%$%opt-lambda190398190415%_ _g190476_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g190476_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self190245%_ _%super190246%_)
        (let* ((_%self190249%_ _%self190245%_)
               (_%super190265%_
                (let ((_%$e190259%_ _%super190246%_))
                  (if _%$e190259%_
                      _%$e190259%_
                      (let ((_%$e190262%_ (gx#core-context-root__0)))
                        (if _%$e190262%_
                            _%$e190262%_
                            (let ((__obj190471
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj190471)
                              __obj190471)))))))
          (if (##fx< '5 (##structure-length _%self190249%_))
              (begin
                (##unchecked-structure-set! _%self190249%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self190249%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self190249%_
                 _%super190265%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self190249%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self190249%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self190249%_
                     '5
                     (##structure-length _%self190249%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self190270%_)
        (let ((_%super190272%_ '#f))
          (gx#top-context:::init!__% _%self190270%_ _%super190272%_))))
    (define gx#top-context:::init!
      (lambda _g190478_
        (let ((_g190479_ (##length _g190478_)))
          (cond ((##fx= _g190479_ 1)
                 (apply gx#top-context:::init!__0 _g190478_))
                ((##fx= _g190479_ 2)
                 (apply gx#top-context:::init!__% _g190478_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g190478_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self189966%_ _%bindings189967%_)
        (let ((_%self189970%_ _%self189966%_))
          (for-each
           (lambda (_%bind189980%_)
             (let* ((_%$%bind189981189988%_ _%bind189980%_)
                    (_%$%E189983189991%_
                     (lambda ()
                       (error '"No clause matching"
                              _%$%bind189981189988%_
                              '([id . rest]))
                       '#!void))
                    (_%$%K189984190100%_
                     (lambda (_%rest189994%_ _%id189995%_)
                       (gx#core-context-put!
                        _%self189970%_
                        _%id189995%_
                        (let ((__obj190472
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj190472
                           _%id189995%_
                           _%id189995%_
                           '#f
                           (let* ((_%$%rest189996190007%_ _%rest189994%_)
                                  (_%$%E189998190011%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%rest189996190007%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%$%K189999190076%_
                                   (lambda (_%compiler190014%_
                                            _%expander190015%_
                                            _%key190016%_)
                                     ((let* ((_%$%key190017190030%_
                                              _%key190016%_)
                                             (_%$%E190023190034%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%$%key190017190030%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%$%K190028190070%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%$%K190027190063%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%$%K190026190055%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%$%K190025190047%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%$%K190024190039%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%$%try-match190022190042%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key190017190030%_
                                                               'expr:)
                                                        (_%$%K190024190039%_)
                                                        (_%$%E190023190034%_))))
                                                 (_%$%try-match190021190050%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key190017190030%_
                                                               'special:)
                                                        (_%$%K190025190047%_)
                                                        (_%$%try-match190022190042%_))))
                                                 (_%$%try-match190020190058%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key190017190030%_
                                                               'define:)
                                                        (_%$%K190026190055%_)
                                                        (_%$%try-match190021190050%_))))
                                                 (_%$%try-match190019190066%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key190017190030%_
                                                               'module:)
                                                        (_%$%K190027190063%_)
                                                        (_%$%try-match190020190058%_)))))
                                            (if (##eq? _%$%key190017190030%_
                                                       'top:)
                                                (_%$%K190028190070%_)
                                                (_%$%try-match190019190066%_)))))
                                      _%expander190015%_
                                      _%id189995%_
                                      (let ((_%$e190073%_ _%compiler190014%_))
                                        (if _%$e190073%_
                                            _%$e190073%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%$%rest189996190007%_)
                                 (let ((_%$%hd190000190079%_
                                        (##car _%$%rest189996190007%_))
                                       (_%$%tl190001190081%_
                                        (##cdr _%$%rest189996190007%_)))
                                   (let ((_%key190084%_ _%$%hd190000190079%_))
                                     (if (pair? _%$%tl190001190081%_)
                                         (let ((_%$%hd190002190086%_
                                                (##car _%$%tl190001190081%_))
                                               (_%$%tl190003190088%_
                                                (##cdr _%$%tl190001190081%_)))
                                           (let ((_%expander190091%_
                                                  _%$%hd190002190086%_))
                                             (if (pair? _%$%tl190003190088%_)
                                                 (let ((_%$%hd190004190093%_
                                                        (##car _%$%tl190003190088%_))
                                                       (_%$%tl190005190095%_
                                                        (##cdr _%$%tl190003190088%_)))
                                                   (let ((_%compiler190098%_
                                                          _%$%hd190004190093%_))
                                                     (if (null? _%$%tl190005190095%_)
                                                         (_%$%K189999190076%_
                                                          _%compiler190098%_
                                                          _%expander190091%_
                                                          _%key190084%_)
                                                         (_%$%E189998190011%_))))
                                                 (_%$%E189998190011%_))))
                                         (_%$%E189998190011%_))))
                                 (_%$%E189998190011%_))))
                          __obj190472)))))
               (if (pair? _%$%bind189981189988%_)
                   (let ((_%$%hd189985190103%_ (##car _%$%bind189981189988%_))
                         (_%$%tl189986190105%_ (##cdr _%$%bind189981189988%_)))
                     (let* ((_%id190108%_ _%$%hd189985190103%_)
                            (_%rest190110%_ _%$%tl189986190105%_))
                       (_%$%K189984190100%_ _%rest190110%_ _%id190108%_)))
                   (_%$%E189983189991%_))))
           _%bindings189967%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self190115%_)
        (let ((_%bindings190117%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self190115%_
           _%bindings190117%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g190480_
        (let ((_g190481_ (##length _g190480_)))
          (cond ((##fx= _g190481_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g190480_))
                ((##fx= _g190481_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g190480_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g190480_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self189728%_ _%bindings189729%_)
        (let ((_%self189732%_ _%self189728%_))
          (for-each
           (lambda (_%bind189742%_)
             (let* ((_%$%bind189743189750%_ _%bind189742%_)
                    (_%$%E189745189753%_
                     (lambda ()
                       (error '"No clause matching"
                              _%$%bind189743189750%_
                              '([id . rest]))
                       '#!void))
                    (_%$%K189746189821%_
                     (lambda (_%rest189756%_ _%id189757%_)
                       (gx#core-context-put!
                        _%self189732%_
                        _%id189757%_
                        (let ((__obj190473
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj190473
                           _%id189757%_
                           _%id189757%_
                           '#f
                           (let* ((_%$%rest189758189773%_ _%rest189756%_)
                                  (_%$%E189762189777%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%rest189758189773%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%$%K189767189806%_
                                    (lambda (_%core-id189804%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id189804%_)))
                                   (_%$%K189764189791%_
                                    (lambda (_%proc189789%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc189789%_)))
                                   (_%$%K189763189782%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id189757%_))))
                               (let ((_%$%try-match189761189785%_
                                      (lambda ()
                                        (if (null? _%$%rest189758189773%_)
                                            (_%$%K189763189782%_)
                                            (_%$%E189762189777%_)))))
                                 (if (pair? _%$%rest189758189773%_)
                                     (let ((_%$%tl189769189811%_
                                            (##cdr _%$%rest189758189773%_))
                                           (_%$%hd189768189809%_
                                            (##car _%$%rest189758189773%_)))
                                       (if (##eq? _%$%hd189768189809%_ '=>)
                                           (if (pair? _%$%tl189769189811%_)
                                               (let ((_%$%tl189771189816%_
                                                      (##cdr _%$%tl189769189811%_))
                                                     (_%$%hd189770189814%_
                                                      (##car _%$%tl189769189811%_)))
                                                 (if (null? _%$%tl189771189816%_)
                                                     (let ((_%core-id189819%_
                                                            _%$%hd189770189814%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id189819%_))
                                                     (_%$%E189762189777%_)))
                                               (if (null? _%$%tl189769189811%_)
                                                   (let ((_%proc189799%_
                                                          _%$%hd189768189809%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc189799%_))
                                                   (_%$%E189762189777%_)))
                                           (if (null? _%$%tl189769189811%_)
                                               (let ((_%proc189799%_
                                                      _%$%hd189768189809%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc189799%_))
                                               (_%$%E189762189777%_))))
                                     (_%$%try-match189761189785%_))))))
                          __obj190473)))))
               (if (pair? _%$%bind189743189750%_)
                   (let ((_%$%hd189747189824%_ (##car _%$%bind189743189750%_))
                         (_%$%tl189748189826%_ (##cdr _%$%bind189743189750%_)))
                     (let* ((_%id189829%_ _%$%hd189747189824%_)
                            (_%rest189831%_ _%$%tl189748189826%_))
                       (_%$%K189746189821%_ _%rest189831%_ _%id189829%_)))
                   (_%$%E189745189753%_))))
           _%bindings189729%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self189836%_)
        (let ((_%bindings189838%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self189836%_
           _%bindings189838%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g190482_
        (let ((_g190483_ (##length _g190482_)))
          (cond ((##fx= _g190483_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g190482_))
                ((##fx= _g190483_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g190482_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g190482_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self189459%_)
        (let ((_%self189462%_ _%self189459%_))
          (letrec ((_%linux-variant?189473%_
                    (lambda (_%sys-type189573%_)
                      (let* ((_%$%g189574189582%_
                              (__string-split
                               (symbol->string _%sys-type189573%_)
                               '#\-))
                             (_%$%else189576189590%_ (lambda () '#f))
                             (_%$%K189578189595%_
                              (lambda (_%rest189593%_)
                                (not (null? _%rest189593%_)))))
                        (if (pair? _%$%g189574189582%_)
                            (let ((_%$%hd189579189598%_
                                   (##car _%$%g189574189582%_))
                                  (_%$%tl189580189600%_
                                   (##cdr _%$%g189574189582%_)))
                              (if (equal? _%$%hd189579189598%_ '"linux")
                                  (let ((_%rest189603%_ _%$%tl189580189600%_))
                                    (_%$%K189578189595%_ _%rest189603%_))
                                  (_%$%else189576189590%_)))
                            (_%$%else189576189590%_)))))
                   (_%bsd-variant189474%_
                    (lambda (_%sys-type189532%_)
                      (let ((_%sys-type-str189534%_
                             (symbol->string _%sys-type189532%_)))
                        (let _%lp189536%_ ((_%rest189538%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%$%rest189539189547%_ _%rest189538%_)
                                 (_%$%else189541189555%_ (lambda () '#f))
                                 (_%$%K189543189561%_
                                  (lambda (_%rest189558%_ _%sys189559%_)
                                    (if (string-prefix?
                                         _%sys189559%_
                                         _%sys-type-str189534%_)
                                        _%sys189559%_
                                        (_%lp189536%_ _%rest189558%_)))))
                            (if (pair? _%$%rest189539189547%_)
                                (let ((_%$%hd189544189564%_
                                       (##car _%$%rest189539189547%_))
                                      (_%$%tl189545189566%_
                                       (##cdr _%$%rest189539189547%_)))
                                  (let* ((_%sys189569%_ _%$%hd189544189564%_)
                                         (_%rest189571%_ _%$%tl189545189566%_))
                                    (_%$%K189543189561%_
                                     _%rest189571%_
                                     _%sys189569%_)))
                                (_%$%else189541189555%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self189462%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self189462%_)
            (let* ((_%$%g189475189487%_ (system-type))
                   (_%$%else189477189495%_ (lambda () '#!void))
                   (_%$%K189479189508%_
                    (lambda (_%sys-type189498%_
                             _%sys-vendor189499%_
                             _%sys-cpu189500%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu189500%_
                       '#f
                       '0
                       _%self189462%_)
                      (gx#core-bind-feature!__%
                       _%sys-type189498%_
                       '#f
                       '0
                       _%self189462%_)
                      (if (_%linux-variant?189473%_ _%sys-type189498%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self189462%_)
                          (let ((_%$e189503%_
                                 (_%bsd-variant189474%_ _%sys-type189498%_)))
                            (if _%$e189503%_
                                (let ()
                                  (gx#core-bind-feature!__%
                                   (##string->symbol '"bsd")
                                   '#f
                                   '0
                                   _%self189462%_)
                                  (gx#core-bind-feature!__%
                                   (string->symbol _%$e189503%_)
                                   '#f
                                   '0
                                   _%self189462%_))
                                '#!void))))))
              (if (pair? _%$%g189475189487%_)
                  (let ((_%$%hd189480189511%_ (##car _%$%g189475189487%_))
                        (_%$%tl189481189513%_ (##cdr _%$%g189475189487%_)))
                    (let ((_%sys-cpu189516%_ _%$%hd189480189511%_))
                      (if (pair? _%$%tl189481189513%_)
                          (let ((_%$%hd189482189518%_
                                 (##car _%$%tl189481189513%_))
                                (_%$%tl189483189520%_
                                 (##cdr _%$%tl189481189513%_)))
                            (let ((_%sys-vendor189523%_ _%$%hd189482189518%_))
                              (if (pair? _%$%tl189483189520%_)
                                  (let ((_%$%hd189484189525%_
                                         (##car _%$%tl189483189520%_))
                                        (_%$%tl189485189527%_
                                         (##cdr _%$%tl189483189520%_)))
                                    (let ((_%sys-type189530%_
                                           _%$%hd189484189525%_))
                                      (if (null? _%$%tl189485189527%_)
                                          (_%$%K189479189508%_
                                           _%sys-type189530%_
                                           _%sys-vendor189523%_
                                           _%sys-cpu189516%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self189462%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
