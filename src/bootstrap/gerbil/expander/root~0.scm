(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/root::timestamp 1781119049)
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
    (define gx#root-context:::init!
      (let ((_%$%opt-lambda167642167659%_
             (lambda (_%self167644%_ _%bind?167645%_)
               (let ((_%self167648%_ _%self167644%_))
                 (struct-instance-init!
                  _%self167648%_
                  'root
                  (make-hash-table-eq))
                 (if _%bind?167645%_
                     (begin
                       (call-method
                        _%self167648%_
                        'bind-core-syntax-expanders!)
                       (call-method _%self167648%_ 'bind-core-macro-expanders!)
                       (call-method _%self167648%_ 'bind-core-features!))
                     '#!void)))))
        (lambda _g167668_
          (let ((_g167669_ (##length _g167668_)))
            (cond ((##fx= _g167669_ 1)
                   (apply (lambda (_%self167662%_)
                            (let ((_%bind?167664%_ '#t))
                              (_%$%opt-lambda167642167659%_
                               _%self167662%_
                               _%bind?167664%_)))
                          _g167668_))
                  ((##fx= _g167669_ 2)
                   (apply _%$%opt-lambda167642167659%_ _g167668_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#root-context:::init!
                    _g167668_)))))))
    (bind-method! gx#root-context::t ':init! gx#root-context:::init! '#f)
    (define gx#top-context:::init!
      (let ((_%$%opt-lambda167487167511%_
             (lambda (_%self167489%_ _%super167490%_)
               (let* ((_%self167493%_ _%self167489%_)
                      (_%super167509%_
                       (let ((_%$e167503%_ _%super167490%_))
                         (if _%$e167503%_
                             _%$e167503%_
                             (let ((_%$e167506%_ (gx#core-context-root)))
                               (if _%$e167506%_
                                   _%$e167506%_
                                   (gx#make-root-context)))))))
                 (struct-instance-init!
                  _%self167493%_
                  'top
                  (make-hash-table-eq)
                  _%super167509%_
                  '#f
                  '#f)))))
        (lambda _g167670_
          (let ((_g167671_ (##length _g167670_)))
            (cond ((##fx= _g167671_ 1)
                   (apply (lambda (_%self167514%_)
                            (let ((_%super167516%_ '#f))
                              (_%$%opt-lambda167487167511%_
                               _%self167514%_
                               _%super167516%_)))
                          _g167670_))
                  ((##fx= _g167671_ 2)
                   (apply _%$%opt-lambda167487167511%_ _g167670_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#top-context:::init!
                    _g167670_)))))))
    (bind-method! gx#top-context::t ':init! gx#top-context:::init! '#f)
    (define gx#expander-context::bind-core-syntax-expanders!
      (let ((_%$%opt-lambda167208167356%_
             (lambda (_%self167210%_ _%bindings167211%_)
               (let ((_%self167214%_ _%self167210%_))
                 (for-each
                  (lambda (_%bind167224%_)
                    (let* ((_%$%bind167225167232%_ _%bind167224%_)
                           (_%$%E167227167235%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%bind167225167232%_
                                     '([id . rest]))
                              (void)))
                           (_%$%K167228167344%_
                            (lambda (_%rest167238%_ _%id167239%_)
                              (gx#core-context-put!
                               _%self167214%_
                               _%id167239%_
                               (gx#make-syntax-binding
                                _%id167239%_
                                _%id167239%_
                                '#f
                                (let* ((_%$%rest167240167251%_ _%rest167238%_)
                                       (_%$%E167242167255%_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _%$%rest167240167251%_
                                                 '([key expander compiler]))
                                          (void)))
                                       (_%$%K167243167320%_
                                        (lambda (_%compiler167258%_
                                                 _%expander167259%_
                                                 _%key167260%_)
                                          ((let* ((_%$%key167261167274%_
                                                   _%key167260%_)
                                                  (_%$%E167267167278%_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _%$%key167261167274%_
                                                            '(top:)
                                                            '(module:)
                                                            '(define:)
                                                            '(special:)
                                                            '(expr:))
                                                     (void)))
                                                  (_%$%try-match167266167286%_
                                                   (lambda ()
                                                     (let ((_%$%K167268167283%_
                                                            (lambda ()
                                                              gx#make-expression-form)))
                                                       (if (##eq? _%$%key167261167274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'expr:)
                   (_%$%K167268167283%_)
                   (_%$%E167267167278%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%try-match167265167294%_
                                                   (lambda ()
                                                     (let ((_%$%K167269167291%_
                                                            (lambda ()
                                                              gx#make-special-form)))
                                                       (if (##eq? _%$%key167261167274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'special:)
                   (_%$%K167269167291%_)
                   (_%$%try-match167266167286%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%try-match167264167302%_
                                                   (lambda ()
                                                     (let ((_%$%K167270167299%_
                                                            (lambda ()
                                                              gx#make-definition-form)))
                                                       (if (##eq? _%$%key167261167274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'define:)
                   (_%$%K167270167299%_)
                   (_%$%try-match167265167294%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%try-match167263167310%_
                                                   (lambda ()
                                                     (let ((_%$%K167271167307%_
                                                            (lambda ()
                                                              gx#make-module-special-form)))
                                                       (if (##eq? _%$%key167261167274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'module:)
                   (_%$%K167271167307%_)
                   (_%$%try-match167264167302%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%K167272167314%_
                                                   (lambda ()
                                                     gx#make-top-special-form)))
                                             (if (##eq? _%$%key167261167274%_
                                                        'top:)
                                                 (_%$%K167272167314%_)
                                                 (_%$%try-match167263167310%_)))
                                           _%expander167259%_
                                           _%id167239%_
                                           (let ((_%$e167317%_
                                                  _%compiler167258%_))
                                             (if _%$e167317%_
                                                 _%$e167317%_
                                                 gx#core-compile-top-error))))))
                                  (if (pair? _%$%rest167240167251%_)
                                      (let ((_%$%hd167244167323%_
                                             (##car _%$%rest167240167251%_))
                                            (_%$%tl167245167325%_
                                             (##cdr _%$%rest167240167251%_)))
                                        (let ((_%key167328%_
                                               _%$%hd167244167323%_))
                                          (if (pair? _%$%tl167245167325%_)
                                              (let ((_%$%hd167246167330%_
                                                     (##car _%$%tl167245167325%_))
                                                    (_%$%tl167247167332%_
                                                     (##cdr _%$%tl167245167325%_)))
                                                (let ((_%expander167335%_
                                                       _%$%hd167246167330%_))
                                                  (if (pair? _%$%tl167247167332%_)
                                                      (let ((_%$%hd167248167337%_
                                                             (##car _%$%tl167247167332%_))
                                                            (_%$%tl167249167339%_
                                                             (##cdr _%$%tl167247167332%_)))
                                                        (let ((_%compiler167342%_
                                                               _%$%hd167248167337%_))
                                                          (if (null? _%$%tl167249167339%_)
                                                              (_%$%K167243167320%_
                                                               _%compiler167342%_
                                                               _%expander167335%_
                                                               _%key167328%_)
                                                              (_%$%E167242167255%_))))
                                                      (_%$%E167242167255%_))))
                                              (_%$%E167242167255%_))))
                                      (_%$%E167242167255%_))))))))
                      (if (pair? _%$%bind167225167232%_)
                          (let ((_%$%hd167229167347%_
                                 (##car _%$%bind167225167232%_))
                                (_%$%tl167230167349%_
                                 (##cdr _%$%bind167225167232%_)))
                            (let* ((_%id167352%_ _%$%hd167229167347%_)
                                   (_%rest167354%_ _%$%tl167230167349%_))
                              (_%$%K167228167344%_
                               _%rest167354%_
                               _%id167352%_)))
                          (_%$%E167227167235%_))))
                  _%bindings167211%_)))))
        (lambda _g167672_
          (let ((_g167673_ (##length _g167672_)))
            (cond ((##fx= _g167673_ 1)
                   (apply (lambda (_%self167359%_)
                            (let ((_%bindings167361%_
                                   gx#*core-syntax-expanders*))
                              (_%$%opt-lambda167208167356%_
                               _%self167359%_
                               _%bindings167361%_)))
                          _g167672_))
                  ((##fx= _g167673_ 2)
                   (apply _%$%opt-lambda167208167356%_ _g167672_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-syntax-expanders!
                    _g167672_)))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-syntax-expanders!
     gx#expander-context::bind-core-syntax-expanders!
     '#f)
    (define gx#expander-context::bind-core-macro-expanders!
      (let ((_%$%opt-lambda166970167077%_
             (lambda (_%self166972%_ _%bindings166973%_)
               (let ((_%self166976%_ _%self166972%_))
                 (for-each
                  (lambda (_%bind166986%_)
                    (let* ((_%$%bind166987166994%_ _%bind166986%_)
                           (_%$%E166989166997%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%bind166987166994%_
                                     '([id . rest]))
                              (void)))
                           (_%$%K166990167065%_
                            (lambda (_%rest167000%_ _%id167001%_)
                              (gx#core-context-put!
                               _%self166976%_
                               _%id167001%_
                               (gx#make-syntax-binding
                                _%id167001%_
                                _%id167001%_
                                '#f
                                (let* ((_%$%rest167002167017%_ _%rest167000%_)
                                       (_%$%E167006167021%_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _%$%rest167002167017%_
                                                 '(['=> core-id])
                                                 '([proc])
                                                 '([]))
                                          (void)))
                                       (_%$%try-match167005167029%_
                                        (lambda ()
                                          (let ((_%$%K167007167026%_
                                                 (lambda ()
                                                   (gx#make-reserved-expander
                                                    _%id167001%_))))
                                            (if (null? _%$%rest167002167017%_)
                                                (_%$%K167007167026%_)
                                                (_%$%E167006167021%_)))))
                                       (_%$%try-match167004167045%_
                                        (lambda ()
                                          (let ((_%$%K167008167035%_
                                                 (lambda (_%proc167033%_)
                                                   (gx#make-macro-expander
                                                    _%proc167033%_))))
                                            (if (pair? _%$%rest167002167017%_)
                                                (let ((_%$%hd167009167038%_
                                                       (##car _%$%rest167002167017%_))
                                                      (_%$%tl167010167040%_
                                                       (##cdr _%$%rest167002167017%_)))
                                                  (let ((_%proc167043%_
                                                         _%$%hd167009167038%_))
                                                    (if (null? _%$%tl167010167040%_)
                                                        (_%$%K167008167035%_
                                                         _%proc167043%_)
                                                        (_%$%try-match167005167029%_))))
                                                (_%$%try-match167005167029%_)))))
                                       (_%$%K167011167050%_
                                        (lambda (_%core-id167048%_)
                                          (gx#make-rename-macro-expander
                                           _%core-id167048%_))))
                                  (if (pair? _%$%rest167002167017%_)
                                      (let ((_%$%hd167012167053%_
                                             (##car _%$%rest167002167017%_))
                                            (_%$%tl167013167055%_
                                             (##cdr _%$%rest167002167017%_)))
                                        (if (##eq? _%$%hd167012167053%_ '=>)
                                            (if (pair? _%$%tl167013167055%_)
                                                (let ((_%$%hd167014167058%_
                                                       (##car _%$%tl167013167055%_))
                                                      (_%$%tl167015167060%_
                                                       (##cdr _%$%tl167013167055%_)))
                                                  (let ((_%core-id167063%_
                                                         _%$%hd167014167058%_))
                                                    (if (null? _%$%tl167015167060%_)
                                                        (_%$%K167011167050%_
                                                         _%core-id167063%_)
                                                        (_%$%try-match167004167045%_))))
                                                (_%$%try-match167004167045%_))
                                            (_%$%try-match167004167045%_)))
                                      (_%$%try-match167004167045%_))))))))
                      (if (pair? _%$%bind166987166994%_)
                          (let ((_%$%hd166991167068%_
                                 (##car _%$%bind166987166994%_))
                                (_%$%tl166992167070%_
                                 (##cdr _%$%bind166987166994%_)))
                            (let* ((_%id167073%_ _%$%hd166991167068%_)
                                   (_%rest167075%_ _%$%tl166992167070%_))
                              (_%$%K166990167065%_
                               _%rest167075%_
                               _%id167073%_)))
                          (_%$%E166989166997%_))))
                  _%bindings166973%_)))))
        (lambda _g167674_
          (let ((_g167675_ (##length _g167674_)))
            (cond ((##fx= _g167675_ 1)
                   (apply (lambda (_%self167080%_)
                            (let ((_%bindings167082%_
                                   gx#*core-macro-expanders*))
                              (_%$%opt-lambda166970167077%_
                               _%self167080%_
                               _%bindings167082%_)))
                          _g167674_))
                  ((##fx= _g167675_ 2)
                   (apply _%$%opt-lambda166970167077%_ _g167674_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#expander-context::bind-core-macro-expanders!
                    _g167674_)))))))
    (bind-method!
     gx#expander-context::t
     'bind-core-macro-expanders!
     gx#expander-context::bind-core-macro-expanders!
     '#f)
    (define gx#expander-context::bind-core-features!
      (lambda (_%self166703%_)
        (let ((_%self166706%_ _%self166703%_))
          (letrec ((_%linux-variant?166717%_
                    (lambda (_%sys-type166817%_)
                      (let* ((_%$%g166818166826%_
                              (string-split
                               (symbol->string _%sys-type166817%_)
                               '#\-))
                             (_%$%E166821166830%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%g166818166826%_
                                       '(["linux" . rest])
                                       'else)
                                (void)))
                             (_%$%else166820166834%_ (lambda () '#f))
                             (_%$%K166822166839%_
                              (lambda (_%rest166837%_)
                                (not (null? _%rest166837%_)))))
                        (if (pair? _%$%g166818166826%_)
                            (let ((_%$%hd166823166842%_
                                   (##car _%$%g166818166826%_))
                                  (_%$%tl166824166844%_
                                   (##cdr _%$%g166818166826%_)))
                              (if (equal? _%$%hd166823166842%_ '"linux")
                                  (let ((_%rest166847%_ _%$%tl166824166844%_))
                                    (_%$%K166822166839%_ _%rest166847%_))
                                  (_%$%else166820166834%_)))
                            (_%$%else166820166834%_)))))
                   (_%bsd-variant166718%_
                    (lambda (_%sys-type166776%_)
                      (let ((_%sys-type-str166778%_
                             (symbol->string _%sys-type166776%_)))
                        (let _%lp166780%_ ((_%rest166782%_
                                            '("openbsd"
                                              "netbsd"
                                              "freebsd"
                                              "darwin")))
                          (let* ((_%$%rest166783166791%_ _%rest166782%_)
                                 (_%$%E166786166795%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%$%rest166783166791%_
                                           '([sys . rest])
                                           'else)
                                    (void)))
                                 (_%$%else166785166799%_ (lambda () '#f))
                                 (_%$%K166787166805%_
                                  (lambda (_%rest166802%_ _%sys166803%_)
                                    (if (string-prefix?
                                         _%sys166803%_
                                         _%sys-type-str166778%_)
                                        _%sys166803%_
                                        (_%lp166780%_ _%rest166802%_)))))
                            (if (pair? _%$%rest166783166791%_)
                                (let ((_%$%hd166788166808%_
                                       (##car _%$%rest166783166791%_))
                                      (_%$%tl166789166810%_
                                       (##cdr _%$%rest166783166791%_)))
                                  (let* ((_%sys166813%_ _%$%hd166788166808%_)
                                         (_%rest166815%_ _%$%tl166789166810%_))
                                    (_%$%K166787166805%_
                                     _%rest166815%_
                                     _%sys166813%_)))
                                (_%$%else166785166799%_))))))))
            (gx#core-bind-feature! 'gerbil '#f '0 _%self166706%_)
            (gx#core-bind-feature! (gerbil-system) '#f '0 _%self166706%_)
            (let* ((_%$%g166719166731%_ (system-type))
                   (_%$%E166722166735%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%g166719166731%_
                             '([sys-cpu sys-vendor sys-type])
                             'else)
                      (void)))
                   (_%$%else166721166739%_ (lambda () (void)))
                   (_%$%K166723166752%_
                    (lambda (_%sys-type166742%_
                             _%sys-vendor166743%_
                             _%sys-cpu166744%_)
                      (gx#core-bind-feature!
                       _%sys-cpu166744%_
                       '#f
                       '0
                       _%self166706%_)
                      (gx#core-bind-feature!
                       _%sys-type166742%_
                       '#f
                       '0
                       _%self166706%_)
                      (if (_%linux-variant?166717%_ _%sys-type166742%_)
                          (gx#core-bind-feature!
                           (string->symbol '"linux")
                           '#f
                           '0
                           _%self166706%_)
                          (let ((_%$e166747%_
                                 (_%bsd-variant166718%_ _%sys-type166742%_)))
                            (if _%$e166747%_
                                ((lambda (_%sys-prefix166750%_)
                                   (gx#core-bind-feature!
                                    (string->symbol '"bsd")
                                    '#f
                                    '0
                                    _%self166706%_)
                                   (gx#core-bind-feature!
                                    (string->symbol _%sys-prefix166750%_)
                                    '#f
                                    '0
                                    _%self166706%_))
                                 _%$e166747%_)
                                '#!void))))))
              (if (pair? _%$%g166719166731%_)
                  (let ((_%$%hd166724166755%_ (##car _%$%g166719166731%_))
                        (_%$%tl166725166757%_ (##cdr _%$%g166719166731%_)))
                    (let ((_%sys-cpu166760%_ _%$%hd166724166755%_))
                      (if (pair? _%$%tl166725166757%_)
                          (let ((_%$%hd166726166762%_
                                 (##car _%$%tl166725166757%_))
                                (_%$%tl166727166764%_
                                 (##cdr _%$%tl166725166757%_)))
                            (let ((_%sys-vendor166767%_ _%$%hd166726166762%_))
                              (if (pair? _%$%tl166727166764%_)
                                  (let ((_%$%hd166728166769%_
                                         (##car _%$%tl166727166764%_))
                                        (_%$%tl166729166771%_
                                         (##cdr _%$%tl166727166764%_)))
                                    (let ((_%sys-type166774%_
                                           _%$%hd166728166769%_))
                                      (if (null? _%$%tl166729166771%_)
                                          (_%$%K166723166752%_
                                           _%sys-type166774%_
                                           _%sys-vendor166767%_
                                           _%sys-cpu166760%_)
                                          (_%$%else166721166739%_))))
                                  (_%$%else166721166739%_))))
                          (_%$%else166721166739%_))))
                  (_%$%else166721166739%_)))
            (if (gerbil-runtime-smp?)
                (gx#core-bind-feature! 'gerbil-smp '#f '0 _%self166706%_)
                '#!void)))))
    (bind-method!
     gx#expander-context::t
     'bind-core-features!
     gx#expander-context::bind-core-features!
     '#f)))
