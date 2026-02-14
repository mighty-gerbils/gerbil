(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1771037610)
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
      (lambda (_%self196941%_ _%bind?196942%_)
        (let ((_%self196945%_ _%self196941%_))
          (if (##fx< '2 (##structure-length _%self196945%_))
              (begin
                (##unchecked-structure-set! _%self196945%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self196945%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self196945%_
                     '2
                     (##structure-length _%self196945%_)))
          (if _%bind?196942%_
              (begin
                (let ((__method197009
                       (__method-ref
                        _%self196945%_
                        'bind-core-syntax-expanders!)))
                  (if __method197009
                      (__method197009 _%self196945%_)
                      (begin
                        (error '"Missing method"
                               _%self196945%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method197010
                       (__method-ref
                        _%self196945%_
                        'bind-core-macro-expanders!)))
                  (if __method197010
                      (__method197010 _%self196945%_)
                      (begin
                        (error '"Missing method"
                               _%self196945%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method197011
                       (__method-ref _%self196945%_ 'bind-core-features!)))
                  (if __method197011
                      (__method197011 _%self196945%_)
                      (begin
                        (error '"Missing method"
                               _%self196945%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self196959%_)
        (let ((_%bind?196961%_ '#t))
          (gx#root-context:::init!__% _%self196959%_ _%bind?196961%_))))
    (define gx#root-context:::init!
      (lambda _g197015_
        (let ((_g197016_ (##length _g197015_)))
          (cond ((##fx= _g197016_ 1)
                 (apply gx#root-context:::init!__0 _g197015_))
                ((##fx= _g197016_ 2)
                 (apply gx#root-context:::init!__% _g197015_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g197015_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass196965 __method-table196966)
        (let ((__bind-core-syntax-expanders!196967
               (__make-promise
                (lambda ()
                  (let ((__method196970
                         (symbolic-table-ref
                          __method-table196966
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method196970
                        __method196970
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!196968
               (__make-promise
                (lambda ()
                  (let ((__method196971
                         (symbolic-table-ref
                          __method-table196966
                          'bind-core-features!
                          '#f)))
                    (if __method196971
                        __method196971
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!196969
               (__make-promise
                (lambda ()
                  (let ((__method196972
                         (symbolic-table-ref
                          __method-table196966
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method196972
                        __method196972
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%opt-lambda196939196956%_
                 (lambda (_%self196941%_ _%bind?196942%_)
                   (let ((_%self196945%_ _%self196941%_))
                     (if (##fx< '2 (##structure-length _%self196945%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self196945%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self196945%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self196945%_
                                '2
                                (##structure-length _%self196945%_)))
                     (if _%bind?196942%_
                         (begin
                           ((force __bind-core-syntax-expanders!196967)
                            _%self196945%_)
                           ((force __bind-core-macro-expanders!196969)
                            _%self196945%_)
                           ((force __bind-core-features!196968)
                            _%self196945%_))
                         '#!void)))))
            (lambda _g197017_
              (let ((_g197018_ (##length _g197017_)))
                (cond ((##fx= _g197018_ 1)
                       (apply (lambda (_%self196959%_)
                                (let ((_%bind?196961%_ '#t))
                                  (_%opt-lambda196939196956%_
                                   _%self196959%_
                                   _%bind?196961%_)))
                              _g197017_))
                      ((##fx= _g197018_ 2)
                       (apply _%opt-lambda196939196956%_ _g197017_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g197017_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self196786%_ _%super196787%_)
        (let* ((_%self196790%_ _%self196786%_)
               (_%super196806%_
                (let ((_%$e196800%_ _%super196787%_))
                  (if _%$e196800%_
                      _%$e196800%_
                      (let ((_%$e196803%_ (gx#core-context-root__0)))
                        (if _%$e196803%_
                            _%$e196803%_
                            (let ((__obj197012
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj197012)
                              __obj197012)))))))
          (if (##fx< '5 (##structure-length _%self196790%_))
              (begin
                (##unchecked-structure-set! _%self196790%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self196790%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self196790%_
                 _%super196806%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self196790%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self196790%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self196790%_
                     '5
                     (##structure-length _%self196790%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self196811%_)
        (let ((_%super196813%_ '#f))
          (gx#top-context:::init!__% _%self196811%_ _%super196813%_))))
    (define gx#top-context:::init!
      (lambda _g197019_
        (let ((_g197020_ (##length _g197019_)))
          (cond ((##fx= _g197020_ 1)
                 (apply gx#top-context:::init!__0 _g197019_))
                ((##fx= _g197020_ 2)
                 (apply gx#top-context:::init!__% _g197019_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g197019_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self196507%_ _%bindings196508%_)
        (let ((_%self196511%_ _%self196507%_))
          (for-each
           (lambda (_%bind196521%_)
             (let* ((_%bind196522196529%_ _%bind196521%_)
                    (_%E196524196532%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind196522196529%_
                              '([id . rest]))
                       '#!void))
                    (_%K196525196641%_
                     (lambda (_%rest196535%_ _%id196536%_)
                       (gx#core-context-put!
                        _%self196511%_
                        _%id196536%_
                        (let ((__obj197013
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj197013
                           _%id196536%_
                           _%id196536%_
                           '#f
                           (let* ((_%rest196537196548%_ _%rest196535%_)
                                  (_%E196539196552%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest196537196548%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%K196540196617%_
                                   (lambda (_%compiler196555%_
                                            _%expander196556%_
                                            _%key196557%_)
                                     ((let* ((_%key196558196571%_
                                              _%key196557%_)
                                             (_%E196564196575%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%key196558196571%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%K196569196611%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%K196568196604%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%K196567196596%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%K196566196588%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%K196565196580%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%try-match196563196583%_
                                                  (lambda ()
                                                    (if (##eq? _%key196558196571%_
                                                               'expr:)
                                                        (_%K196565196580%_)
                                                        (_%E196564196575%_))))
                                                 (_%try-match196562196591%_
                                                  (lambda ()
                                                    (if (##eq? _%key196558196571%_
                                                               'special:)
                                                        (_%K196566196588%_)
                                                        (_%try-match196563196583%_))))
                                                 (_%try-match196561196599%_
                                                  (lambda ()
                                                    (if (##eq? _%key196558196571%_
                                                               'define:)
                                                        (_%K196567196596%_)
                                                        (_%try-match196562196591%_))))
                                                 (_%try-match196560196607%_
                                                  (lambda ()
                                                    (if (##eq? _%key196558196571%_
                                                               'module:)
                                                        (_%K196568196604%_)
                                                        (_%try-match196561196599%_)))))
                                            (if (##eq? _%key196558196571%_
                                                       'top:)
                                                (_%K196569196611%_)
                                                (_%try-match196560196607%_)))))
                                      _%expander196556%_
                                      _%id196536%_
                                      (let ((_%$e196614%_ _%compiler196555%_))
                                        (if _%$e196614%_
                                            _%$e196614%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%rest196537196548%_)
                                 (let ((_%hd196541196620%_
                                        (##car _%rest196537196548%_))
                                       (_%tl196542196622%_
                                        (##cdr _%rest196537196548%_)))
                                   (let ((_%key196625%_ _%hd196541196620%_))
                                     (if (pair? _%tl196542196622%_)
                                         (let ((_%hd196543196627%_
                                                (##car _%tl196542196622%_))
                                               (_%tl196544196629%_
                                                (##cdr _%tl196542196622%_)))
                                           (let ((_%expander196632%_
                                                  _%hd196543196627%_))
                                             (if (pair? _%tl196544196629%_)
                                                 (let ((_%hd196545196634%_
                                                        (##car _%tl196544196629%_))
                                                       (_%tl196546196636%_
                                                        (##cdr _%tl196544196629%_)))
                                                   (let ((_%compiler196639%_
                                                          _%hd196545196634%_))
                                                     (if (null? _%tl196546196636%_)
                                                         (_%K196540196617%_
                                                          _%compiler196639%_
                                                          _%expander196632%_
                                                          _%key196625%_)
                                                         (_%E196539196552%_))))
                                                 (_%E196539196552%_))))
                                         (_%E196539196552%_))))
                                 (_%E196539196552%_))))
                          __obj197013)))))
               (if (pair? _%bind196522196529%_)
                   (let ((_%hd196526196644%_ (##car _%bind196522196529%_))
                         (_%tl196527196646%_ (##cdr _%bind196522196529%_)))
                     (let* ((_%id196649%_ _%hd196526196644%_)
                            (_%rest196651%_ _%tl196527196646%_))
                       (_%K196525196641%_ _%rest196651%_ _%id196649%_)))
                   (_%E196524196532%_))))
           _%bindings196508%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self196656%_)
        (let ((_%bindings196658%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self196656%_
           _%bindings196658%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g197021_
        (let ((_g197022_ (##length _g197021_)))
          (cond ((##fx= _g197022_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g197021_))
                ((##fx= _g197022_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g197021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g197021_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self196269%_ _%bindings196270%_)
        (let ((_%self196273%_ _%self196269%_))
          (for-each
           (lambda (_%bind196283%_)
             (let* ((_%bind196284196291%_ _%bind196283%_)
                    (_%E196286196294%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind196284196291%_
                              '([id . rest]))
                       '#!void))
                    (_%K196287196362%_
                     (lambda (_%rest196297%_ _%id196298%_)
                       (gx#core-context-put!
                        _%self196273%_
                        _%id196298%_
                        (let ((__obj197014
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj197014
                           _%id196298%_
                           _%id196298%_
                           '#f
                           (let* ((_%rest196299196314%_ _%rest196297%_)
                                  (_%E196303196318%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest196299196314%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%K196308196347%_
                                    (lambda (_%core-id196345%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id196345%_)))
                                   (_%K196305196332%_
                                    (lambda (_%proc196330%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc196330%_)))
                                   (_%K196304196323%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id196298%_))))
                               (let ((_%try-match196302196326%_
                                      (lambda ()
                                        (if (null? _%rest196299196314%_)
                                            (_%K196304196323%_)
                                            (_%E196303196318%_)))))
                                 (if (pair? _%rest196299196314%_)
                                     (let ((_%tl196310196352%_
                                            (##cdr _%rest196299196314%_))
                                           (_%hd196309196350%_
                                            (##car _%rest196299196314%_)))
                                       (if (##eq? _%hd196309196350%_ '=>)
                                           (if (pair? _%tl196310196352%_)
                                               (let ((_%tl196312196357%_
                                                      (##cdr _%tl196310196352%_))
                                                     (_%hd196311196355%_
                                                      (##car _%tl196310196352%_)))
                                                 (if (null? _%tl196312196357%_)
                                                     (let ((_%core-id196360%_
                                                            _%hd196311196355%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id196360%_))
                                                     (_%E196303196318%_)))
                                               (if (null? _%tl196310196352%_)
                                                   (let ((_%proc196340%_
                                                          _%hd196309196350%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc196340%_))
                                                   (_%E196303196318%_)))
                                           (if (null? _%tl196310196352%_)
                                               (let ((_%proc196340%_
                                                      _%hd196309196350%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc196340%_))
                                               (_%E196303196318%_))))
                                     (_%try-match196302196326%_))))))
                          __obj197014)))))
               (if (pair? _%bind196284196291%_)
                   (let ((_%hd196288196365%_ (##car _%bind196284196291%_))
                         (_%tl196289196367%_ (##cdr _%bind196284196291%_)))
                     (let* ((_%id196370%_ _%hd196288196365%_)
                            (_%rest196372%_ _%tl196289196367%_))
                       (_%K196287196362%_ _%rest196372%_ _%id196370%_)))
                   (_%E196286196294%_))))
           _%bindings196270%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self196377%_)
        (let ((_%bindings196379%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self196377%_
           _%bindings196379%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g197023_
        (let ((_g197024_ (##length _g197023_)))
          (cond ((##fx= _g197024_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g197023_))
                ((##fx= _g197024_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g197023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g197023_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self196000%_)
        (let ((_%self196003%_ _%self196000%_))
          (letrec ((_%linux-variant?196014%_
                    (lambda (_%sys-type196114%_)
                      (let* ((_%g196115196123%_
                              (__string-split
                               (symbol->string _%sys-type196114%_)
                               '#\-))
                             (_%else196117196131%_ (lambda () '#f))
                             (_%K196119196136%_
                              (lambda (_%rest196134%_)
                                (not (null? _%rest196134%_)))))
                        (if (pair? _%g196115196123%_)
                            (let ((_%hd196120196139%_
                                   (##car _%g196115196123%_))
                                  (_%tl196121196141%_
                                   (##cdr _%g196115196123%_)))
                              (if (equal? _%hd196120196139%_ '"linux")
                                  (let ((_%rest196144%_ _%tl196121196141%_))
                                    (_%K196119196136%_ _%rest196144%_))
                                  (_%else196117196131%_)))
                            (_%else196117196131%_)))))
                   (_%bsd-variant196015%_
                    (lambda (_%sys-type196073%_)
                      (let ((_%sys-type-str196075%_
                             (symbol->string _%sys-type196073%_)))
                        (let _%lp196077%_ ((_%rest196079%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest196080196088%_ _%rest196079%_)
                                 (_%else196082196096%_ (lambda () '#f))
                                 (_%K196084196102%_
                                  (lambda (_%rest196099%_ _%sys196100%_)
                                    (if (string-prefix?
                                         _%sys196100%_
                                         _%sys-type-str196075%_)
                                        _%sys196100%_
                                        (_%lp196077%_ _%rest196099%_)))))
                            (if (pair? _%rest196080196088%_)
                                (let ((_%hd196085196105%_
                                       (##car _%rest196080196088%_))
                                      (_%tl196086196107%_
                                       (##cdr _%rest196080196088%_)))
                                  (let* ((_%sys196110%_ _%hd196085196105%_)
                                         (_%rest196112%_ _%tl196086196107%_))
                                    (_%K196084196102%_
                                     _%rest196112%_
                                     _%sys196110%_)))
                                (_%else196082196096%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self196003%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self196003%_)
            (let* ((_%g196016196028%_ (system-type))
                   (_%else196018196036%_ (lambda () '#!void))
                   (_%K196020196049%_
                    (lambda (_%sys-type196039%_
                             _%sys-vendor196040%_
                             _%sys-cpu196041%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu196041%_
                       '#f
                       '0
                       _%self196003%_)
                      (gx#core-bind-feature!__%
                       _%sys-type196039%_
                       '#f
                       '0
                       _%self196003%_)
                      (if (_%linux-variant?196014%_ _%sys-type196039%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self196003%_)
                          (let ((_%$e196044%_
                                 (_%bsd-variant196015%_ _%sys-type196039%_)))
                            (if _%$e196044%_
                                ((lambda (_%sys-prefix196047%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self196003%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix196047%_)
                                    '#f
                                    '0
                                    _%self196003%_))
                                 _%$e196044%_)
                                '#!void))))))
              (if (pair? _%g196016196028%_)
                  (let ((_%hd196021196052%_ (##car _%g196016196028%_))
                        (_%tl196022196054%_ (##cdr _%g196016196028%_)))
                    (let ((_%sys-cpu196057%_ _%hd196021196052%_))
                      (if (pair? _%tl196022196054%_)
                          (let ((_%hd196023196059%_ (##car _%tl196022196054%_))
                                (_%tl196024196061%_
                                 (##cdr _%tl196022196054%_)))
                            (let ((_%sys-vendor196064%_ _%hd196023196059%_))
                              (if (pair? _%tl196024196061%_)
                                  (let ((_%hd196025196066%_
                                         (##car _%tl196024196061%_))
                                        (_%tl196026196068%_
                                         (##cdr _%tl196024196061%_)))
                                    (let ((_%sys-type196071%_
                                           _%hd196025196066%_))
                                      (if (null? _%tl196026196068%_)
                                          (_%K196020196049%_
                                           _%sys-type196071%_
                                           _%sys-vendor196064%_
                                           _%sys-cpu196057%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self196003%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
