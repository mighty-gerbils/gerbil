(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1784279016)
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
      (lambda (_%self197228%_ _%bind?197229%_)
        (let ((_%self197232%_ _%self197228%_))
          (if (##fx< '2 (##structure-length _%self197232%_))
              (begin
                (##unchecked-structure-set! _%self197232%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self197232%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self197232%_
                     '2
                     (##structure-length _%self197232%_)))
          (if _%bind?197229%_
              (begin
                (let ((__method197296
                       (__method-ref
                        _%self197232%_
                        'bind-core-syntax-expanders!)))
                  (if __method197296
                      (__method197296 _%self197232%_)
                      (begin
                        (error '"Missing method"
                               _%self197232%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method197297
                       (__method-ref
                        _%self197232%_
                        'bind-core-macro-expanders!)))
                  (if __method197297
                      (__method197297 _%self197232%_)
                      (begin
                        (error '"Missing method"
                               _%self197232%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method197298
                       (__method-ref _%self197232%_ 'bind-core-features!)))
                  (if __method197298
                      (__method197298 _%self197232%_)
                      (begin
                        (error '"Missing method"
                               _%self197232%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self197246%_)
        (let ((_%bind?197248%_ '#t))
          (gx#root-context:::init!__% _%self197246%_ _%bind?197248%_))))
    (define gx#root-context:::init!
      (lambda _g197302_
        (let ((_g197303_ (##length _g197302_)))
          (cond ((##fx= _g197303_ 1)
                 (apply gx#root-context:::init!__0 _g197302_))
                ((##fx= _g197303_ 2)
                 (apply gx#root-context:::init!__% _g197302_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g197302_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass197252 __method-table197253)
        (let ((__bind-core-syntax-expanders!197254
               (__make-promise
                (lambda ()
                  (let ((__method197257
                         (symbolic-table-ref
                          __method-table197253
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method197257
                        __method197257
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!197255
               (__make-promise
                (lambda ()
                  (let ((__method197258
                         (symbolic-table-ref
                          __method-table197253
                          'bind-core-features!
                          '#f)))
                    (if __method197258
                        __method197258
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!197256
               (__make-promise
                (lambda ()
                  (let ((__method197259
                         (symbolic-table-ref
                          __method-table197253
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method197259
                        __method197259
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%$%opt-lambda197226197243%_
                 (lambda (_%self197228%_ _%bind?197229%_)
                   (let ((_%self197232%_ _%self197228%_))
                     (if (##fx< '2 (##structure-length _%self197232%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self197232%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self197232%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self197232%_
                                '2
                                (##structure-length _%self197232%_)))
                     (if _%bind?197229%_
                         (begin
                           ((force __bind-core-syntax-expanders!197254)
                            _%self197232%_)
                           ((force __bind-core-macro-expanders!197256)
                            _%self197232%_)
                           ((force __bind-core-features!197255)
                            _%self197232%_))
                         '#!void)))))
            (lambda _g197304_
              (let ((_g197305_ (##length _g197304_)))
                (cond ((##fx= _g197305_ 1)
                       (apply (lambda (_%self197246%_)
                                (let ((_%bind?197248%_ '#t))
                                  (_%$%opt-lambda197226197243%_
                                   _%self197246%_
                                   _%bind?197248%_)))
                              _g197304_))
                      ((##fx= _g197305_ 2)
                       (apply _%$%opt-lambda197226197243%_ _g197304_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g197304_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self197073%_ _%super197074%_)
        (let* ((_%self197077%_ _%self197073%_)
               (_%super197093%_
                (let ((_%$e197087%_ _%super197074%_))
                  (if _%$e197087%_
                      _%$e197087%_
                      (let ((_%$e197090%_ (gx#core-context-root__0)))
                        (if _%$e197090%_
                            _%$e197090%_
                            (let ((__obj197299
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj197299)
                              __obj197299)))))))
          (if (##fx< '5 (##structure-length _%self197077%_))
              (begin
                (##unchecked-structure-set! _%self197077%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self197077%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self197077%_
                 _%super197093%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self197077%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self197077%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self197077%_
                     '5
                     (##structure-length _%self197077%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self197098%_)
        (let ((_%super197100%_ '#f))
          (gx#top-context:::init!__% _%self197098%_ _%super197100%_))))
    (define gx#top-context:::init!
      (lambda _g197306_
        (let ((_g197307_ (##length _g197306_)))
          (cond ((##fx= _g197307_ 1)
                 (apply gx#top-context:::init!__0 _g197306_))
                ((##fx= _g197307_ 2)
                 (apply gx#top-context:::init!__% _g197306_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g197306_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self196794%_ _%bindings196795%_)
        (let ((_%self196798%_ _%self196794%_))
          (for-each
           (lambda (_%bind196808%_)
             (let* ((_%$%bind196809196816%_ _%bind196808%_)
                    (_%$%E196811196819%_
                     (lambda ()
                       (error '"No clause matching"
                              _%$%bind196809196816%_
                              '([id . rest]))
                       '#!void))
                    (_%$%K196812196928%_
                     (lambda (_%rest196822%_ _%id196823%_)
                       (gx#core-context-put!
                        _%self196798%_
                        _%id196823%_
                        (let ((__obj197300
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj197300
                           _%id196823%_
                           _%id196823%_
                           '#f
                           (let* ((_%$%rest196824196835%_ _%rest196822%_)
                                  (_%$%E196826196839%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%rest196824196835%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%$%K196827196904%_
                                   (lambda (_%compiler196842%_
                                            _%expander196843%_
                                            _%key196844%_)
                                     ((let* ((_%$%key196845196858%_
                                              _%key196844%_)
                                             (_%$%E196851196862%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%$%key196845196858%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%$%K196856196898%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%$%K196855196891%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%$%K196854196883%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%$%K196853196875%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%$%K196852196867%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%$%try-match196850196870%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key196845196858%_
                                                               'expr:)
                                                        (_%$%K196852196867%_)
                                                        (_%$%E196851196862%_))))
                                                 (_%$%try-match196849196878%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key196845196858%_
                                                               'special:)
                                                        (_%$%K196853196875%_)
                                                        (_%$%try-match196850196870%_))))
                                                 (_%$%try-match196848196886%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key196845196858%_
                                                               'define:)
                                                        (_%$%K196854196883%_)
                                                        (_%$%try-match196849196878%_))))
                                                 (_%$%try-match196847196894%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key196845196858%_
                                                               'module:)
                                                        (_%$%K196855196891%_)
                                                        (_%$%try-match196848196886%_)))))
                                            (if (##eq? _%$%key196845196858%_
                                                       'top:)
                                                (_%$%K196856196898%_)
                                                (_%$%try-match196847196894%_)))))
                                      _%expander196843%_
                                      _%id196823%_
                                      (let ((_%$e196901%_ _%compiler196842%_))
                                        (if _%$e196901%_
                                            _%$e196901%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%$%rest196824196835%_)
                                 (let ((_%$%hd196828196907%_
                                        (##car _%$%rest196824196835%_))
                                       (_%$%tl196829196909%_
                                        (##cdr _%$%rest196824196835%_)))
                                   (let ((_%key196912%_ _%$%hd196828196907%_))
                                     (if (pair? _%$%tl196829196909%_)
                                         (let ((_%$%hd196830196914%_
                                                (##car _%$%tl196829196909%_))
                                               (_%$%tl196831196916%_
                                                (##cdr _%$%tl196829196909%_)))
                                           (let ((_%expander196919%_
                                                  _%$%hd196830196914%_))
                                             (if (pair? _%$%tl196831196916%_)
                                                 (let ((_%$%hd196832196921%_
                                                        (##car _%$%tl196831196916%_))
                                                       (_%$%tl196833196923%_
                                                        (##cdr _%$%tl196831196916%_)))
                                                   (let ((_%compiler196926%_
                                                          _%$%hd196832196921%_))
                                                     (if (null? _%$%tl196833196923%_)
                                                         (_%$%K196827196904%_
                                                          _%compiler196926%_
                                                          _%expander196919%_
                                                          _%key196912%_)
                                                         (_%$%E196826196839%_))))
                                                 (_%$%E196826196839%_))))
                                         (_%$%E196826196839%_))))
                                 (_%$%E196826196839%_))))
                          __obj197300)))))
               (if (pair? _%$%bind196809196816%_)
                   (let ((_%$%hd196813196931%_ (##car _%$%bind196809196816%_))
                         (_%$%tl196814196933%_ (##cdr _%$%bind196809196816%_)))
                     (let* ((_%id196936%_ _%$%hd196813196931%_)
                            (_%rest196938%_ _%$%tl196814196933%_))
                       (_%$%K196812196928%_ _%rest196938%_ _%id196936%_)))
                   (_%$%E196811196819%_))))
           _%bindings196795%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self196943%_)
        (let ((_%bindings196945%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self196943%_
           _%bindings196945%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g197308_
        (let ((_g197309_ (##length _g197308_)))
          (cond ((##fx= _g197309_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g197308_))
                ((##fx= _g197309_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g197308_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g197308_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self196556%_ _%bindings196557%_)
        (let ((_%self196560%_ _%self196556%_))
          (for-each
           (lambda (_%bind196570%_)
             (let* ((_%$%bind196571196578%_ _%bind196570%_)
                    (_%$%E196573196581%_
                     (lambda ()
                       (error '"No clause matching"
                              _%$%bind196571196578%_
                              '([id . rest]))
                       '#!void))
                    (_%$%K196574196649%_
                     (lambda (_%rest196584%_ _%id196585%_)
                       (gx#core-context-put!
                        _%self196560%_
                        _%id196585%_
                        (let ((__obj197301
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj197301
                           _%id196585%_
                           _%id196585%_
                           '#f
                           (let* ((_%$%rest196586196601%_ _%rest196584%_)
                                  (_%$%E196590196605%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%rest196586196601%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%$%K196595196634%_
                                    (lambda (_%core-id196632%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id196632%_)))
                                   (_%$%K196592196619%_
                                    (lambda (_%proc196617%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc196617%_)))
                                   (_%$%K196591196610%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id196585%_))))
                               (let ((_%$%try-match196589196613%_
                                      (lambda ()
                                        (if (null? _%$%rest196586196601%_)
                                            (_%$%K196591196610%_)
                                            (_%$%E196590196605%_)))))
                                 (if (pair? _%$%rest196586196601%_)
                                     (let ((_%$%tl196597196639%_
                                            (##cdr _%$%rest196586196601%_))
                                           (_%$%hd196596196637%_
                                            (##car _%$%rest196586196601%_)))
                                       (if (##eq? _%$%hd196596196637%_ '=>)
                                           (if (pair? _%$%tl196597196639%_)
                                               (let ((_%$%tl196599196644%_
                                                      (##cdr _%$%tl196597196639%_))
                                                     (_%$%hd196598196642%_
                                                      (##car _%$%tl196597196639%_)))
                                                 (if (null? _%$%tl196599196644%_)
                                                     (let ((_%core-id196647%_
                                                            _%$%hd196598196642%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id196647%_))
                                                     (_%$%E196590196605%_)))
                                               (if (null? _%$%tl196597196639%_)
                                                   (let ((_%proc196627%_
                                                          _%$%hd196596196637%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc196627%_))
                                                   (_%$%E196590196605%_)))
                                           (if (null? _%$%tl196597196639%_)
                                               (let ((_%proc196627%_
                                                      _%$%hd196596196637%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc196627%_))
                                               (_%$%E196590196605%_))))
                                     (_%$%try-match196589196613%_))))))
                          __obj197301)))))
               (if (pair? _%$%bind196571196578%_)
                   (let ((_%$%hd196575196652%_ (##car _%$%bind196571196578%_))
                         (_%$%tl196576196654%_ (##cdr _%$%bind196571196578%_)))
                     (let* ((_%id196657%_ _%$%hd196575196652%_)
                            (_%rest196659%_ _%$%tl196576196654%_))
                       (_%$%K196574196649%_ _%rest196659%_ _%id196657%_)))
                   (_%$%E196573196581%_))))
           _%bindings196557%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self196664%_)
        (let ((_%bindings196666%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self196664%_
           _%bindings196666%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g197310_
        (let ((_g197311_ (##length _g197310_)))
          (cond ((##fx= _g197311_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g197310_))
                ((##fx= _g197311_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g197310_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g197310_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self196287%_)
        (let ((_%self196290%_ _%self196287%_))
          (letrec ((_%linux-variant?196301%_
                    (lambda (_%sys-type196401%_)
                      (let* ((_%$%g196402196410%_
                              (__string-split
                               (symbol->string _%sys-type196401%_)
                               '#\-))
                             (_%$%else196404196418%_ (lambda () '#f))
                             (_%$%K196406196423%_
                              (lambda (_%rest196421%_)
                                (not (null? _%rest196421%_)))))
                        (if (pair? _%$%g196402196410%_)
                            (let ((_%$%hd196407196426%_
                                   (##car _%$%g196402196410%_))
                                  (_%$%tl196408196428%_
                                   (##cdr _%$%g196402196410%_)))
                              (if (equal? _%$%hd196407196426%_ '"linux")
                                  (let ((_%rest196431%_ _%$%tl196408196428%_))
                                    (_%$%K196406196423%_ _%rest196431%_))
                                  (_%$%else196404196418%_)))
                            (_%$%else196404196418%_)))))
                   (_%bsd-variant196302%_
                    (lambda (_%sys-type196360%_)
                      (let ((_%sys-type-str196362%_
                             (symbol->string _%sys-type196360%_)))
                        (let _%lp196364%_ ((_%rest196366%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%$%rest196367196375%_ _%rest196366%_)
                                 (_%$%else196369196383%_ (lambda () '#f))
                                 (_%$%K196371196389%_
                                  (lambda (_%rest196386%_ _%sys196387%_)
                                    (if (string-prefix?
                                         _%sys196387%_
                                         _%sys-type-str196362%_)
                                        _%sys196387%_
                                        (_%lp196364%_ _%rest196386%_)))))
                            (if (pair? _%$%rest196367196375%_)
                                (let ((_%$%hd196372196392%_
                                       (##car _%$%rest196367196375%_))
                                      (_%$%tl196373196394%_
                                       (##cdr _%$%rest196367196375%_)))
                                  (let* ((_%sys196397%_ _%$%hd196372196392%_)
                                         (_%rest196399%_ _%$%tl196373196394%_))
                                    (_%$%K196371196389%_
                                     _%rest196399%_
                                     _%sys196397%_)))
                                (_%$%else196369196383%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self196290%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self196290%_)
            (let* ((_%$%g196303196315%_ (system-type))
                   (_%$%else196305196323%_ (lambda () '#!void))
                   (_%$%K196307196336%_
                    (lambda (_%sys-type196326%_
                             _%sys-vendor196327%_
                             _%sys-cpu196328%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu196328%_
                       '#f
                       '0
                       _%self196290%_)
                      (gx#core-bind-feature!__%
                       _%sys-type196326%_
                       '#f
                       '0
                       _%self196290%_)
                      (if (_%linux-variant?196301%_ _%sys-type196326%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self196290%_)
                          (let ((_%$e196331%_
                                 (_%bsd-variant196302%_ _%sys-type196326%_)))
                            (if _%$e196331%_
                                (let ()
                                  (gx#core-bind-feature!__%
                                   (##string->symbol '"bsd")
                                   '#f
                                   '0
                                   _%self196290%_)
                                  (gx#core-bind-feature!__%
                                   (string->symbol _%$e196331%_)
                                   '#f
                                   '0
                                   _%self196290%_))
                                '#!void))))))
              (if (pair? _%$%g196303196315%_)
                  (let ((_%$%hd196308196339%_ (##car _%$%g196303196315%_))
                        (_%$%tl196309196341%_ (##cdr _%$%g196303196315%_)))
                    (let ((_%sys-cpu196344%_ _%$%hd196308196339%_))
                      (if (pair? _%$%tl196309196341%_)
                          (let ((_%$%hd196310196346%_
                                 (##car _%$%tl196309196341%_))
                                (_%$%tl196311196348%_
                                 (##cdr _%$%tl196309196341%_)))
                            (let ((_%sys-vendor196351%_ _%$%hd196310196346%_))
                              (if (pair? _%$%tl196311196348%_)
                                  (let ((_%$%hd196312196353%_
                                         (##car _%$%tl196311196348%_))
                                        (_%$%tl196313196355%_
                                         (##cdr _%$%tl196311196348%_)))
                                    (let ((_%sys-type196358%_
                                           _%$%hd196312196353%_))
                                      (if (null? _%$%tl196313196355%_)
                                          (_%$%K196307196336%_
                                           _%sys-type196358%_
                                           _%sys-vendor196351%_
                                           _%sys-cpu196344%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self196290%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
