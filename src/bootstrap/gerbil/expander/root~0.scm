(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1734357962)
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
      (lambda (_%self131495132575%_ _%bind?132577%_)
        (let* ((_%self132579%_ _%self131495132575%_)
               (_%self132581%_ _%self132579%_))
          (if (##fx< '2 (##structure-length _%self132581%_))
              (begin
                (##unchecked-structure-set! _%self132581%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self132581%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self132581%_
                     '2
                     (##vector-length _%self132581%_)))
          (if _%bind?132577%_
              (begin
                (let ((__method132644
                       (__method-ref
                        _%self132581%_
                        'bind-core-syntax-expanders!)))
                  (if __method132644
                      (__method132644 _%self132581%_)
                      (begin
                        (error '"Missing method"
                               _%self132581%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method132645
                       (__method-ref
                        _%self132581%_
                        'bind-core-macro-expanders!)))
                  (if __method132645
                      (__method132645 _%self132581%_)
                      (begin
                        (error '"Missing method"
                               _%self132581%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method132646
                       (__method-ref _%self132581%_ 'bind-core-features!)))
                  (if __method132646
                      (__method132646 _%self132581%_)
                      (begin
                        (error '"Missing method"
                               _%self132581%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self131495132594%_)
        (let ((_%bind?132596%_ '#t))
          (gx#root-context:::init!__% _%self131495132594%_ _%bind?132596%_))))
    (define gx#root-context:::init!
      (lambda _g132649_
        (let ((_g132648_ (##length _g132649_)))
          (cond ((##fx= _g132648_ 1)
                 (apply gx#root-context:::init!__0 _g132649_))
                ((##fx= _g132648_ 2)
                 (apply gx#root-context:::init!__% _g132649_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g132649_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass132600 __method-table132601)
        (let ((__bind-core-syntax-expanders!132602
               (__make-promise
                (lambda ()
                  (let ((__method132605
                         (symbolic-table-ref
                          __method-table132601
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method132605
                        __method132605
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!132603
               (__make-promise
                (lambda ()
                  (let ((__method132606
                         (symbolic-table-ref
                          __method-table132601
                          'bind-core-features!
                          '#f)))
                    (if __method132606
                        __method132606
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-macro-expanders!132604
               (__make-promise
                (lambda ()
                  (let ((__method132607
                         (symbolic-table-ref
                          __method-table132601
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method132607
                        __method132607
                        (error '"Missing method"
                               'bind-core-macro-expanders!)))))))
          (let ((_%opt-lambda132573132591%_
                 (lambda (_%self131495132575%_ _%bind?132577%_)
                   (let* ((_%self132579%_ _%self131495132575%_)
                          (_%self132581%_ _%self132579%_))
                     (if (##fx< '2 (##structure-length _%self132581%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self132581%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self132581%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self132581%_
                                '2
                                (##vector-length _%self132581%_)))
                     (if _%bind?132577%_
                         (begin
                           ((force __bind-core-syntax-expanders!132602)
                            _%self132581%_)
                           ((force __bind-core-macro-expanders!132604)
                            _%self132581%_)
                           ((force __bind-core-features!132603)
                            _%self132581%_))
                         '#!void)))))
            (lambda _g132651_
              (let ((_g132650_ (##length _g132651_)))
                (cond ((##fx= _g132650_ 1)
                       (apply (lambda (_%self131495132594%_)
                                (let ((_%bind?132596%_ '#t))
                                  (_%opt-lambda132573132591%_
                                   _%self131495132594%_
                                   _%bind?132596%_)))
                              _g132651_))
                      ((##fx= _g132650_ 2)
                       (apply _%opt-lambda132573132591%_ _g132651_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g132651_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self131496132418%_ _%super132420%_)
        (let* ((_%self132422%_ _%self131496132418%_)
               (_%self132424%_ _%self132422%_)
               (_%super132440%_
                (let ((_%$e132434%_ _%super132420%_))
                  (if _%$e132434%_
                      _%$e132434%_
                      (let ((_%$e132437%_ (gx#core-context-root__0)))
                        (if _%$e132437%_
                            _%$e132437%_
                            (let ((__obj132647
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj132647)
                              __obj132647)))))))
          (if (##fx< '5 (##structure-length _%self132424%_))
              (begin
                (##unchecked-structure-set! _%self132424%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self132424%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self132424%_
                 _%super132440%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self132424%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self132424%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self132424%_
                     '5
                     (##vector-length _%self132424%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self131496132445%_)
        (let ((_%super132447%_ '#f))
          (gx#top-context:::init!__% _%self131496132445%_ _%super132447%_))))
    (define gx#top-context:::init!
      (lambda _g132653_
        (let ((_g132652_ (##length _g132653_)))
          (cond ((##fx= _g132652_ 1)
                 (apply gx#top-context:::init!__0 _g132653_))
                ((##fx= _g132652_ 2)
                 (apply gx#top-context:::init!__% _g132653_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g132653_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self131497132136%_ _%bindings132138%_)
        (let* ((_%self132140%_ _%self131497132136%_)
               (_%self132142%_ _%self132140%_))
          (for-each
           (lambda (_%bind132152%_)
             (let* ((_%bind132153132160%_ _%bind132152%_)
                    (_%E132155132164%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind132153132160%_
                              '([id . rest]))
                       '#!void))
                    (_%K132156132273%_
                     (lambda (_%rest132167%_ _%id132168%_)
                       (gx#core-context-put!
                        _%self132142%_
                        _%id132168%_
                        (##structure
                         gx#syntax-binding::t
                         _%id132168%_
                         _%id132168%_
                         '#f
                         (let* ((_%rest132169132180%_ _%rest132167%_)
                                (_%E132171132184%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest132169132180%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K132172132249%_
                                 (lambda (_%compiler132187%_
                                          _%expander132188%_
                                          _%key132189%_)
                                   ((let* ((_%key132190132203%_ _%key132189%_)
                                           (_%E132196132207%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key132190132203%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K132201132243%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K132200132236%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K132199132228%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K132198132220%_
                                             (lambda () gx#make-special-form))
                                            (_%K132197132212%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match132195132215%_
                                                (lambda ()
                                                  (if (##eq? _%key132190132203%_
                                                             'expr:)
                                                      (_%K132197132212%_)
                                                      (_%E132196132207%_))))
                                               (_%try-match132194132223%_
                                                (lambda ()
                                                  (if (##eq? _%key132190132203%_
                                                             'special:)
                                                      (_%K132198132220%_)
                                                      (_%try-match132195132215%_))))
                                               (_%try-match132193132231%_
                                                (lambda ()
                                                  (if (##eq? _%key132190132203%_
                                                             'define:)
                                                      (_%K132199132228%_)
                                                      (_%try-match132194132223%_))))
                                               (_%try-match132192132239%_
                                                (lambda ()
                                                  (if (##eq? _%key132190132203%_
                                                             'module:)
                                                      (_%K132200132236%_)
                                                      (_%try-match132193132231%_)))))
                                          (if (##eq? _%key132190132203%_ 'top:)
                                              (_%K132201132243%_)
                                              (_%try-match132192132239%_)))))
                                    _%expander132188%_
                                    _%id132168%_
                                    (let ((_%$e132246%_ _%compiler132187%_))
                                      (if _%$e132246%_
                                          _%$e132246%_
                                          gx#core-compile-top-error))))))
                           (if (pair? _%rest132169132180%_)
                               (let ((_%hd132173132252%_
                                      (##car _%rest132169132180%_))
                                     (_%tl132174132254%_
                                      (##cdr _%rest132169132180%_)))
                                 (let ((_%key132257%_ _%hd132173132252%_))
                                   (if (pair? _%tl132174132254%_)
                                       (let ((_%hd132175132259%_
                                              (##car _%tl132174132254%_))
                                             (_%tl132176132261%_
                                              (##cdr _%tl132174132254%_)))
                                         (let ((_%expander132264%_
                                                _%hd132175132259%_))
                                           (if (pair? _%tl132176132261%_)
                                               (let ((_%hd132177132266%_
                                                      (##car _%tl132176132261%_))
                                                     (_%tl132178132268%_
                                                      (##cdr _%tl132176132261%_)))
                                                 (let ((_%compiler132271%_
                                                        _%hd132177132266%_))
                                                   (if (null? _%tl132178132268%_)
                                                       (_%K132172132249%_
                                                        _%compiler132271%_
                                                        _%expander132264%_
                                                        _%key132257%_)
                                                       (_%E132171132184%_))))
                                               (_%E132171132184%_))))
                                       (_%E132171132184%_))))
                               (_%E132171132184%_))))))))
               (if (pair? _%bind132153132160%_)
                   (let ((_%hd132157132276%_ (##car _%bind132153132160%_))
                         (_%tl132158132278%_ (##cdr _%bind132153132160%_)))
                     (let* ((_%id132281%_ _%hd132157132276%_)
                            (_%rest132283%_ _%tl132158132278%_))
                       (_%K132156132273%_ _%rest132283%_ _%id132281%_)))
                   (_%E132155132164%_))))
           _%bindings132138%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self131497132288%_)
        (let ((_%bindings132290%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self131497132288%_
           _%bindings132290%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g132655_
        (let ((_g132654_ (##length _g132655_)))
          (cond ((##fx= _g132654_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g132655_))
                ((##fx= _g132654_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g132655_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g132655_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self131498131895%_ _%bindings131897%_)
        (let* ((_%self131899%_ _%self131498131895%_)
               (_%self131901%_ _%self131899%_))
          (for-each
           (lambda (_%bind131911%_)
             (let* ((_%bind131912131919%_ _%bind131911%_)
                    (_%E131914131923%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind131912131919%_
                              '([id . rest]))
                       '#!void))
                    (_%K131915131991%_
                     (lambda (_%rest131926%_ _%id131927%_)
                       (gx#core-context-put!
                        _%self131901%_
                        _%id131927%_
                        (##structure
                         gx#syntax-binding::t
                         _%id131927%_
                         _%id131927%_
                         '#f
                         (let* ((_%rest131928131943%_ _%rest131926%_)
                                (_%E131932131947%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest131928131943%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K131937131976%_
                                  (lambda (_%core-id131974%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id131974%_)))
                                 (_%K131934131961%_
                                  (lambda (_%proc131959%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc131959%_)))
                                 (_%K131933131952%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id131927%_))))
                             (let ((_%try-match131931131955%_
                                    (lambda ()
                                      (if (null? _%rest131928131943%_)
                                          (_%K131933131952%_)
                                          (_%E131932131947%_)))))
                               (if (pair? _%rest131928131943%_)
                                   (let ((_%tl131939131981%_
                                          (##cdr _%rest131928131943%_))
                                         (_%hd131938131979%_
                                          (##car _%rest131928131943%_)))
                                     (if (##eq? _%hd131938131979%_ '=>)
                                         (if (pair? _%tl131939131981%_)
                                             (let ((_%tl131941131986%_
                                                    (##cdr _%tl131939131981%_))
                                                   (_%hd131940131984%_
                                                    (##car _%tl131939131981%_)))
                                               (if (null? _%tl131941131986%_)
                                                   (let ((_%core-id131989%_
                                                          _%hd131940131984%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id131989%_))
                                                   (_%E131932131947%_)))
                                             (if (null? _%tl131939131981%_)
                                                 (let ((_%proc131969%_
                                                        _%hd131938131979%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc131969%_))
                                                 (_%E131932131947%_)))
                                         (if (null? _%tl131939131981%_)
                                             (let ((_%proc131969%_
                                                    _%hd131938131979%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc131969%_))
                                             (_%E131932131947%_))))
                                   (_%try-match131931131955%_))))))))))
               (if (pair? _%bind131912131919%_)
                   (let ((_%hd131916131994%_ (##car _%bind131912131919%_))
                         (_%tl131917131996%_ (##cdr _%bind131912131919%_)))
                     (let* ((_%id131999%_ _%hd131916131994%_)
                            (_%rest132001%_ _%tl131917131996%_))
                       (_%K131915131991%_ _%rest132001%_ _%id131999%_)))
                   (_%E131914131923%_))))
           _%bindings131897%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self131498132006%_)
        (let ((_%bindings132008%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self131498132006%_
           _%bindings132008%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g132657_
        (let ((_g132656_ (##length _g132657_)))
          (cond ((##fx= _g132656_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g132657_))
                ((##fx= _g132656_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g132657_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g132657_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self131499131625%_)
        (let* ((_%self131628%_ _%self131499131625%_)
               (_%self131630%_ _%self131628%_))
          (letrec ((_%linux-variant?131640%_
                    (lambda (_%sys-type131740%_)
                      (let* ((_%g131741131749%_
                              (__string-split
                               (symbol->string _%sys-type131740%_)
                               '#\-))
                             (_%else131743131757%_ (lambda () '#f))
                             (_%K131745131762%_
                              (lambda (_%rest131760%_)
                                (not (null? _%rest131760%_)))))
                        (if (pair? _%g131741131749%_)
                            (let ((_%hd131746131765%_
                                   (##car _%g131741131749%_))
                                  (_%tl131747131767%_
                                   (##cdr _%g131741131749%_)))
                              (if (equal? _%hd131746131765%_ '"linux")
                                  (let ((_%rest131770%_ _%tl131747131767%_))
                                    (_%K131745131762%_ _%rest131770%_))
                                  (_%else131743131757%_)))
                            (_%else131743131757%_)))))
                   (_%bsd-variant131641%_
                    (lambda (_%sys-type131699%_)
                      (let ((_%sys-type-str131701%_
                             (symbol->string _%sys-type131699%_)))
                        (let _%lp131703%_ ((_%rest131705%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest131706131714%_ _%rest131705%_)
                                 (_%else131708131722%_ (lambda () '#f))
                                 (_%K131710131728%_
                                  (lambda (_%rest131725%_ _%sys131726%_)
                                    (if (string-prefix?
                                         _%sys131726%_
                                         _%sys-type-str131701%_)
                                        _%sys131726%_
                                        (_%lp131703%_ _%rest131725%_)))))
                            (if (pair? _%rest131706131714%_)
                                (let ((_%hd131711131731%_
                                       (##car _%rest131706131714%_))
                                      (_%tl131712131733%_
                                       (##cdr _%rest131706131714%_)))
                                  (let* ((_%sys131736%_ _%hd131711131731%_)
                                         (_%rest131738%_ _%tl131712131733%_))
                                    (_%K131710131728%_
                                     _%rest131738%_
                                     _%sys131736%_)))
                                (_%else131708131722%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self131630%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self131630%_)
            (let* ((_%g131642131654%_ (system-type))
                   (_%else131644131662%_ (lambda () '#!void))
                   (_%K131646131675%_
                    (lambda (_%sys-type131665%_
                             _%sys-vendor131666%_
                             _%sys-cpu131667%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu131667%_
                       '#f
                       '0
                       _%self131630%_)
                      (gx#core-bind-feature!__%
                       _%sys-type131665%_
                       '#f
                       '0
                       _%self131630%_)
                      (if (_%linux-variant?131640%_ _%sys-type131665%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self131630%_)
                          (let ((_%$e131670%_
                                 (_%bsd-variant131641%_ _%sys-type131665%_)))
                            (if _%$e131670%_
                                ((lambda (_%sys-prefix131673%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self131630%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix131673%_)
                                    '#f
                                    '0
                                    _%self131630%_))
                                 _%$e131670%_)
                                '#!void))))))
              (if (pair? _%g131642131654%_)
                  (let ((_%hd131647131678%_ (##car _%g131642131654%_))
                        (_%tl131648131680%_ (##cdr _%g131642131654%_)))
                    (let ((_%sys-cpu131683%_ _%hd131647131678%_))
                      (if (pair? _%tl131648131680%_)
                          (let ((_%hd131649131685%_ (##car _%tl131648131680%_))
                                (_%tl131650131687%_
                                 (##cdr _%tl131648131680%_)))
                            (let ((_%sys-vendor131690%_ _%hd131649131685%_))
                              (if (pair? _%tl131650131687%_)
                                  (let ((_%hd131651131692%_
                                         (##car _%tl131650131687%_))
                                        (_%tl131652131694%_
                                         (##cdr _%tl131650131687%_)))
                                    (let ((_%sys-type131697%_
                                           _%hd131651131692%_))
                                      (if (null? _%tl131652131694%_)
                                          (_%K131646131675%_
                                           _%sys-type131697%_
                                           _%sys-vendor131690%_
                                           _%sys-cpu131683%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self131630%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
