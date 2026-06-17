(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1781697563)
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
      (lambda (_%self193086%_ _%bind?193087%_)
        (let ((_%self193090%_ _%self193086%_))
          (if (##fx< '2 (##structure-length _%self193090%_))
              (begin
                (##unchecked-structure-set! _%self193090%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self193090%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self193090%_
                     '2
                     (##structure-length _%self193090%_)))
          (if _%bind?193087%_
              (begin
                (let ((__method193154
                       (__method-ref
                        _%self193090%_
                        'bind-core-syntax-expanders!)))
                  (if __method193154
                      (__method193154 _%self193090%_)
                      (begin
                        (error '"Missing method"
                               _%self193090%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method193155
                       (__method-ref
                        _%self193090%_
                        'bind-core-macro-expanders!)))
                  (if __method193155
                      (__method193155 _%self193090%_)
                      (begin
                        (error '"Missing method"
                               _%self193090%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method193156
                       (__method-ref _%self193090%_ 'bind-core-features!)))
                  (if __method193156
                      (__method193156 _%self193090%_)
                      (begin
                        (error '"Missing method"
                               _%self193090%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self193104%_)
        (let ((_%bind?193106%_ '#t))
          (gx#root-context:::init!__% _%self193104%_ _%bind?193106%_))))
    (define gx#root-context:::init!
      (lambda _g193160_
        (let ((_g193161_ (##length _g193160_)))
          (cond ((##fx= _g193161_ 1)
                 (apply gx#root-context:::init!__0 _g193160_))
                ((##fx= _g193161_ 2)
                 (apply gx#root-context:::init!__% _g193160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g193160_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass193110 __method-table193111)
        (let ((__bind-core-features!193112
               (__make-promise
                (lambda ()
                  (let ((__method193115
                         (symbolic-table-ref
                          __method-table193111
                          'bind-core-features!
                          '#f)))
                    (if __method193115
                        __method193115
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!193113
               (__make-promise
                (lambda ()
                  (let ((__method193116
                         (symbolic-table-ref
                          __method-table193111
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method193116
                        __method193116
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-macro-expanders!193114
               (__make-promise
                (lambda ()
                  (let ((__method193117
                         (symbolic-table-ref
                          __method-table193111
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method193117
                        __method193117
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%$%opt-lambda193084193101%_
                 (lambda (_%self193086%_ _%bind?193087%_)
                   (let ((_%self193090%_ _%self193086%_))
                     (if (##fx< '2 (##structure-length _%self193090%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self193090%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self193090%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self193090%_
                                '2
                                (##structure-length _%self193090%_)))
                     (if _%bind?193087%_
                         (begin
                           ((force __bind-core-syntax-expanders!193113)
                            _%self193090%_)
                           ((force __bind-core-macro-expanders!193114)
                            _%self193090%_)
                           ((force __bind-core-features!193112)
                            _%self193090%_))
                         '#!void)))))
            (lambda _g193162_
              (let ((_g193163_ (##length _g193162_)))
                (cond ((##fx= _g193163_ 1)
                       (apply (lambda (_%self193104%_)
                                (let ((_%bind?193106%_ '#t))
                                  (_%$%opt-lambda193084193101%_
                                   _%self193104%_
                                   _%bind?193106%_)))
                              _g193162_))
                      ((##fx= _g193163_ 2)
                       (apply _%$%opt-lambda193084193101%_ _g193162_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g193162_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self192931%_ _%super192932%_)
        (let* ((_%self192935%_ _%self192931%_)
               (_%super192951%_
                (let ((_%$e192945%_ _%super192932%_))
                  (if _%$e192945%_
                      _%$e192945%_
                      (let ((_%$e192948%_ (gx#core-context-root__0)))
                        (if _%$e192948%_
                            _%$e192948%_
                            (let ((__obj193157
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj193157)
                              __obj193157)))))))
          (if (##fx< '5 (##structure-length _%self192935%_))
              (begin
                (##unchecked-structure-set! _%self192935%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self192935%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self192935%_
                 _%super192951%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self192935%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self192935%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self192935%_
                     '5
                     (##structure-length _%self192935%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self192956%_)
        (let ((_%super192958%_ '#f))
          (gx#top-context:::init!__% _%self192956%_ _%super192958%_))))
    (define gx#top-context:::init!
      (lambda _g193164_
        (let ((_g193165_ (##length _g193164_)))
          (cond ((##fx= _g193165_ 1)
                 (apply gx#top-context:::init!__0 _g193164_))
                ((##fx= _g193165_ 2)
                 (apply gx#top-context:::init!__% _g193164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g193164_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self192652%_ _%bindings192653%_)
        (let ((_%self192656%_ _%self192652%_))
          (for-each
           (lambda (_%bind192666%_)
             (let* ((_%$%bind192667192674%_ _%bind192666%_)
                    (_%$%E192669192677%_
                     (lambda ()
                       (error '"No clause matching"
                              _%$%bind192667192674%_
                              '([id . rest]))
                       '#!void))
                    (_%$%K192670192786%_
                     (lambda (_%rest192680%_ _%id192681%_)
                       (gx#core-context-put!
                        _%self192656%_
                        _%id192681%_
                        (let ((__obj193158
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj193158
                           _%id192681%_
                           _%id192681%_
                           '#f
                           (let* ((_%$%rest192682192693%_ _%rest192680%_)
                                  (_%$%E192684192697%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%rest192682192693%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%$%K192685192762%_
                                   (lambda (_%compiler192700%_
                                            _%expander192701%_
                                            _%key192702%_)
                                     ((let* ((_%$%key192703192716%_
                                              _%key192702%_)
                                             (_%$%E192709192720%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%$%key192703192716%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%$%K192714192756%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%$%K192713192749%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%$%K192712192741%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%$%K192711192733%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%$%K192710192725%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%$%try-match192708192728%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key192703192716%_
                                                               'expr:)
                                                        (_%$%K192710192725%_)
                                                        (_%$%E192709192720%_))))
                                                 (_%$%try-match192707192736%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key192703192716%_
                                                               'special:)
                                                        (_%$%K192711192733%_)
                                                        (_%$%try-match192708192728%_))))
                                                 (_%$%try-match192706192744%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key192703192716%_
                                                               'define:)
                                                        (_%$%K192712192741%_)
                                                        (_%$%try-match192707192736%_))))
                                                 (_%$%try-match192705192752%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key192703192716%_
                                                               'module:)
                                                        (_%$%K192713192749%_)
                                                        (_%$%try-match192706192744%_)))))
                                            (if (##eq? _%$%key192703192716%_
                                                       'top:)
                                                (_%$%K192714192756%_)
                                                (_%$%try-match192705192752%_)))))
                                      _%expander192701%_
                                      _%id192681%_
                                      (let ((_%$e192759%_ _%compiler192700%_))
                                        (if _%$e192759%_
                                            _%$e192759%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%$%rest192682192693%_)
                                 (let ((_%$%hd192686192765%_
                                        (##car _%$%rest192682192693%_))
                                       (_%$%tl192687192767%_
                                        (##cdr _%$%rest192682192693%_)))
                                   (let ((_%key192770%_ _%$%hd192686192765%_))
                                     (if (pair? _%$%tl192687192767%_)
                                         (let ((_%$%hd192688192772%_
                                                (##car _%$%tl192687192767%_))
                                               (_%$%tl192689192774%_
                                                (##cdr _%$%tl192687192767%_)))
                                           (let ((_%expander192777%_
                                                  _%$%hd192688192772%_))
                                             (if (pair? _%$%tl192689192774%_)
                                                 (let ((_%$%hd192690192779%_
                                                        (##car _%$%tl192689192774%_))
                                                       (_%$%tl192691192781%_
                                                        (##cdr _%$%tl192689192774%_)))
                                                   (let ((_%compiler192784%_
                                                          _%$%hd192690192779%_))
                                                     (if (null? _%$%tl192691192781%_)
                                                         (_%$%K192685192762%_
                                                          _%compiler192784%_
                                                          _%expander192777%_
                                                          _%key192770%_)
                                                         (_%$%E192684192697%_))))
                                                 (_%$%E192684192697%_))))
                                         (_%$%E192684192697%_))))
                                 (_%$%E192684192697%_))))
                          __obj193158)))))
               (if (pair? _%$%bind192667192674%_)
                   (let ((_%$%hd192671192789%_ (##car _%$%bind192667192674%_))
                         (_%$%tl192672192791%_ (##cdr _%$%bind192667192674%_)))
                     (let* ((_%id192794%_ _%$%hd192671192789%_)
                            (_%rest192796%_ _%$%tl192672192791%_))
                       (_%$%K192670192786%_ _%rest192796%_ _%id192794%_)))
                   (_%$%E192669192677%_))))
           _%bindings192653%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self192801%_)
        (let ((_%bindings192803%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self192801%_
           _%bindings192803%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g193166_
        (let ((_g193167_ (##length _g193166_)))
          (cond ((##fx= _g193167_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g193166_))
                ((##fx= _g193167_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g193166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g193166_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self192414%_ _%bindings192415%_)
        (let ((_%self192418%_ _%self192414%_))
          (for-each
           (lambda (_%bind192428%_)
             (let* ((_%$%bind192429192436%_ _%bind192428%_)
                    (_%$%E192431192439%_
                     (lambda ()
                       (error '"No clause matching"
                              _%$%bind192429192436%_
                              '([id . rest]))
                       '#!void))
                    (_%$%K192432192507%_
                     (lambda (_%rest192442%_ _%id192443%_)
                       (gx#core-context-put!
                        _%self192418%_
                        _%id192443%_
                        (let ((__obj193159
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj193159
                           _%id192443%_
                           _%id192443%_
                           '#f
                           (let* ((_%$%rest192444192459%_ _%rest192442%_)
                                  (_%$%E192448192463%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%rest192444192459%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%$%K192453192492%_
                                    (lambda (_%core-id192490%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id192490%_)))
                                   (_%$%K192450192477%_
                                    (lambda (_%proc192475%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc192475%_)))
                                   (_%$%K192449192468%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id192443%_))))
                               (let ((_%$%try-match192447192471%_
                                      (lambda ()
                                        (if (null? _%$%rest192444192459%_)
                                            (_%$%K192449192468%_)
                                            (_%$%E192448192463%_)))))
                                 (if (pair? _%$%rest192444192459%_)
                                     (let ((_%$%tl192455192497%_
                                            (##cdr _%$%rest192444192459%_))
                                           (_%$%hd192454192495%_
                                            (##car _%$%rest192444192459%_)))
                                       (if (##eq? _%$%hd192454192495%_ '=>)
                                           (if (pair? _%$%tl192455192497%_)
                                               (let ((_%$%tl192457192502%_
                                                      (##cdr _%$%tl192455192497%_))
                                                     (_%$%hd192456192500%_
                                                      (##car _%$%tl192455192497%_)))
                                                 (if (null? _%$%tl192457192502%_)
                                                     (let ((_%core-id192505%_
                                                            _%$%hd192456192500%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id192505%_))
                                                     (_%$%E192448192463%_)))
                                               (if (null? _%$%tl192455192497%_)
                                                   (let ((_%proc192485%_
                                                          _%$%hd192454192495%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc192485%_))
                                                   (_%$%E192448192463%_)))
                                           (if (null? _%$%tl192455192497%_)
                                               (let ((_%proc192485%_
                                                      _%$%hd192454192495%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc192485%_))
                                               (_%$%E192448192463%_))))
                                     (_%$%try-match192447192471%_))))))
                          __obj193159)))))
               (if (pair? _%$%bind192429192436%_)
                   (let ((_%$%hd192433192510%_ (##car _%$%bind192429192436%_))
                         (_%$%tl192434192512%_ (##cdr _%$%bind192429192436%_)))
                     (let* ((_%id192515%_ _%$%hd192433192510%_)
                            (_%rest192517%_ _%$%tl192434192512%_))
                       (_%$%K192432192507%_ _%rest192517%_ _%id192515%_)))
                   (_%$%E192431192439%_))))
           _%bindings192415%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self192522%_)
        (let ((_%bindings192524%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self192522%_
           _%bindings192524%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g193168_
        (let ((_g193169_ (##length _g193168_)))
          (cond ((##fx= _g193169_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g193168_))
                ((##fx= _g193169_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g193168_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g193168_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self192145%_)
        (let ((_%self192148%_ _%self192145%_))
          (letrec ((_%linux-variant?192159%_
                    (lambda (_%sys-type192259%_)
                      (let* ((_%$%g192260192268%_
                              (__string-split
                               (symbol->string _%sys-type192259%_)
                               '#\-))
                             (_%$%else192262192276%_ (lambda () '#f))
                             (_%$%K192264192281%_
                              (lambda (_%rest192279%_)
                                (not (null? _%rest192279%_)))))
                        (if (pair? _%$%g192260192268%_)
                            (let ((_%$%hd192265192284%_
                                   (##car _%$%g192260192268%_))
                                  (_%$%tl192266192286%_
                                   (##cdr _%$%g192260192268%_)))
                              (if (equal? _%$%hd192265192284%_ '"linux")
                                  (let ((_%rest192289%_ _%$%tl192266192286%_))
                                    (_%$%K192264192281%_ _%rest192289%_))
                                  (_%$%else192262192276%_)))
                            (_%$%else192262192276%_)))))
                   (_%bsd-variant192160%_
                    (lambda (_%sys-type192218%_)
                      (let ((_%sys-type-str192220%_
                             (symbol->string _%sys-type192218%_)))
                        (let _%lp192222%_ ((_%rest192224%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%$%rest192225192233%_ _%rest192224%_)
                                 (_%$%else192227192241%_ (lambda () '#f))
                                 (_%$%K192229192247%_
                                  (lambda (_%rest192244%_ _%sys192245%_)
                                    (if (string-prefix?
                                         _%sys192245%_
                                         _%sys-type-str192220%_)
                                        _%sys192245%_
                                        (_%lp192222%_ _%rest192244%_)))))
                            (if (pair? _%$%rest192225192233%_)
                                (let ((_%$%hd192230192250%_
                                       (##car _%$%rest192225192233%_))
                                      (_%$%tl192231192252%_
                                       (##cdr _%$%rest192225192233%_)))
                                  (let* ((_%sys192255%_ _%$%hd192230192250%_)
                                         (_%rest192257%_ _%$%tl192231192252%_))
                                    (_%$%K192229192247%_
                                     _%rest192257%_
                                     _%sys192255%_)))
                                (_%$%else192227192241%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self192148%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self192148%_)
            (let* ((_%$%g192161192173%_ (system-type))
                   (_%$%else192163192181%_ (lambda () '#!void))
                   (_%$%K192165192194%_
                    (lambda (_%sys-type192184%_
                             _%sys-vendor192185%_
                             _%sys-cpu192186%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu192186%_
                       '#f
                       '0
                       _%self192148%_)
                      (gx#core-bind-feature!__%
                       _%sys-type192184%_
                       '#f
                       '0
                       _%self192148%_)
                      (if (_%linux-variant?192159%_ _%sys-type192184%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self192148%_)
                          (let ((_%$e192189%_
                                 (_%bsd-variant192160%_ _%sys-type192184%_)))
                            (if _%$e192189%_
                                (let ()
                                  (gx#core-bind-feature!__%
                                   (##string->symbol '"bsd")
                                   '#f
                                   '0
                                   _%self192148%_)
                                  (gx#core-bind-feature!__%
                                   (string->symbol _%$e192189%_)
                                   '#f
                                   '0
                                   _%self192148%_))
                                '#!void))))))
              (if (pair? _%$%g192161192173%_)
                  (let ((_%$%hd192166192197%_ (##car _%$%g192161192173%_))
                        (_%$%tl192167192199%_ (##cdr _%$%g192161192173%_)))
                    (let ((_%sys-cpu192202%_ _%$%hd192166192197%_))
                      (if (pair? _%$%tl192167192199%_)
                          (let ((_%$%hd192168192204%_
                                 (##car _%$%tl192167192199%_))
                                (_%$%tl192169192206%_
                                 (##cdr _%$%tl192167192199%_)))
                            (let ((_%sys-vendor192209%_ _%$%hd192168192204%_))
                              (if (pair? _%$%tl192169192206%_)
                                  (let ((_%$%hd192170192211%_
                                         (##car _%$%tl192169192206%_))
                                        (_%$%tl192171192213%_
                                         (##cdr _%$%tl192169192206%_)))
                                    (let ((_%sys-type192216%_
                                           _%$%hd192170192211%_))
                                      (if (null? _%$%tl192171192213%_)
                                          (_%$%K192165192194%_
                                           _%sys-type192216%_
                                           _%sys-vendor192209%_
                                           _%sys-cpu192202%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self192148%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
