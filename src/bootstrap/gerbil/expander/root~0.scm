(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1733868036)
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
      (lambda (_%self130404131484%_ _%bind?131486%_)
        (let* ((_%self131488%_ _%self130404131484%_)
               (_%self131490%_ _%self131488%_))
          (if (##fx< '2 (##structure-length _%self131490%_))
              (begin
                (##unchecked-structure-set! _%self131490%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self131490%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self131490%_
                     '2
                     (##vector-length _%self131490%_)))
          (if _%bind?131486%_
              (begin
                (let ((__method131553
                       (__method-ref
                        _%self131490%_
                        'bind-core-syntax-expanders!)))
                  (if __method131553
                      (__method131553 _%self131490%_)
                      (begin
                        (error '"Missing method"
                               _%self131490%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method131554
                       (__method-ref
                        _%self131490%_
                        'bind-core-macro-expanders!)))
                  (if __method131554
                      (__method131554 _%self131490%_)
                      (begin
                        (error '"Missing method"
                               _%self131490%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method131555
                       (__method-ref _%self131490%_ 'bind-core-features!)))
                  (if __method131555
                      (__method131555 _%self131490%_)
                      (begin
                        (error '"Missing method"
                               _%self131490%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self130404131503%_)
        (let ((_%bind?131505%_ '#t))
          (gx#root-context:::init!__% _%self130404131503%_ _%bind?131505%_))))
    (define gx#root-context:::init!
      (lambda _g131558_
        (let ((_g131557_ (##length _g131558_)))
          (cond ((##fx= _g131557_ 1)
                 (apply gx#root-context:::init!__0 _g131558_))
                ((##fx= _g131557_ 2)
                 (apply gx#root-context:::init!__% _g131558_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g131558_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass131509 __method-table131510)
        (let ((__bind-core-features!131511
               (__make-promise
                (lambda ()
                  (let ((__method131514
                         (symbolic-table-ref
                          __method-table131510
                          'bind-core-features!
                          '#f)))
                    (if __method131514
                        __method131514
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!131512
               (__make-promise
                (lambda ()
                  (let ((__method131515
                         (symbolic-table-ref
                          __method-table131510
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method131515
                        __method131515
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!131513
               (__make-promise
                (lambda ()
                  (let ((__method131516
                         (symbolic-table-ref
                          __method-table131510
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method131516
                        __method131516
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%opt-lambda131482131500%_
                 (lambda (_%self130404131484%_ _%bind?131486%_)
                   (let* ((_%self131488%_ _%self130404131484%_)
                          (_%self131490%_ _%self131488%_))
                     (if (##fx< '2 (##structure-length _%self131490%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self131490%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self131490%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self131490%_
                                '2
                                (##vector-length _%self131490%_)))
                     (if _%bind?131486%_
                         (begin
                           ((force __bind-core-syntax-expanders!131512)
                            _%self131490%_)
                           ((force __bind-core-macro-expanders!131513)
                            _%self131490%_)
                           ((force __bind-core-features!131511)
                            _%self131490%_))
                         '#!void)))))
            (lambda _g131560_
              (let ((_g131559_ (##length _g131560_)))
                (cond ((##fx= _g131559_ 1)
                       (apply (lambda (_%self130404131503%_)
                                (let ((_%bind?131505%_ '#t))
                                  (_%opt-lambda131482131500%_
                                   _%self130404131503%_
                                   _%bind?131505%_)))
                              _g131560_))
                      ((##fx= _g131559_ 2)
                       (apply _%opt-lambda131482131500%_ _g131560_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g131560_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self130405131327%_ _%super131329%_)
        (let* ((_%self131331%_ _%self130405131327%_)
               (_%self131333%_ _%self131331%_)
               (_%super131349%_
                (let ((_%$e131343%_ _%super131329%_))
                  (if _%$e131343%_
                      _%$e131343%_
                      (let ((_%$e131346%_ (gx#core-context-root__0)))
                        (if _%$e131346%_
                            _%$e131346%_
                            (let ((__obj131556
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj131556)
                              __obj131556)))))))
          (if (##fx< '5 (##structure-length _%self131333%_))
              (begin
                (##unchecked-structure-set! _%self131333%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self131333%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self131333%_
                 _%super131349%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self131333%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self131333%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self131333%_
                     '5
                     (##vector-length _%self131333%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self130405131354%_)
        (let ((_%super131356%_ '#f))
          (gx#top-context:::init!__% _%self130405131354%_ _%super131356%_))))
    (define gx#top-context:::init!
      (lambda _g131562_
        (let ((_g131561_ (##length _g131562_)))
          (cond ((##fx= _g131561_ 1)
                 (apply gx#top-context:::init!__0 _g131562_))
                ((##fx= _g131561_ 2)
                 (apply gx#top-context:::init!__% _g131562_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g131562_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self130406131045%_ _%bindings131047%_)
        (let* ((_%self131049%_ _%self130406131045%_)
               (_%self131051%_ _%self131049%_))
          (for-each
           (lambda (_%bind131061%_)
             (let* ((_%bind131062131069%_ _%bind131061%_)
                    (_%E131064131073%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind131062131069%_
                              '([id . rest]))
                       '#!void))
                    (_%K131065131182%_
                     (lambda (_%rest131076%_ _%id131077%_)
                       (gx#core-context-put!
                        _%self131051%_
                        _%id131077%_
                        (##structure
                         gx#syntax-binding::t
                         _%id131077%_
                         _%id131077%_
                         '#f
                         (let* ((_%rest131078131089%_ _%rest131076%_)
                                (_%E131080131093%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest131078131089%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K131081131158%_
                                 (lambda (_%compiler131096%_
                                          _%expander131097%_
                                          _%key131098%_)
                                   ((let* ((_%key131099131112%_ _%key131098%_)
                                           (_%E131105131116%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key131099131112%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K131110131152%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K131109131145%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K131108131137%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K131107131129%_
                                             (lambda () gx#make-special-form))
                                            (_%K131106131121%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match131104131124%_
                                                (lambda ()
                                                  (if (##eq? _%key131099131112%_
                                                             'expr:)
                                                      (_%K131106131121%_)
                                                      (_%E131105131116%_))))
                                               (_%try-match131103131132%_
                                                (lambda ()
                                                  (if (##eq? _%key131099131112%_
                                                             'special:)
                                                      (_%K131107131129%_)
                                                      (_%try-match131104131124%_))))
                                               (_%try-match131102131140%_
                                                (lambda ()
                                                  (if (##eq? _%key131099131112%_
                                                             'define:)
                                                      (_%K131108131137%_)
                                                      (_%try-match131103131132%_))))
                                               (_%try-match131101131148%_
                                                (lambda ()
                                                  (if (##eq? _%key131099131112%_
                                                             'module:)
                                                      (_%K131109131145%_)
                                                      (_%try-match131102131140%_)))))
                                          (if (##eq? _%key131099131112%_ 'top:)
                                              (_%K131110131152%_)
                                              (_%try-match131101131148%_)))))
                                    _%expander131097%_
                                    _%id131077%_
                                    (let ((_%$e131155%_ _%compiler131096%_))
                                      (if _%$e131155%_
                                          _%$e131155%_
                                          gx#core-compile-top-error))))))
                           (if (pair? _%rest131078131089%_)
                               (let ((_%hd131082131161%_
                                      (##car _%rest131078131089%_))
                                     (_%tl131083131163%_
                                      (##cdr _%rest131078131089%_)))
                                 (let ((_%key131166%_ _%hd131082131161%_))
                                   (if (pair? _%tl131083131163%_)
                                       (let ((_%hd131084131168%_
                                              (##car _%tl131083131163%_))
                                             (_%tl131085131170%_
                                              (##cdr _%tl131083131163%_)))
                                         (let ((_%expander131173%_
                                                _%hd131084131168%_))
                                           (if (pair? _%tl131085131170%_)
                                               (let ((_%hd131086131175%_
                                                      (##car _%tl131085131170%_))
                                                     (_%tl131087131177%_
                                                      (##cdr _%tl131085131170%_)))
                                                 (let ((_%compiler131180%_
                                                        _%hd131086131175%_))
                                                   (if (null? _%tl131087131177%_)
                                                       (_%K131081131158%_
                                                        _%compiler131180%_
                                                        _%expander131173%_
                                                        _%key131166%_)
                                                       (_%E131080131093%_))))
                                               (_%E131080131093%_))))
                                       (_%E131080131093%_))))
                               (_%E131080131093%_))))))))
               (if (pair? _%bind131062131069%_)
                   (let ((_%hd131066131185%_ (##car _%bind131062131069%_))
                         (_%tl131067131187%_ (##cdr _%bind131062131069%_)))
                     (let* ((_%id131190%_ _%hd131066131185%_)
                            (_%rest131192%_ _%tl131067131187%_))
                       (_%K131065131182%_ _%rest131192%_ _%id131190%_)))
                   (_%E131064131073%_))))
           _%bindings131047%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self130406131197%_)
        (let ((_%bindings131199%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self130406131197%_
           _%bindings131199%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g131564_
        (let ((_g131563_ (##length _g131564_)))
          (cond ((##fx= _g131563_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g131564_))
                ((##fx= _g131563_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g131564_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g131564_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self130407130804%_ _%bindings130806%_)
        (let* ((_%self130808%_ _%self130407130804%_)
               (_%self130810%_ _%self130808%_))
          (for-each
           (lambda (_%bind130820%_)
             (let* ((_%bind130821130828%_ _%bind130820%_)
                    (_%E130823130832%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind130821130828%_
                              '([id . rest]))
                       '#!void))
                    (_%K130824130900%_
                     (lambda (_%rest130835%_ _%id130836%_)
                       (gx#core-context-put!
                        _%self130810%_
                        _%id130836%_
                        (##structure
                         gx#syntax-binding::t
                         _%id130836%_
                         _%id130836%_
                         '#f
                         (let* ((_%rest130837130852%_ _%rest130835%_)
                                (_%E130841130856%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest130837130852%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K130846130885%_
                                  (lambda (_%core-id130883%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id130883%_)))
                                 (_%K130843130870%_
                                  (lambda (_%proc130868%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc130868%_)))
                                 (_%K130842130861%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id130836%_))))
                             (let ((_%try-match130840130864%_
                                    (lambda ()
                                      (if (null? _%rest130837130852%_)
                                          (_%K130842130861%_)
                                          (_%E130841130856%_)))))
                               (if (pair? _%rest130837130852%_)
                                   (let ((_%tl130848130890%_
                                          (##cdr _%rest130837130852%_))
                                         (_%hd130847130888%_
                                          (##car _%rest130837130852%_)))
                                     (if (##eq? _%hd130847130888%_ '=>)
                                         (if (pair? _%tl130848130890%_)
                                             (let ((_%tl130850130895%_
                                                    (##cdr _%tl130848130890%_))
                                                   (_%hd130849130893%_
                                                    (##car _%tl130848130890%_)))
                                               (if (null? _%tl130850130895%_)
                                                   (let ((_%core-id130898%_
                                                          _%hd130849130893%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id130898%_))
                                                   (_%E130841130856%_)))
                                             (if (null? _%tl130848130890%_)
                                                 (let ((_%proc130878%_
                                                        _%hd130847130888%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc130878%_))
                                                 (_%E130841130856%_)))
                                         (if (null? _%tl130848130890%_)
                                             (let ((_%proc130878%_
                                                    _%hd130847130888%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc130878%_))
                                             (_%E130841130856%_))))
                                   (_%try-match130840130864%_))))))))))
               (if (pair? _%bind130821130828%_)
                   (let ((_%hd130825130903%_ (##car _%bind130821130828%_))
                         (_%tl130826130905%_ (##cdr _%bind130821130828%_)))
                     (let* ((_%id130908%_ _%hd130825130903%_)
                            (_%rest130910%_ _%tl130826130905%_))
                       (_%K130824130900%_ _%rest130910%_ _%id130908%_)))
                   (_%E130823130832%_))))
           _%bindings130806%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self130407130915%_)
        (let ((_%bindings130917%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self130407130915%_
           _%bindings130917%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g131566_
        (let ((_g131565_ (##length _g131566_)))
          (cond ((##fx= _g131565_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g131566_))
                ((##fx= _g131565_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g131566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g131566_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self130408130534%_)
        (let* ((_%self130537%_ _%self130408130534%_)
               (_%self130539%_ _%self130537%_))
          (letrec ((_%linux-variant?130549%_
                    (lambda (_%sys-type130649%_)
                      (let* ((_%g130650130658%_
                              (__string-split
                               (symbol->string _%sys-type130649%_)
                               '#\-))
                             (_%else130652130666%_ (lambda () '#f))
                             (_%K130654130671%_
                              (lambda (_%rest130669%_)
                                (not (null? _%rest130669%_)))))
                        (if (pair? _%g130650130658%_)
                            (let ((_%hd130655130674%_
                                   (##car _%g130650130658%_))
                                  (_%tl130656130676%_
                                   (##cdr _%g130650130658%_)))
                              (if (equal? _%hd130655130674%_ '"linux")
                                  (let ((_%rest130679%_ _%tl130656130676%_))
                                    (_%K130654130671%_ _%rest130679%_))
                                  (_%else130652130666%_)))
                            (_%else130652130666%_)))))
                   (_%bsd-variant130550%_
                    (lambda (_%sys-type130608%_)
                      (let ((_%sys-type-str130610%_
                             (symbol->string _%sys-type130608%_)))
                        (let _%lp130612%_ ((_%rest130614%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest130615130623%_ _%rest130614%_)
                                 (_%else130617130631%_ (lambda () '#f))
                                 (_%K130619130637%_
                                  (lambda (_%rest130634%_ _%sys130635%_)
                                    (if (string-prefix?
                                         _%sys130635%_
                                         _%sys-type-str130610%_)
                                        _%sys130635%_
                                        (_%lp130612%_ _%rest130634%_)))))
                            (if (pair? _%rest130615130623%_)
                                (let ((_%hd130620130640%_
                                       (##car _%rest130615130623%_))
                                      (_%tl130621130642%_
                                       (##cdr _%rest130615130623%_)))
                                  (let* ((_%sys130645%_ _%hd130620130640%_)
                                         (_%rest130647%_ _%tl130621130642%_))
                                    (_%K130619130637%_
                                     _%rest130647%_
                                     _%sys130645%_)))
                                (_%else130617130631%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self130539%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self130539%_)
            (let* ((_%g130551130563%_ (system-type))
                   (_%else130553130571%_ (lambda () '#!void))
                   (_%K130555130584%_
                    (lambda (_%sys-type130574%_
                             _%sys-vendor130575%_
                             _%sys-cpu130576%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu130576%_
                       '#f
                       '0
                       _%self130539%_)
                      (gx#core-bind-feature!__%
                       _%sys-type130574%_
                       '#f
                       '0
                       _%self130539%_)
                      (if (_%linux-variant?130549%_ _%sys-type130574%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self130539%_)
                          (let ((_%$e130579%_
                                 (_%bsd-variant130550%_ _%sys-type130574%_)))
                            (if _%$e130579%_
                                ((lambda (_%sys-prefix130582%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self130539%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix130582%_)
                                    '#f
                                    '0
                                    _%self130539%_))
                                 _%$e130579%_)
                                '#!void))))))
              (if (pair? _%g130551130563%_)
                  (let ((_%hd130556130587%_ (##car _%g130551130563%_))
                        (_%tl130557130589%_ (##cdr _%g130551130563%_)))
                    (let ((_%sys-cpu130592%_ _%hd130556130587%_))
                      (if (pair? _%tl130557130589%_)
                          (let ((_%hd130558130594%_ (##car _%tl130557130589%_))
                                (_%tl130559130596%_
                                 (##cdr _%tl130557130589%_)))
                            (let ((_%sys-vendor130599%_ _%hd130558130594%_))
                              (if (pair? _%tl130559130596%_)
                                  (let ((_%hd130560130601%_
                                         (##car _%tl130559130596%_))
                                        (_%tl130561130603%_
                                         (##cdr _%tl130559130596%_)))
                                    (let ((_%sys-type130606%_
                                           _%hd130560130601%_))
                                      (if (null? _%tl130561130603%_)
                                          (_%K130555130584%_
                                           _%sys-type130606%_
                                           _%sys-vendor130599%_
                                           _%sys-cpu130592%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self130539%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
