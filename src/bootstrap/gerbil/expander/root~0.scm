(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1769384629)
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
      (lambda (_%self143711%_ _%bind?143712%_)
        (let ((_%self143715%_ _%self143711%_))
          (if (##fx< '2 (##structure-length _%self143715%_))
              (begin
                (##unchecked-structure-set! _%self143715%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self143715%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self143715%_
                     '2
                     (##structure-length _%self143715%_)))
          (if _%bind?143712%_
              (begin
                (let ((__method143779
                       (__method-ref
                        _%self143715%_
                        'bind-core-syntax-expanders!)))
                  (if __method143779
                      (__method143779 _%self143715%_)
                      (begin
                        (error '"Missing method"
                               _%self143715%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method143780
                       (__method-ref
                        _%self143715%_
                        'bind-core-macro-expanders!)))
                  (if __method143780
                      (__method143780 _%self143715%_)
                      (begin
                        (error '"Missing method"
                               _%self143715%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method143781
                       (__method-ref _%self143715%_ 'bind-core-features!)))
                  (if __method143781
                      (__method143781 _%self143715%_)
                      (begin
                        (error '"Missing method"
                               _%self143715%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self143729%_)
        (let ((_%bind?143731%_ '#t))
          (gx#root-context:::init!__% _%self143729%_ _%bind?143731%_))))
    (define gx#root-context:::init!
      (lambda _g143783_
        (let ((_g143784_ (##length _g143783_)))
          (cond ((##fx= _g143784_ 1)
                 (apply gx#root-context:::init!__0 _g143783_))
                ((##fx= _g143784_ 2)
                 (apply gx#root-context:::init!__% _g143783_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g143783_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass143735 __method-table143736)
        (let ((__bind-core-syntax-expanders!143737
               (__make-promise
                (lambda ()
                  (let ((__method143740
                         (symbolic-table-ref
                          __method-table143736
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method143740
                        __method143740
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!143738
               (__make-promise
                (lambda ()
                  (let ((__method143741
                         (symbolic-table-ref
                          __method-table143736
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method143741
                        __method143741
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!143739
               (__make-promise
                (lambda ()
                  (let ((__method143742
                         (symbolic-table-ref
                          __method-table143736
                          'bind-core-features!
                          '#f)))
                    (if __method143742
                        __method143742
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_%opt-lambda143709143726%_
                 (lambda (_%self143711%_ _%bind?143712%_)
                   (let ((_%self143715%_ _%self143711%_))
                     (if (##fx< '2 (##structure-length _%self143715%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self143715%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self143715%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self143715%_
                                '2
                                (##structure-length _%self143715%_)))
                     (if _%bind?143712%_
                         (begin
                           ((force __bind-core-syntax-expanders!143737)
                            _%self143715%_)
                           ((force __bind-core-macro-expanders!143738)
                            _%self143715%_)
                           ((force __bind-core-features!143739)
                            _%self143715%_))
                         '#!void)))))
            (lambda _g143785_
              (let ((_g143786_ (##length _g143785_)))
                (cond ((##fx= _g143786_ 1)
                       (apply (lambda (_%self143729%_)
                                (let ((_%bind?143731%_ '#t))
                                  (_%opt-lambda143709143726%_
                                   _%self143729%_
                                   _%bind?143731%_)))
                              _g143785_))
                      ((##fx= _g143786_ 2)
                       (apply _%opt-lambda143709143726%_ _g143785_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g143785_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self143556%_ _%super143557%_)
        (let* ((_%self143560%_ _%self143556%_)
               (_%super143576%_
                (let ((_%$e143570%_ _%super143557%_))
                  (if _%$e143570%_
                      _%$e143570%_
                      (let ((_%$e143573%_ (gx#core-context-root__0)))
                        (if _%$e143573%_
                            _%$e143573%_
                            (let ((__obj143782
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj143782)
                              __obj143782)))))))
          (if (##fx< '5 (##structure-length _%self143560%_))
              (begin
                (##unchecked-structure-set! _%self143560%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self143560%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self143560%_
                 _%super143576%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self143560%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self143560%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self143560%_
                     '5
                     (##structure-length _%self143560%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self143581%_)
        (let ((_%super143583%_ '#f))
          (gx#top-context:::init!__% _%self143581%_ _%super143583%_))))
    (define gx#top-context:::init!
      (lambda _g143787_
        (let ((_g143788_ (##length _g143787_)))
          (cond ((##fx= _g143788_ 1)
                 (apply gx#top-context:::init!__0 _g143787_))
                ((##fx= _g143788_ 2)
                 (apply gx#top-context:::init!__% _g143787_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g143787_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self143277%_ _%bindings143278%_)
        (let ((_%self143281%_ _%self143277%_))
          (for-each
           (lambda (_%bind143291%_)
             (let* ((_%bind143292143299%_ _%bind143291%_)
                    (_%E143294143302%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind143292143299%_
                              '([id . rest]))
                       '#!void))
                    (_%K143295143411%_
                     (lambda (_%rest143305%_ _%id143306%_)
                       (gx#core-context-put!
                        _%self143281%_
                        _%id143306%_
                        (##structure
                         gx#syntax-binding::t
                         _%id143306%_
                         _%id143306%_
                         '#f
                         (let* ((_%rest143307143318%_ _%rest143305%_)
                                (_%E143309143322%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest143307143318%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K143310143387%_
                                 (lambda (_%compiler143325%_
                                          _%expander143326%_
                                          _%key143327%_)
                                   ((let* ((_%key143328143341%_ _%key143327%_)
                                           (_%E143334143345%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key143328143341%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K143339143381%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K143338143374%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K143337143366%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K143336143358%_
                                             (lambda () gx#make-special-form))
                                            (_%K143335143350%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match143333143353%_
                                                (lambda ()
                                                  (if (##eq? _%key143328143341%_
                                                             'expr:)
                                                      (_%K143335143350%_)
                                                      (_%E143334143345%_))))
                                               (_%try-match143332143361%_
                                                (lambda ()
                                                  (if (##eq? _%key143328143341%_
                                                             'special:)
                                                      (_%K143336143358%_)
                                                      (_%try-match143333143353%_))))
                                               (_%try-match143331143369%_
                                                (lambda ()
                                                  (if (##eq? _%key143328143341%_
                                                             'define:)
                                                      (_%K143337143366%_)
                                                      (_%try-match143332143361%_))))
                                               (_%try-match143330143377%_
                                                (lambda ()
                                                  (if (##eq? _%key143328143341%_
                                                             'module:)
                                                      (_%K143338143374%_)
                                                      (_%try-match143331143369%_)))))
                                          (if (##eq? _%key143328143341%_ 'top:)
                                              (_%K143339143381%_)
                                              (_%try-match143330143377%_)))))
                                    _%expander143326%_
                                    _%id143306%_
                                    (let ((_%$e143384%_ _%compiler143325%_))
                                      (if _%$e143384%_
                                          _%$e143384%_
                                          gx#core-compile-top-error))))))
                           (if (pair? _%rest143307143318%_)
                               (let ((_%hd143311143390%_
                                      (##car _%rest143307143318%_))
                                     (_%tl143312143392%_
                                      (##cdr _%rest143307143318%_)))
                                 (let ((_%key143395%_ _%hd143311143390%_))
                                   (if (pair? _%tl143312143392%_)
                                       (let ((_%hd143313143397%_
                                              (##car _%tl143312143392%_))
                                             (_%tl143314143399%_
                                              (##cdr _%tl143312143392%_)))
                                         (let ((_%expander143402%_
                                                _%hd143313143397%_))
                                           (if (pair? _%tl143314143399%_)
                                               (let ((_%hd143315143404%_
                                                      (##car _%tl143314143399%_))
                                                     (_%tl143316143406%_
                                                      (##cdr _%tl143314143399%_)))
                                                 (let ((_%compiler143409%_
                                                        _%hd143315143404%_))
                                                   (if (null? _%tl143316143406%_)
                                                       (_%K143310143387%_
                                                        _%compiler143409%_
                                                        _%expander143402%_
                                                        _%key143395%_)
                                                       (_%E143309143322%_))))
                                               (_%E143309143322%_))))
                                       (_%E143309143322%_))))
                               (_%E143309143322%_))))))))
               (if (pair? _%bind143292143299%_)
                   (let ((_%hd143296143414%_ (##car _%bind143292143299%_))
                         (_%tl143297143416%_ (##cdr _%bind143292143299%_)))
                     (let* ((_%id143419%_ _%hd143296143414%_)
                            (_%rest143421%_ _%tl143297143416%_))
                       (_%K143295143411%_ _%rest143421%_ _%id143419%_)))
                   (_%E143294143302%_))))
           _%bindings143278%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self143426%_)
        (let ((_%bindings143428%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self143426%_
           _%bindings143428%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g143789_
        (let ((_g143790_ (##length _g143789_)))
          (cond ((##fx= _g143790_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g143789_))
                ((##fx= _g143790_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g143789_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g143789_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self143039%_ _%bindings143040%_)
        (let ((_%self143043%_ _%self143039%_))
          (for-each
           (lambda (_%bind143053%_)
             (let* ((_%bind143054143061%_ _%bind143053%_)
                    (_%E143056143064%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind143054143061%_
                              '([id . rest]))
                       '#!void))
                    (_%K143057143132%_
                     (lambda (_%rest143067%_ _%id143068%_)
                       (gx#core-context-put!
                        _%self143043%_
                        _%id143068%_
                        (##structure
                         gx#syntax-binding::t
                         _%id143068%_
                         _%id143068%_
                         '#f
                         (let* ((_%rest143069143084%_ _%rest143067%_)
                                (_%E143073143088%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest143069143084%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K143078143117%_
                                  (lambda (_%core-id143115%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id143115%_)))
                                 (_%K143075143102%_
                                  (lambda (_%proc143100%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc143100%_)))
                                 (_%K143074143093%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id143068%_))))
                             (let ((_%try-match143072143096%_
                                    (lambda ()
                                      (if (null? _%rest143069143084%_)
                                          (_%K143074143093%_)
                                          (_%E143073143088%_)))))
                               (if (pair? _%rest143069143084%_)
                                   (let ((_%tl143080143122%_
                                          (##cdr _%rest143069143084%_))
                                         (_%hd143079143120%_
                                          (##car _%rest143069143084%_)))
                                     (if (##eq? _%hd143079143120%_ '=>)
                                         (if (pair? _%tl143080143122%_)
                                             (let ((_%tl143082143127%_
                                                    (##cdr _%tl143080143122%_))
                                                   (_%hd143081143125%_
                                                    (##car _%tl143080143122%_)))
                                               (if (null? _%tl143082143127%_)
                                                   (let ((_%core-id143130%_
                                                          _%hd143081143125%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id143130%_))
                                                   (_%E143073143088%_)))
                                             (if (null? _%tl143080143122%_)
                                                 (let ((_%proc143110%_
                                                        _%hd143079143120%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc143110%_))
                                                 (_%E143073143088%_)))
                                         (if (null? _%tl143080143122%_)
                                             (let ((_%proc143110%_
                                                    _%hd143079143120%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc143110%_))
                                             (_%E143073143088%_))))
                                   (_%try-match143072143096%_))))))))))
               (if (pair? _%bind143054143061%_)
                   (let ((_%hd143058143135%_ (##car _%bind143054143061%_))
                         (_%tl143059143137%_ (##cdr _%bind143054143061%_)))
                     (let* ((_%id143140%_ _%hd143058143135%_)
                            (_%rest143142%_ _%tl143059143137%_))
                       (_%K143057143132%_ _%rest143142%_ _%id143140%_)))
                   (_%E143056143064%_))))
           _%bindings143040%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self143147%_)
        (let ((_%bindings143149%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self143147%_
           _%bindings143149%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g143791_
        (let ((_g143792_ (##length _g143791_)))
          (cond ((##fx= _g143792_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g143791_))
                ((##fx= _g143792_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g143791_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g143791_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self142770%_)
        (let ((_%self142773%_ _%self142770%_))
          (letrec ((_%linux-variant?142784%_
                    (lambda (_%sys-type142884%_)
                      (let* ((_%g142885142893%_
                              (__string-split
                               (symbol->string _%sys-type142884%_)
                               '#\-))
                             (_%else142887142901%_ (lambda () '#f))
                             (_%K142889142906%_
                              (lambda (_%rest142904%_)
                                (not (null? _%rest142904%_)))))
                        (if (pair? _%g142885142893%_)
                            (let ((_%hd142890142909%_
                                   (##car _%g142885142893%_))
                                  (_%tl142891142911%_
                                   (##cdr _%g142885142893%_)))
                              (if (equal? _%hd142890142909%_ '"linux")
                                  (let ((_%rest142914%_ _%tl142891142911%_))
                                    (_%K142889142906%_ _%rest142914%_))
                                  (_%else142887142901%_)))
                            (_%else142887142901%_)))))
                   (_%bsd-variant142785%_
                    (lambda (_%sys-type142843%_)
                      (let ((_%sys-type-str142845%_
                             (symbol->string _%sys-type142843%_)))
                        (let _%lp142847%_ ((_%rest142849%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest142850142858%_ _%rest142849%_)
                                 (_%else142852142866%_ (lambda () '#f))
                                 (_%K142854142872%_
                                  (lambda (_%rest142869%_ _%sys142870%_)
                                    (if (string-prefix?
                                         _%sys142870%_
                                         _%sys-type-str142845%_)
                                        _%sys142870%_
                                        (_%lp142847%_ _%rest142869%_)))))
                            (if (pair? _%rest142850142858%_)
                                (let ((_%hd142855142875%_
                                       (##car _%rest142850142858%_))
                                      (_%tl142856142877%_
                                       (##cdr _%rest142850142858%_)))
                                  (let* ((_%sys142880%_ _%hd142855142875%_)
                                         (_%rest142882%_ _%tl142856142877%_))
                                    (_%K142854142872%_
                                     _%rest142882%_
                                     _%sys142880%_)))
                                (_%else142852142866%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self142773%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self142773%_)
            (let* ((_%g142786142798%_ (system-type))
                   (_%else142788142806%_ (lambda () '#!void))
                   (_%K142790142819%_
                    (lambda (_%sys-type142809%_
                             _%sys-vendor142810%_
                             _%sys-cpu142811%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu142811%_
                       '#f
                       '0
                       _%self142773%_)
                      (gx#core-bind-feature!__%
                       _%sys-type142809%_
                       '#f
                       '0
                       _%self142773%_)
                      (if (_%linux-variant?142784%_ _%sys-type142809%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self142773%_)
                          (let ((_%$e142814%_
                                 (_%bsd-variant142785%_ _%sys-type142809%_)))
                            (if _%$e142814%_
                                ((lambda (_%sys-prefix142817%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self142773%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix142817%_)
                                    '#f
                                    '0
                                    _%self142773%_))
                                 _%$e142814%_)
                                '#!void))))))
              (if (pair? _%g142786142798%_)
                  (let ((_%hd142791142822%_ (##car _%g142786142798%_))
                        (_%tl142792142824%_ (##cdr _%g142786142798%_)))
                    (let ((_%sys-cpu142827%_ _%hd142791142822%_))
                      (if (pair? _%tl142792142824%_)
                          (let ((_%hd142793142829%_ (##car _%tl142792142824%_))
                                (_%tl142794142831%_
                                 (##cdr _%tl142792142824%_)))
                            (let ((_%sys-vendor142834%_ _%hd142793142829%_))
                              (if (pair? _%tl142794142831%_)
                                  (let ((_%hd142795142836%_
                                         (##car _%tl142794142831%_))
                                        (_%tl142796142838%_
                                         (##cdr _%tl142794142831%_)))
                                    (let ((_%sys-type142841%_
                                           _%hd142795142836%_))
                                      (if (null? _%tl142796142838%_)
                                          (_%K142790142819%_
                                           _%sys-type142841%_
                                           _%sys-vendor142834%_
                                           _%sys-cpu142827%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self142773%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
