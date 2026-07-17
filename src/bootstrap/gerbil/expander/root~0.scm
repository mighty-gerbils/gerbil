(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1784471384)
  (begin
    (declare (not safe))
    (define gx#*core-syntax-expanders*
      (list (list '%#begin
                  'top:
                  gx#core-expand-begin%
                  gx#core-compile-top-begin%)
            (list '%#begin-syntax
                  'top:
                  gx#core-expand-begin-syntax%
                  gx#core-compile-top-begin-syntax%)
            (list '%#begin-foreign
                  'top:
                  gx#core-expand-begin-foreign%
                  gx#core-compile-top-begin-foreign%)
            (cons '%#begin-module
                  (cons 'top: (cons gx#core-expand-begin-module% '(#f))))
            (list '%#extern
                  'top:
                  gx#core-expand-extern%
                  gx#core-compile-top-extern%)
            (list '%#import
                  'top:
                  gx#core-expand-import%
                  gx#core-compile-top-import%)
            (list '%#module
                  'top:
                  gx#core-expand-module%
                  gx#core-compile-top-module%)
            (list '%#export
                  'top:
                  gx#core-expand-export%
                  gx#core-compile-top-export%)
            (list '%#provide
                  'module:
                  gx#core-expand-provide%
                  gx#core-compile-top-provide%)
            (list '%#declare
                  'module:
                  gx#core-expand-declare%
                  gx#core-compile-top-declare%)
            (cons '%#cond-expand
                  (cons 'special: (cons gx#core-expand-cond-expand% '(#f))))
            (cons '%#include
                  (cons 'special: (cons gx#core-expand-include% '(#f))))
            (list '%#define-values
                  'define:
                  gx#core-expand-define-values%
                  gx#core-compile-top-define-values%)
            (list '%#define-syntax
                  'define:
                  gx#core-expand-define-syntax%
                  gx#core-compile-top-define-syntax%)
            (list '%#define-alias
                  'define:
                  gx#core-expand-define-alias%
                  gx#core-compile-top-define-alias%)
            (list '%#define-runtime
                  'define:
                  gx#core-expand-define-runtime%
                  gx#core-compile-top-define-runtime%)
            (list '%#begin-annotation
                  'expr:
                  gx#core-expand-begin-annotation%
                  gx#core-compile-top-begin-annotation%)
            (list '%#lambda
                  'expr:
                  gx#core-expand-lambda%
                  gx#core-compile-top-lambda%)
            (list '%#case-lambda
                  'expr:
                  gx#core-expand-case-lambda%
                  gx#core-compile-top-case-lambda%)
            (list '%#let-values
                  'expr:
                  gx#core-expand-let-values%
                  gx#core-compile-top-let-values%)
            (list '%#letrec-values
                  'expr:
                  gx#core-expand-letrec-values%
                  gx#core-compile-top-letrec-values%)
            (list '%#letrec*-values
                  'expr:
                  gx#core-expand-letrec*-values%
                  gx#core-compile-top-letrec*-values%)
            (cons '%#let-syntax
                  (cons 'expr: (cons gx#core-expand-let-syntax% '(#f))))
            (cons '%#letrec-syntax
                  (cons 'expr: (cons gx#core-expand-letrec-syntax% '(#f))))
            (list '%#quote
                  'expr:
                  gx#core-expand-quote%
                  gx#core-compile-top-quote%)
            (list '%#quote-syntax
                  'expr:
                  gx#core-expand-quote-syntax%
                  gx#core-compile-top-quote-syntax%)
            (list '%#call
                  'expr:
                  gx#core-expand-call%
                  gx#core-compile-top-call%)
            (list '%#if 'expr: gx#core-expand-if% gx#core-compile-top-if%)
            (list '%#ref 'expr: gx#core-expand-ref% gx#core-compile-top-ref%)
            (list '%#set!
                  'expr:
                  gx#core-expand-setq%
                  gx#core-compile-top-setq%)
            (cons '%#expression
                  (cons 'expr: (cons gx#core-expand-expression% '(#f))))
            (cons '%#bind-runtime-properties!
                  (cons 'special:
                        (cons gx#core-expand-bind-runtime-properties%
                              '(#f))))))
    (define gx#*core-macro-expanders*
      (cons '(begin => %#begin)
            (cons '(begin-syntax => %#begin-syntax)
                  (cons '(begin-foreign => %#begin-foreign)
                        (cons '(begin-annotation => %#begin-annotation)
                              (cons '(import => %#import)
                                    (cons '(module => %#module)
                                          (cons '(export => %#export)
                                                (cons '(provide => %#provide)
                                                      (cons '(declare
                                                               =>
                                                               %#declare)
                                                            (cons '(include =>
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    %#include)
                          (cons '(cond-expand => %#cond-expand)
                                (cons '(quote => %#quote)
                                      (cons '(quote-syntax => %#quote-syntax)
                                            (cons '(let-syntax => %#let-syntax)
                                                  (cons '(letrec-syntax
                                                          =>
                                                          %#letrec-syntax)
                                                        (cons '(define-values =>
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         %#define-values)
                      (cons '(define-runtime => %#define-runtime)
                            (cons '(define-syntax => %#define-syntax)
                                  (cons '(define-alias => %#define-alias)
                                        (cons (list 'extern
                                                    gx#macro-expand-extern)
                                              (cons (list 'lambda%
                                                          gx#macro-expand-lambda%)
                                                    (cons (list 'case-lambda
                                                                gx#macro-expand-case-lambda)
                                                          (cons (list 'let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              gx#macro-expand-let-values)
                        (cons (list 'letrec-values
                                    gx#macro-expand-letrec-values)
                              (cons (list 'letrec*-values
                                          gx#macro-expand-letrec*-values)
                                    (cons (list 'if gx#macro-expand-if)
                                          '((%%app => %#call)
                                            (%%ref => %#ref)
                                            (%%begin-module => %#begin-module)
                                            (_)
                                            (...)
                                            (else)
                                            (=>)
                                            (unquote)
                                            (unquote-splicing)
                                            (unsyntax)
                                            (unsyntax-splicing)))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
    (define gx#root-context:::init!__%
      (lambda (_%self197361%_ _%bind?197362%_)
        (let ((_%self197365%_ _%self197361%_))
          (if (##fx< '2 (##structure-length _%self197365%_))
              (begin
                (##unchecked-structure-set! _%self197365%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self197365%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self197365%_
                     '2
                     (##structure-length _%self197365%_)))
          (if _%bind?197362%_
              (begin
                (let ((__method197429
                       (__method-ref
                        _%self197365%_
                        'bind-core-syntax-expanders!)))
                  (if __method197429
                      (__method197429 _%self197365%_)
                      (begin
                        (error '"Missing method"
                               _%self197365%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method197430
                       (__method-ref
                        _%self197365%_
                        'bind-core-macro-expanders!)))
                  (if __method197430
                      (__method197430 _%self197365%_)
                      (begin
                        (error '"Missing method"
                               _%self197365%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method197431
                       (__method-ref _%self197365%_ 'bind-core-features!)))
                  (if __method197431
                      (__method197431 _%self197365%_)
                      (begin
                        (error '"Missing method"
                               _%self197365%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self197379%_)
        (let ((_%bind?197381%_ '#t))
          (gx#root-context:::init!__% _%self197379%_ _%bind?197381%_))))
    (define gx#root-context:::init!
      (lambda _g197435_
        (let ((_g197436_ (##length _g197435_)))
          (cond ((##fx= _g197436_ 1)
                 (apply gx#root-context:::init!__0 _g197435_))
                ((##fx= _g197436_ 2)
                 (apply gx#root-context:::init!__% _g197435_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g197435_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass197385 __method-table197386)
        (let ((__bind-core-features!197387
               (__make-promise
                (lambda ()
                  (let ((__method197390
                         (symbolic-table-ref
                          __method-table197386
                          'bind-core-features!
                          '#f)))
                    (if __method197390
                        __method197390
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!197388
               (__make-promise
                (lambda ()
                  (let ((__method197391
                         (symbolic-table-ref
                          __method-table197386
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method197391
                        __method197391
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!197389
               (__make-promise
                (lambda ()
                  (let ((__method197392
                         (symbolic-table-ref
                          __method-table197386
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method197392
                        __method197392
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_%$%opt-lambda197359197376%_
                 (lambda (_%self197361%_ _%bind?197362%_)
                   (let ((_%self197365%_ _%self197361%_))
                     (if (##fx< '2 (##structure-length _%self197365%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self197365%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self197365%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self197365%_
                                '2
                                (##structure-length _%self197365%_)))
                     (if _%bind?197362%_
                         (begin
                           ((force __bind-core-syntax-expanders!197389)
                            _%self197365%_)
                           ((force __bind-core-macro-expanders!197388)
                            _%self197365%_)
                           ((force __bind-core-features!197387)
                            _%self197365%_))
                         '#!void)))))
            (lambda _g197437_
              (let ((_g197438_ (##length _g197437_)))
                (cond ((##fx= _g197438_ 1)
                       (apply (lambda (_%self197379%_)
                                (let ((_%bind?197381%_ '#t))
                                  (_%$%opt-lambda197359197376%_
                                   _%self197379%_
                                   _%bind?197381%_)))
                              _g197437_))
                      ((##fx= _g197438_ 2)
                       (apply _%$%opt-lambda197359197376%_ _g197437_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g197437_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self197206%_ _%super197207%_)
        (let* ((_%self197210%_ _%self197206%_)
               (_%super197226%_
                (let ((_%$e197220%_ _%super197207%_))
                  (if _%$e197220%_
                      _%$e197220%_
                      (let ((_%$e197223%_ (gx#core-context-root__0)))
                        (if _%$e197223%_
                            _%$e197223%_
                            (let ((__obj197432
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj197432)
                              __obj197432)))))))
          (if (##fx< '5 (##structure-length _%self197210%_))
              (begin
                (##unchecked-structure-set! _%self197210%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self197210%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self197210%_
                 _%super197226%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self197210%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self197210%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self197210%_
                     '5
                     (##structure-length _%self197210%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self197231%_)
        (let ((_%super197233%_ '#f))
          (gx#top-context:::init!__% _%self197231%_ _%super197233%_))))
    (define gx#top-context:::init!
      (lambda _g197439_
        (let ((_g197440_ (##length _g197439_)))
          (cond ((##fx= _g197440_ 1)
                 (apply gx#top-context:::init!__0 _g197439_))
                ((##fx= _g197440_ 2)
                 (apply gx#top-context:::init!__% _g197439_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g197439_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self196927%_ _%bindings196928%_)
        (let ((_%self196931%_ _%self196927%_))
          (for-each
           (lambda (_%bind196941%_)
             (let* ((_%$%bind196942196949%_ _%bind196941%_)
                    (_%$%E196944196952%_
                     (lambda ()
                       (error '"No clause matching"
                              _%$%bind196942196949%_
                              '([id . rest]))
                       '#!void))
                    (_%$%K196945197061%_
                     (lambda (_%rest196955%_ _%id196956%_)
                       (gx#core-context-put!
                        _%self196931%_
                        _%id196956%_
                        (let ((__obj197433
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj197433
                           _%id196956%_
                           _%id196956%_
                           '#f
                           (let* ((_%$%rest196957196968%_ _%rest196955%_)
                                  (_%$%E196959196972%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%rest196957196968%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%$%K196960197037%_
                                   (lambda (_%compiler196975%_
                                            _%expander196976%_
                                            _%key196977%_)
                                     ((let* ((_%$%key196978196991%_
                                              _%key196977%_)
                                             (_%$%E196984196995%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%$%key196978196991%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%$%K196989197031%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%$%K196988197024%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%$%K196987197016%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%$%K196986197008%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%$%K196985197000%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%$%try-match196983197003%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key196978196991%_
                                                               'expr:)
                                                        (_%$%K196985197000%_)
                                                        (_%$%E196984196995%_))))
                                                 (_%$%try-match196982197011%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key196978196991%_
                                                               'special:)
                                                        (_%$%K196986197008%_)
                                                        (_%$%try-match196983197003%_))))
                                                 (_%$%try-match196981197019%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key196978196991%_
                                                               'define:)
                                                        (_%$%K196987197016%_)
                                                        (_%$%try-match196982197011%_))))
                                                 (_%$%try-match196980197027%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key196978196991%_
                                                               'module:)
                                                        (_%$%K196988197024%_)
                                                        (_%$%try-match196981197019%_)))))
                                            (if (##eq? _%$%key196978196991%_
                                                       'top:)
                                                (_%$%K196989197031%_)
                                                (_%$%try-match196980197027%_)))))
                                      _%expander196976%_
                                      _%id196956%_
                                      (let ((_%$e197034%_ _%compiler196975%_))
                                        (if _%$e197034%_
                                            _%$e197034%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%$%rest196957196968%_)
                                 (let ((_%$%hd196961197040%_
                                        (##car _%$%rest196957196968%_))
                                       (_%$%tl196962197042%_
                                        (##cdr _%$%rest196957196968%_)))
                                   (let ((_%key197045%_ _%$%hd196961197040%_))
                                     (if (pair? _%$%tl196962197042%_)
                                         (let ((_%$%hd196963197047%_
                                                (##car _%$%tl196962197042%_))
                                               (_%$%tl196964197049%_
                                                (##cdr _%$%tl196962197042%_)))
                                           (let ((_%expander197052%_
                                                  _%$%hd196963197047%_))
                                             (if (pair? _%$%tl196964197049%_)
                                                 (let ((_%$%hd196965197054%_
                                                        (##car _%$%tl196964197049%_))
                                                       (_%$%tl196966197056%_
                                                        (##cdr _%$%tl196964197049%_)))
                                                   (let ((_%compiler197059%_
                                                          _%$%hd196965197054%_))
                                                     (if (null? _%$%tl196966197056%_)
                                                         (_%$%K196960197037%_
                                                          _%compiler197059%_
                                                          _%expander197052%_
                                                          _%key197045%_)
                                                         (_%$%E196959196972%_))))
                                                 (_%$%E196959196972%_))))
                                         (_%$%E196959196972%_))))
                                 (_%$%E196959196972%_))))
                          __obj197433)))))
               (if (pair? _%$%bind196942196949%_)
                   (let ((_%$%hd196946197064%_ (##car _%$%bind196942196949%_))
                         (_%$%tl196947197066%_ (##cdr _%$%bind196942196949%_)))
                     (let* ((_%id197069%_ _%$%hd196946197064%_)
                            (_%rest197071%_ _%$%tl196947197066%_))
                       (_%$%K196945197061%_ _%rest197071%_ _%id197069%_)))
                   (_%$%E196944196952%_))))
           _%bindings196928%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self197076%_)
        (let ((_%bindings197078%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self197076%_
           _%bindings197078%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g197441_
        (let ((_g197442_ (##length _g197441_)))
          (cond ((##fx= _g197442_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g197441_))
                ((##fx= _g197442_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g197441_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g197441_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self196689%_ _%bindings196690%_)
        (let ((_%self196693%_ _%self196689%_))
          (for-each
           (lambda (_%bind196703%_)
             (let* ((_%$%bind196704196711%_ _%bind196703%_)
                    (_%$%E196706196714%_
                     (lambda ()
                       (error '"No clause matching"
                              _%$%bind196704196711%_
                              '([id . rest]))
                       '#!void))
                    (_%$%K196707196782%_
                     (lambda (_%rest196717%_ _%id196718%_)
                       (gx#core-context-put!
                        _%self196693%_
                        _%id196718%_
                        (let ((__obj197434
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj197434
                           _%id196718%_
                           _%id196718%_
                           '#f
                           (let* ((_%$%rest196719196734%_ _%rest196717%_)
                                  (_%$%E196723196738%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%rest196719196734%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%$%K196728196767%_
                                    (lambda (_%core-id196765%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id196765%_)))
                                   (_%$%K196725196752%_
                                    (lambda (_%proc196750%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc196750%_)))
                                   (_%$%K196724196743%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id196718%_))))
                               (let ((_%$%try-match196722196746%_
                                      (lambda ()
                                        (if (null? _%$%rest196719196734%_)
                                            (_%$%K196724196743%_)
                                            (_%$%E196723196738%_)))))
                                 (if (pair? _%$%rest196719196734%_)
                                     (let ((_%$%tl196730196772%_
                                            (##cdr _%$%rest196719196734%_))
                                           (_%$%hd196729196770%_
                                            (##car _%$%rest196719196734%_)))
                                       (if (##eq? _%$%hd196729196770%_ '=>)
                                           (if (pair? _%$%tl196730196772%_)
                                               (let ((_%$%tl196732196777%_
                                                      (##cdr _%$%tl196730196772%_))
                                                     (_%$%hd196731196775%_
                                                      (##car _%$%tl196730196772%_)))
                                                 (if (null? _%$%tl196732196777%_)
                                                     (let ((_%core-id196780%_
                                                            _%$%hd196731196775%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id196780%_))
                                                     (_%$%E196723196738%_)))
                                               (if (null? _%$%tl196730196772%_)
                                                   (let ((_%proc196760%_
                                                          _%$%hd196729196770%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc196760%_))
                                                   (_%$%E196723196738%_)))
                                           (if (null? _%$%tl196730196772%_)
                                               (let ((_%proc196760%_
                                                      _%$%hd196729196770%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc196760%_))
                                               (_%$%E196723196738%_))))
                                     (_%$%try-match196722196746%_))))))
                          __obj197434)))))
               (if (pair? _%$%bind196704196711%_)
                   (let ((_%$%hd196708196785%_ (##car _%$%bind196704196711%_))
                         (_%$%tl196709196787%_ (##cdr _%$%bind196704196711%_)))
                     (let* ((_%id196790%_ _%$%hd196708196785%_)
                            (_%rest196792%_ _%$%tl196709196787%_))
                       (_%$%K196707196782%_ _%rest196792%_ _%id196790%_)))
                   (_%$%E196706196714%_))))
           _%bindings196690%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self196797%_)
        (let ((_%bindings196799%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self196797%_
           _%bindings196799%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g197443_
        (let ((_g197444_ (##length _g197443_)))
          (cond ((##fx= _g197444_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g197443_))
                ((##fx= _g197444_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g197443_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g197443_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self196420%_)
        (let ((_%self196423%_ _%self196420%_))
          (letrec ((_%linux-variant?196434%_
                    (lambda (_%sys-type196534%_)
                      (let* ((_%$%g196535196543%_
                              (__string-split
                               (symbol->string _%sys-type196534%_)
                               '#\-))
                             (_%$%else196537196551%_ (lambda () '#f))
                             (_%$%K196539196556%_
                              (lambda (_%rest196554%_)
                                (not (null? _%rest196554%_)))))
                        (if (pair? _%$%g196535196543%_)
                            (let ((_%$%hd196540196559%_
                                   (##car _%$%g196535196543%_))
                                  (_%$%tl196541196561%_
                                   (##cdr _%$%g196535196543%_)))
                              (if (equal? _%$%hd196540196559%_ '"linux")
                                  (let ((_%rest196564%_ _%$%tl196541196561%_))
                                    (_%$%K196539196556%_ _%rest196564%_))
                                  (_%$%else196537196551%_)))
                            (_%$%else196537196551%_)))))
                   (_%bsd-variant196435%_
                    (lambda (_%sys-type196493%_)
                      (let ((_%sys-type-str196495%_
                             (symbol->string _%sys-type196493%_)))
                        (let _%lp196497%_ ((_%rest196499%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%$%rest196500196508%_ _%rest196499%_)
                                 (_%$%else196502196516%_ (lambda () '#f))
                                 (_%$%K196504196522%_
                                  (lambda (_%rest196519%_ _%sys196520%_)
                                    (if (string-prefix?
                                         _%sys196520%_
                                         _%sys-type-str196495%_)
                                        _%sys196520%_
                                        (_%lp196497%_ _%rest196519%_)))))
                            (if (pair? _%$%rest196500196508%_)
                                (let ((_%$%hd196505196525%_
                                       (##car _%$%rest196500196508%_))
                                      (_%$%tl196506196527%_
                                       (##cdr _%$%rest196500196508%_)))
                                  (let* ((_%sys196530%_ _%$%hd196505196525%_)
                                         (_%rest196532%_ _%$%tl196506196527%_))
                                    (_%$%K196504196522%_
                                     _%rest196532%_
                                     _%sys196530%_)))
                                (_%$%else196502196516%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self196423%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self196423%_)
            (let* ((_%$%g196436196448%_ (system-type))
                   (_%$%else196438196456%_ (lambda () '#!void))
                   (_%$%K196440196469%_
                    (lambda (_%sys-type196459%_
                             _%sys-vendor196460%_
                             _%sys-cpu196461%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu196461%_
                       '#f
                       '0
                       _%self196423%_)
                      (gx#core-bind-feature!__%
                       _%sys-type196459%_
                       '#f
                       '0
                       _%self196423%_)
                      (if (_%linux-variant?196434%_ _%sys-type196459%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self196423%_)
                          (let ((_%$e196464%_
                                 (_%bsd-variant196435%_ _%sys-type196459%_)))
                            (if _%$e196464%_
                                (let ()
                                  (gx#core-bind-feature!__%
                                   (##string->symbol '"bsd")
                                   '#f
                                   '0
                                   _%self196423%_)
                                  (gx#core-bind-feature!__%
                                   (string->symbol _%$e196464%_)
                                   '#f
                                   '0
                                   _%self196423%_))
                                '#!void))))))
              (if (pair? _%$%g196436196448%_)
                  (let ((_%$%hd196441196472%_ (##car _%$%g196436196448%_))
                        (_%$%tl196442196474%_ (##cdr _%$%g196436196448%_)))
                    (let ((_%sys-cpu196477%_ _%$%hd196441196472%_))
                      (if (pair? _%$%tl196442196474%_)
                          (let ((_%$%hd196443196479%_
                                 (##car _%$%tl196442196474%_))
                                (_%$%tl196444196481%_
                                 (##cdr _%$%tl196442196474%_)))
                            (let ((_%sys-vendor196484%_ _%$%hd196443196479%_))
                              (if (pair? _%$%tl196444196481%_)
                                  (let ((_%$%hd196445196486%_
                                         (##car _%$%tl196444196481%_))
                                        (_%$%tl196446196488%_
                                         (##cdr _%$%tl196444196481%_)))
                                    (let ((_%sys-type196491%_
                                           _%$%hd196445196486%_))
                                      (if (null? _%$%tl196446196488%_)
                                          (_%$%K196440196469%_
                                           _%sys-type196491%_
                                           _%sys-vendor196484%_
                                           _%sys-cpu196477%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self196423%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
