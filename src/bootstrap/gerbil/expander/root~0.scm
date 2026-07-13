(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1783939349)
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
      (lambda (_%self194704%_ _%bind?194705%_)
        (let ((_%self194708%_ _%self194704%_))
          (if (##fx< '2 (##structure-length _%self194708%_))
              (begin
                (##unchecked-structure-set! _%self194708%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self194708%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self194708%_
                     '2
                     (##structure-length _%self194708%_)))
          (if _%bind?194705%_
              (begin
                (let ((__method194772
                       (__method-ref
                        _%self194708%_
                        'bind-core-syntax-expanders!)))
                  (if __method194772
                      (__method194772 _%self194708%_)
                      (begin
                        (error '"Missing method"
                               _%self194708%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method194773
                       (__method-ref
                        _%self194708%_
                        'bind-core-macro-expanders!)))
                  (if __method194773
                      (__method194773 _%self194708%_)
                      (begin
                        (error '"Missing method"
                               _%self194708%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method194774
                       (__method-ref _%self194708%_ 'bind-core-features!)))
                  (if __method194774
                      (__method194774 _%self194708%_)
                      (begin
                        (error '"Missing method"
                               _%self194708%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self194722%_)
        (let ((_%bind?194724%_ '#t))
          (gx#root-context:::init!__% _%self194722%_ _%bind?194724%_))))
    (define gx#root-context:::init!
      (lambda _g194778_
        (let ((_g194779_ (##length _g194778_)))
          (cond ((##fx= _g194779_ 1)
                 (apply gx#root-context:::init!__0 _g194778_))
                ((##fx= _g194779_ 2)
                 (apply gx#root-context:::init!__% _g194778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g194778_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass194728 __method-table194729)
        (let ((__bind-core-macro-expanders!194730
               (__make-promise
                (lambda ()
                  (let ((__method194733
                         (symbolic-table-ref
                          __method-table194729
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method194733
                        __method194733
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-syntax-expanders!194731
               (__make-promise
                (lambda ()
                  (let ((__method194734
                         (symbolic-table-ref
                          __method-table194729
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method194734
                        __method194734
                        (error '"Missing method"
                               'bind-core-syntax-expanders!))))))
              (__bind-core-features!194732
               (__make-promise
                (lambda ()
                  (let ((__method194735
                         (symbolic-table-ref
                          __method-table194729
                          'bind-core-features!
                          '#f)))
                    (if __method194735
                        __method194735
                        (error '"Missing method" 'bind-core-features!)))))))
          (let ((_%$%opt-lambda194702194719%_
                 (lambda (_%self194704%_ _%bind?194705%_)
                   (let ((_%self194708%_ _%self194704%_))
                     (if (##fx< '2 (##structure-length _%self194708%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self194708%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self194708%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self194708%_
                                '2
                                (##structure-length _%self194708%_)))
                     (if _%bind?194705%_
                         (begin
                           ((force __bind-core-syntax-expanders!194731)
                            _%self194708%_)
                           ((force __bind-core-macro-expanders!194730)
                            _%self194708%_)
                           ((force __bind-core-features!194732)
                            _%self194708%_))
                         '#!void)))))
            (lambda _g194780_
              (let ((_g194781_ (##length _g194780_)))
                (cond ((##fx= _g194781_ 1)
                       (apply (lambda (_%self194722%_)
                                (let ((_%bind?194724%_ '#t))
                                  (_%$%opt-lambda194702194719%_
                                   _%self194722%_
                                   _%bind?194724%_)))
                              _g194780_))
                      ((##fx= _g194781_ 2)
                       (apply _%$%opt-lambda194702194719%_ _g194780_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g194780_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self194549%_ _%super194550%_)
        (let* ((_%self194553%_ _%self194549%_)
               (_%super194569%_
                (let ((_%$e194563%_ _%super194550%_))
                  (if _%$e194563%_
                      _%$e194563%_
                      (let ((_%$e194566%_ (gx#core-context-root__0)))
                        (if _%$e194566%_
                            _%$e194566%_
                            (let ((__obj194775
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj194775)
                              __obj194775)))))))
          (if (##fx< '5 (##structure-length _%self194553%_))
              (begin
                (##unchecked-structure-set! _%self194553%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self194553%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self194553%_
                 _%super194569%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self194553%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self194553%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self194553%_
                     '5
                     (##structure-length _%self194553%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self194574%_)
        (let ((_%super194576%_ '#f))
          (gx#top-context:::init!__% _%self194574%_ _%super194576%_))))
    (define gx#top-context:::init!
      (lambda _g194782_
        (let ((_g194783_ (##length _g194782_)))
          (cond ((##fx= _g194783_ 1)
                 (apply gx#top-context:::init!__0 _g194782_))
                ((##fx= _g194783_ 2)
                 (apply gx#top-context:::init!__% _g194782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g194782_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self194270%_ _%bindings194271%_)
        (let ((_%self194274%_ _%self194270%_))
          (for-each
           (lambda (_%bind194284%_)
             (let* ((_%$%bind194285194292%_ _%bind194284%_)
                    (_%$%E194287194295%_
                     (lambda ()
                       (error '"No clause matching"
                              _%$%bind194285194292%_
                              '([id . rest]))
                       '#!void))
                    (_%$%K194288194404%_
                     (lambda (_%rest194298%_ _%id194299%_)
                       (gx#core-context-put!
                        _%self194274%_
                        _%id194299%_
                        (let ((__obj194776
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj194776
                           _%id194299%_
                           _%id194299%_
                           '#f
                           (let* ((_%$%rest194300194311%_ _%rest194298%_)
                                  (_%$%E194302194315%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%rest194300194311%_
                                            '([key expander compiler]))
                                     '#!void))
                                  (_%$%K194303194380%_
                                   (lambda (_%compiler194318%_
                                            _%expander194319%_
                                            _%key194320%_)
                                     ((let* ((_%$%key194321194334%_
                                              _%key194320%_)
                                             (_%$%E194327194338%_
                                              (lambda ()
                                                (error '"No clause matching"
                                                       _%$%key194321194334%_
                                                       '(top:)
                                                       '(module:)
                                                       '(define:)
                                                       '(special:)
                                                       '(expr:))
                                                '#!void)))
                                        (let ((_%$%K194332194374%_
                                               (lambda ()
                                                 gx#make-top-special-form))
                                              (_%$%K194331194367%_
                                               (lambda ()
                                                 gx#make-module-special-form))
                                              (_%$%K194330194359%_
                                               (lambda ()
                                                 gx#make-definition-form))
                                              (_%$%K194329194351%_
                                               (lambda ()
                                                 gx#make-special-form))
                                              (_%$%K194328194343%_
                                               (lambda ()
                                                 gx#make-expression-form)))
                                          (let* ((_%$%try-match194326194346%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key194321194334%_
                                                               'expr:)
                                                        (_%$%K194328194343%_)
                                                        (_%$%E194327194338%_))))
                                                 (_%$%try-match194325194354%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key194321194334%_
                                                               'special:)
                                                        (_%$%K194329194351%_)
                                                        (_%$%try-match194326194346%_))))
                                                 (_%$%try-match194324194362%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key194321194334%_
                                                               'define:)
                                                        (_%$%K194330194359%_)
                                                        (_%$%try-match194325194354%_))))
                                                 (_%$%try-match194323194370%_
                                                  (lambda ()
                                                    (if (##eq? _%$%key194321194334%_
                                                               'module:)
                                                        (_%$%K194331194367%_)
                                                        (_%$%try-match194324194362%_)))))
                                            (if (##eq? _%$%key194321194334%_
                                                       'top:)
                                                (_%$%K194332194374%_)
                                                (_%$%try-match194323194370%_)))))
                                      _%expander194319%_
                                      _%id194299%_
                                      (let ((_%$e194377%_ _%compiler194318%_))
                                        (if _%$e194377%_
                                            _%$e194377%_
                                            gx#core-compile-top-error))))))
                             (if (pair? _%$%rest194300194311%_)
                                 (let ((_%$%hd194304194383%_
                                        (##car _%$%rest194300194311%_))
                                       (_%$%tl194305194385%_
                                        (##cdr _%$%rest194300194311%_)))
                                   (let ((_%key194388%_ _%$%hd194304194383%_))
                                     (if (pair? _%$%tl194305194385%_)
                                         (let ((_%$%hd194306194390%_
                                                (##car _%$%tl194305194385%_))
                                               (_%$%tl194307194392%_
                                                (##cdr _%$%tl194305194385%_)))
                                           (let ((_%expander194395%_
                                                  _%$%hd194306194390%_))
                                             (if (pair? _%$%tl194307194392%_)
                                                 (let ((_%$%hd194308194397%_
                                                        (##car _%$%tl194307194392%_))
                                                       (_%$%tl194309194399%_
                                                        (##cdr _%$%tl194307194392%_)))
                                                   (let ((_%compiler194402%_
                                                          _%$%hd194308194397%_))
                                                     (if (null? _%$%tl194309194399%_)
                                                         (_%$%K194303194380%_
                                                          _%compiler194402%_
                                                          _%expander194395%_
                                                          _%key194388%_)
                                                         (_%$%E194302194315%_))))
                                                 (_%$%E194302194315%_))))
                                         (_%$%E194302194315%_))))
                                 (_%$%E194302194315%_))))
                          __obj194776)))))
               (if (pair? _%$%bind194285194292%_)
                   (let ((_%$%hd194289194407%_ (##car _%$%bind194285194292%_))
                         (_%$%tl194290194409%_ (##cdr _%$%bind194285194292%_)))
                     (let* ((_%id194412%_ _%$%hd194289194407%_)
                            (_%rest194414%_ _%$%tl194290194409%_))
                       (_%$%K194288194404%_ _%rest194414%_ _%id194412%_)))
                   (_%$%E194287194295%_))))
           _%bindings194271%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self194419%_)
        (let ((_%bindings194421%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self194419%_
           _%bindings194421%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g194784_
        (let ((_g194785_ (##length _g194784_)))
          (cond ((##fx= _g194785_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g194784_))
                ((##fx= _g194785_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g194784_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g194784_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self194032%_ _%bindings194033%_)
        (let ((_%self194036%_ _%self194032%_))
          (for-each
           (lambda (_%bind194046%_)
             (let* ((_%$%bind194047194054%_ _%bind194046%_)
                    (_%$%E194049194057%_
                     (lambda ()
                       (error '"No clause matching"
                              _%$%bind194047194054%_
                              '([id . rest]))
                       '#!void))
                    (_%$%K194050194125%_
                     (lambda (_%rest194060%_ _%id194061%_)
                       (gx#core-context-put!
                        _%self194036%_
                        _%id194061%_
                        (let ((__obj194777
                               (##structure
                                gx#syntax-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#syntax-binding:::init!
                           __obj194777
                           _%id194061%_
                           _%id194061%_
                           '#f
                           (let* ((_%$%rest194062194077%_ _%rest194060%_)
                                  (_%$%E194066194081%_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _%$%rest194062194077%_
                                            '(['=> core-id])
                                            '([proc])
                                            '([]))
                                     '#!void)))
                             (let ((_%$%K194071194110%_
                                    (lambda (_%core-id194108%_)
                                      (##structure
                                       gx#rename-macro-expander::t
                                       _%core-id194108%_)))
                                   (_%$%K194068194095%_
                                    (lambda (_%proc194093%_)
                                      (##structure
                                       gx#macro-expander::t
                                       _%proc194093%_)))
                                   (_%$%K194067194086%_
                                    (lambda ()
                                      (##structure
                                       gx#reserved-expander::t
                                       _%id194061%_))))
                               (let ((_%$%try-match194065194089%_
                                      (lambda ()
                                        (if (null? _%$%rest194062194077%_)
                                            (_%$%K194067194086%_)
                                            (_%$%E194066194081%_)))))
                                 (if (pair? _%$%rest194062194077%_)
                                     (let ((_%$%tl194073194115%_
                                            (##cdr _%$%rest194062194077%_))
                                           (_%$%hd194072194113%_
                                            (##car _%$%rest194062194077%_)))
                                       (if (##eq? _%$%hd194072194113%_ '=>)
                                           (if (pair? _%$%tl194073194115%_)
                                               (let ((_%$%tl194075194120%_
                                                      (##cdr _%$%tl194073194115%_))
                                                     (_%$%hd194074194118%_
                                                      (##car _%$%tl194073194115%_)))
                                                 (if (null? _%$%tl194075194120%_)
                                                     (let ((_%core-id194123%_
                                                            _%$%hd194074194118%_))
                                                       (##structure
                                                        gx#rename-macro-expander::t
                                                        _%core-id194123%_))
                                                     (_%$%E194066194081%_)))
                                               (if (null? _%$%tl194073194115%_)
                                                   (let ((_%proc194103%_
                                                          _%$%hd194072194113%_))
                                                     (##structure
                                                      gx#macro-expander::t
                                                      _%proc194103%_))
                                                   (_%$%E194066194081%_)))
                                           (if (null? _%$%tl194073194115%_)
                                               (let ((_%proc194103%_
                                                      _%$%hd194072194113%_))
                                                 (##structure
                                                  gx#macro-expander::t
                                                  _%proc194103%_))
                                               (_%$%E194066194081%_))))
                                     (_%$%try-match194065194089%_))))))
                          __obj194777)))))
               (if (pair? _%$%bind194047194054%_)
                   (let ((_%$%hd194051194128%_ (##car _%$%bind194047194054%_))
                         (_%$%tl194052194130%_ (##cdr _%$%bind194047194054%_)))
                     (let* ((_%id194133%_ _%$%hd194051194128%_)
                            (_%rest194135%_ _%$%tl194052194130%_))
                       (_%$%K194050194125%_ _%rest194135%_ _%id194133%_)))
                   (_%$%E194049194057%_))))
           _%bindings194033%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self194140%_)
        (let ((_%bindings194142%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self194140%_
           _%bindings194142%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g194786_
        (let ((_g194787_ (##length _g194786_)))
          (cond ((##fx= _g194787_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g194786_))
                ((##fx= _g194787_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g194786_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g194786_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self193763%_)
        (let ((_%self193766%_ _%self193763%_))
          (letrec ((_%linux-variant?193777%_
                    (lambda (_%sys-type193877%_)
                      (let* ((_%$%g193878193886%_
                              (__string-split
                               (symbol->string _%sys-type193877%_)
                               '#\-))
                             (_%$%else193880193894%_ (lambda () '#f))
                             (_%$%K193882193899%_
                              (lambda (_%rest193897%_)
                                (not (null? _%rest193897%_)))))
                        (if (pair? _%$%g193878193886%_)
                            (let ((_%$%hd193883193902%_
                                   (##car _%$%g193878193886%_))
                                  (_%$%tl193884193904%_
                                   (##cdr _%$%g193878193886%_)))
                              (if (equal? _%$%hd193883193902%_ '"linux")
                                  (let ((_%rest193907%_ _%$%tl193884193904%_))
                                    (_%$%K193882193899%_ _%rest193907%_))
                                  (_%$%else193880193894%_)))
                            (_%$%else193880193894%_)))))
                   (_%bsd-variant193778%_
                    (lambda (_%sys-type193836%_)
                      (let ((_%sys-type-str193838%_
                             (symbol->string _%sys-type193836%_)))
                        (let _%lp193840%_ ((_%rest193842%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%$%rest193843193851%_ _%rest193842%_)
                                 (_%$%else193845193859%_ (lambda () '#f))
                                 (_%$%K193847193865%_
                                  (lambda (_%rest193862%_ _%sys193863%_)
                                    (if (string-prefix?
                                         _%sys193863%_
                                         _%sys-type-str193838%_)
                                        _%sys193863%_
                                        (_%lp193840%_ _%rest193862%_)))))
                            (if (pair? _%$%rest193843193851%_)
                                (let ((_%$%hd193848193868%_
                                       (##car _%$%rest193843193851%_))
                                      (_%$%tl193849193870%_
                                       (##cdr _%$%rest193843193851%_)))
                                  (let* ((_%sys193873%_ _%$%hd193848193868%_)
                                         (_%rest193875%_ _%$%tl193849193870%_))
                                    (_%$%K193847193865%_
                                     _%rest193875%_
                                     _%sys193873%_)))
                                (_%$%else193845193859%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self193766%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self193766%_)
            (let* ((_%$%g193779193791%_ (system-type))
                   (_%$%else193781193799%_ (lambda () '#!void))
                   (_%$%K193783193812%_
                    (lambda (_%sys-type193802%_
                             _%sys-vendor193803%_
                             _%sys-cpu193804%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu193804%_
                       '#f
                       '0
                       _%self193766%_)
                      (gx#core-bind-feature!__%
                       _%sys-type193802%_
                       '#f
                       '0
                       _%self193766%_)
                      (if (_%linux-variant?193777%_ _%sys-type193802%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self193766%_)
                          (let ((_%$e193807%_
                                 (_%bsd-variant193778%_ _%sys-type193802%_)))
                            (if _%$e193807%_
                                (let ()
                                  (gx#core-bind-feature!__%
                                   (##string->symbol '"bsd")
                                   '#f
                                   '0
                                   _%self193766%_)
                                  (gx#core-bind-feature!__%
                                   (string->symbol _%$e193807%_)
                                   '#f
                                   '0
                                   _%self193766%_))
                                '#!void))))))
              (if (pair? _%$%g193779193791%_)
                  (let ((_%$%hd193784193815%_ (##car _%$%g193779193791%_))
                        (_%$%tl193785193817%_ (##cdr _%$%g193779193791%_)))
                    (let ((_%sys-cpu193820%_ _%$%hd193784193815%_))
                      (if (pair? _%$%tl193785193817%_)
                          (let ((_%$%hd193786193822%_
                                 (##car _%$%tl193785193817%_))
                                (_%$%tl193787193824%_
                                 (##cdr _%$%tl193785193817%_)))
                            (let ((_%sys-vendor193827%_ _%$%hd193786193822%_))
                              (if (pair? _%$%tl193787193824%_)
                                  (let ((_%$%hd193788193829%_
                                         (##car _%$%tl193787193824%_))
                                        (_%$%tl193789193831%_
                                         (##cdr _%$%tl193787193824%_)))
                                    (let ((_%sys-type193834%_
                                           _%$%hd193788193829%_))
                                      (if (null? _%$%tl193789193831%_)
                                          (_%$%K193783193812%_
                                           _%sys-type193834%_
                                           _%sys-vendor193827%_
                                           _%sys-cpu193820%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self193766%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
