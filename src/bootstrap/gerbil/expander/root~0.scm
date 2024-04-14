(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1713453200)
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
      (lambda (_%self129076130156%_ _%bind?130158%_)
        (let* ((_%self130160%_ _%self129076130156%_)
               (_%self130162%_ _%self130160%_))
          (if (##fx< '2 (##structure-length _%self130162%_))
              (begin
                (##unchecked-structure-set! _%self130162%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self130162%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self130162%_
                     '2
                     (##vector-length _%self130162%_)))
          (if _%bind?130158%_
              (begin
                (let ((__method130225
                       (__method-ref
                        _%self130162%_
                        'bind-core-syntax-expanders!)))
                  (if __method130225
                      (__method130225 _%self130162%_)
                      (begin
                        (error '"Missing method"
                               _%self130162%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method130226
                       (__method-ref
                        _%self130162%_
                        'bind-core-macro-expanders!)))
                  (if __method130226
                      (__method130226 _%self130162%_)
                      (begin
                        (error '"Missing method"
                               _%self130162%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method130227
                       (__method-ref _%self130162%_ 'bind-core-features!)))
                  (if __method130227
                      (__method130227 _%self130162%_)
                      (begin
                        (error '"Missing method"
                               _%self130162%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self129076130175%_)
        (let ((_%bind?130177%_ '#t))
          (gx#root-context:::init!__% _%self129076130175%_ _%bind?130177%_))))
    (define gx#root-context:::init!
      (lambda _g130230_
        (let ((_g130229_ (##length _g130230_)))
          (cond ((##fx= _g130229_ 1)
                 (apply gx#root-context:::init!__0 _g130230_))
                ((##fx= _g130229_ 2)
                 (apply gx#root-context:::init!__% _g130230_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g130230_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass130181 __method-table130182)
        (let ((__bind-core-features!130183
               (__make-promise
                (lambda ()
                  (let ((__method130186
                         (symbolic-table-ref
                          __method-table130182
                          'bind-core-features!
                          '#f)))
                    (if __method130186
                        __method130186
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!130184
               (__make-promise
                (lambda ()
                  (let ((__method130187
                         (symbolic-table-ref
                          __method-table130182
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method130187
                        __method130187
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!130185
               (__make-promise
                (lambda ()
                  (let ((__method130188
                         (symbolic-table-ref
                          __method-table130182
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method130188
                        __method130188
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_%opt-lambda130154130172%_
                 (lambda (_%self129076130156%_ _%bind?130158%_)
                   (let* ((_%self130160%_ _%self129076130156%_)
                          (_%self130162%_ _%self130160%_))
                     (if (##fx< '2 (##structure-length _%self130162%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self130162%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self130162%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self130162%_
                                '2
                                (##vector-length _%self130162%_)))
                     (if _%bind?130158%_
                         (begin
                           ((force __bind-core-syntax-expanders!130185)
                            _%self130162%_)
                           ((force __bind-core-macro-expanders!130184)
                            _%self130162%_)
                           ((force __bind-core-features!130183)
                            _%self130162%_))
                         '#!void)))))
            (lambda _g130232_
              (let ((_g130231_ (##length _g130232_)))
                (cond ((##fx= _g130231_ 1)
                       (apply (lambda (_%self129076130175%_)
                                (let ((_%bind?130177%_ '#t))
                                  (_%opt-lambda130154130172%_
                                   _%self129076130175%_
                                   _%bind?130177%_)))
                              _g130232_))
                      ((##fx= _g130231_ 2)
                       (apply _%opt-lambda130154130172%_ _g130232_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g130232_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self129077129999%_ _%super130001%_)
        (let* ((_%self130003%_ _%self129077129999%_)
               (_%self130005%_ _%self130003%_)
               (_%super130021%_
                (let ((_%$e130015%_ _%super130001%_))
                  (if _%$e130015%_
                      _%$e130015%_
                      (let ((_%$e130018%_ (gx#core-context-root__0)))
                        (if _%$e130018%_
                            _%$e130018%_
                            (let ((__obj130228
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj130228)
                              __obj130228)))))))
          (if (##fx< '5 (##structure-length _%self130005%_))
              (begin
                (##unchecked-structure-set! _%self130005%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self130005%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self130005%_
                 _%super130021%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self130005%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self130005%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self130005%_
                     '5
                     (##vector-length _%self130005%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self129077130026%_)
        (let ((_%super130028%_ '#f))
          (gx#top-context:::init!__% _%self129077130026%_ _%super130028%_))))
    (define gx#top-context:::init!
      (lambda _g130234_
        (let ((_g130233_ (##length _g130234_)))
          (cond ((##fx= _g130233_ 1)
                 (apply gx#top-context:::init!__0 _g130234_))
                ((##fx= _g130233_ 2)
                 (apply gx#top-context:::init!__% _g130234_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g130234_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self129078129717%_ _%bindings129719%_)
        (let* ((_%self129721%_ _%self129078129717%_)
               (_%self129723%_ _%self129721%_))
          (for-each
           (lambda (_%bind129733%_)
             (let* ((_%bind129734129741%_ _%bind129733%_)
                    (_%E129736129745%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind129734129741%_
                              '([id . rest]))
                       '#!void))
                    (_%K129737129854%_
                     (lambda (_%rest129748%_ _%id129749%_)
                       (gx#core-context-put!
                        _%self129723%_
                        _%id129749%_
                        (##structure
                         gx#syntax-binding::t
                         _%id129749%_
                         _%id129749%_
                         '#f
                         (let* ((_%rest129750129761%_ _%rest129748%_)
                                (_%E129752129765%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest129750129761%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K129753129830%_
                                 (lambda (_%compiler129768%_
                                          _%expander129769%_
                                          _%key129770%_)
                                   ((let* ((_%key129771129784%_ _%key129770%_)
                                           (_%E129777129788%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key129771129784%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K129782129824%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K129781129817%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K129780129809%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K129779129801%_
                                             (lambda () gx#make-special-form))
                                            (_%K129778129793%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match129776129796%_
                                                (lambda ()
                                                  (if (##eq? _%key129771129784%_
                                                             'expr:)
                                                      (_%K129778129793%_)
                                                      (_%E129777129788%_))))
                                               (_%try-match129775129804%_
                                                (lambda ()
                                                  (if (##eq? _%key129771129784%_
                                                             'special:)
                                                      (_%K129779129801%_)
                                                      (_%try-match129776129796%_))))
                                               (_%try-match129774129812%_
                                                (lambda ()
                                                  (if (##eq? _%key129771129784%_
                                                             'define:)
                                                      (_%K129780129809%_)
                                                      (_%try-match129775129804%_))))
                                               (_%try-match129773129820%_
                                                (lambda ()
                                                  (if (##eq? _%key129771129784%_
                                                             'module:)
                                                      (_%K129781129817%_)
                                                      (_%try-match129774129812%_)))))
                                          (if (##eq? _%key129771129784%_ 'top:)
                                              (_%K129782129824%_)
                                              (_%try-match129773129820%_)))))
                                    _%expander129769%_
                                    _%id129749%_
                                    (let ((_%$e129827%_ _%compiler129768%_))
                                      (if _%$e129827%_
                                          _%$e129827%_
                                          gx#core-compile-top-error))))))
                           (if (##pair? _%rest129750129761%_)
                               (let ((_%hd129754129833%_
                                      (##car _%rest129750129761%_))
                                     (_%tl129755129835%_
                                      (##cdr _%rest129750129761%_)))
                                 (let ((_%key129838%_ _%hd129754129833%_))
                                   (if (##pair? _%tl129755129835%_)
                                       (let ((_%hd129756129840%_
                                              (##car _%tl129755129835%_))
                                             (_%tl129757129842%_
                                              (##cdr _%tl129755129835%_)))
                                         (let ((_%expander129845%_
                                                _%hd129756129840%_))
                                           (if (##pair? _%tl129757129842%_)
                                               (let ((_%hd129758129847%_
                                                      (##car _%tl129757129842%_))
                                                     (_%tl129759129849%_
                                                      (##cdr _%tl129757129842%_)))
                                                 (let ((_%compiler129852%_
                                                        _%hd129758129847%_))
                                                   (if (##null? _%tl129759129849%_)
                                                       (_%K129753129830%_
                                                        _%compiler129852%_
                                                        _%expander129845%_
                                                        _%key129838%_)
                                                       (_%E129752129765%_))))
                                               (_%E129752129765%_))))
                                       (_%E129752129765%_))))
                               (_%E129752129765%_))))))))
               (if (##pair? _%bind129734129741%_)
                   (let ((_%hd129738129857%_ (##car _%bind129734129741%_))
                         (_%tl129739129859%_ (##cdr _%bind129734129741%_)))
                     (let* ((_%id129862%_ _%hd129738129857%_)
                            (_%rest129864%_ _%tl129739129859%_))
                       (_%K129737129854%_ _%rest129864%_ _%id129862%_)))
                   (_%E129736129745%_))))
           _%bindings129719%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self129078129869%_)
        (let ((_%bindings129871%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self129078129869%_
           _%bindings129871%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g130236_
        (let ((_g130235_ (##length _g130236_)))
          (cond ((##fx= _g130235_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g130236_))
                ((##fx= _g130235_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g130236_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g130236_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self129079129476%_ _%bindings129478%_)
        (let* ((_%self129480%_ _%self129079129476%_)
               (_%self129482%_ _%self129480%_))
          (for-each
           (lambda (_%bind129492%_)
             (let* ((_%bind129493129500%_ _%bind129492%_)
                    (_%E129495129504%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind129493129500%_
                              '([id . rest]))
                       '#!void))
                    (_%K129496129572%_
                     (lambda (_%rest129507%_ _%id129508%_)
                       (gx#core-context-put!
                        _%self129482%_
                        _%id129508%_
                        (##structure
                         gx#syntax-binding::t
                         _%id129508%_
                         _%id129508%_
                         '#f
                         (let* ((_%rest129509129524%_ _%rest129507%_)
                                (_%E129513129528%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest129509129524%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K129518129557%_
                                  (lambda (_%core-id129555%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id129555%_)))
                                 (_%K129515129542%_
                                  (lambda (_%proc129540%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc129540%_)))
                                 (_%K129514129533%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id129508%_))))
                             (let ((_%try-match129512129536%_
                                    (lambda ()
                                      (if (##null? _%rest129509129524%_)
                                          (_%K129514129533%_)
                                          (_%E129513129528%_)))))
                               (if (##pair? _%rest129509129524%_)
                                   (let ((_%tl129520129562%_
                                          (##cdr _%rest129509129524%_))
                                         (_%hd129519129560%_
                                          (##car _%rest129509129524%_)))
                                     (if (##eq? _%hd129519129560%_ '=>)
                                         (if (##pair? _%tl129520129562%_)
                                             (let ((_%tl129522129567%_
                                                    (##cdr _%tl129520129562%_))
                                                   (_%hd129521129565%_
                                                    (##car _%tl129520129562%_)))
                                               (if (##null? _%tl129522129567%_)
                                                   (let ((_%core-id129570%_
                                                          _%hd129521129565%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id129570%_))
                                                   (_%E129513129528%_)))
                                             (if (##null? _%tl129520129562%_)
                                                 (let ((_%proc129550%_
                                                        _%hd129519129560%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc129550%_))
                                                 (_%E129513129528%_)))
                                         (if (##null? _%tl129520129562%_)
                                             (let ((_%proc129550%_
                                                    _%hd129519129560%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc129550%_))
                                             (_%E129513129528%_))))
                                   (_%try-match129512129536%_))))))))))
               (if (##pair? _%bind129493129500%_)
                   (let ((_%hd129497129575%_ (##car _%bind129493129500%_))
                         (_%tl129498129577%_ (##cdr _%bind129493129500%_)))
                     (let* ((_%id129580%_ _%hd129497129575%_)
                            (_%rest129582%_ _%tl129498129577%_))
                       (_%K129496129572%_ _%rest129582%_ _%id129580%_)))
                   (_%E129495129504%_))))
           _%bindings129478%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self129079129587%_)
        (let ((_%bindings129589%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self129079129587%_
           _%bindings129589%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g130238_
        (let ((_g130237_ (##length _g130238_)))
          (cond ((##fx= _g130237_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g130238_))
                ((##fx= _g130237_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g130238_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g130238_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self129080129206%_)
        (let* ((_%self129209%_ _%self129080129206%_)
               (_%self129211%_ _%self129209%_))
          (letrec ((_%linux-variant?129221%_
                    (lambda (_%sys-type129321%_)
                      (let* ((_%g129322129330%_
                              (__string-split
                               (symbol->string _%sys-type129321%_)
                               '#\-))
                             (_%else129324129338%_ (lambda () '#f))
                             (_%K129326129343%_
                              (lambda (_%rest129341%_)
                                (not (null? _%rest129341%_)))))
                        (if (##pair? _%g129322129330%_)
                            (let ((_%hd129327129346%_
                                   (##car _%g129322129330%_))
                                  (_%tl129328129348%_
                                   (##cdr _%g129322129330%_)))
                              (if (equal? _%hd129327129346%_ '"linux")
                                  (let ((_%rest129351%_ _%tl129328129348%_))
                                    (_%K129326129343%_ _%rest129351%_))
                                  (_%else129324129338%_)))
                            (_%else129324129338%_)))))
                   (_%bsd-variant129222%_
                    (lambda (_%sys-type129280%_)
                      (let ((_%sys-type-str129282%_
                             (symbol->string _%sys-type129280%_)))
                        (let _%lp129284%_ ((_%rest129286%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest129287129295%_ _%rest129286%_)
                                 (_%else129289129303%_ (lambda () '#f))
                                 (_%K129291129309%_
                                  (lambda (_%rest129306%_ _%sys129307%_)
                                    (if (string-prefix?
                                         _%sys129307%_
                                         _%sys-type-str129282%_)
                                        _%sys129307%_
                                        (_%lp129284%_ _%rest129306%_)))))
                            (if (##pair? _%rest129287129295%_)
                                (let ((_%hd129292129312%_
                                       (##car _%rest129287129295%_))
                                      (_%tl129293129314%_
                                       (##cdr _%rest129287129295%_)))
                                  (let* ((_%sys129317%_ _%hd129292129312%_)
                                         (_%rest129319%_ _%tl129293129314%_))
                                    (_%K129291129309%_
                                     _%rest129319%_
                                     _%sys129317%_)))
                                (_%else129289129303%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self129211%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self129211%_)
            (let* ((_%g129223129235%_ (system-type))
                   (_%else129225129243%_ (lambda () '#!void))
                   (_%K129227129256%_
                    (lambda (_%sys-type129246%_
                             _%sys-vendor129247%_
                             _%sys-cpu129248%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu129248%_
                       '#f
                       '0
                       _%self129211%_)
                      (gx#core-bind-feature!__%
                       _%sys-type129246%_
                       '#f
                       '0
                       _%self129211%_)
                      (if (_%linux-variant?129221%_ _%sys-type129246%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self129211%_)
                          (let ((_%$e129251%_
                                 (_%bsd-variant129222%_ _%sys-type129246%_)))
                            (if _%$e129251%_
                                ((lambda (_%sys-prefix129254%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self129211%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix129254%_)
                                    '#f
                                    '0
                                    _%self129211%_))
                                 _%$e129251%_)
                                '#!void))))))
              (if (##pair? _%g129223129235%_)
                  (let ((_%hd129228129259%_ (##car _%g129223129235%_))
                        (_%tl129229129261%_ (##cdr _%g129223129235%_)))
                    (let ((_%sys-cpu129264%_ _%hd129228129259%_))
                      (if (##pair? _%tl129229129261%_)
                          (let ((_%hd129230129266%_ (##car _%tl129229129261%_))
                                (_%tl129231129268%_
                                 (##cdr _%tl129229129261%_)))
                            (let ((_%sys-vendor129271%_ _%hd129230129266%_))
                              (if (##pair? _%tl129231129268%_)
                                  (let ((_%hd129232129273%_
                                         (##car _%tl129231129268%_))
                                        (_%tl129233129275%_
                                         (##cdr _%tl129231129268%_)))
                                    (let ((_%sys-type129278%_
                                           _%hd129232129273%_))
                                      (if (##null? _%tl129233129275%_)
                                          (_%K129227129256%_
                                           _%sys-type129278%_
                                           _%sys-vendor129271%_
                                           _%sys-cpu129264%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self129211%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
