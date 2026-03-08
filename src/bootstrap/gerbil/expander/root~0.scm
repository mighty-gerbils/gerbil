(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1773009269)
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
      (lambda (_%self189003%_ _%bind?189004%_)
        (let ((_%self189007%_ _%self189003%_))
          (if (##fx< '2 (##structure-length _%self189007%_))
              (begin
                (##unchecked-structure-set! _%self189007%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self189007%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self189007%_
                     '2
                     (##structure-length _%self189007%_)))
          (if _%bind?189004%_
              (begin
                (let ((__method189071
                       (__method-ref
                        _%self189007%_
                        'bind-core-syntax-expanders!)))
                  (if __method189071
                      (__method189071 _%self189007%_)
                      (begin
                        (error '"Missing method"
                               _%self189007%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method189072
                       (__method-ref
                        _%self189007%_
                        'bind-core-macro-expanders!)))
                  (if __method189072
                      (__method189072 _%self189007%_)
                      (begin
                        (error '"Missing method"
                               _%self189007%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method189073
                       (__method-ref _%self189007%_ 'bind-core-features!)))
                  (if __method189073
                      (__method189073 _%self189007%_)
                      (begin
                        (error '"Missing method"
                               _%self189007%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self189021%_)
        (let ((_%bind?189023%_ '#t))
          (gx#root-context:::init!__% _%self189021%_ _%bind?189023%_))))
    (define gx#root-context:::init!
      (lambda _g189077_
        (let ((_g189078_ (##length _g189077_)))
          (cond ((##fx= _g189078_ 1)
                 (apply gx#root-context:::init!__0 _g189077_))
                ((##fx= _g189078_ 2)
                 (apply gx#root-context:::init!__% _g189077_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g189077_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass189027 __method-table189028)
        (let ((__bind-core-features!189029
               (__make-promise
                (lambda ()
                  (let ((__method189032
                         (symbolic-table-ref
                          __method-table189028
                          'bind-core-features!
                          '#f)))
                    (if __method189032
                        __method189032
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!189030
               (__make-promise
                (lambda ()
                  (let ((__method189033
                         (symbolic-table-ref
                          __method-table189028
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method189033
                        __method189033
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!189031
               (__make-promise
                (lambda ()
                  (let ((__method189034
                         (symbolic-table-ref
                          __method-table189028
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method189034
                        __method189034
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%opt-lambda189001189018%_
                 (lambda (_%self189003%_ _%bind?189004%_)
                   (let ((_%self189007%_ _%self189003%_))
                     (if (##fx< '2 (##structure-length _%self189007%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self189007%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self189007%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self189007%_
                                '2
                                (##structure-length _%self189007%_)))
                     (if _%bind?189004%_
                         (begin
                           ((force __bind-core-syntax-expanders!189030)
                            _%self189007%_)
                           ((force __bind-core-macro-expanders!189031)
                            _%self189007%_)
                           ((force __bind-core-features!189029)
                            _%self189007%_))
                         '#!void)))))
            (lambda _g189079_
              (let ((_g189080_ (##length _g189079_)))
                (cond ((##fx= _g189080_ 1)
                       (apply (lambda (_%self189021%_)
                                (let ((_%bind?189023%_ '#t))
                                  (_%opt-lambda189001189018%_
                                   _%self189021%_
                                   _%bind?189023%_)))
                              _g189079_))
                      ((##fx= _g189080_ 2)
                       (apply _%opt-lambda189001189018%_ _g189079_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g189079_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self188848%_ _%super188849%_)
        (let* ((_%self188852%_ _%self188848%_)
               (_%super188868%_
                (let ((_%$e188862%_ _%super188849%_))
                  (if _%$e188862%_
                      _%$e188862%_
                      (let ((_%$e188865%_ (gx#core-context-root__0)))
                        (if _%$e188865%_
                            _%$e188865%_
                            (let ((__obj189074
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj189074)
                              __obj189074)))))))
          (if (##fx< '5 (##structure-length _%self188852%_))
              (begin
                (##unchecked-structure-set! _%self188852%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self188852%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self188852%_
                 _%super188868%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self188852%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self188852%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self188852%_
                     '5
                     (##structure-length _%self188852%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self188873%_)
        (let ((_%super188875%_ '#f))
          (gx#top-context:::init!__% _%self188873%_ _%super188875%_))))
    (define gx#top-context:::init!
      (lambda _g189081_
        (let ((_g189082_ (##length _g189081_)))
          (cond ((##fx= _g189082_ 1)
                 (apply gx#top-context:::init!__0 _g189081_))
                ((##fx= _g189082_ 2)
                 (apply gx#top-context:::init!__% _g189081_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g189081_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self188569%_ _%bindings188570%_)
        (let ((_%self188573%_ _%self188569%_))
          (for-each
           (lambda (_%bind188583%_)
             (let* ((_%bind188584188591%_ _%bind188583%_)
                    (_%E188586188594%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind188584188591%_
                              '([id . rest]))
                       '#!void))
                    (_%K188587188703%_
                     (lambda (_%rest188597%_ _%id188598%_)
                       (gx#core-context-put!
                        _%self188573%_
                        _%id188598%_
                        (let ((__obj189075
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj189075
                           _%id188598%_
                           _%id188598%_
                           '#f
                           (let* ((_%rest188599188610%_ _%rest188597%_)
                                  (_%E188601188614%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest188599188610%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%K188602188679%_
                                   (lambda (_%compiler188617%_
                                            _%expander188618%_
                                            _%key188619%_)
                                     ((let* ((_%key188620188633%_
                                              _%key188619%_)
                                             (_%E188626188637%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%key188620188633%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%K188631188673%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%K188630188666%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%K188629188658%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%K188628188650%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%K188627188642%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%try-match188625188645%_
                                                  (lambda ()
                                                    (if (##eq? _%key188620188633%_
                                                               'expr:)
                                                        (_%K188627188642%_)
                                                        (_%E188626188637%_))))
                                                 (_%try-match188624188653%_
                                                  (lambda ()
                                                    (if (##eq? _%key188620188633%_
                                                               'special:)
                                                        (_%K188628188650%_)
                                                        (_%try-match188625188645%_))))
                                                 (_%try-match188623188661%_
                                                  (lambda ()
                                                    (if (##eq? _%key188620188633%_
                                                               'define:)
                                                        (_%K188629188658%_)
                                                        (_%try-match188624188653%_))))
                                                 (_%try-match188622188669%_
                                                  (lambda ()
                                                    (if (##eq? _%key188620188633%_
                                                               'module:)
                                                        (_%K188630188666%_)
                                                        (_%try-match188623188661%_)))))
                                            (if (##eq? _%key188620188633%_
                                                       'top:)
                                                (_%K188631188673%_)
                                                (_%try-match188622188669%_)))))
                                      _%expander188618%_
                                      _%id188598%_
                                      (let ((_%$e188676%_ _%compiler188617%_))
                                        (if _%$e188676%_
                                            _%$e188676%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%rest188599188610%_)
                                 (let ((_%hd188603188682%_
                                        (##car _%rest188599188610%_))
                                       (_%tl188604188684%_
                                        (##cdr _%rest188599188610%_)))
                                   (let ((_%key188687%_ _%hd188603188682%_))
                                     (if (pair? _%tl188604188684%_)
                                         (let ((_%hd188605188689%_
                                                (##car _%tl188604188684%_))
                                               (_%tl188606188691%_
                                                (##cdr _%tl188604188684%_)))
                                           (let ((_%expander188694%_
                                                  _%hd188605188689%_))
                                             (if (pair? _%tl188606188691%_)
                                                 (let ((_%hd188607188696%_
                                                        (##car _%tl188606188691%_))
                                                       (_%tl188608188698%_
                                                        (##cdr _%tl188606188691%_)))
                                                   (let ((_%compiler188701%_
                                                          _%hd188607188696%_))
                                                     (if (null? _%tl188608188698%_)
                                                         (_%K188602188679%_
                                                          _%compiler188701%_
                                                          _%expander188694%_
                                                          _%key188687%_)
                                                         (_%E188601188614%_))))
                                                 (_%E188601188614%_))))
                                         (_%E188601188614%_))))
                                 (_%E188601188614%_))))
                          __obj189075)))))
               (if (pair? _%bind188584188591%_)
                   (let ((_%hd188588188706%_ (##car _%bind188584188591%_))
                         (_%tl188589188708%_ (##cdr _%bind188584188591%_)))
                     (let* ((_%id188711%_ _%hd188588188706%_)
                            (_%rest188713%_ _%tl188589188708%_))
                       (_%K188587188703%_ _%rest188713%_ _%id188711%_)))
                   (_%E188586188594%_))))
           _%bindings188570%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self188718%_)
        (let ((_%bindings188720%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self188718%_
           _%bindings188720%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g189083_
        (let ((_g189084_ (##length _g189083_)))
          (cond ((##fx= _g189084_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g189083_))
                ((##fx= _g189084_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g189083_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g189083_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self188331%_ _%bindings188332%_)
        (let ((_%self188335%_ _%self188331%_))
          (for-each
           (lambda (_%bind188345%_)
             (let* ((_%bind188346188353%_ _%bind188345%_)
                    (_%E188348188356%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind188346188353%_
                              '([id . rest]))
                       '#!void))
                    (_%K188349188424%_
                     (lambda (_%rest188359%_ _%id188360%_)
                       (gx#core-context-put!
                        _%self188335%_
                        _%id188360%_
                        (let ((__obj189076
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj189076
                           _%id188360%_
                           _%id188360%_
                           '#f
                           (let* ((_%rest188361188376%_ _%rest188359%_)
                                  (_%E188365188380%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest188361188376%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%K188370188409%_
                                    (lambda (_%core-id188407%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id188407%_)))
                                   (_%K188367188394%_
                                    (lambda (_%proc188392%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc188392%_)))
                                   (_%K188366188385%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id188360%_))))
                               (let ((_%try-match188364188388%_
                                      (lambda ()
                                        (if (null? _%rest188361188376%_)
                                            (_%K188366188385%_)
                                            (_%E188365188380%_)))))
                                 (if (pair? _%rest188361188376%_)
                                     (let ((_%tl188372188414%_
                                            (##cdr _%rest188361188376%_))
                                           (_%hd188371188412%_
                                            (##car _%rest188361188376%_)))
                                       (if (##eq? _%hd188371188412%_ '=>)
                                           (if (pair? _%tl188372188414%_)
                                               (let ((_%tl188374188419%_
                                                      (##cdr _%tl188372188414%_))
                                                     (_%hd188373188417%_
                                                      (##car _%tl188372188414%_)))
                                                 (if (null? _%tl188374188419%_)
                                                     (let ((_%core-id188422%_
                                                            _%hd188373188417%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id188422%_))
                                                     (_%E188365188380%_)))
                                               (if (null? _%tl188372188414%_)
                                                   (let ((_%proc188402%_
                                                          _%hd188371188412%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc188402%_))
                                                   (_%E188365188380%_)))
                                           (if (null? _%tl188372188414%_)
                                               (let ((_%proc188402%_
                                                      _%hd188371188412%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc188402%_))
                                               (_%E188365188380%_))))
                                     (_%try-match188364188388%_))))))
                          __obj189076)))))
               (if (pair? _%bind188346188353%_)
                   (let ((_%hd188350188427%_ (##car _%bind188346188353%_))
                         (_%tl188351188429%_ (##cdr _%bind188346188353%_)))
                     (let* ((_%id188432%_ _%hd188350188427%_)
                            (_%rest188434%_ _%tl188351188429%_))
                       (_%K188349188424%_ _%rest188434%_ _%id188432%_)))
                   (_%E188348188356%_))))
           _%bindings188332%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self188439%_)
        (let ((_%bindings188441%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self188439%_
           _%bindings188441%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g189085_
        (let ((_g189086_ (##length _g189085_)))
          (cond ((##fx= _g189086_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g189085_))
                ((##fx= _g189086_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g189085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g189085_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self188062%_)
        (let ((_%self188065%_ _%self188062%_))
          (letrec ((_%linux-variant?188076%_
                    (lambda (_%sys-type188176%_)
                      (let* ((_%g188177188185%_
                              (__string-split
                               (symbol->string _%sys-type188176%_)
                               '#\-))
                             (_%else188179188193%_ (lambda () '#f))
                             (_%K188181188198%_
                              (lambda (_%rest188196%_)
                                (not (null? _%rest188196%_)))))
                        (if (pair? _%g188177188185%_)
                            (let ((_%hd188182188201%_
                                   (##car _%g188177188185%_))
                                  (_%tl188183188203%_
                                   (##cdr _%g188177188185%_)))
                              (if (equal? _%hd188182188201%_ '"linux")
                                  (let ((_%rest188206%_ _%tl188183188203%_))
                                    (_%K188181188198%_ _%rest188206%_))
                                  (_%else188179188193%_)))
                            (_%else188179188193%_)))))
                   (_%bsd-variant188077%_
                    (lambda (_%sys-type188135%_)
                      (let ((_%sys-type-str188137%_
                             (symbol->string _%sys-type188135%_)))
                        (let _%lp188139%_ ((_%rest188141%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest188142188150%_ _%rest188141%_)
                                 (_%else188144188158%_ (lambda () '#f))
                                 (_%K188146188164%_
                                  (lambda (_%rest188161%_ _%sys188162%_)
                                    (if (string-prefix?
                                         _%sys188162%_
                                         _%sys-type-str188137%_)
                                        _%sys188162%_
                                        (_%lp188139%_ _%rest188161%_)))))
                            (if (pair? _%rest188142188150%_)
                                (let ((_%hd188147188167%_
                                       (##car _%rest188142188150%_))
                                      (_%tl188148188169%_
                                       (##cdr _%rest188142188150%_)))
                                  (let* ((_%sys188172%_ _%hd188147188167%_)
                                         (_%rest188174%_ _%tl188148188169%_))
                                    (_%K188146188164%_
                                     _%rest188174%_
                                     _%sys188172%_)))
                                (_%else188144188158%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self188065%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self188065%_)
            (let* ((_%g188078188090%_ (system-type))
                   (_%else188080188098%_ (lambda () '#!void))
                   (_%K188082188111%_
                    (lambda (_%sys-type188101%_
                             _%sys-vendor188102%_
                             _%sys-cpu188103%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu188103%_
                       '#f
                       '0
                       _%self188065%_)
                      (gx#core-bind-feature!__%
                       _%sys-type188101%_
                       '#f
                       '0
                       _%self188065%_)
                      (if (_%linux-variant?188076%_ _%sys-type188101%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self188065%_)
                          (let ((_%$e188106%_
                                 (_%bsd-variant188077%_ _%sys-type188101%_)))
                            (if _%$e188106%_
                                ((lambda (_%sys-prefix188109%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self188065%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix188109%_)
                                    '#f
                                    '0
                                    _%self188065%_))
                                 _%$e188106%_)
                                '#!void))))))
              (if (pair? _%g188078188090%_)
                  (let ((_%hd188083188114%_ (##car _%g188078188090%_))
                        (_%tl188084188116%_ (##cdr _%g188078188090%_)))
                    (let ((_%sys-cpu188119%_ _%hd188083188114%_))
                      (if (pair? _%tl188084188116%_)
                          (let ((_%hd188085188121%_ (##car _%tl188084188116%_))
                                (_%tl188086188123%_
                                 (##cdr _%tl188084188116%_)))
                            (let ((_%sys-vendor188126%_ _%hd188085188121%_))
                              (if (pair? _%tl188086188123%_)
                                  (let ((_%hd188087188128%_
                                         (##car _%tl188086188123%_))
                                        (_%tl188088188130%_
                                         (##cdr _%tl188086188123%_)))
                                    (let ((_%sys-type188133%_
                                           _%hd188087188128%_))
                                      (if (null? _%tl188088188130%_)
                                          (_%K188082188111%_
                                           _%sys-type188133%_
                                           _%sys-vendor188126%_
                                           _%sys-cpu188119%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self188065%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
