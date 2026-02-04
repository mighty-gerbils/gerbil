(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1770248971)
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
      (lambda (_%self155037%_ _%bind?155038%_)
        (let ((_%self155041%_ _%self155037%_))
          (if (##fx< '2 (##structure-length _%self155041%_))
              (begin
                (##unchecked-structure-set! _%self155041%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self155041%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self155041%_
                     '2
                     (##structure-length _%self155041%_)))
          (if _%bind?155038%_
              (begin
                (let ((__method155105
                       (__method-ref
                        _%self155041%_
                        'bind-core-syntax-expanders!)))
                  (if __method155105
                      (__method155105 _%self155041%_)
                      (begin
                        (error '"Missing method"
                               _%self155041%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method155106
                       (__method-ref
                        _%self155041%_
                        'bind-core-macro-expanders!)))
                  (if __method155106
                      (__method155106 _%self155041%_)
                      (begin
                        (error '"Missing method"
                               _%self155041%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method155107
                       (__method-ref _%self155041%_ 'bind-core-features!)))
                  (if __method155107
                      (__method155107 _%self155041%_)
                      (begin
                        (error '"Missing method"
                               _%self155041%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self155055%_)
        (let ((_%bind?155057%_ '#t))
          (gx#root-context:::init!__% _%self155055%_ _%bind?155057%_))))
    (define gx#root-context:::init!
      (lambda _g155111_
        (let ((_g155112_ (##length _g155111_)))
          (cond ((##fx= _g155112_ 1)
                 (apply gx#root-context:::init!__0 _g155111_))
                ((##fx= _g155112_ 2)
                 (apply gx#root-context:::init!__% _g155111_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g155111_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass155061 __method-table155062)
        (let ((__bind-core-syntax-expanders!155063
               (__make-promise
                (lambda ()
                  (let ((__method155066
                         (symbolic-table-ref
                          __method-table155062
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method155066
                        __method155066
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!155064
               (__make-promise
                (lambda ()
                  (let ((__method155067
                         (symbolic-table-ref
                          __method-table155062
                          'bind-core-features!
                          '#f)))
                    (if __method155067
                        __method155067
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!155065
               (__make-promise
                (lambda ()
                  (let ((__method155068
                         (symbolic-table-ref
                          __method-table155062
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method155068
                        __method155068
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%opt-lambda155035155052%_
                 (lambda (_%self155037%_ _%bind?155038%_)
                   (let ((_%self155041%_ _%self155037%_))
                     (if (##fx< '2 (##structure-length _%self155041%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self155041%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self155041%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self155041%_
                                '2
                                (##structure-length _%self155041%_)))
                     (if _%bind?155038%_
                         (begin
                           ((force __bind-core-syntax-expanders!155063)
                            _%self155041%_)
                           ((force __bind-core-macro-expanders!155065)
                            _%self155041%_)
                           ((force __bind-core-features!155064)
                            _%self155041%_))
                         '#!void)))))
            (lambda _g155113_
              (let ((_g155114_ (##length _g155113_)))
                (cond ((##fx= _g155114_ 1)
                       (apply (lambda (_%self155055%_)
                                (let ((_%bind?155057%_ '#t))
                                  (_%opt-lambda155035155052%_
                                   _%self155055%_
                                   _%bind?155057%_)))
                              _g155113_))
                      ((##fx= _g155114_ 2)
                       (apply _%opt-lambda155035155052%_ _g155113_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g155113_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self154882%_ _%super154883%_)
        (let* ((_%self154886%_ _%self154882%_)
               (_%super154902%_
                (let ((_%$e154896%_ _%super154883%_))
                  (if _%$e154896%_
                      _%$e154896%_
                      (let ((_%$e154899%_ (gx#core-context-root__0)))
                        (if _%$e154899%_
                            _%$e154899%_
                            (let ((__obj155108
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj155108)
                              __obj155108)))))))
          (if (##fx< '5 (##structure-length _%self154886%_))
              (begin
                (##unchecked-structure-set! _%self154886%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self154886%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self154886%_
                 _%super154902%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self154886%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self154886%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self154886%_
                     '5
                     (##structure-length _%self154886%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self154907%_)
        (let ((_%super154909%_ '#f))
          (gx#top-context:::init!__% _%self154907%_ _%super154909%_))))
    (define gx#top-context:::init!
      (lambda _g155115_
        (let ((_g155116_ (##length _g155115_)))
          (cond ((##fx= _g155116_ 1)
                 (apply gx#top-context:::init!__0 _g155115_))
                ((##fx= _g155116_ 2)
                 (apply gx#top-context:::init!__% _g155115_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g155115_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self154603%_ _%bindings154604%_)
        (let ((_%self154607%_ _%self154603%_))
          (for-each
           (lambda (_%bind154617%_)
             (let* ((_%bind154618154625%_ _%bind154617%_)
                    (_%E154620154628%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind154618154625%_
                              '([id . rest]))
                       '#!void))
                    (_%K154621154737%_
                     (lambda (_%rest154631%_ _%id154632%_)
                       (gx#core-context-put!
                        _%self154607%_
                        _%id154632%_
                        (let ((__obj155109
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj155109
                           _%id154632%_
                           _%id154632%_
                           '#f
                           (let* ((_%rest154633154644%_ _%rest154631%_)
                                  (_%E154635154648%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest154633154644%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%K154636154713%_
                                   (lambda (_%compiler154651%_
                                            _%expander154652%_
                                            _%key154653%_)
                                     ((let* ((_%key154654154667%_
                                              _%key154653%_)
                                             (_%E154660154671%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%key154654154667%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%K154665154707%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%K154664154700%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%K154663154692%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%K154662154684%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%K154661154676%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%try-match154659154679%_
                                                  (lambda ()
                                                    (if (##eq? _%key154654154667%_
                                                               'expr:)
                                                        (_%K154661154676%_)
                                                        (_%E154660154671%_))))
                                                 (_%try-match154658154687%_
                                                  (lambda ()
                                                    (if (##eq? _%key154654154667%_
                                                               'special:)
                                                        (_%K154662154684%_)
                                                        (_%try-match154659154679%_))))
                                                 (_%try-match154657154695%_
                                                  (lambda ()
                                                    (if (##eq? _%key154654154667%_
                                                               'define:)
                                                        (_%K154663154692%_)
                                                        (_%try-match154658154687%_))))
                                                 (_%try-match154656154703%_
                                                  (lambda ()
                                                    (if (##eq? _%key154654154667%_
                                                               'module:)
                                                        (_%K154664154700%_)
                                                        (_%try-match154657154695%_)))))
                                            (if (##eq? _%key154654154667%_
                                                       'top:)
                                                (_%K154665154707%_)
                                                (_%try-match154656154703%_)))))
                                      _%expander154652%_
                                      _%id154632%_
                                      (let ((_%$e154710%_ _%compiler154651%_))
                                        (if _%$e154710%_
                                            _%$e154710%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%rest154633154644%_)
                                 (let ((_%hd154637154716%_
                                        (##car _%rest154633154644%_))
                                       (_%tl154638154718%_
                                        (##cdr _%rest154633154644%_)))
                                   (let ((_%key154721%_ _%hd154637154716%_))
                                     (if (pair? _%tl154638154718%_)
                                         (let ((_%hd154639154723%_
                                                (##car _%tl154638154718%_))
                                               (_%tl154640154725%_
                                                (##cdr _%tl154638154718%_)))
                                           (let ((_%expander154728%_
                                                  _%hd154639154723%_))
                                             (if (pair? _%tl154640154725%_)
                                                 (let ((_%hd154641154730%_
                                                        (##car _%tl154640154725%_))
                                                       (_%tl154642154732%_
                                                        (##cdr _%tl154640154725%_)))
                                                   (let ((_%compiler154735%_
                                                          _%hd154641154730%_))
                                                     (if (null? _%tl154642154732%_)
                                                         (_%K154636154713%_
                                                          _%compiler154735%_
                                                          _%expander154728%_
                                                          _%key154721%_)
                                                         (_%E154635154648%_))))
                                                 (_%E154635154648%_))))
                                         (_%E154635154648%_))))
                                 (_%E154635154648%_))))
                          __obj155109)))))
               (if (pair? _%bind154618154625%_)
                   (let ((_%hd154622154740%_ (##car _%bind154618154625%_))
                         (_%tl154623154742%_ (##cdr _%bind154618154625%_)))
                     (let* ((_%id154745%_ _%hd154622154740%_)
                            (_%rest154747%_ _%tl154623154742%_))
                       (_%K154621154737%_ _%rest154747%_ _%id154745%_)))
                   (_%E154620154628%_))))
           _%bindings154604%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self154752%_)
        (let ((_%bindings154754%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self154752%_
           _%bindings154754%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g155117_
        (let ((_g155118_ (##length _g155117_)))
          (cond ((##fx= _g155118_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g155117_))
                ((##fx= _g155118_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g155117_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g155117_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self154365%_ _%bindings154366%_)
        (let ((_%self154369%_ _%self154365%_))
          (for-each
           (lambda (_%bind154379%_)
             (let* ((_%bind154380154387%_ _%bind154379%_)
                    (_%E154382154390%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind154380154387%_
                              '([id . rest]))
                       '#!void))
                    (_%K154383154458%_
                     (lambda (_%rest154393%_ _%id154394%_)
                       (gx#core-context-put!
                        _%self154369%_
                        _%id154394%_
                        (let ((__obj155110
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj155110
                           _%id154394%_
                           _%id154394%_
                           '#f
                           (let* ((_%rest154395154410%_ _%rest154393%_)
                                  (_%E154399154414%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%rest154395154410%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%K154404154443%_
                                    (lambda (_%core-id154441%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id154441%_)))
                                   (_%K154401154428%_
                                    (lambda (_%proc154426%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc154426%_)))
                                   (_%K154400154419%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id154394%_))))
                               (let ((_%try-match154398154422%_
                                      (lambda ()
                                        (if (null? _%rest154395154410%_)
                                            (_%K154400154419%_)
                                            (_%E154399154414%_)))))
                                 (if (pair? _%rest154395154410%_)
                                     (let ((_%tl154406154448%_
                                            (##cdr _%rest154395154410%_))
                                           (_%hd154405154446%_
                                            (##car _%rest154395154410%_)))
                                       (if (##eq? _%hd154405154446%_ '=>)
                                           (if (pair? _%tl154406154448%_)
                                               (let ((_%tl154408154453%_
                                                      (##cdr _%tl154406154448%_))
                                                     (_%hd154407154451%_
                                                      (##car _%tl154406154448%_)))
                                                 (if (null? _%tl154408154453%_)
                                                     (let ((_%core-id154456%_
                                                            _%hd154407154451%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id154456%_))
                                                     (_%E154399154414%_)))
                                               (if (null? _%tl154406154448%_)
                                                   (let ((_%proc154436%_
                                                          _%hd154405154446%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc154436%_))
                                                   (_%E154399154414%_)))
                                           (if (null? _%tl154406154448%_)
                                               (let ((_%proc154436%_
                                                      _%hd154405154446%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc154436%_))
                                               (_%E154399154414%_))))
                                     (_%try-match154398154422%_))))))
                          __obj155110)))))
               (if (pair? _%bind154380154387%_)
                   (let ((_%hd154384154461%_ (##car _%bind154380154387%_))
                         (_%tl154385154463%_ (##cdr _%bind154380154387%_)))
                     (let* ((_%id154466%_ _%hd154384154461%_)
                            (_%rest154468%_ _%tl154385154463%_))
                       (_%K154383154458%_ _%rest154468%_ _%id154466%_)))
                   (_%E154382154390%_))))
           _%bindings154366%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self154473%_)
        (let ((_%bindings154475%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self154473%_
           _%bindings154475%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g155119_
        (let ((_g155120_ (##length _g155119_)))
          (cond ((##fx= _g155120_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g155119_))
                ((##fx= _g155120_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g155119_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g155119_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self154096%_)
        (let ((_%self154099%_ _%self154096%_))
          (letrec ((_%linux-variant?154110%_
                    (lambda (_%sys-type154210%_)
                      (let* ((_%g154211154219%_
                              (__string-split
                               (symbol->string _%sys-type154210%_)
                               '#\-))
                             (_%else154213154227%_ (lambda () '#f))
                             (_%K154215154232%_
                              (lambda (_%rest154230%_)
                                (not (null? _%rest154230%_)))))
                        (if (pair? _%g154211154219%_)
                            (let ((_%hd154216154235%_
                                   (##car _%g154211154219%_))
                                  (_%tl154217154237%_
                                   (##cdr _%g154211154219%_)))
                              (if (equal? _%hd154216154235%_ '"linux")
                                  (let ((_%rest154240%_ _%tl154217154237%_))
                                    (_%K154215154232%_ _%rest154240%_))
                                  (_%else154213154227%_)))
                            (_%else154213154227%_)))))
                   (_%bsd-variant154111%_
                    (lambda (_%sys-type154169%_)
                      (let ((_%sys-type-str154171%_
                             (symbol->string _%sys-type154169%_)))
                        (let _%lp154173%_ ((_%rest154175%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest154176154184%_ _%rest154175%_)
                                 (_%else154178154192%_ (lambda () '#f))
                                 (_%K154180154198%_
                                  (lambda (_%rest154195%_ _%sys154196%_)
                                    (if (string-prefix?
                                         _%sys154196%_
                                         _%sys-type-str154171%_)
                                        _%sys154196%_
                                        (_%lp154173%_ _%rest154195%_)))))
                            (if (pair? _%rest154176154184%_)
                                (let ((_%hd154181154201%_
                                       (##car _%rest154176154184%_))
                                      (_%tl154182154203%_
                                       (##cdr _%rest154176154184%_)))
                                  (let* ((_%sys154206%_ _%hd154181154201%_)
                                         (_%rest154208%_ _%tl154182154203%_))
                                    (_%K154180154198%_
                                     _%rest154208%_
                                     _%sys154206%_)))
                                (_%else154178154192%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self154099%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self154099%_)
            (let* ((_%g154112154124%_ (system-type))
                   (_%else154114154132%_ (lambda () '#!void))
                   (_%K154116154145%_
                    (lambda (_%sys-type154135%_
                             _%sys-vendor154136%_
                             _%sys-cpu154137%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu154137%_
                       '#f
                       '0
                       _%self154099%_)
                      (gx#core-bind-feature!__%
                       _%sys-type154135%_
                       '#f
                       '0
                       _%self154099%_)
                      (if (_%linux-variant?154110%_ _%sys-type154135%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self154099%_)
                          (let ((_%$e154140%_
                                 (_%bsd-variant154111%_ _%sys-type154135%_)))
                            (if _%$e154140%_
                                ((lambda (_%sys-prefix154143%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self154099%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix154143%_)
                                    '#f
                                    '0
                                    _%self154099%_))
                                 _%$e154140%_)
                                '#!void))))))
              (if (pair? _%g154112154124%_)
                  (let ((_%hd154117154148%_ (##car _%g154112154124%_))
                        (_%tl154118154150%_ (##cdr _%g154112154124%_)))
                    (let ((_%sys-cpu154153%_ _%hd154117154148%_))
                      (if (pair? _%tl154118154150%_)
                          (let ((_%hd154119154155%_ (##car _%tl154118154150%_))
                                (_%tl154120154157%_
                                 (##cdr _%tl154118154150%_)))
                            (let ((_%sys-vendor154160%_ _%hd154119154155%_))
                              (if (pair? _%tl154120154157%_)
                                  (let ((_%hd154121154162%_
                                         (##car _%tl154120154157%_))
                                        (_%tl154122154164%_
                                         (##cdr _%tl154120154157%_)))
                                    (let ((_%sys-type154167%_
                                           _%hd154121154162%_))
                                      (if (null? _%tl154122154164%_)
                                          (_%K154116154145%_
                                           _%sys-type154167%_
                                           _%sys-vendor154160%_
                                           _%sys-cpu154153%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self154099%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
