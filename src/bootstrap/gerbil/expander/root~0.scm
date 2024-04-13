(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1713004411)
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
      (lambda (_%self128854129934%_ _%bind?129936%_)
        (let* ((_%self129938%_ _%self128854129934%_)
               (_%self129940%_ _%self129938%_))
          (if (##fx< '2 (##structure-length _%self129940%_))
              (begin
                (##unchecked-structure-set! _%self129940%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self129940%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129940%_
                     '2
                     (##vector-length _%self129940%_)))
          (if _%bind?129936%_
              (begin
                (let ((__method130003
                       (__method-ref
                        _%self129940%_
                        'bind-core-syntax-expanders!)))
                  (if __method130003
                      (__method130003 _%self129940%_)
                      (begin
                        (error '"Missing method"
                               _%self129940%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method130004
                       (__method-ref
                        _%self129940%_
                        'bind-core-macro-expanders!)))
                  (if __method130004
                      (__method130004 _%self129940%_)
                      (begin
                        (error '"Missing method"
                               _%self129940%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method130005
                       (__method-ref _%self129940%_ 'bind-core-features!)))
                  (if __method130005
                      (__method130005 _%self129940%_)
                      (begin
                        (error '"Missing method"
                               _%self129940%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self128854129953%_)
        (let ((_%bind?129955%_ '#t))
          (gx#root-context:::init!__% _%self128854129953%_ _%bind?129955%_))))
    (define gx#root-context:::init!
      (lambda _g130008_
        (let ((_g130007_ (##length _g130008_)))
          (cond ((##fx= _g130007_ 1)
                 (apply gx#root-context:::init!__0 _g130008_))
                ((##fx= _g130007_ 2)
                 (apply gx#root-context:::init!__% _g130008_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g130008_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass129959 __method-table129960)
        (let ((__bind-core-features!129961
               (__make-promise
                (lambda ()
                  (let ((__method129964
                         (symbolic-table-ref
                          __method-table129960
                          'bind-core-features!
                          '#f)))
                    (if __method129964
                        __method129964
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!129962
               (__make-promise
                (lambda ()
                  (let ((__method129965
                         (symbolic-table-ref
                          __method-table129960
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method129965
                        __method129965
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!129963
               (__make-promise
                (lambda ()
                  (let ((__method129966
                         (symbolic-table-ref
                          __method-table129960
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method129966
                        __method129966
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%opt-lambda129932129950%_
                 (lambda (_%self128854129934%_ _%bind?129936%_)
                   (let* ((_%self129938%_ _%self128854129934%_)
                          (_%self129940%_ _%self129938%_))
                     (if (##fx< '2 (##structure-length _%self129940%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self129940%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self129940%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self129940%_
                                '2
                                (##vector-length _%self129940%_)))
                     (if _%bind?129936%_
                         (begin
                           ((force __bind-core-syntax-expanders!129962)
                            _%self129940%_)
                           ((force __bind-core-macro-expanders!129963)
                            _%self129940%_)
                           ((force __bind-core-features!129961)
                            _%self129940%_))
                         '#!void)))))
            (lambda _g130010_
              (let ((_g130009_ (##length _g130010_)))
                (cond ((##fx= _g130009_ 1)
                       (apply (lambda (_%self128854129953%_)
                                (let ((_%bind?129955%_ '#t))
                                  (_%opt-lambda129932129950%_
                                   _%self128854129953%_
                                   _%bind?129955%_)))
                              _g130010_))
                      ((##fx= _g130009_ 2)
                       (apply _%opt-lambda129932129950%_ _g130010_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g130010_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self128855129777%_ _%super129779%_)
        (let* ((_%self129781%_ _%self128855129777%_)
               (_%self129783%_ _%self129781%_)
               (_%super129799%_
                (let ((_%$e129793%_ _%super129779%_))
                  (if _%$e129793%_
                      _%$e129793%_
                      (let ((_%$e129796%_ (gx#core-context-root__0)))
                        (if _%$e129796%_
                            _%$e129796%_
                            (let ((__obj130006
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj130006)
                              __obj130006)))))))
          (if (##fx< '5 (##structure-length _%self129783%_))
              (begin
                (##unchecked-structure-set! _%self129783%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self129783%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self129783%_
                 _%super129799%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self129783%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self129783%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self129783%_
                     '5
                     (##vector-length _%self129783%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self128855129804%_)
        (let ((_%super129806%_ '#f))
          (gx#top-context:::init!__% _%self128855129804%_ _%super129806%_))))
    (define gx#top-context:::init!
      (lambda _g130012_
        (let ((_g130011_ (##length _g130012_)))
          (cond ((##fx= _g130011_ 1)
                 (apply gx#top-context:::init!__0 _g130012_))
                ((##fx= _g130011_ 2)
                 (apply gx#top-context:::init!__% _g130012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g130012_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self128856129495%_ _%bindings129497%_)
        (let* ((_%self129499%_ _%self128856129495%_)
               (_%self129501%_ _%self129499%_))
          (for-each
           (lambda (_%bind129511%_)
             (let* ((_%bind129512129519%_ _%bind129511%_)
                    (_%E129514129523%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind129512129519%_
                              '([id . rest]))
                       '#!void))
                    (_%K129515129632%_
                     (lambda (_%rest129526%_ _%id129527%_)
                       (gx#core-context-put!
                        _%self129501%_
                        _%id129527%_
                        (##structure
                         gx#syntax-binding::t
                         _%id129527%_
                         _%id129527%_
                         '#f
                         (let* ((_%rest129528129539%_ _%rest129526%_)
                                (_%E129530129543%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest129528129539%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K129531129608%_
                                 (lambda (_%compiler129546%_
                                          _%expander129547%_
                                          _%key129548%_)
                                   ((let* ((_%key129549129562%_ _%key129548%_)
                                           (_%E129555129566%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key129549129562%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K129560129602%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K129559129595%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K129558129587%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K129557129579%_
                                             (lambda () gx#make-special-form))
                                            (_%K129556129571%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match129554129574%_
                                                (lambda ()
                                                  (if (##eq? _%key129549129562%_
                                                             'expr:)
                                                      (_%K129556129571%_)
                                                      (_%E129555129566%_))))
                                               (_%try-match129553129582%_
                                                (lambda ()
                                                  (if (##eq? _%key129549129562%_
                                                             'special:)
                                                      (_%K129557129579%_)
                                                      (_%try-match129554129574%_))))
                                               (_%try-match129552129590%_
                                                (lambda ()
                                                  (if (##eq? _%key129549129562%_
                                                             'define:)
                                                      (_%K129558129587%_)
                                                      (_%try-match129553129582%_))))
                                               (_%try-match129551129598%_
                                                (lambda ()
                                                  (if (##eq? _%key129549129562%_
                                                             'module:)
                                                      (_%K129559129595%_)
                                                      (_%try-match129552129590%_)))))
                                          (if (##eq? _%key129549129562%_ 'top:)
                                              (_%K129560129602%_)
                                              (_%try-match129551129598%_)))))
                                    _%expander129547%_
                                    _%id129527%_
                                    (let ((_%$e129605%_ _%compiler129546%_))
                                      (if _%$e129605%_
                                          _%$e129605%_
                                          gx#core-compile-top-error))))))
                           (if (##pair? _%rest129528129539%_)
                               (let ((_%hd129532129611%_
                                      (##car _%rest129528129539%_))
                                     (_%tl129533129613%_
                                      (##cdr _%rest129528129539%_)))
                                 (let ((_%key129616%_ _%hd129532129611%_))
                                   (if (##pair? _%tl129533129613%_)
                                       (let ((_%hd129534129618%_
                                              (##car _%tl129533129613%_))
                                             (_%tl129535129620%_
                                              (##cdr _%tl129533129613%_)))
                                         (let ((_%expander129623%_
                                                _%hd129534129618%_))
                                           (if (##pair? _%tl129535129620%_)
                                               (let ((_%hd129536129625%_
                                                      (##car _%tl129535129620%_))
                                                     (_%tl129537129627%_
                                                      (##cdr _%tl129535129620%_)))
                                                 (let ((_%compiler129630%_
                                                        _%hd129536129625%_))
                                                   (if (##null? _%tl129537129627%_)
                                                       (_%K129531129608%_
                                                        _%compiler129630%_
                                                        _%expander129623%_
                                                        _%key129616%_)
                                                       (_%E129530129543%_))))
                                               (_%E129530129543%_))))
                                       (_%E129530129543%_))))
                               (_%E129530129543%_))))))))
               (if (##pair? _%bind129512129519%_)
                   (let ((_%hd129516129635%_ (##car _%bind129512129519%_))
                         (_%tl129517129637%_ (##cdr _%bind129512129519%_)))
                     (let* ((_%id129640%_ _%hd129516129635%_)
                            (_%rest129642%_ _%tl129517129637%_))
                       (_%K129515129632%_ _%rest129642%_ _%id129640%_)))
                   (_%E129514129523%_))))
           _%bindings129497%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self128856129647%_)
        (let ((_%bindings129649%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self128856129647%_
           _%bindings129649%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g130014_
        (let ((_g130013_ (##length _g130014_)))
          (cond ((##fx= _g130013_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g130014_))
                ((##fx= _g130013_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g130014_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g130014_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self128857129254%_ _%bindings129256%_)
        (let* ((_%self129258%_ _%self128857129254%_)
               (_%self129260%_ _%self129258%_))
          (for-each
           (lambda (_%bind129270%_)
             (let* ((_%bind129271129278%_ _%bind129270%_)
                    (_%E129273129282%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind129271129278%_
                              '([id . rest]))
                       '#!void))
                    (_%K129274129350%_
                     (lambda (_%rest129285%_ _%id129286%_)
                       (gx#core-context-put!
                        _%self129260%_
                        _%id129286%_
                        (##structure
                         gx#syntax-binding::t
                         _%id129286%_
                         _%id129286%_
                         '#f
                         (let* ((_%rest129287129302%_ _%rest129285%_)
                                (_%E129291129306%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest129287129302%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K129296129335%_
                                  (lambda (_%core-id129333%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id129333%_)))
                                 (_%K129293129320%_
                                  (lambda (_%proc129318%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc129318%_)))
                                 (_%K129292129311%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id129286%_))))
                             (let ((_%try-match129290129314%_
                                    (lambda ()
                                      (if (##null? _%rest129287129302%_)
                                          (_%K129292129311%_)
                                          (_%E129291129306%_)))))
                               (if (##pair? _%rest129287129302%_)
                                   (let ((_%tl129298129340%_
                                          (##cdr _%rest129287129302%_))
                                         (_%hd129297129338%_
                                          (##car _%rest129287129302%_)))
                                     (if (##eq? _%hd129297129338%_ '=>)
                                         (if (##pair? _%tl129298129340%_)
                                             (let ((_%tl129300129345%_
                                                    (##cdr _%tl129298129340%_))
                                                   (_%hd129299129343%_
                                                    (##car _%tl129298129340%_)))
                                               (if (##null? _%tl129300129345%_)
                                                   (let ((_%core-id129348%_
                                                          _%hd129299129343%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id129348%_))
                                                   (_%E129291129306%_)))
                                             (if (##null? _%tl129298129340%_)
                                                 (let ((_%proc129328%_
                                                        _%hd129297129338%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc129328%_))
                                                 (_%E129291129306%_)))
                                         (if (##null? _%tl129298129340%_)
                                             (let ((_%proc129328%_
                                                    _%hd129297129338%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc129328%_))
                                             (_%E129291129306%_))))
                                   (_%try-match129290129314%_))))))))))
               (if (##pair? _%bind129271129278%_)
                   (let ((_%hd129275129353%_ (##car _%bind129271129278%_))
                         (_%tl129276129355%_ (##cdr _%bind129271129278%_)))
                     (let* ((_%id129358%_ _%hd129275129353%_)
                            (_%rest129360%_ _%tl129276129355%_))
                       (_%K129274129350%_ _%rest129360%_ _%id129358%_)))
                   (_%E129273129282%_))))
           _%bindings129256%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self128857129365%_)
        (let ((_%bindings129367%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self128857129365%_
           _%bindings129367%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g130016_
        (let ((_g130015_ (##length _g130016_)))
          (cond ((##fx= _g130015_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g130016_))
                ((##fx= _g130015_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g130016_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g130016_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self128858128984%_)
        (let* ((_%self128987%_ _%self128858128984%_)
               (_%self128989%_ _%self128987%_))
          (letrec ((_%linux-variant?128999%_
                    (lambda (_%sys-type129099%_)
                      (let* ((_%g129100129108%_
                              (__string-split
                               (symbol->string _%sys-type129099%_)
                               '#\-))
                             (_%else129102129116%_ (lambda () '#f))
                             (_%K129104129121%_
                              (lambda (_%rest129119%_)
                                (not (null? _%rest129119%_)))))
                        (if (##pair? _%g129100129108%_)
                            (let ((_%hd129105129124%_
                                   (##car _%g129100129108%_))
                                  (_%tl129106129126%_
                                   (##cdr _%g129100129108%_)))
                              (if (equal? _%hd129105129124%_ '"linux")
                                  (let ((_%rest129129%_ _%tl129106129126%_))
                                    (_%K129104129121%_ _%rest129129%_))
                                  (_%else129102129116%_)))
                            (_%else129102129116%_)))))
                   (_%bsd-variant129000%_
                    (lambda (_%sys-type129058%_)
                      (let ((_%sys-type-str129060%_
                             (symbol->string _%sys-type129058%_)))
                        (let _%lp129062%_ ((_%rest129064%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest129065129073%_ _%rest129064%_)
                                 (_%else129067129081%_ (lambda () '#f))
                                 (_%K129069129087%_
                                  (lambda (_%rest129084%_ _%sys129085%_)
                                    (if (string-prefix?
                                         _%sys129085%_
                                         _%sys-type-str129060%_)
                                        _%sys129085%_
                                        (_%lp129062%_ _%rest129084%_)))))
                            (if (##pair? _%rest129065129073%_)
                                (let ((_%hd129070129090%_
                                       (##car _%rest129065129073%_))
                                      (_%tl129071129092%_
                                       (##cdr _%rest129065129073%_)))
                                  (let* ((_%sys129095%_ _%hd129070129090%_)
                                         (_%rest129097%_ _%tl129071129092%_))
                                    (_%K129069129087%_
                                     _%rest129097%_
                                     _%sys129095%_)))
                                (_%else129067129081%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self128989%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self128989%_)
            (let* ((_%g129001129013%_ (system-type))
                   (_%else129003129021%_ (lambda () '#!void))
                   (_%K129005129034%_
                    (lambda (_%sys-type129024%_
                             _%sys-vendor129025%_
                             _%sys-cpu129026%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu129026%_
                       '#f
                       '0
                       _%self128989%_)
                      (gx#core-bind-feature!__%
                       _%sys-type129024%_
                       '#f
                       '0
                       _%self128989%_)
                      (if (_%linux-variant?128999%_ _%sys-type129024%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self128989%_)
                          (let ((_%$e129029%_
                                 (_%bsd-variant129000%_ _%sys-type129024%_)))
                            (if _%$e129029%_
                                ((lambda (_%sys-prefix129032%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self128989%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix129032%_)
                                    '#f
                                    '0
                                    _%self128989%_))
                                 _%$e129029%_)
                                '#!void))))))
              (if (##pair? _%g129001129013%_)
                  (let ((_%hd129006129037%_ (##car _%g129001129013%_))
                        (_%tl129007129039%_ (##cdr _%g129001129013%_)))
                    (let ((_%sys-cpu129042%_ _%hd129006129037%_))
                      (if (##pair? _%tl129007129039%_)
                          (let ((_%hd129008129044%_ (##car _%tl129007129039%_))
                                (_%tl129009129046%_
                                 (##cdr _%tl129007129039%_)))
                            (let ((_%sys-vendor129049%_ _%hd129008129044%_))
                              (if (##pair? _%tl129009129046%_)
                                  (let ((_%hd129010129051%_
                                         (##car _%tl129009129046%_))
                                        (_%tl129011129053%_
                                         (##cdr _%tl129009129046%_)))
                                    (let ((_%sys-type129056%_
                                           _%hd129010129051%_))
                                      (if (##null? _%tl129011129053%_)
                                          (_%K129005129034%_
                                           _%sys-type129056%_
                                           _%sys-vendor129049%_
                                           _%sys-cpu129042%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self128989%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
