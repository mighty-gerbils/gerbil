(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1734215270)
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
      (lambda (_%self130612131692%_ _%bind?131694%_)
        (let* ((_%self131696%_ _%self130612131692%_)
               (_%self131698%_ _%self131696%_))
          (if (##fx< '2 (##structure-length _%self131698%_))
              (begin
                (##unchecked-structure-set! _%self131698%_ 'root '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self131698%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self131698%_
                     '2
                     (##vector-length _%self131698%_)))
          (if _%bind?131694%_
              (begin
                (let ((__method131761
                       (__method-ref
                        _%self131698%_
                        'bind-core-syntax-expanders!)))
                  (if __method131761
                      (__method131761 _%self131698%_)
                      (begin
                        (error '"Missing method"
                               _%self131698%_
                               'bind-core-syntax-expanders!)
                        '#!void)))
                (let ((__method131762
                       (__method-ref
                        _%self131698%_
                        'bind-core-macro-expanders!)))
                  (if __method131762
                      (__method131762 _%self131698%_)
                      (begin
                        (error '"Missing method"
                               _%self131698%_
                               'bind-core-macro-expanders!)
                        '#!void)))
                (let ((__method131763
                       (__method-ref _%self131698%_ 'bind-core-features!)))
                  (if __method131763
                      (__method131763 _%self131698%_)
                      (begin
                        (error '"Missing method"
                               _%self131698%_
                               'bind-core-features!)
                        '#!void))))
              '#!void))))
    (define gx#root-context:::init!__0
      (lambda (_%self130612131711%_)
        (let ((_%bind?131713%_ '#t))
          (gx#root-context:::init!__% _%self130612131711%_ _%bind?131713%_))))
    (define gx#root-context:::init!
      (lambda _g131766_
        (let ((_g131765_ (##length _g131766_)))
          (cond ((##fx= _g131765_ 1)
                 (apply gx#root-context:::init!__0 _g131766_))
                ((##fx= _g131765_ 2)
                 (apply gx#root-context:::init!__% _g131766_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#root-context:::init!
                  _g131766_))))))
    (define gx#root-context:::init!::specialize
      (lambda (__klass131717 __method-table131718)
        (let ((__bind-core-macro-expanders!131719
               (__make-promise
                (lambda ()
                  (let ((__method131722
                         (symbolic-table-ref
                          __method-table131718
                          'bind-core-macro-expanders!
                          '#f)))
                    (if __method131722
                        __method131722
                        (error '"Missing method"
                               'bind-core-macro-expanders!))))))
              (__bind-core-features!131720
               (__make-promise
                (lambda ()
                  (let ((__method131723
                         (symbolic-table-ref
                          __method-table131718
                          'bind-core-features!
                          '#f)))
                    (if __method131723
                        __method131723
                        (error '"Missing method" 'bind-core-features!))))))
              (__bind-core-syntax-expanders!131721
               (__make-promise
                (lambda ()
                  (let ((__method131724
                         (symbolic-table-ref
                          __method-table131718
                          'bind-core-syntax-expanders!
                          '#f)))
                    (if __method131724
                        __method131724
                        (error '"Missing method"
                               'bind-core-syntax-expanders!)))))))
          (let ((_%opt-lambda131690131708%_
                 (lambda (_%self130612131692%_ _%bind?131694%_)
                   (let* ((_%self131696%_ _%self130612131692%_)
                          (_%self131698%_ _%self131696%_))
                     (if (##fx< '2 (##structure-length _%self131698%_))
                         (begin
                           (##unchecked-structure-set!
                            _%self131698%_
                            'root
                            '1
                            '#f
                            '#f)
                           (##unchecked-structure-set!
                            _%self131698%_
                            (make-hash-table-eq)
                            '2
                            '#f
                            '#f)
                           '#!void)
                         (error '"struct-instance-init!: too many arguments for struct"
                                _%self131698%_
                                '2
                                (##vector-length _%self131698%_)))
                     (if _%bind?131694%_
                         (begin
                           ((force __bind-core-syntax-expanders!131721)
                            _%self131698%_)
                           ((force __bind-core-macro-expanders!131719)
                            _%self131698%_)
                           ((force __bind-core-features!131720)
                            _%self131698%_))
                         '#!void)))))
            (lambda _g131768_
              (let ((_g131767_ (##length _g131768_)))
                (cond ((##fx= _g131767_ 1)
                       (apply (lambda (_%self130612131711%_)
                                (let ((_%bind?131713%_ '#t))
                                  (_%opt-lambda131690131708%_
                                   _%self130612131711%_
                                   _%bind?131713%_)))
                              _g131768_))
                      ((##fx= _g131767_ 2)
                       (apply _%opt-lambda131690131708%_ _g131768_))
                      (else
                       (##raise-wrong-number-of-arguments-exception
                        'case-lambda-dispatch
                        _g131768_)))))))))
    (bind-specializer!
     gx#root-context:::init!
     gx#root-context:::init!::specialize)
    (__bind-method!__% gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!__%
      (lambda (_%self130613131535%_ _%super131537%_)
        (let* ((_%self131539%_ _%self130613131535%_)
               (_%self131541%_ _%self131539%_)
               (_%super131557%_
                (let ((_%$e131551%_ _%super131537%_))
                  (if _%$e131551%_
                      _%$e131551%_
                      (let ((_%$e131554%_ (gx#core-context-root__0)))
                        (if _%$e131554%_
                            _%$e131554%_
                            (let ((__obj131764
                                   (##structure gx#root-context::t '#f '#f)))
                              (gx#root-context:::init!__0 __obj131764)
                              __obj131764)))))))
          (if (##fx< '5 (##structure-length _%self131541%_))
              (begin
                (##unchecked-structure-set! _%self131541%_ 'top '1 '#f '#f)
                (##unchecked-structure-set!
                 _%self131541%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self131541%_
                 _%super131557%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self131541%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self131541%_ '#f '5 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self131541%_
                     '5
                     (##vector-length _%self131541%_))))))
    (define gx#top-context:::init!__0
      (lambda (_%self130613131562%_)
        (let ((_%super131564%_ '#f))
          (gx#top-context:::init!__% _%self130613131562%_ _%super131564%_))))
    (define gx#top-context:::init!
      (lambda _g131770_
        (let ((_g131769_ (##length _g131770_)))
          (cond ((##fx= _g131769_ 1)
                 (apply gx#top-context:::init!__0 _g131770_))
                ((##fx= _g131769_ 2)
                 (apply gx#top-context:::init!__% _g131770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-context:::init!
                  _g131770_))))))
    (__bind-method!__% gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!__%
      (lambda (_%self130614131253%_ _%bindings131255%_)
        (let* ((_%self131257%_ _%self130614131253%_)
               (_%self131259%_ _%self131257%_))
          (for-each
           (lambda (_%bind131269%_)
             (let* ((_%bind131270131277%_ _%bind131269%_)
                    (_%E131272131281%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind131270131277%_
                              '([id . rest]))
                       '#!void))
                    (_%K131273131390%_
                     (lambda (_%rest131284%_ _%id131285%_)
                       (gx#core-context-put!
                        _%self131259%_
                        _%id131285%_
                        (##structure
                         gx#syntax-binding::t
                         _%id131285%_
                         _%id131285%_
                         '#f
                         (let* ((_%rest131286131297%_ _%rest131284%_)
                                (_%E131288131301%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest131286131297%_
                                          '([key expander compiler]))
                                   '#!void))
                                (_%K131289131366%_
                                 (lambda (_%compiler131304%_
                                          _%expander131305%_
                                          _%key131306%_)
                                   ((let* ((_%key131307131320%_ _%key131306%_)
                                           (_%E131313131324%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%key131307131320%_
                                                     '(top:)
                                                     '(module:)
                                                     '(define:)
                                                     '(special:)
                                                     '(expr:))
                                              '#!void)))
                                      (let ((_%K131318131360%_
                                             (lambda ()
                                               gx#make-top-special-form))
                                            (_%K131317131353%_
                                             (lambda ()
                                               gx#make-module-special-form))
                                            (_%K131316131345%_
                                             (lambda ()
                                               gx#make-definition-form))
                                            (_%K131315131337%_
                                             (lambda () gx#make-special-form))
                                            (_%K131314131329%_
                                             (lambda ()
                                               gx#make-expression-form)))
                                        (let* ((_%try-match131312131332%_
                                                (lambda ()
                                                  (if (##eq? _%key131307131320%_
                                                             'expr:)
                                                      (_%K131314131329%_)
                                                      (_%E131313131324%_))))
                                               (_%try-match131311131340%_
                                                (lambda ()
                                                  (if (##eq? _%key131307131320%_
                                                             'special:)
                                                      (_%K131315131337%_)
                                                      (_%try-match131312131332%_))))
                                               (_%try-match131310131348%_
                                                (lambda ()
                                                  (if (##eq? _%key131307131320%_
                                                             'define:)
                                                      (_%K131316131345%_)
                                                      (_%try-match131311131340%_))))
                                               (_%try-match131309131356%_
                                                (lambda ()
                                                  (if (##eq? _%key131307131320%_
                                                             'module:)
                                                      (_%K131317131353%_)
                                                      (_%try-match131310131348%_)))))
                                          (if (##eq? _%key131307131320%_ 'top:)
                                              (_%K131318131360%_)
                                              (_%try-match131309131356%_)))))
                                    _%expander131305%_
                                    _%id131285%_
                                    (let ((_%$e131363%_ _%compiler131304%_))
                                      (if _%$e131363%_
                                          _%$e131363%_
                                          gx#core-compile-top-error))))))
                           (if (pair? _%rest131286131297%_)
                               (let ((_%hd131290131369%_
                                      (##car _%rest131286131297%_))
                                     (_%tl131291131371%_
                                      (##cdr _%rest131286131297%_)))
                                 (let ((_%key131374%_ _%hd131290131369%_))
                                   (if (pair? _%tl131291131371%_)
                                       (let ((_%hd131292131376%_
                                              (##car _%tl131291131371%_))
                                             (_%tl131293131378%_
                                              (##cdr _%tl131291131371%_)))
                                         (let ((_%expander131381%_
                                                _%hd131292131376%_))
                                           (if (pair? _%tl131293131378%_)
                                               (let ((_%hd131294131383%_
                                                      (##car _%tl131293131378%_))
                                                     (_%tl131295131385%_
                                                      (##cdr _%tl131293131378%_)))
                                                 (let ((_%compiler131388%_
                                                        _%hd131294131383%_))
                                                   (if (null? _%tl131295131385%_)
                                                       (_%K131289131366%_
                                                        _%compiler131388%_
                                                        _%expander131381%_
                                                        _%key131374%_)
                                                       (_%E131288131301%_))))
                                               (_%E131288131301%_))))
                                       (_%E131288131301%_))))
                               (_%E131288131301%_))))))))
               (if (pair? _%bind131270131277%_)
                   (let ((_%hd131274131393%_ (##car _%bind131270131277%_))
                         (_%tl131275131395%_ (##cdr _%bind131270131277%_)))
                     (let* ((_%id131398%_ _%hd131274131393%_)
                            (_%rest131400%_ _%tl131275131395%_))
                       (_%K131273131390%_ _%rest131400%_ _%id131398%_)))
                   (_%E131272131281%_))))
           _%bindings131255%_))))
    (define gx#expander-context::bind-core-syntax-expanders!__0
      (lambda (_%self130614131405%_)
        (let ((_%bindings131407%_ gx#*core-syntax-expanders*))
          (gx#expander-context::bind-core-syntax-expanders!__%
           _%self130614131405%_
           _%bindings131407%_))))
    (define gx#expander-context::bind-core-syntax-expanders!
      (lambda _g131772_
        (let ((_g131771_ (##length _g131772_)))
          (cond ((##fx= _g131771_ 1)
                 (apply gx#expander-context::bind-core-syntax-expanders!__0
                        _g131772_))
                ((##fx= _g131771_ 2)
                 (apply gx#expander-context::bind-core-syntax-expanders!__%
                        _g131772_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-syntax-expanders!
                  _g131772_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!__%
      (lambda (_%self130615131012%_ _%bindings131014%_)
        (let* ((_%self131016%_ _%self130615131012%_)
               (_%self131018%_ _%self131016%_))
          (for-each
           (lambda (_%bind131028%_)
             (let* ((_%bind131029131036%_ _%bind131028%_)
                    (_%E131031131040%_
                     (lambda ()
                       (error '"No clause matching"
                              _%bind131029131036%_
                              '([id . rest]))
                       '#!void))
                    (_%K131032131108%_
                     (lambda (_%rest131043%_ _%id131044%_)
                       (gx#core-context-put!
                        _%self131018%_
                        _%id131044%_
                        (##structure
                         gx#syntax-binding::t
                         _%id131044%_
                         _%id131044%_
                         '#f
                         (let* ((_%rest131045131060%_ _%rest131043%_)
                                (_%E131049131064%_
                                 (lambda ()
                                   (error '"No clause matching"
                                          _%rest131045131060%_
                                          '(['=> core-id])
                                          '([proc])
                                          '([]))
                                   '#!void)))
                           (let ((_%K131054131093%_
                                  (lambda (_%core-id131091%_)
                                    (##structure
                                     gx#rename-macro-expander::t
                                     _%core-id131091%_)))
                                 (_%K131051131078%_
                                  (lambda (_%proc131076%_)
                                    (##structure
                                     gx#macro-expander::t
                                     _%proc131076%_)))
                                 (_%K131050131069%_
                                  (lambda ()
                                    (##structure
                                     gx#reserved-expander::t
                                     _%id131044%_))))
                             (let ((_%try-match131048131072%_
                                    (lambda ()
                                      (if (null? _%rest131045131060%_)
                                          (_%K131050131069%_)
                                          (_%E131049131064%_)))))
                               (if (pair? _%rest131045131060%_)
                                   (let ((_%tl131056131098%_
                                          (##cdr _%rest131045131060%_))
                                         (_%hd131055131096%_
                                          (##car _%rest131045131060%_)))
                                     (if (##eq? _%hd131055131096%_ '=>)
                                         (if (pair? _%tl131056131098%_)
                                             (let ((_%tl131058131103%_
                                                    (##cdr _%tl131056131098%_))
                                                   (_%hd131057131101%_
                                                    (##car _%tl131056131098%_)))
                                               (if (null? _%tl131058131103%_)
                                                   (let ((_%core-id131106%_
                                                          _%hd131057131101%_))
                                                     (##structure
                                                      gx#rename-macro-expander::t
                                                      _%core-id131106%_))
                                                   (_%E131049131064%_)))
                                             (if (null? _%tl131056131098%_)
                                                 (let ((_%proc131086%_
                                                        _%hd131055131096%_))
                                                   (##structure
                                                    gx#macro-expander::t
                                                    _%proc131086%_))
                                                 (_%E131049131064%_)))
                                         (if (null? _%tl131056131098%_)
                                             (let ((_%proc131086%_
                                                    _%hd131055131096%_))
                                               (##structure
                                                gx#macro-expander::t
                                                _%proc131086%_))
                                             (_%E131049131064%_))))
                                   (_%try-match131048131072%_))))))))))
               (if (pair? _%bind131029131036%_)
                   (let ((_%hd131033131111%_ (##car _%bind131029131036%_))
                         (_%tl131034131113%_ (##cdr _%bind131029131036%_)))
                     (let* ((_%id131116%_ _%hd131033131111%_)
                            (_%rest131118%_ _%tl131034131113%_))
                       (_%K131032131108%_ _%rest131118%_ _%id131116%_)))
                   (_%E131031131040%_))))
           _%bindings131014%_))))
    (define gx#expander-context::bind-core-macro-expanders!__0
      (lambda (_%self130615131123%_)
        (let ((_%bindings131125%_ gx#*core-macro-expanders*))
          (gx#expander-context::bind-core-macro-expanders!__%
           _%self130615131123%_
           _%bindings131125%_))))
    (define gx#expander-context::bind-core-macro-expanders!
      (lambda _g131774_
        (let ((_g131773_ (##length _g131774_)))
          (cond ((##fx= _g131773_ 1)
                 (apply gx#expander-context::bind-core-macro-expanders!__0
                        _g131774_))
                ((##fx= _g131773_ 2)
                 (apply gx#expander-context::bind-core-macro-expanders!__%
                        _g131774_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-context::bind-core-macro-expanders!
                  _g131774_))))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self130616130742%_)
        (let* ((_%self130745%_ _%self130616130742%_)
               (_%self130747%_ _%self130745%_))
          (letrec ((_%linux-variant?130757%_
                    (lambda (_%sys-type130857%_)
                      (let* ((_%g130858130866%_
                              (__string-split
                               (symbol->string _%sys-type130857%_)
                               '#\-))
                             (_%else130860130874%_ (lambda () '#f))
                             (_%K130862130879%_
                              (lambda (_%rest130877%_)
                                (not (null? _%rest130877%_)))))
                        (if (pair? _%g130858130866%_)
                            (let ((_%hd130863130882%_
                                   (##car _%g130858130866%_))
                                  (_%tl130864130884%_
                                   (##cdr _%g130858130866%_)))
                              (if (equal? _%hd130863130882%_ '"linux")
                                  (let ((_%rest130887%_ _%tl130864130884%_))
                                    (_%K130862130879%_ _%rest130887%_))
                                  (_%else130860130874%_)))
                            (_%else130860130874%_)))))
                   (_%bsd-variant130758%_
                    (lambda (_%sys-type130816%_)
                      (let ((_%sys-type-str130818%_
                             (symbol->string _%sys-type130816%_)))
                        (let _%lp130820%_ ((_%rest130822%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%rest130823130831%_ _%rest130822%_)
                                 (_%else130825130839%_ (lambda () '#f))
                                 (_%K130827130845%_
                                  (lambda (_%rest130842%_ _%sys130843%_)
                                    (if (string-prefix?
                                         _%sys130843%_
                                         _%sys-type-str130818%_)
                                        _%sys130843%_
                                        (_%lp130820%_ _%rest130842%_)))))
                            (if (pair? _%rest130823130831%_)
                                (let ((_%hd130828130848%_
                                       (##car _%rest130823130831%_))
                                      (_%tl130829130850%_
                                       (##cdr _%rest130823130831%_)))
                                  (let* ((_%sys130853%_ _%hd130828130848%_)
                                         (_%rest130855%_ _%tl130829130850%_))
                                    (_%K130827130845%_
                                     _%rest130855%_
                                     _%sys130853%_)))
                                (_%else130825130839%_))))))))
            (gx#core-bind-feature!__% 'gerbil '#f '0 _%self130747%_)
            (gx#core-bind-feature!__% (gerbil-system) '#f '0 _%self130747%_)
            (let* ((_%g130759130771%_ (system-type))
                   (_%else130761130779%_ (lambda () '#!void))
                   (_%K130763130792%_
                    (lambda (_%sys-type130782%_
                             _%sys-vendor130783%_
                             _%sys-cpu130784%_)
                      (gx#core-bind-feature!__%
                       _%sys-cpu130784%_
                       '#f
                       '0
                       _%self130747%_)
                      (gx#core-bind-feature!__%
                       _%sys-type130782%_
                       '#f
                       '0
                       _%self130747%_)
                      (if (_%linux-variant?130757%_ _%sys-type130782%_)
                          (gx#core-bind-feature!__%
                           (##string->symbol '"linux")
                           '#f
                           '0
                           _%self130747%_)
                          (let ((_%$e130787%_
                                 (_%bsd-variant130758%_ _%sys-type130782%_)))
                            (if _%$e130787%_
                                ((lambda (_%sys-prefix130790%_)
                                   (gx#core-bind-feature!__%
                                    (##string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self130747%_)
                                   (gx#core-bind-feature!__%
                                    (string->symbol _%sys-prefix130790%_)
                                    '#f
                                    '0
                                    _%self130747%_))
                                 _%$e130787%_)
                                '#!void))))))
              (if (pair? _%g130759130771%_)
                  (let ((_%hd130764130795%_ (##car _%g130759130771%_))
                        (_%tl130765130797%_ (##cdr _%g130759130771%_)))
                    (let ((_%sys-cpu130800%_ _%hd130764130795%_))
                      (if (pair? _%tl130765130797%_)
                          (let ((_%hd130766130802%_ (##car _%tl130765130797%_))
                                (_%tl130767130804%_
                                 (##cdr _%tl130765130797%_)))
                            (let ((_%sys-vendor130807%_ _%hd130766130802%_))
                              (if (pair? _%tl130767130804%_)
                                  (let ((_%hd130768130809%_
                                         (##car _%tl130767130804%_))
                                        (_%tl130769130811%_
                                         (##cdr _%tl130767130804%_)))
                                    (let ((_%sys-type130814%_
                                           _%hd130768130809%_))
                                      (if (null? _%tl130769130811%_)
                                          (_%K130763130792%_
                                           _%sys-type130814%_
                                           _%sys-vendor130807%_
                                           _%sys-cpu130800%_)
                                          '#!void)))
                                  '#!void)))
                          '#!void)))
                  '#!void))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature!__% 'gerbil-smp '#f '0 _%self130747%_)
                '#!void)))))
    (__bind-method!__%
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
