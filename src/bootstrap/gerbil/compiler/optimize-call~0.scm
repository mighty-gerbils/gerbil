(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-call::timestamp 1712124241)
  (begin
    (define gxc#::optimize-call::t
      (let ((__tmp189616 (list gxc#::basic-xform::t))
            (__tmp189615 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::optimize-call::t
         '::optimize-call
         __tmp189616
         '()
         __tmp189615
         '#f)))
    (define gxc#::optimize-call?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::optimize-call::t)))
    (define gxc#make-::optimize-call
      (lambda _%$args189165%_
        (apply make-instance gxc#::optimize-call::t _%$args189165%_)))
    (define gxc#::optimize-call-bind-methods!
      (let ((__tmp189617
             (lambda ()
               (force gxc#::basic-xform-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::optimize-call::t
                  '%#call
                  gxc#optimize-call%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::optimize-call::t)))))
        (declare (not safe))
        (__make-promise __tmp189617)))
    (define gxc#apply-optimize-call
      (lambda (_%stx189157%_)
        (force gxc#::optimize-call-bind-methods!)
        (let* ((_%self189160%_
                (let ((__obj189607
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::optimize-call::t))))
                  __obj189607))
               (__tmp189618
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self189160%_ _%stx189157%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp189618
           gxc#current-compile-method
           _%self189160%_))))
    (define gxc#::check-return-type::t
      (let ((__tmp189620 (list gxc#::void::t))
            (__tmp189619 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::check-return-type::t
         '::check-return-type
         __tmp189620
         '()
         __tmp189619
         '#f)))
    (define gxc#::check-return-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::check-return-type::t)))
    (define gxc#make-::check-return-type
      (lambda _%$args189154%_
        (apply make-instance gxc#::check-return-type::t _%$args189154%_)))
    (define gxc#::check-return-type-bind-methods!
      (let ((__tmp189621
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#begin-annotation
                  gxc#apply-check-return-type-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#define-values
                  gxc#apply-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#define-syntax
                  gxc#apply-define-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#let-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#letrec-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#letrec*-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#call
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#if
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::check-return-type::t
                  '%#set!
                  gxc#apply-body-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::check-return-type::t)))))
        (declare (not safe))
        (__make-promise __tmp189621)))
    (define gxc#apply-check-return-type
      (lambda (_%stx189146%_)
        (force gxc#::check-return-type-bind-methods!)
        (let* ((_%self189149%_
                (let ((__obj189609
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::check-return-type::t))))
                  __obj189609))
               (__tmp189622
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self189149%_ _%stx189146%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp189622
           gxc#current-compile-method
           _%self189149%_))))
    (define gxc#optimize-call%
      (lambda (_%self188762%_ _%stx188763%_)
        (let* ((_%__stx189220189221%_ _%stx188763%_)
               (_%g188766188812%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189220189221%_)))))
          (let ((_%__kont189222189223%_
                 (lambda (_%L188949%_ _%L188950%_)
                   (let* ((_%rator-id188970%_
                           (let ()
                             (declare (not safe))
                             (gxc#identifier-symbol _%L188950%_)))
                          (_%rator-type188972%_
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-type _%rator-id188970%_))))
                     (if (or (let ()
                               (declare (not safe))
                               (not _%rator-type188972%_))
                             (eq? (##structure-ref
                                   _%rator-type188972%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't))
                         (let ()
                           (let ()
                             (declare (not safe))
                             (gxc#xform-call% _%self188762%_ _%stx188763%_)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%rator-type188972%_
                                'gxc#!procedure::t))
                             (let ()
                               (let ((__tmp189623
                                      (##structure-ref
                                       _%rator-type188972%_
                                       '1
                                       gxc#!type::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#verbose
                                  '"optimize-call "
                                  _%rator-id188970%_
                                  '" => "
                                  _%rator-type188972%_
                                  '" "
                                  __tmp189623))
                               (let* ((_%optimized188987%_
                                       (let ((__method189610
                                              (let ()
                                                (declare (not safe))
                                                (__method-ref
                                                 _%rator-type188972%_
                                                 'optimize-call))))
                                         (if __method189610
                                             (__method189610
                                              _%rator-type188972%_
                                              _%self188762%_
                                              _%stx188763%_
                                              (let ((__tmp189624
                                                     (lambda (_%g188979188982%_
                                                              _%g188980188984%_)
                                                       (cons _%g188979188982%_
                                                             _%g188980188984%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp189624
                                                 '()
                                                 _%L188949%_)))
                                             (let ()
                                               (declare (not safe))
                                               (error '"Missing method"
                                                      _%rator-type188972%_
                                                      'optimize-call)))))
                                      (_%__stx189168189169%_
                                       _%optimized188987%_)
                                      (_%g188990189019%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx189168189169%_)))))
                                 (let ((_%__kont189170189171%_
                                        (lambda (_%L189087%_ _%L189088%_)
                                          (let ((_%optimized-rator-id189115%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L189088%_))))
                                            (if (or (and (let ()
                                                           (declare (not safe))
                                                           (class-instance?
                                                            gxc#!primitive::t
                                                            _%rator-type188972%_))
                                                         (eq? _%optimized-rator-id189115%_
                                                              _%rator-id188970%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##memq _%optimized-rator-id189115%_
                                                              gxc#checked-primitives)))
                                                _%optimized188987%_
                                                (let ((__tmp189625
                                                       (let ((__tmp189626
                                                              (let ((__tmp189629
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f '%#ref))
                                   (cons _%L189088%_ '())))
                            (__tmp189627
                             (let ((__tmp189628
                                    (lambda (_%g189119189122%_
                                             _%g189120189124%_)
                                      (cons _%g189119189122%_
                                            _%g189120189124%_))))
                               (declare (not safe))
                               (__foldr1 __tmp189628 '() _%L189087%_))))
                        (declare (not safe))
                        (cons __tmp189629 __tmp189627))))
                 (declare (not safe))
                 (cons '%#call-unchecked __tmp189626))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp189625
                                                   _%stx188763%_))))))
                                       (_%__kont189174189175%_
                                        (lambda () _%optimized188987%_)))
                                   (let ((_%__match189217189218%_
                                          (lambda (_%e188996189031%_
                                                   _%hd188995189034%_
                                                   _%tl188994189036%_
                                                   _%e188999189039%_
                                                   _%hd188998189042%_
                                                   _%tl188997189044%_
                                                   _%e189002189047%_
                                                   _%hd189001189050%_
                                                   _%tl189000189052%_
                                                   _%e189005189055%_
                                                   _%hd189004189058%_
                                                   _%tl189003189060%_
                                                   _%__splice189172189173%_
                                                   _%target189006189063%_
                                                   _%tl189008189065%_)
                                            (letrec ((_%loop189009189068%_
                                                      (lambda (_%hd189007189071%_
                                                               _%arg189013189073%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd189007189071%_))
                                                            (let ((_%e189010189076%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd189007189071%_))))
                      (let ((_%lp-tl189012189081%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e189010189076%_)))
                            (_%lp-hd189011189079%_
                             (let ()
                               (declare (not safe))
                               (##car _%e189010189076%_))))
                        (let ((__tmp189630
                               (cons _%lp-hd189011189079%_
                                     _%arg189013189073%_)))
                          (declare (not safe))
                          (_%loop189009189068%_
                           _%lp-tl189012189081%_
                           __tmp189630))))
                    (let ((_%arg189014189084%_ (reverse _%arg189013189073%_)))
                      (_%__kont189170189171%_
                       _%arg189014189084%_
                       _%hd189004189058%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%loop189009189068%_
                                                 _%target189006189063%_
                                                 '()))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx189168189169%_))
                                         (let ((_%e188996189031%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx189168189169%_))))
                                           (let ((_%tl188994189036%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e188996189031%_)))
                                                 (_%hd188995189034%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e188996189031%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd188995189034%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#call
                                                        _%hd188995189034%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl188994189036%_))
                                                         (let ((_%e188999189039%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl188994189036%_))))
                   (let ((_%tl188997189044%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e188999189039%_)))
                         (_%hd188998189042%_
                          (let ()
                            (declare (not safe))
                            (##car _%e188999189039%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%hd188998189042%_))
                         (let ((_%e189002189047%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd188998189042%_))))
                           (let ((_%tl189000189052%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e189002189047%_)))
                                 (_%hd189001189050%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e189002189047%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%hd189001189050%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq? '%#ref _%hd189001189050%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%tl189000189052%_))
                                         (let ((_%e189005189055%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%tl189000189052%_))))
                                           (let ((_%tl189003189060%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e189005189055%_)))
                                                 (_%hd189004189058%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e189005189055%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%tl189003189060%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair/null?
                                                        _%tl188997189044%_))
                                                     (let ((_%__splice189172189173%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#syntax-split-splice
                                                               _%tl188997189044%_
                                                               '0))))
                                                       (let ((_%tl189008189065%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice189172189173%_ '1)))
                     (_%target189006189063%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice189172189173%_ '0))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl189008189065%_))
                     (_%__match189217189218%_
                      _%e188996189031%_
                      _%hd188995189034%_
                      _%tl188994189036%_
                      _%e188999189039%_
                      _%hd188998189042%_
                      _%tl188997189044%_
                      _%e189002189047%_
                      _%hd189001189050%_
                      _%tl189000189052%_
                      _%e189005189055%_
                      _%hd189004189058%_
                      _%tl189003189060%_
                      _%__splice189172189173%_
                      _%target189006189063%_
                      _%tl189008189065%_)
                     (_%__kont189174189175%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189174189175%_))
                                                 (_%__kont189174189175%_))))
                                         (_%__kont189174189175%_))
                                     (_%__kont189174189175%_))
                                 (_%__kont189174189175%_))))
                         (_%__kont189174189175%_))))
                 (_%__kont189174189175%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont189174189175%_))
                                                 (_%__kont189174189175%_))))
                                         (_%__kont189174189175%_))))))
                             (if (and (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%rator-type188972%_
                                         'gxc#!class::t))
                                      (eq? (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%rator-type188972%_
                                              '1
                                              '#f
                                              '#f))
                                           'procedure))
                                 (let ()
                                   (let ((__tmp189631
                                          (let ((__tmp189632
                                                 (let ((__tmp189635
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '%#ref))
                      (cons _%L188950%_ '())))
               (__tmp189633
                (map (lambda (_%g189130189132%_)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self188762%_ _%g189130189132%_)))
                     (let ((__tmp189634
                            (lambda (_%g189134189137%_ _%g189135189139%_)
                              (cons _%g189134189137%_ _%g189135189139%_))))
                       (declare (not safe))
                       (__foldr1 __tmp189634 '() _%L188949%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp189635
                                                         __tmp189633))))
                                            (declare (not safe))
                                            (cons '%#call-unchecked
                                                  __tmp189632))))
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp189631
                                      _%stx188763%_)))
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#raise-compile-error
                                      '"illegal application; not a procedure"
                                      _%stx188763%_
                                      _%rator-type188972%_)))))))))
                (_%__kont189226189227%_
                 (lambda (_%L188857%_ _%L188858%_)
                   (let ((_%rator-type188875%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-basic-expression-type _%L188858%_))))
                     (if (and _%rator-type188875%_
                              (eq? (##structure-ref
                                    _%rator-type188875%_
                                    '1
                                    gxc#!type::t
                                    '#f)
                                   'procedure)
                              (let ((__tmp189636
                                     (let ()
                                       (declare (not safe))
                                       (class-instance?
                                        gxc#!primitive::t
                                        _%rator-type188875%_))))
                                (declare (not safe))
                                (not __tmp189636)))
                         (let ((__tmp189637
                                (let ((__tmp189638
                                       (let ((__tmp189641
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self188762%_
                                                 _%L188858%_)))
                                             (__tmp189639
                                              (map (lambda (_%g188876188878%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self188762%_
                                                        _%g188876188878%_)))
                                                   (let ((__tmp189640
                                                          (lambda (_%g188880188883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g188881188885%_)
                    (cons _%g188880188883%_ _%g188881188885%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      __tmp189640
                                                      '()
                                                      _%L188857%_)))))
                                         (declare (not safe))
                                         (cons __tmp189641 __tmp189639))))
                                  (declare (not safe))
                                  (cons '%#call-unchecked __tmp189638))))
                           (declare (not safe))
                           (gxc#xform-wrap-source __tmp189637 _%stx188763%_))
                         (let ()
                           (declare (not safe))
                           (gxc#xform-call% _%self188762%_ _%stx188763%_)))))))
            (let* ((_%__match189287189288%_
                    (lambda (_%e188795188817%_
                             _%hd188794188820%_
                             _%tl188793188822%_
                             _%e188798188825%_
                             _%hd188797188828%_
                             _%tl188796188830%_
                             _%__splice189228189229%_
                             _%target188799188833%_
                             _%tl188801188835%_)
                      (letrec ((_%loop188802188838%_
                                (lambda (_%hd188800188841%_
                                         _%rand188806188843%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd188800188841%_))
                                      (let ((_%e188803188846%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd188800188841%_))))
                                        (let ((_%lp-tl188805188851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188803188846%_)))
                                              (_%lp-hd188804188849%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188803188846%_))))
                                          (let ((__tmp189642
                                                 (cons _%lp-hd188804188849%_
                                                       _%rand188806188843%_)))
                                            (declare (not safe))
                                            (_%loop188802188838%_
                                             _%lp-tl188805188851%_
                                             __tmp189642))))
                                      (let ((_%rand188807188854%_
                                             (reverse _%rand188806188843%_)))
                                        (_%__kont189226189227%_
                                         _%rand188807188854%_
                                         _%hd188797188828%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop188802188838%_ _%target188799188833%_ '())))))
                   (_%__match189267189268%_
                    (lambda (_%e188772188893%_
                             _%hd188771188896%_
                             _%tl188770188898%_
                             _%e188775188901%_
                             _%hd188774188904%_
                             _%tl188773188906%_
                             _%e188778188909%_
                             _%hd188777188912%_
                             _%tl188776188914%_
                             _%e188781188917%_
                             _%hd188780188920%_
                             _%tl188779188922%_
                             _%__splice189224189225%_
                             _%target188782188925%_
                             _%tl188784188927%_)
                      (letrec ((_%loop188785188930%_
                                (lambda (_%hd188783188933%_
                                         _%rand188789188935%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd188783188933%_))
                                      (let ((_%e188786188938%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd188783188933%_))))
                                        (let ((_%lp-tl188788188943%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e188786188938%_)))
                                              (_%lp-hd188787188941%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e188786188938%_))))
                                          (let ((__tmp189643
                                                 (cons _%lp-hd188787188941%_
                                                       _%rand188789188935%_)))
                                            (declare (not safe))
                                            (_%loop188785188930%_
                                             _%lp-tl188788188943%_
                                             __tmp189643))))
                                      (let ((_%rand188790188946%_
                                             (reverse _%rand188789188935%_)))
                                        (_%__kont189222189223%_
                                         _%rand188790188946%_
                                         _%hd188780188920%_))))))
                        (let ()
                          (declare (not safe))
                          (_%loop188785188930%_
                           _%target188782188925%_
                           '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189220189221%_))
                  (let ((_%e188772188893%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189220189221%_))))
                    (let ((_%tl188770188898%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e188772188893%_)))
                          (_%hd188771188896%_
                           (let ()
                             (declare (not safe))
                             (##car _%e188772188893%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl188770188898%_))
                          (let ((_%e188775188901%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl188770188898%_))))
                            (let ((_%tl188773188906%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e188775188901%_)))
                                  (_%hd188774188904%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e188775188901%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd188774188904%_))
                                  (let ((_%e188778188909%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd188774188904%_))))
                                    (let ((_%tl188776188914%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e188778188909%_)))
                                          (_%hd188777188912%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e188778188909%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd188777188912%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd188777188912%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl188776188914%_))
                                                  (let ((_%e188781188917%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl188776188914%_))))
                                                    (let ((_%tl188779188922%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e188781188917%_)))
                                                          (_%hd188780188920%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e188781188917%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl188779188922%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl188773188906%_))
                      (let ((_%__splice189224189225%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl188773188906%_
                                '0))))
                        (let ((_%tl188784188927%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189224189225%_ '1)))
                              (_%target188782188925%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189224189225%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188784188927%_))
                              (_%__match189267189268%_
                               _%e188772188893%_
                               _%hd188771188896%_
                               _%tl188770188898%_
                               _%e188775188901%_
                               _%hd188774188904%_
                               _%tl188773188906%_
                               _%e188778188909%_
                               _%hd188777188912%_
                               _%tl188776188914%_
                               _%e188781188917%_
                               _%hd188780188920%_
                               _%tl188779188922%_
                               _%__splice189224189225%_
                               _%target188782188925%_
                               _%tl188784188927%_)
                              (let ()
                                (declare (not safe))
                                (_%g188766188812%_)))))
                      (let () (declare (not safe)) (_%g188766188812%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl188773188906%_))
                      (let ((_%__splice189228189229%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl188773188906%_
                                '0))))
                        (let ((_%tl188801188835%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189228189229%_ '1)))
                              (_%target188799188833%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice189228189229%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl188801188835%_))
                              (_%__match189287189288%_
                               _%e188772188893%_
                               _%hd188771188896%_
                               _%tl188770188898%_
                               _%e188775188901%_
                               _%hd188774188904%_
                               _%tl188773188906%_
                               _%__splice189228189229%_
                               _%target188799188833%_
                               _%tl188801188835%_)
                              (let ()
                                (declare (not safe))
                                (_%g188766188812%_)))))
                      (let () (declare (not safe)) (_%g188766188812%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl188773188906%_))
                                                      (let ((_%__splice189228189229%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl188773188906%_ '0))))
                (let ((_%tl188801188835%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189228189229%_ '1)))
                      (_%target188799188833%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice189228189229%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl188801188835%_))
                      (_%__match189287189288%_
                       _%e188772188893%_
                       _%hd188771188896%_
                       _%tl188770188898%_
                       _%e188775188901%_
                       _%hd188774188904%_
                       _%tl188773188906%_
                       _%__splice189228189229%_
                       _%target188799188833%_
                       _%tl188801188835%_)
                      (let () (declare (not safe)) (_%g188766188812%_)))))
              (let () (declare (not safe)) (_%g188766188812%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl188773188906%_))
                                                  (let ((_%__splice189228189229%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl188773188906%_
                                                            '0))))
                                                    (let ((_%tl188801188835%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189228189229%_
                                                              '1)))
                                                          (_%target188799188833%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189228189229%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl188801188835%_))
                                                          (_%__match189287189288%_
                                                           _%e188772188893%_
                                                           _%hd188771188896%_
                                                           _%tl188770188898%_
                                                           _%e188775188901%_
                                                           _%hd188774188904%_
                                                           _%tl188773188906%_
                                                           _%__splice189228189229%_
                                                           _%target188799188833%_
                                                           _%tl188801188835%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g188766188812%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g188766188812%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl188773188906%_))
                                              (let ((_%__splice189228189229%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl188773188906%_
                                                        '0))))
                                                (let ((_%tl188801188835%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice189228189229%_
                                                          '1)))
                                                      (_%target188799188833%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice189228189229%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl188801188835%_))
                                                      (_%__match189287189288%_
                                                       _%e188772188893%_
                                                       _%hd188771188896%_
                                                       _%tl188770188898%_
                                                       _%e188775188901%_
                                                       _%hd188774188904%_
                                                       _%tl188773188906%_
                                                       _%__splice189228189229%_
                                                       _%target188799188833%_
                                                       _%tl188801188835%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g188766188812%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g188766188812%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl188773188906%_))
                                      (let ((_%__splice189228189229%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl188773188906%_
                                                '0))))
                                        (let ((_%tl188801188835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189228189229%_
                                                  '1)))
                                              (_%target188799188833%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189228189229%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl188801188835%_))
                                              (_%__match189287189288%_
                                               _%e188772188893%_
                                               _%hd188771188896%_
                                               _%tl188770188898%_
                                               _%e188775188901%_
                                               _%hd188774188904%_
                                               _%tl188773188906%_
                                               _%__splice189228189229%_
                                               _%target188799188833%_
                                               _%tl188801188835%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g188766188812%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g188766188812%_))))))
                          (let () (declare (not safe)) (_%g188766188812%_)))))
                  (let () (declare (not safe)) (_%g188766188812%_))))))))
    (define gxc#!procedure::optimize-call
      (lambda (_%self188724%_ _%ctx188725%_ _%stx188726%_ _%args188727%_)
        (let ()
          (let ((_%self188730%_ _%self188724%_))
            (let ()
              (if (let ((__method189611
                         (let ()
                           (declare (not safe))
                           (__method-ref _%self188730%_ 'check-arguments))))
                    (if __method189611
                        (__method189611
                         _%self188730%_
                         _%ctx188725%_
                         _%stx188726%_
                         _%args188727%_)
                        (let ()
                          (declare (not safe))
                          (error '"Missing method"
                                 _%self188730%_
                                 'check-arguments))))
                  (let* ((_%signature188740%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self188730%_
                             '2
                             '#f
                             '#f)))
                         (_%signature188742%_ _%signature188740%_))
                    (let ((_%$e188752%_
                           (if _%signature188742%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%signature188742%_
                                  '4
                                  '#f
                                  '#f))
                               '#f)))
                      (if _%$e188752%_
                          ((lambda (_%unchecked188755%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#symbol-in-local-scope?
                                    _%unchecked188755%_))
                                 (let ((__tmp189644
                                        (let ((__tmp189645
                                               (let ((__tmp189647
                                                      (cons '%#ref
                                                            (cons _%unchecked188755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp189646
                                                      (map (lambda (_%g188756188758%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _%ctx188725%_ _%g188756188758%_)))
                   _%args188727%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp189647
                                                       __tmp189646))))
                                          (declare (not safe))
                                          (cons '%#call __tmp189645))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp189644
                                    _%stx188726%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#xform-call%
                                    _%ctx188725%_
                                    _%stx188726%_))))
                           _%$e188752%_)
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call%
                               _%ctx188725%_
                               _%stx188726%_))))))
                  (let ()
                    (declare (not safe))
                    (gxc#xform-call% _%ctx188725%_ _%stx188726%_))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'optimize-call
       gxc#!procedure::optimize-call
       '#f))
    (define gxc#!procedure::check-arguments
      (lambda (_%self188475%_ _%ctx188476%_ _%stx188477%_ _%args188478%_)
        (let ()
          (let ((_%self188481%_ _%self188475%_))
            (let ()
              (let ((_%signature188490188492%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self188481%_ '2 '#f '#f))))
                (if _%signature188490188492%_
                    (let* ((_%signature188495%_ _%signature188490188492%_)
                           (_%argument-types188496188498%_
                            (##direct-structure-ref
                             _%signature188495%_
                             '3
                             gxc#!signature::t
                             '#f)))
                      (if _%argument-types188496188498%_
                          (let ((_%argument-types188501%_
                                 _%argument-types188496188498%_))
                            (let ((_%argument-types188506%_
                                   (let ((__tmp189648
                                          (lambda (_%t188504%_)
                                            (if _%t188504%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   _%stx188477%_
                                                   _%t188504%_))
                                                '#f))))
                                     (declare (not safe))
                                     (gxc#map*
                                      __tmp189648
                                      _%argument-types188501%_))))
                              (let _%loop188508%_ ((_%rest-args188510%_
                                                    _%args188478%_)
                                                   (_%rest-types188511%_
                                                    _%argument-types188506%_)
                                                   (_%result188512%_ '#t))
                                (let* ((_%rest-args188513188521%_
                                        _%rest-args188510%_)
                                       (_%else188515188529%_
                                        (lambda () _%result188512%_))
                                       (_%K188517188590%_
                                        (lambda (_%rest-args188532%_
                                                 _%arg188533%_)
                                          (let* ((_%rest-types188534188545%_
                                                  _%rest-types188511%_)
                                                 (_%E188538188549%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%rest-types188534188545%_
                                                             '([type
                                                                .
                                                                rest-types])
                                                             '([])
                                                             '(tail-type)))
                                                    '#!void)))
                                            (let ((_%K188541188578%_
                                                   (lambda (_%rest-types188575%_
                                                            _%type188576%_)
                                                     (let ((__tmp189649
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#check-expression-type!
                           _%stx188477%_
                           _%arg188533%_
                           _%type188576%_))
                        _%result188512%_
                        '#f)))
               (declare (not safe))
               (_%loop188508%_
                _%rest-args188532%_
                _%rest-types188575%_
                __tmp189649))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%K188540188569%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#raise-compile-error
                                                        '"signature arity mismatch"
                                                        _%stx188477%_
                                                        _%argument-types188506%_))))
                                                  (_%K188539188559%_
                                                   (lambda (_%tail-type188553%_)
                                                     (if (let ((__tmp189650
                                                                (lambda (_%g188554188556%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#check-expression-type!
                             _%stx188477%_
                             _%g188554188556%_
                             _%tail-type188553%_)))))
                   (declare (not safe))
                   (__andmap1 __tmp189650 _%rest-args188532%_))
                 _%result188512%_
                 '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_%try-match188536188572%_
                                                     (lambda ()
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##null? _%rest-types188534188545%_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%K188540188569%_))
                                                           (let ((_%tail-type188562%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%rest-types188534188545%_))
                     (declare (not safe))
                     (_%K188539188559%_ _%tail-type188562%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%rest-types188534188545%_))
                                                    (let ((_%tl188543188583%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%rest-types188534188545%_)))
                                                          (_%hd188542188581%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%rest-types188534188545%_))))
                                                      (let ((_%type188586%_
                                                             _%hd188542188581%_)
                                                            (_%rest-types188588%_
                                                             _%tl188543188583%_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%K188541188578%_
                                                           _%rest-types188588%_
                                                           _%type188586%_))))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%try-match188536188572%_)))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%rest-args188513188521%_))
                                      (let ((_%hd188518188593%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%rest-args188513188521%_)))
                                            (_%tl188519188595%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%rest-args188513188521%_))))
                                        (let* ((_%arg188598%_
                                                _%hd188518188593%_)
                                               (_%rest-args188600%_
                                                _%tl188519188595%_))
                                          (declare (not safe))
                                          (_%K188517188590%_
                                           _%rest-args188600%_
                                           _%arg188598%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%else188515188529%_)))))))
                          '#f))
                    '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!procedure::t
       'check-arguments
       gxc#!procedure::check-arguments
       '#f))
    (define gxc#!primitive-predicate::optimize-call
      (lambda (_%self188286%_ _%ctx188287%_ _%stx188288%_ _%args188289%_)
        (let ()
          (let ((_%self188292%_ _%self188286%_))
            (let ()
              (let* ((_%g188302188312%_
                      (lambda (_%g188303188309%_)
                        (let ()
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g188303188309%_))))
                     (_%g188301188350%_
                      (lambda (_%g188303188315%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g188303188315%_))
                            (let ((_%e188307188317%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g188303188315%_))))
                              (let ((_%hd188306188320%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e188307188317%_)))
                                    (_%tl188305188322%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e188307188317%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl188305188322%_))
                                    ((lambda (_%L188325%_)
                                       (let* ((_%klass188337%_
                                               (let ((__tmp189651
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self188292%_
                                                         '1
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  _%stx188288%_
                                                  __tmp189651)))
                                              (_%object188339%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%ctx188287%_
                                                  _%L188325%_)))
                                              (_%instance?188344%_
                                               (let ((_%$e188341%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#expression-type?
                                                         _%object188339%_
                                                         _%klass188337%_))))
                                                 (if _%$e188341%_
                                                     _%$e188341%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#expression-type?
                                                        _%L188325%_
                                                        _%klass188337%_))))))
                                         (if _%instance?188344%_
                                             (let ((__tmp189652
                                                    (if (or (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#expression-no-side-effects?
                                                               _%object188339%_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#expression-no-side-effects?
                                                               _%L188325%_)))
                                                        (cons '%#quote
                                                              (cons '#t '()))
                                                        (cons '%#begin
                                                              (cons _%object188339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '#t '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp189652
                                                _%stx188288%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#xform-call%
                                                _%ctx188287%_
                                                _%stx188288%_)))))
                                     _%hd188306188320%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g188302188312%_ _%g188303188315%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g188302188312%_ _%g188303188315%_))))))
                (declare (not safe))
                (_%g188301188350%_ _%args188289%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       'optimize-call
       gxc#!primitive-predicate::optimize-call
       '#f))
    (define gxc#!predicate::optimize-call
      (lambda (_%self188082%_ _%ctx188083%_ _%stx188084%_ _%args188085%_)
        (let ()
          (let ((_%self188088%_ _%self188082%_))
            (let ()
              (let* ((_%g188098188108%_
                      (lambda (_%g188099188105%_)
                        (let ()
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g188099188105%_))))
                     (_%g188097188161%_
                      (lambda (_%g188099188111%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g188099188111%_))
                            (let ((_%e188103188113%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g188099188111%_))))
                              (let ((_%hd188102188116%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e188103188113%_)))
                                    (_%tl188101188118%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e188103188113%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl188101188118%_))
                                    ((lambda (_%L188121%_)
                                       (let* ((_%klass188133%_
                                               (let ((__tmp189653
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self188088%_
                                                         '1
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  _%stx188084%_
                                                  __tmp189653)))
                                              (_%object188135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%ctx188083%_
                                                  _%L188121%_)))
                                              (_%instance?188140%_
                                               (let ((_%$e188137%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#expression-type?
                                                         _%object188135%_
                                                         _%klass188133%_))))
                                                 (if _%$e188137%_
                                                     _%$e188137%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#expression-type?
                                                        _%L188121%_
                                                        _%klass188133%_))))))
                                         (let ((_%klass188143%_
                                                _%klass188133%_))
                                           (if _%instance?188140%_
                                               (let ()
                                                 (let ((__tmp189654
                                                        (if (or (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#expression-no-side-effects? _%object188135%_))
                        (let ()
                          (declare (not safe))
                          (gxc#expression-no-side-effects? _%L188121%_)))
                    (cons '%#quote (cons '#t '()))
                    (cons '%#begin (cons _%object188135%_ (cons '#t '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp189654
                                                    _%stx188084%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass188143%_
                                                      '8
                                                      '#f
                                                      '#f))
                                                   (let ()
                                                     (let ((__tmp189655
                                                            (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#quote
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass188143%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons _%object188135%_ '())))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp189655 _%stx188084%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass188143%_
                                                          '7
                                                          '#f
                                                          '#f))
                                                       (let ()
                                                         (let ((__tmp189656
                                                                (cons '%#struct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%klass188143%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons _%object188135%_ '())))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp189656 _%stx188084%_)))
               (let ()
                 (let ((__tmp189657
                        (cons '%#call
                              (cons (cons '%#ref (cons 'class-instance? '()))
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self188088%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons _%object188135%_ '()))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp189657 _%stx188084%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd188102188116%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g188098188108%_ _%g188099188111%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g188098188108%_ _%g188099188111%_))))))
                (declare (not safe))
                (_%g188097188161%_ _%args188085%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!predicate::t
       'optimize-call
       gxc#!predicate::optimize-call
       '#f))
    (define gxc#expression-no-side-effects?
      (lambda (_%stx187745%_)
        (let* ((_%__stx189297189298%_ _%stx187745%_)
               (_%g187750187791%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189297189298%_)))))
          (let ((_%__kont189299189300%_ (lambda () '#t))
                (_%__kont189301189302%_ (lambda () '#t))
                (_%__kont189303189304%_
                 (lambda (_%L187859%_ _%L187860%_)
                   (let ((_%rator-type187881187883%_
                          (let ((__tmp189658
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _%L187860%_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp189658))))
                     (if _%rator-type187881187883%_
                         (let* ((_%rator-type187886%_
                                 _%rator-type187881187883%_)
                                (_%rator-signature187887187889%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%rator-type187886%_
                                        'gxc#!procedure::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%rator-type187886%_
                                        '2
                                        '#f
                                        '#f))
                                     '#f)))
                           (if _%rator-signature187887187889%_
                               (let* ((_%rator-signature187892%_
                                       _%rator-signature187887187889%_)
                                      (_%rator-effect187893187895%_
                                       (if _%rator-signature187892%_
                                           (##direct-structure-ref
                                            _%rator-signature187892%_
                                            '2
                                            gxc#!signature::t
                                            '#f)
                                           '#f)))
                                 (if _%rator-effect187893187895%_
                                     (let ((_%rator-effect187898%_
                                            _%rator-effect187893187895%_))
                                       (if (or (equal? '(pure)
                                                       _%rator-effect187898%_)
                                               (equal? '(alloc)
                                                       _%rator-effect187898%_))
                                           (let ((__tmp189659
                                                  (let ((__tmp189660
                                                         (lambda (_%g187903187906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g187904187908%_)
                   (cons _%g187903187906%_ _%g187904187908%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     __tmp189660
                                                     '()
                                                     _%L187859%_))))
                                             (declare (not safe))
                                             (__andmap1
                                              gxc#expression-no-side-effects?
                                              __tmp189659))
                                           '#f))
                                     '#f))
                               '#f))
                         '#f))))
                (_%__kont189307189308%_ (lambda () '#f)))
            (let ((_%__match189386189387%_
                   (lambda (_%e187768187803%_
                            _%hd187767187806%_
                            _%tl187766187808%_
                            _%e187771187811%_
                            _%hd187770187814%_
                            _%tl187769187816%_
                            _%e187774187819%_
                            _%hd187773187822%_
                            _%tl187772187824%_
                            _%e187777187827%_
                            _%hd187776187830%_
                            _%tl187775187832%_
                            _%__splice189305189306%_
                            _%target187778187835%_
                            _%tl187780187837%_)
                     (letrec ((_%loop187781187840%_
                               (lambda (_%hd187779187843%_
                                        _%rand187785187845%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd187779187843%_))
                                     (let ((_%e187782187848%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd187779187843%_))))
                                       (let ((_%lp-tl187784187853%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e187782187848%_)))
                                             (_%lp-hd187783187851%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e187782187848%_))))
                                         (let ((__tmp189661
                                                (cons _%lp-hd187783187851%_
                                                      _%rand187785187845%_)))
                                           (declare (not safe))
                                           (_%loop187781187840%_
                                            _%lp-tl187784187853%_
                                            __tmp189661))))
                                     (let ((_%rand187786187856%_
                                            (reverse _%rand187785187845%_)))
                                       (_%__kont189303189304%_
                                        _%rand187786187856%_
                                        _%hd187776187830%_))))))
                       (let ()
                         (declare (not safe))
                         (_%loop187781187840%_ _%target187778187835%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189297189298%_))
                  (let ((_%e187754187939%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189297189298%_))))
                    (let ((_%tl187752187944%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e187754187939%_)))
                          (_%hd187753187942%_
                           (let ()
                             (declare (not safe))
                             (##car _%e187754187939%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd187753187942%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd187753187942%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl187752187944%_))
                                  (let ((_%e187757187947%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl187752187944%_))))
                                    (let ((_%tl187755187952%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e187757187947%_)))
                                          (_%hd187756187950%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e187757187947%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl187755187952%_))
                                          (_%__kont189299189300%_)
                                          (_%__kont189307189308%_))))
                                  (_%__kont189307189308%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd187753187942%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl187752187944%_))
                                      (let ((_%e187763187924%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl187752187944%_))))
                                        (let ((_%tl187761187929%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e187763187924%_)))
                                              (_%hd187762187927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e187763187924%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187761187929%_))
                                              (_%__kont189301189302%_)
                                              (_%__kont189307189308%_))))
                                      (_%__kont189307189308%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#call
                                         _%hd187753187942%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl187752187944%_))
                                          (let ((_%e187771187811%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl187752187944%_))))
                                            (let ((_%tl187769187816%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e187771187811%_)))
                                                  (_%hd187770187814%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e187771187811%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd187770187814%_))
                                                  (let ((_%e187774187819%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd187770187814%_))))
                                                    (let ((_%tl187772187824%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e187774187819%_)))
                                                          (_%hd187773187822%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e187774187819%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd187773187822%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#ref _%hd187773187822%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl187772187824%_))
                          (let ((_%e187777187827%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl187772187824%_))))
                            (let ((_%tl187775187832%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e187777187827%_)))
                                  (_%hd187776187830%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e187777187827%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl187775187832%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl187769187816%_))
                                      (let ((_%__splice189305189306%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl187769187816%_
                                                '0))))
                                        (let ((_%tl187780187837%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189305189306%_
                                                  '1)))
                                              (_%target187778187835%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice189305189306%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl187780187837%_))
                                              (_%__match189386189387%_
                                               _%e187754187939%_
                                               _%hd187753187942%_
                                               _%tl187752187944%_
                                               _%e187771187811%_
                                               _%hd187770187814%_
                                               _%tl187769187816%_
                                               _%e187774187819%_
                                               _%hd187773187822%_
                                               _%tl187772187824%_
                                               _%e187777187827%_
                                               _%hd187776187830%_
                                               _%tl187775187832%_
                                               _%__splice189305189306%_
                                               _%target187778187835%_
                                               _%tl187780187837%_)
                                              (_%__kont189307189308%_))))
                                      (_%__kont189307189308%_))
                                  (_%__kont189307189308%_))))
                          (_%__kont189307189308%_))
                      (_%__kont189307189308%_))
                  (_%__kont189307189308%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont189307189308%_))))
                                          (_%__kont189307189308%_))
                                      (_%__kont189307189308%_))))
                          (_%__kont189307189308%_))))
                  (_%__kont189307189308%_)))))))
    (define gxc#expression-type?
      (lambda (_%stx187740%_ _%klass187741%_)
        (let ((_%expr-type187743%_
               (let ()
                 (declare (not safe))
                 (gxc#apply-basic-expression-type _%stx187740%_))))
          (if _%expr-type187743%_
              (let ()
                (declare (not safe))
                (gxc#!type-subtype? _%expr-type187743%_ _%klass187741%_))
              '#f))))
    (define gxc#check-expression-type!
      (lambda (_%stx187718%_ _%expr187719%_ _%type187720%_)
        (if (let () (declare (not safe)) (not _%type187720%_))
            (let () '#f)
            (let ((_%$e187723%_
                   (eq? (##structure-ref _%type187720%_ '1 gxc#!type::t '#f)
                        't)))
              (if _%$e187723%_
                  _%$e187723%_
                  (let ()
                    (let ((_%expr-type187727%_
                           (let ()
                             (declare (not safe))
                             (gxc#apply-basic-expression-type
                              _%expr187719%_))))
                      (if (let ()
                            (declare (not safe))
                            (not _%expr-type187727%_))
                          (let () '#f)
                          (if (eq? 't
                                   (##structure-ref
                                    _%expr-type187727%_
                                    '1
                                    gxc#!type::t
                                    '#f))
                              (let () '#f)
                              (let ((_%$e187731%_
                                     (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _%expr-type187727%_
                                        'gxc#!abort::t))))
                                (if _%$e187731%_
                                    _%$e187731%_
                                    (let ((_%$e187734%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#!type-subtype?
                                              _%expr-type187727%_
                                              _%type187720%_))))
                                      (if _%$e187734%_
                                          _%$e187734%_
                                          (if (let ()
                                                (declare (not safe))
                                                (gxc#!interface-instance?
                                                 _%type187720%_))
                                              (let () '#f)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gxc#!type-subtype?
                                                     _%type187720%_
                                                     _%expr-type187727%_))
                                                  (let () '#f)
                                                  (let ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#raise-compile-error
                                                       '"signature type mismatch"
                                                       _%stx187718%_
                                                       _%expr187719%_
                                                       _%expr-type187727%_
                                                       _%type187720%_))))))))))))))))))
    (define gxc#!constructor::optimize-call
      (lambda (_%self187532%_ _%ctx187533%_ _%stx187534%_ _%args187535%_)
        (let ()
          (let ((_%self187538%_ _%self187532%_))
            (let ()
              (let* ((_%klass187548%_
                      (let ((__tmp189662
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self187538%_
                                '1
                                '#f
                                '#f))))
                        (declare (not safe))
                        (gxc#optimizer-resolve-class
                         _%stx187534%_
                         __tmp189662)))
                     (_%fields187550%_
                      (length (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass187548%_
                                 '5
                                 '#f
                                 '#f))))
                     (_%args187556%_
                      (map (lambda (_%g187551187553%_)
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%ctx187533%_
                                _%g187551187553%_)))
                           _%args187535%_))
                     (_%inline-make-object187558%_
                      (cons '%#begin-annotation
                            (cons (cons '@type
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%self187538%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#call
                                              (cons (cons '%#ref
                                                          (cons '##structure
                                                                '()))
                                                    (cons (cons '%#ref
                                                                (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%self187538%_
                                 '1
                                 '#f
                                 '#f))
                              '()))
                  (make-list _%fields187550%_ '(%#quote #f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                (let ((_%klass187561%_ _%klass187548%_))
                  (let ((_%$e187575%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass187561%_
                            '6
                            '#f
                            '#f))))
                    (if _%$e187575%_
                        ((lambda (_%ctor187578%_)
                           (let ((_%$obj187580%_
                                  (let ((__tmp189663
                                         (let ()
                                           (declare (not safe))
                                           (##gensym '__obj))))
                                    (declare (not safe))
                                    (make-symbol__0 __tmp189663)))
                                 (_%ctor-impl187581%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!class-lookup-method
                                     _%klass187561%_
                                     _%ctor187578%_))))
                             (let ((__tmp189664
                                    (cons '%#let-values
                                          (cons (cons (cons (cons _%$obj187580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _%inline-make-object187558%_ '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons '%#begin
                                                            (cons (if _%ctor-impl187581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _%ctor-impl187581%_ '()))
                                          (cons (cons '%#ref
                                                      (cons _%$obj187580%_
                                                            '()))
                                                _%args187556%_)))
                              (let ((_%$ctor187583%_
                                     (let ((__tmp189665
                                            (let ()
                                              (declare (not safe))
                                              (##gensym '__constructor))))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp189665))))
                                (cons '%#let-values
                                      (cons (cons (cons (cons _%$ctor187583%_
                                                              '())
                                                        (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#ref (cons 'direct-method-ref '()))
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self187538%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj187580%_ '()))
                                              (cons (cons '%#quote
                                                          (cons _%ctor187578%_
                                                                '()))
                                                    '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (cons (cons '%#if
                                                        (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$ctor187583%_ '()))
                      (cons (cons '%#call
                                  (cons (cons '%#ref
                                              (cons _%$ctor187583%_ '()))
                                        (cons (cons '%#ref
                                                    (cons _%$obj187580%_ '()))
                                              _%args187556%_)))
                            (cons (cons '%#call
                                        (cons (cons '%#ref (cons 'error '()))
                                              (cons (cons '%#quote
                                                          (cons '"missing constructor method implementation"
                                                                '()))
                                                    (cons (cons '%#quote
                                                                (cons 'class:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#ref
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self187538%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#quote (cons 'method: '()))
                              (cons (cons '%#quote (cons _%ctor187578%_ '()))
                                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                          (cons (cons '%#ref (cons _%$obj187580%_ '())) '())))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (declare (not safe))
                               (gxc#xform-wrap-source
                                __tmp189664
                                _%stx187534%_))))
                         _%$e187575%_)
                        (let ((_%$e187585%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass187561%_
                                  '10
                                  '#f
                                  '#f))))
                          (if _%$e187585%_
                              ((lambda (_%metaclass187588%_)
                                 (let* ((_%$obj187590%_
                                         (let ((__tmp189666
                                                (let ()
                                                  (declare (not safe))
                                                  (##gensym '__obj))))
                                           (declare (not safe))
                                           (make-symbol__0 __tmp189666)))
                                        (_%metakons187592%_
                                         (let ((__tmp189667
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   _%stx187534%_
                                                   _%metaclass187588%_))))
                                           (declare (not safe))
                                           (gxc#!class-lookup-method
                                            __tmp189667
                                            'instance-init!))))
                                   (let ((__tmp189668
                                          (cons '%#let-values
                                                (cons (cons (cons (cons _%$obj187590%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons _%inline-make-object187558%_ '()))
                    '())
              (cons (cons '%#begin
                          (cons (if _%metakons187592%_
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons _%metakons187592%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self187538%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#ref (cons _%$obj187590%_ '())) _%args187556%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'call-method '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self187538%_
                             '1
                             '#f
                             '#f))
                          '()))
              (cons (cons '%#quote (cons 'instance-init! '()))
                    (cons (cons '%#ref (cons _%$obj187590%_ '()))
                          _%args187556%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (cons (cons '%#ref (cons _%$obj187590%_ '()))
                                      '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (gxc#xform-wrap-source
                                      __tmp189668
                                      _%stx187534%_))))
                               _%$e187585%_)
                              (if (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%klass187561%_
                                     '7
                                     '#f
                                     '#f))
                                  (let ()
                                    (if (let ((__tmp189669
                                               (let ()
                                                 (declare (not safe))
                                                 (##length _%args187556%_))))
                                          (declare (not safe))
                                          (##fx= __tmp189669 _%fields187550%_))
                                        (let ((__tmp189670
                                               (cons '%#begin-annotation
                                                     (cons (cons '@type
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%self187538%_
                                  '1
                                  '#f
                                  '#f))
                               '()))
                   (cons (cons '%#call
                               (cons (cons '%#ref (cons '##structure '()))
                                     (cons (cons '%#ref
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%self187538%_
                                                          '1
                                                          '#f
                                                          '#f))
                                                       '()))
                                           _%args187556%_)))
                         '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp189670
                                           _%stx187534%_))
                                        (let ((__tmp189672
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%self187538%_
                                                  '1
                                                  '#f
                                                  '#f)))
                                              (__tmp189671
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass187561%_
                                                  '5
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"illegal struct constructor application; arity mismatch"
                                           _%stx187534%_
                                           __tmp189672
                                           __tmp189671))))
                                  (let ()
                                    (let ((_%$obj187597%_
                                           (let ((__tmp189673
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__obj))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp189673))))
                                      (let _%lp187599%_ ((_%rest187601%_
                                                          _%args187556%_)
                                                         (_%initializers187602%_
                                                          '()))
                                        (let* ((_%__stx189389189390%_
                                                _%rest187601%_)
                                               (_%g187606187627%_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%__stx189389189390%_)))))
                                          (let ((_%__kont189391189392%_
                                                 (lambda (_%L187681%_
                                                          _%L187682%_
                                                          _%L187683%_)
                                                   (let* ((_%slot187710%_
                                                           (let ((__tmp189674
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%L187683%_))))
                     (declare (not safe))
                     (keyword->symbol __tmp189674)))
                  (_%off187712%_
                   (let ()
                     (declare (not safe))
                     (gxc#!class-slot->field-offset
                      _%klass187561%_
                      _%slot187710%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%off187712%_
                                                         (let ((__tmp189675
                                                                (cons (cons _%off187712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%L187682%_)
                              _%initializers187602%_)))
                   (declare (not safe))
                   (_%lp187599%_ _%L187681%_ __tmp189675))
                 (let ((__tmp189676
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%self187538%_
                           '1
                           '#f
                           '#f))))
                   (declare (not safe))
                   (gxc#raise-compile-error
                    '"unknown slot"
                    _%stx187534%_
                    __tmp189676
                    _%slot187710%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont189393189394%_
                                                 (lambda ()
                                                   (let ((__tmp189677
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _%$obj187597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons _%inline-make-object187558%_
                                                '()))
                                    '())
                              (cons (cons '%#begin
                                          (let ((__tmp189680
                                                 (cons (cons '%#ref
                                                             (cons _%$obj187597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp189678
                                                 (let ((__tmp189679
                                                        (lambda (_%i187641%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%r187642%_)
                  (cons (cons '%#struct-unchecked-set!
                              (cons (cons '%#ref
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self187538%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#quote
                                                (cons (car _%i187641%_) '()))
                                          (cons (cons '%#ref
                                                      (cons _%$obj187597%_
                                                            '()))
                                                (cons (cdr _%i187641%_)
                                                      '())))))
                        _%r187642%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldl1
                                                    __tmp189679
                                                    '()
                                                    _%initializers187602%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp189680
                                             __tmp189678)))
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp189677
                                                      _%stx187534%_))))
                                                (_%__kont189395189396%_
                                                 (lambda ()
                                                   (let ((__tmp189681
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _%$obj187597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons _%inline-make-object187558%_
                                                '()))
                                    '())
                              (cons (cons '%#begin
                                          (cons (cons '%#call
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'class-instance-init! '()))
                    (cons (cons '%#ref (cons _%$obj187597%_ '()))
                          _%args187556%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons '%#ref
                                                            (cons _%$obj187597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp189681
                                                      _%stx187534%_)))))
                                            (let* ((_%g187604187644%_
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%__stx189389189390%_))
                                                          (_%__kont189393189394%_)
                                                          (_%__kont189395189396%_))))
                                                   (_%__match189426189427%_
                                                    (lambda (_%e187613187649%_
                                                             _%hd187612187652%_
                                                             _%tl187611187654%_
                                                             _%e187616187657%_
                                                             _%hd187615187660%_
                                                             _%tl187614187662%_
                                                             _%e187619187665%_
                                                             _%hd187618187668%_
                                                             _%tl187617187670%_
                                                             _%e187622187673%_
                                                             _%hd187621187676%_
                                                             _%tl187620187678%_)
                                                      (let ((_%L187681%_
                                                             _%tl187620187678%_)
                                                            (_%L187682%_
                                                             _%hd187621187676%_)
                                                            (_%L187683%_
                                                             _%hd187618187668%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-keyword?
                                                               _%L187683%_))
                                                            (_%__kont189391189392%_
                                                             _%L187681%_
                                                             _%L187682%_
                                                             _%L187683%_)
                                                            (_%__kont189395189396%_))))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx189389189390%_))
                                                  (let ((_%e187613187649%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%__stx189389189390%_))))
                                                    (let ((_%tl187611187654%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e187613187649%_)))
                                                          (_%hd187612187652%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e187613187649%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd187612187652%_))
                                                          (let ((_%e187616187657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd187612187652%_))))
                    (let ((_%tl187614187662%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e187616187657%_)))
                          (_%hd187615187660%_
                           (let ()
                             (declare (not safe))
                             (##car _%e187616187657%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd187615187660%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd187615187660%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl187614187662%_))
                                  (let ((_%e187619187665%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl187614187662%_))))
                                    (let ((_%tl187617187670%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e187619187665%_)))
                                          (_%hd187618187668%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e187619187665%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl187617187670%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl187611187654%_))
                                              (let ((_%e187622187673%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl187611187654%_))))
                                                (let ((_%tl187620187678%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e187622187673%_)))
                                                      (_%hd187621187676%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e187622187673%_))))
                                                  (_%__match189426189427%_
                                                   _%e187613187649%_
                                                   _%hd187612187652%_
                                                   _%tl187611187654%_
                                                   _%e187616187657%_
                                                   _%hd187615187660%_
                                                   _%tl187614187662%_
                                                   _%e187619187665%_
                                                   _%hd187618187668%_
                                                   _%tl187617187670%_
                                                   _%e187622187673%_
                                                   _%hd187621187676%_
                                                   _%tl187620187678%_)))
                                              (_%__kont189395189396%_))
                                          (_%__kont189395189396%_))))
                                  (_%__kont189395189396%_))
                              (_%__kont189395189396%_))
                          (_%__kont189395189396%_))))
                  (_%__kont189395189396%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g187604187644%_)))))))))))))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       'optimize-call
       gxc#!constructor::optimize-call
       '#f))
    (define gxc#!accessor::optimize-call
      (lambda (_%self187315%_ _%ctx187316%_ _%stx187317%_ _%args187318%_)
        (let ()
          (let ((_%self187321%_ _%self187315%_))
            (let ()
              (let* ((_%arguments-ok?187331%_
                      (let ((__method189612
                             (let ()
                               (declare (not safe))
                               (__method-ref
                                _%self187321%_
                                'check-arguments))))
                        (if __method189612
                            (__method189612
                             _%self187321%_
                             _%ctx187316%_
                             _%stx187317%_
                             _%args187318%_)
                            (let ()
                              (declare (not safe))
                              (error '"Missing method"
                                     _%self187321%_
                                     'check-arguments)))))
                     (_%g187333187343%_
                      (lambda (_%g187334187340%_)
                        (let ()
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g187334187340%_))))
                     (_%g187332187407%_
                      (lambda (_%g187334187346%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g187334187346%_))
                            (let ((_%e187338187348%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g187334187346%_))))
                              (let ((_%hd187337187351%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187338187348%_)))
                                    (_%tl187336187353%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187338187348%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl187336187353%_))
                                    ((lambda (_%L187356%_)
                                       (let* ((_%klass187369%_
                                               (let ((__tmp189682
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self187321%_
                                                         '1
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  _%stx187317%_
                                                  __tmp189682)))
                                              (_%field187371%_
                                               (let ((__tmp189683
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%self187321%_
                                                         '3
                                                         '#f
                                                         '#f))))
                                                 (declare (not safe))
                                                 (gxc#!class-slot->field-offset
                                                  _%klass187369%_
                                                  __tmp189683)))
                                              (_%object187373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%ctx187316%_
                                                  _%L187356%_))))
                                         (let ((_%klass187376%_
                                                _%klass187369%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%klass187376%_
                                                  '8
                                                  '#f
                                                  '#f))
                                               (let ()
                                                 (let ((__tmp189684
                                                        (cons (if (or _%arguments-ok?187331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp189685
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%self187321%_
                                        '4
                                        '#f
                                        '#f))))
                                (declare (not safe))
                                (not __tmp189685)))
                          '%#struct-unchecked-ref
                          '%#struct-direct-ref)
                      (cons (cons '%#ref
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self187321%_
                                           '1
                                           '#f
                                           '#f))
                                        '()))
                            (cons (cons '%#quote (cons _%field187371%_ '()))
                                  (cons _%object187373%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp189684
                                                    _%stx187317%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%klass187376%_
                                                      '7
                                                      '#f
                                                      '#f))
                                                   (let ()
                                                     (let ((__tmp189686
                                                            (cons (if (or _%arguments-ok?187331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (let ((__tmp189687
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%self187321%_
                                            '4
                                            '#f
                                            '#f))))
                                    (declare (not safe))
                                    (not __tmp189687)))
                              '%#struct-unchecked-ref
                              '%#struct-ref)
                          (cons (cons '%#ref
                                      (cons (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%self187321%_
                                               '1
                                               '#f
                                               '#f))
                                            '()))
                                (cons (cons '%#quote
                                            (cons _%field187371%_ '()))
                                      (cons _%object187373%_ '()))))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp189686 _%stx187317%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%$e187395%_
                                                          (let ((__tmp189688
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%self187321%_
                            '3
                            '#f
                            '#f))))
                    (declare (not safe))
                    (gxc#!class-slot-find-struct
                     _%klass187376%_
                     __tmp189688))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e187395%_
                                                         ((lambda (_%klass187398%_)
                                                            (let ((__tmp189689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (or _%arguments-ok?187331%_
                                         (let ((__tmp189690
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self187321%_
                                                   '4
                                                   '#f
                                                   '#f))))
                                           (declare (not safe))
                                           (not __tmp189690)))
                                     '%#struct-unchecked-ref
                                     '%#struct-ref)
                                 (cons (cons '%#ref
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%self187321%_
                                                      '1
                                                      '#f
                                                      '#f))
                                                   '()))
                                       (cons (cons '%#quote
                                                   (cons _%field187371%_ '()))
                                             (cons _%object187373%_ '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp189689 _%stx187317%_)))
                  _%$e187395%_)
                 (if (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%self187321%_ '4 '#f '#f))
                     (let ()
                       (let ((__tmp189691
                              (let ((_%$obj187404%_
                                     (let ((__tmp189692
                                            (let ()
                                              (declare (not safe))
                                              (##gensym '__obj))))
                                       (declare (not safe))
                                       (make-symbol__0 __tmp189692))))
                                (cons '%#let-values
                                      (cons (cons (cons (cons _%$obj187404%_
                                                              '())
                                                        (cons _%object187373%_
                                                              '()))
                                                  '())
                                            (cons (cons '%#if
                                                        (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons '%#quote
                                        (cons (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%klass187376%_
                                                 '1
                                                 '#f
                                                 '#f))
                                              '()))
                                  (cons (cons '%#ref (cons _%$obj187404%_ '()))
                                        '())))
                      (cons (cons '%#struct-unchecked-ref
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self187321%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons _%field187371%_ '()))
                                              (cons (cons '%#ref
                                                          (cons _%$obj187404%_
                                                                '()))
                                                    '()))))
                            (cons (if _%arguments-ok?187331%_
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'unchecked-slot-ref
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _%$obj187404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self187321%_
                                     '3
                                     '#f
                                     '#f))
                                  '()))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'class-slot-ref
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self187321%_
                               '1
                               '#f
                               '#f))
                            '()))
                (cons (cons '%#ref (cons _%$obj187404%_ '()))
                      (cons (cons '%#quote
                                  (cons (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           _%self187321%_
                                           '3
                                           '#f
                                           '#f))
                                        '()))
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp189691 _%stx187317%_)))
                     (let ()
                       (let ((__tmp189693
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons 'unchecked-slot-ref '()))
                                          (cons _%object187373%_
                                                (cons (cons '%#quote
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%self187321%_
                             '3
                             '#f
                             '#f))
                          '()))
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source
                          __tmp189693
                          _%stx187317%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd187337187351%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g187333187343%_ _%g187334187346%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g187333187343%_ _%g187334187346%_))))))
                (declare (not safe))
                (_%g187332187407%_ _%args187318%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!accessor::t
       'optimize-call
       gxc#!accessor::optimize-call
       '#f))
    (define gxc#!mutator::optimize-call
      (lambda (_%self187079%_ _%ctx187080%_ _%stx187081%_ _%args187082%_)
        (let ()
          (let ((_%self187085%_ _%self187079%_))
            (let ()
              (let* ((_%arguments-ok?187095%_
                      (let ((__method189613
                             (let ()
                               (declare (not safe))
                               (__method-ref
                                _%self187085%_
                                'check-arguments))))
                        (if __method189613
                            (__method189613
                             _%self187085%_
                             _%ctx187080%_
                             _%stx187081%_
                             _%args187082%_)
                            (let ()
                              (declare (not safe))
                              (error '"Missing method"
                                     _%self187085%_
                                     'check-arguments)))))
                     (_%g187097187111%_
                      (lambda (_%g187098187108%_)
                        (let ()
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g187098187108%_))))
                     (_%g187096187190%_
                      (lambda (_%g187098187114%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%g187098187114%_))
                            (let ((_%e187103187116%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g187098187114%_))))
                              (let ((_%hd187102187119%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e187103187116%_)))
                                    (_%tl187101187121%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e187103187116%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl187101187121%_))
                                    (let ((_%e187106187124%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl187101187121%_))))
                                      (let ((_%hd187105187127%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e187106187124%_)))
                                            (_%tl187104187129%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e187106187124%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl187104187129%_))
                                            ((lambda (_%L187132%_ _%L187133%_)
                                               (let* ((_%klass187149%_
                                                       (let ((__tmp189694
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%self187085%_
                         '1
                         '#f
                         '#f))))
                 (declare (not safe))
                 (gxc#optimizer-resolve-class _%stx187081%_ __tmp189694)))
              (_%field187151%_
               (let ((__tmp189695
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%self187085%_
                         '3
                         '#f
                         '#f))))
                 (declare (not safe))
                 (gxc#!class-slot->field-offset _%klass187149%_ __tmp189695)))
              (_%object187153%_
               (let ()
                 (declare (not safe))
                 (gxc#compile-e__1 _%ctx187080%_ _%L187133%_)))
              (_%value187155%_
               (let ()
                 (declare (not safe))
                 (gxc#compile-e__1 _%ctx187080%_ _%L187132%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%klass187158%_
                                                        _%klass187149%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%klass187158%_
                                                          '8
                                                          '#f
                                                          '#f))
                                                       (let ()
                                                         (let ((__tmp189696
                                                                (cons (if (or _%arguments-ok?187095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      (let ((__tmp189697
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%self187085%_
                                                '4
                                                '#f
                                                '#f))))
                                        (declare (not safe))
                                        (not __tmp189697)))
                                  '%#struct-unchecked-set!
                                  '%#struct-direct-set!)
                              (cons (cons '%#ref
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self187085%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons (cons '%#quote
                                                (cons _%field187151%_ '()))
                                          (cons _%object187153%_
                                                (cons _%value187155%_
                                                      '())))))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp189696 _%stx187081%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass187158%_ '7 '#f '#f))
                   (let ()
                     (let ((__tmp189698
                            (cons (if (or _%arguments-ok?187095%_
                                          (let ((__tmp189699
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%self187085%_
                                                    '4
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (not __tmp189699)))
                                      '%#struct-unchecked-set!
                                      '%#struct-set!)
                                  (cons (cons '%#ref
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%self187085%_
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '()))
                                        (cons (cons '%#quote
                                                    (cons _%field187151%_ '()))
                                              (cons _%object187153%_
                                                    (cons _%value187155%_
                                                          '())))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp189698 _%stx187081%_)))
                   (let ((_%$e187178%_
                          (let ((__tmp189700
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%self187085%_
                                    '3
                                    '#f
                                    '#f))))
                            (declare (not safe))
                            (gxc#!class-slot-find-struct
                             _%klass187158%_
                             __tmp189700))))
                     (if _%$e187178%_
                         ((lambda (_%klass187181%_)
                            (let ((__tmp189701
                                   (cons (if (or _%arguments-ok?187095%_
                                                 (let ((__tmp189702
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%self187085%_
                                                           '3
                                                           '#f
                                                           '#f))))
                                                   (declare (not safe))
                                                   (not __tmp189702)))
                                             '%#struct-unchecked-set!
                                             '%#struct-set!)
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%self187085%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           '()))
                                               (cons (cons '%#quote
                                                           (cons _%field187151%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%object187153%_
                                                           (cons _%value187155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#xform-wrap-source
                               __tmp189701
                               _%stx187081%_)))
                          _%$e187178%_)
                         (if (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%self187085%_
                                '4
                                '#f
                                '#f))
                             (let ()
                               (let ((__tmp189703
                                      (let ((_%$obj187187%_
                                             (let ((__tmp189704
                                                    (let ()
                                                      (declare (not safe))
                                                      (##gensym '__obj))))
                                               (declare (not safe))
                                               (make-symbol__0 __tmp189704))))
                                        (cons '%#let-values
                                              (cons (cons (cons (cons _%$obj187187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%object187153%_ '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons '%#if
                                                                (cons (cons '%#struct-direct-instance?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons '%#quote
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%klass187158%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$obj187187%_
                                                            '()))
                                                '())))
                              (cons (cons '%#struct-unchecked-set!
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%self187085%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            '()))
                                                (cons (cons '%#quote
                                                            (cons _%field187151%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#ref (cons _%$obj187187%_ '()))
                    (cons _%value187155%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (if _%arguments-ok?187095%_
                                              (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons 'unchecked-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#ref (cons _%$obj187187%_ '()))
                        (cons (cons '%#quote
                                    (cons (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%self187085%_
                                             '3
                                             '#f
                                             '#f))
                                          '()))
                              (cons _%value187155%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons '%#call
                                                    (cons (cons '%#ref
                                                                (cons 'class-slot-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons '%#ref
                              (cons (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%self187085%_
                                       '1
                                       '#f
                                       '#f))
                                    '()))
                        (cons (cons '%#ref (cons _%$obj187187%_ '()))
                              (cons (cons '%#quote
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%self187085%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                '()))
                                    (cons _%value187155%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))
                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp189703
                                  _%stx187081%_)))
                             (let ()
                               (let ((__tmp189705
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'unchecked-slot-set!
                                                              '()))
                                                  (cons _%object187153%_
                                                        (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self187085%_
                                     '3
                                     '#f
                                     '#f))
                                  '()))
                      (cons _%value187155%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp189705
                                  _%stx187081%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd187105187127%_
                                             _%hd187102187119%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g187097187111%_
                                               _%g187098187114%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g187097187111%_ _%g187098187114%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g187097187111%_ _%g187098187114%_))))))
                (declare (not safe))
                (_%g187096187190%_ _%args187082%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!mutator::t
       'optimize-call
       gxc#!mutator::optimize-call
       '#f))
    (define gxc#!lambda::optimize-call
      (lambda (_%self186894%_ _%ctx186895%_ _%stx186896%_ _%args186897%_)
        (let ()
          (let ((_%self186900%_ _%self186894%_))
            (let ()
              (let* ((_%self186909186919%_ _%self186900%_)
                     (_%E186911186923%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%self186909186919%_
                                 '((!lambda _ _ arity dispatch inline))))
                        '#!void))
                     (_%K186912186933%_
                      (lambda (_%inline186926%_
                               _%dispatch186927%_
                               _%arity186928%_)
                        (if (let ()
                              (declare (not safe))
                              (gxc#!lambda-arity-match?
                               _%self186900%_
                               _%args186897%_))
                            '#!void
                            (let ()
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"Illegal lambda application; arity mismatch"
                               _%stx186896%_
                               _%arity186928%_)))
                        (if _%inline186926%_
                            (let ()
                              (let ()
                                (declare (not safe))
                                (gxc#verbose '"inline lambda"))
                              (let ((__tmp189706
                                     (let ((__tmp189707
                                            (_%inline186926%_ _%stx186896%_)))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp189707
                                        _%stx186896%_))))
                                (declare (not safe))
                                (gxc#compile-e__1 _%ctx186895%_ __tmp189706)))
                            (if (and _%dispatch186927%_
                                     (let ()
                                       (declare (not safe))
                                       (gxc#symbol-in-local-scope?
                                        _%dispatch186927%_)))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"dispatch lambda => "
                                     _%dispatch186927%_))
                                  (let ((__tmp189708
                                         (let ((__tmp189709
                                                (cons '%#call
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%dispatch186927%_ '()))
                    _%args186897%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp189709
                                            _%stx186896%_))))
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%ctx186895%_
                                     __tmp189708)))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#!procedure::optimize-call
                                     _%self186900%_
                                     _%ctx186895%_
                                     _%stx186896%_
                                     _%args186897%_))))))))
                (if '#t
                    (let* ((_%e186913186936%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186909186919%_
                               '1
                               '#f
                               '#f)))
                           (_%e186914186939%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186909186919%_
                               '2
                               '#f
                               '#f)))
                           (_%e186915186942%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186909186919%_
                               '3
                               '#f
                               '#f)))
                           (_%arity186945%_ _%e186915186942%_)
                           (_%e186916186947%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186909186919%_
                               '4
                               '#f
                               '#f)))
                           (_%dispatch186950%_ _%e186916186947%_)
                           (_%e186917186952%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186909186919%_
                               '5
                               '#f
                               '#f)))
                           (_%inline186955%_ _%e186917186952%_))
                      (declare (not safe))
                      (_%K186912186933%_
                       _%inline186955%_
                       _%dispatch186950%_
                       _%arity186945%_))
                    (let () (declare (not safe)) (_%E186911186923%_)))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!lambda::t
       'optimize-call
       gxc#!lambda::optimize-call
       '#f))
    (define gxc#!case-lambda::optimize-call
      (lambda (_%self186746%_ _%ctx186747%_ _%stx186748%_ _%args186749%_)
        (let ()
          (let ((_%self186752%_ _%self186746%_))
            (let ()
              (let ((_%$e186766%_
                     (let ((__tmp189711
                            (lambda (_%g186761186763%_)
                              (let ()
                                (declare (not safe))
                                (gxc#!lambda-arity-match?
                                 _%g186761186763%_
                                 _%args186749%_))))
                           (__tmp189710
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186752%_
                               '3
                               '#f
                               '#f))))
                       (declare (not safe))
                       (__find __tmp189711 __tmp189710))))
                (if _%$e186766%_
                    ((lambda (_%clause186769%_)
                       (let ((__method189614
                              (let ()
                                (declare (not safe))
                                (__method-ref
                                 _%clause186769%_
                                 'optimize-call))))
                         (if __method189614
                             (__method189614
                              _%clause186769%_
                              _%ctx186747%_
                              _%stx186748%_
                              _%args186749%_)
                             (let ()
                               (declare (not safe))
                               (error '"Missing method"
                                      _%clause186769%_
                                      'optimize-call)))))
                     _%$e186766%_)
                    (let ()
                      (let ((__tmp189712
                             (map gxc#!lambda-arity
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self186752%_
                                     '3
                                     '#f
                                     '#f)))))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"Illegal case-lambda application; arity mismatch"
                         _%stx186748%_
                         __tmp189712))))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       'optimize-call
       gxc#!case-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda::optimize-call
      (lambda (_%self186490%_ _%ctx186491%_ _%stx186492%_ _%args186493%_)
        (let ()
          (let ((_%self186496%_ _%self186490%_))
            (let ()
              (let* ((_%self186505186514%_ _%self186496%_)
                     (_%E186507186518%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%self186505186514%_
                                 '((!kw-lambda _ _ table dispatch))))
                        '#!void))
                     (_%K186508186605%_
                      (lambda (_%dispatch186521%_ _%table186522%_)
                        (if (let ()
                              (declare (not safe))
                              (gxc#symbol-in-local-scope? _%dispatch186521%_))
                            (let* ((_%g186523186532%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-lookup-type
                                       _%dispatch186521%_)))
                                   (_%else186525186540%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"unknown keyword dispatch lambda "
                                         _%dispatch186521%_))
                                      (let ()
                                        (declare (not safe))
                                        (gxc#xform-call%
                                         _%ctx186491%_
                                         _%stx186492%_))))
                                   (_%K186527186589%_
                                    (lambda (_%main186543%_ _%keys186544%_)
                                      (let ((_g189713_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#!kw-lambda-split-args
                                                _%stx186492%_
                                                _%args186493%_))))
                                        (begin
                                          (let ((_g189714_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g189713_)
                                                       (##vector-length
                                                        _g189713_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g189714_ 2)))
                                                (error "Context expects 2 values"
                                                       _g189714_)))
                                          (let ((_%pargs186546%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g189713_ 0)))
                                                (_%kwargs186547%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g189713_
                                                    1))))
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"dispatch kw-lambda => "
                                                 _%main186543%_))
                                              (if _%table186522%_
                                                  (let ((_%xargs186555%_
                                                         (map (lambda (_%key186549%_)
                                                                (let ((_%$e186551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (agetq__0 _%key186549%_ _%kwargs186547%_))))
                          (if _%$e186551%_
                              _%$e186551%_
                              (let () '(%#ref absent-value)))))
                      _%keys186544%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (for-each
                                                     (lambda (_%kw186557%_)
                                                       (if (memq (car _%kw186557%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%keys186544%_)
                   '#!void
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Illegal keyword lambda application; unexpected keyword"
                      _%stx186492%_
                      _%keys186544%_
                      _%kw186557%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%kwargs186547%_)
                                                    (let ((__tmp189715
                                                           (let ((__tmp189716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#call
                                (cons (cons '%#ref (cons _%main186543%_ '()))
                                      (cons (cons '%#quote (cons '#f '()))
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%pargs186546%_
                                               _%xargs186555%_)))))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp189716 _%stx186492%_))))
              (declare (not safe))
              (gxc#compile-e__1 _%ctx186491%_ __tmp189715)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%kwt186559%_
                                                          (let ((__tmp189717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##gensym '__kwt))))
                    (declare (not safe))
                    (make-symbol__0 __tmp189717)))
                 (_%kwvars186563%_
                  (map (lambda (_%_186561%_)
                         (let ((__tmp189718
                                (let ()
                                  (declare (not safe))
                                  (##gensym '__kw))))
                           (declare (not safe))
                           (make-symbol__0 __tmp189718)))
                       _%kwargs186547%_))
                 (_%kwbind186568%_
                  (map (lambda (_%kw186565%_ _%kwvar186566%_)
                         (cons (cons _%kwvar186566%_ '())
                               (cons (cdr _%kw186565%_) '())))
                       _%kwargs186547%_
                       _%kwvars186563%_))
                 (_%kwset186573%_
                  (map (lambda (_%kw186570%_ _%kwvar186571%_)
                         (cons '%#call
                               (cons '(%#ref symbolic-table-set!)
                                     (cons (cons '%#ref
                                                 (cons _%kwt186559%_ '()))
                                           (cons (cons '%#quote
                                                       (cons (car _%kw186570%_)
                                                             '()))
                                                 (cons (cons '%#ref
                                                             (cons _%kwvar186571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       _%kwargs186547%_
                       _%kwvars186563%_))
                 (_%xkwargs186578%_
                  (map (lambda (_%kw186575%_ _%kwvar186576%_)
                         (cons (car _%kw186575%_)
                               (cons '%#ref (cons _%kwvar186576%_ '()))))
                       _%kwargs186547%_
                       _%kwvars186563%_))
                 (_%xargs186586%_
                  (map (lambda (_%key186580%_)
                         (let ((_%$e186582%_
                                (let ()
                                  (declare (not safe))
                                  (agetq__0 _%key186580%_ _%xkwargs186578%_))))
                           (if _%$e186582%_
                               _%$e186582%_
                               (let () '(%#ref absent-value)))))
                       _%keys186544%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp189719
                                                           (let ((__tmp189720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#let-values
                                (cons _%kwbind186568%_
                                      (cons (cons '%#let-values
                                                  (cons (cons (cons (cons _%kwt186559%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ((__tmp189721
                                         (cons '%#call
                                               (cons '(%#ref make-symbolic-table)
                                                     (cons (cons '%#quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (length _%kwargs186547%_) '()))
                   (cons '(%#quote 0) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (declare (not safe))
                                    (gxc#xform-wrap-source
                                     __tmp189721
                                     _%stx186492%_))
                                  '()))
                      '())
                (cons (cons '%#begin
                            (let ((__tmp189722
                                   (cons (let ((__tmp189723
                                                (cons '%#call
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%main186543%_ '()))
                    (cons (cons '%#ref (cons _%kwt186559%_ '()))
                          (let ()
                            (declare (not safe))
                            (__foldr1
                             cons
                             _%pargs186546%_
                             _%xargs186586%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (gxc#xform-wrap-source
                                            __tmp189723
                                            _%stx186492%_))
                                         '())))
                              (declare (not safe))
                              (__foldr1 cons __tmp189722 _%kwset186573%_)))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp189720 _%stx186492%_))))
              (declare (not safe))
              (gxc#compile-e__1 _%ctx186491%_ __tmp189719)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%g186523186532%_
                                     'gxc#!kw-lambda-primary::t))
                                  (let* ((_%e186528186592%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%g186523186532%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%e186529186595%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%g186523186532%_
                                             '2
                                             '#f
                                             '#f)))
                                         (_%keys186598%_ _%e186529186595%_)
                                         (_%e186530186600%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%g186523186532%_
                                             '3
                                             '#f
                                             '#f)))
                                         (_%main186603%_ _%e186530186600%_))
                                    (declare (not safe))
                                    (_%K186527186589%_
                                     _%main186603%_
                                     _%keys186598%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%else186525186540%_))))
                            (let ()
                              (declare (not safe))
                              (gxc#xform-call%
                               _%ctx186491%_
                               _%stx186492%_))))))
                (if '#t
                    (let* ((_%e186509186608%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186505186514%_
                               '1
                               '#f
                               '#f)))
                           (_%e186510186611%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186505186514%_
                               '2
                               '#f
                               '#f)))
                           (_%e186511186614%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186505186514%_
                               '3
                               '#f
                               '#f)))
                           (_%table186617%_ _%e186511186614%_)
                           (_%e186512186619%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self186505186514%_
                               '4
                               '#f
                               '#f)))
                           (_%dispatch186622%_ _%e186512186619%_))
                      (declare (not safe))
                      (_%K186508186605%_ _%dispatch186622%_ _%table186617%_))
                    (let () (declare (not safe)) (_%E186507186518%_)))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda::t
       'optimize-call
       gxc#!kw-lambda::optimize-call
       '#f))
    (define gxc#!kw-lambda-split-args
      (lambda (_%stx186103%_ _%args186104%_)
        (let _%lp186106%_ ((_%rest186108%_ _%args186104%_)
                           (_%pargs186109%_ '())
                           (_%kwargs186110%_ '()))
          (let* ((_%__stx189431189432%_ _%rest186108%_)
                 (_%g186116186168%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx189431189432%_)))))
            (let ((_%__kont189433189434%_
                   (lambda (_%L186347%_ _%L186348%_)
                     (let ((__tmp189724 (cons _%L186348%_ _%pargs186109%_)))
                       (declare (not safe))
                       (_%lp186106%_
                        _%L186347%_
                        __tmp189724
                        _%kwargs186110%_))))
                  (_%__kont189435189436%_
                   (lambda (_%L186293%_)
                     (values (let ()
                               (declare (not safe))
                               (__foldl1 cons _%L186293%_ _%pargs186109%_))
                             (reverse _%kwargs186110%_))))
                  (_%__kont189437189438%_
                   (lambda (_%L186240%_ _%L186241%_ _%L186242%_)
                     (let ((_%kw186259%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%L186242%_))))
                       (if (assq _%kw186259%_ _%kwargs186110%_)
                           (let ()
                             (declare (not safe))
                             (gxc#raise-compile-error
                              '"Illegal keyword lambda application; duplicate keyword"
                              _%stx186103%_
                              _%kw186259%_))
                           (let ((__tmp189725
                                  (cons (cons _%kw186259%_ _%L186241%_)
                                        _%kwargs186110%_)))
                             (declare (not safe))
                             (_%lp186106%_
                              _%L186240%_
                              _%pargs186109%_
                              __tmp189725))))))
                  (_%__kont189439189440%_
                   (lambda (_%L186188%_ _%L186189%_)
                     (let ((__tmp189726 (cons _%L186189%_ _%pargs186109%_)))
                       (declare (not safe))
                       (_%lp186106%_
                        _%L186188%_
                        __tmp189726
                        _%kwargs186110%_))))
                  (_%__kont189441189442%_
                   (lambda ()
                     (values (reverse _%pargs186109%_)
                             (reverse _%kwargs186110%_)))))
              (let ((_%__match189538189539%_
                     (lambda (_%e186149186208%_
                              _%hd186148186211%_
                              _%tl186147186213%_
                              _%e186152186216%_
                              _%hd186151186219%_
                              _%tl186150186221%_
                              _%e186155186224%_
                              _%hd186154186227%_
                              _%tl186153186229%_
                              _%e186158186232%_
                              _%hd186157186235%_
                              _%tl186156186237%_)
                       (let ((_%L186240%_ _%tl186156186237%_)
                             (_%L186241%_ _%hd186157186235%_)
                             (_%L186242%_ _%hd186154186227%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-keyword? _%L186242%_))
                             (_%__kont189437189438%_
                              _%L186240%_
                              _%L186241%_
                              _%L186242%_)
                             (_%__kont189439189440%_
                              _%tl186147186213%_
                              _%hd186148186211%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx189431189432%_))
                    (let ((_%e186122186312%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx189431189432%_))))
                      (let ((_%tl186120186317%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e186122186312%_)))
                            (_%hd186121186315%_
                             (let ()
                               (declare (not safe))
                               (##car _%e186122186312%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%hd186121186315%_))
                            (let ((_%e186125186320%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd186121186315%_))))
                              (let ((_%tl186123186325%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e186125186320%_)))
                                    (_%hd186124186323%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e186125186320%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd186124186323%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%hd186124186323%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl186123186325%_))
                                            (let ((_%e186128186328%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl186123186325%_))))
                                              (let ((_%tl186126186333%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e186128186328%_)))
                                                    (_%hd186127186331%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e186128186328%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd186127186331%_))
                                                    (let ((_%e186129186336%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd186127186331%_))))
                                                      (if (equal? _%e186129186336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!key)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl186126186333%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl186120186317%_))
                          (let ((_%e186132186339%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl186120186317%_))))
                            (let ((_%tl186130186344%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e186132186339%_)))
                                  (_%hd186131186342%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e186132186339%_))))
                              (_%__kont189433189434%_
                               _%tl186130186344%_
                               _%hd186131186342%_)))
                          (_%__kont189439189440%_
                           _%tl186120186317%_
                           _%hd186121186315%_))
                      (_%__kont189439189440%_
                       _%tl186120186317%_
                       _%hd186121186315%_))
                  (if (equal? _%e186129186336%_ '#!rest)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl186126186333%_))
                          (_%__kont189435189436%_ _%tl186120186317%_)
                          (_%__kont189439189440%_
                           _%tl186120186317%_
                           _%hd186121186315%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl186126186333%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl186120186317%_))
                              (let ((_%e186158186232%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl186120186317%_))))
                                (let ((_%tl186156186237%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e186158186232%_)))
                                      (_%hd186157186235%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e186158186232%_))))
                                  (_%__match189538189539%_
                                   _%e186122186312%_
                                   _%hd186121186315%_
                                   _%tl186120186317%_
                                   _%e186125186320%_
                                   _%hd186124186323%_
                                   _%tl186123186325%_
                                   _%e186128186328%_
                                   _%hd186127186331%_
                                   _%tl186126186333%_
                                   _%e186158186232%_
                                   _%hd186157186235%_
                                   _%tl186156186237%_)))
                              (_%__kont189439189440%_
                               _%tl186120186317%_
                               _%hd186121186315%_))
                          (_%__kont189439189440%_
                           _%tl186120186317%_
                           _%hd186121186315%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl186126186333%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl186120186317%_))
                                                            (let ((_%e186158186232%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl186120186317%_))))
                      (let ((_%tl186156186237%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e186158186232%_)))
                            (_%hd186157186235%_
                             (let ()
                               (declare (not safe))
                               (##car _%e186158186232%_))))
                        (_%__match189538189539%_
                         _%e186122186312%_
                         _%hd186121186315%_
                         _%tl186120186317%_
                         _%e186125186320%_
                         _%hd186124186323%_
                         _%tl186123186325%_
                         _%e186128186328%_
                         _%hd186127186331%_
                         _%tl186126186333%_
                         _%e186158186232%_
                         _%hd186157186235%_
                         _%tl186156186237%_)))
                    (_%__kont189439189440%_
                     _%tl186120186317%_
                     _%hd186121186315%_))
                (_%__kont189439189440%_
                 _%tl186120186317%_
                 _%hd186121186315%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont189439189440%_
                                             _%tl186120186317%_
                                             _%hd186121186315%_))
                                        (_%__kont189439189440%_
                                         _%tl186120186317%_
                                         _%hd186121186315%_))
                                    (_%__kont189439189440%_
                                     _%tl186120186317%_
                                     _%hd186121186315%_))))
                            (_%__kont189439189440%_
                             _%tl186120186317%_
                             _%hd186121186315%_))))
                    (_%__kont189441189442%_))))))))
    (define gxc#!kw-lambda-primary::optimize-call
      (lambda (_%self186087%_ _%ctx186088%_ _%stx186089%_ _%args186090%_)
        (let ()
          (let ((_%self186093%_ _%self186087%_))
            (let ()
              (let ()
                (declare (not safe))
                (gxc#xform-call% _%ctx186088%_ _%stx186089%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       'optimize-call
       gxc#!kw-lambda-primary::optimize-call
       '#f))
    (define gxc#apply-check-return-type-begin-annotation%
      (lambda (_%self185775%_ _%stx185776%_)
        (let* ((_%__stx189547189548%_ _%stx185776%_)
               (_%g185779185819%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx189547189548%_)))))
          (let ((_%__kont189549189550%_
                 (lambda (_%L185925%_ _%L185926%_)
                   (let ((_%$e185953%_
                          (member 'return:
                                  (let ((__tmp189727
                                         (lambda (_%g185945185948%_
                                                  _%g185946185950%_)
                                           (cons _%g185945185948%_
                                                 _%g185946185950%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp189727 '() _%L185926%_))
                                  gx#stx-eq?)))
                     (if _%$e185953%_
                         ((lambda (_%tail185956%_)
                            (let ((_%type185958%_
                                   (let ((__tmp189728
                                          (let ((__tmp189729
                                                 (cadr _%tail185956%_)))
                                            (declare (not safe))
                                            (gxc#identifier-symbol
                                             __tmp189729))))
                                     (declare (not safe))
                                     (gxc#optimizer-resolve-class
                                      _%stx185776%_
                                      __tmp189728))))
                              (let ()
                                (declare (not safe))
                                (gxc#check-return-type!
                                 _%stx185776%_
                                 _%L185925%_
                                 _%type185958%_))
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self185775%_
                                 _%L185925%_))))
                          _%$e185953%_)
                         (let ()
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self185775%_
                              _%L185925%_)))))))
                (_%__kont189553189554%_
                 (lambda (_%L185848%_ _%L185849%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self185775%_ _%L185848%_)))))
            (let ((_%__match189584189585%_
                   (lambda (_%e185785185869%_
                            _%hd185784185872%_
                            _%tl185783185874%_
                            _%e185788185877%_
                            _%hd185787185880%_
                            _%tl185786185882%_
                            _%e185791185885%_
                            _%hd185790185888%_
                            _%tl185789185890%_
                            _%__splice189551189552%_
                            _%target185792185893%_
                            _%tl185794185895%_)
                     (letrec ((_%loop185795185898%_
                               (lambda (_%hd185793185901%_
                                        _%signature185799185903%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd185793185901%_))
                                     (let ((_%e185796185906%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd185793185901%_))))
                                       (let ((_%lp-tl185798185911%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e185796185906%_)))
                                             (_%lp-hd185797185909%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e185796185906%_))))
                                         (let ((__tmp189730
                                                (cons _%lp-hd185797185909%_
                                                      _%signature185799185903%_)))
                                           (declare (not safe))
                                           (_%loop185795185898%_
                                            _%lp-tl185798185911%_
                                            __tmp189730))))
                                     (let ((_%signature185800185914%_
                                            (reverse _%signature185799185903%_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%tl185786185882%_))
                                           (let ((_%e185803185917%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%tl185786185882%_))))
                                             (let ((_%tl185801185922%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e185803185917%_)))
                                                   (_%hd185802185920%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e185803185917%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl185801185922%_))
                                                   (_%__kont189549189550%_
                                                    _%hd185802185920%_
                                                    _%signature185800185914%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g185779185819%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g185779185819%_))))))))
                       (let ()
                         (declare (not safe))
                         (_%loop185795185898%_ _%target185792185893%_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx189547189548%_))
                  (let ((_%e185785185869%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx189547189548%_))))
                    (let ((_%tl185783185874%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e185785185869%_)))
                          (_%hd185784185872%_
                           (let ()
                             (declare (not safe))
                             (##car _%e185785185869%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl185783185874%_))
                          (let ((_%e185788185877%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl185783185874%_))))
                            (let ((_%tl185786185882%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e185788185877%_)))
                                  (_%hd185787185880%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e185788185877%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd185787185880%_))
                                  (let ((_%e185791185885%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd185787185880%_))))
                                    (let ((_%tl185789185890%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e185791185885%_)))
                                          (_%hd185790185888%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e185791185885%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd185790185888%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '@type.signature
                                                 _%hd185790185888%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair/null?
                                                     _%tl185789185890%_))
                                                  (let ((_%__splice189551189552%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-split-splice
                                                            _%tl185789185890%_
                                                            '0))))
                                                    (let ((_%tl185794185895%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189551189552%_
                                                              '1)))
                                                          (_%target185792185893%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice189551189552%_
                                                              '0))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl185794185895%_))
                                                          (_%__match189584189585%_
                                                           _%e185785185869%_
                                                           _%hd185784185872%_
                                                           _%tl185783185874%_
                                                           _%e185788185877%_
                                                           _%hd185787185880%_
                                                           _%tl185786185882%_
                                                           _%e185791185885%_
                                                           _%hd185790185888%_
                                                           _%tl185789185890%_
                                                           _%__splice189551189552%_
                                                           _%target185792185893%_
                                                           _%tl185794185895%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl185786185882%_))
                      (let ((_%e185814185840%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl185786185882%_))))
                        (let ((_%tl185812185845%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e185814185840%_)))
                              (_%hd185813185843%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e185814185840%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl185812185845%_))
                              (_%__kont189553189554%_
                               _%hd185813185843%_
                               _%hd185787185880%_)
                              (let ()
                                (declare (not safe))
                                (_%g185779185819%_)))))
                      (let () (declare (not safe)) (_%g185779185819%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl185786185882%_))
                                                      (let ((_%e185814185840%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl185786185882%_))))
                (let ((_%tl185812185845%_
                       (let () (declare (not safe)) (##cdr _%e185814185840%_)))
                      (_%hd185813185843%_
                       (let ()
                         (declare (not safe))
                         (##car _%e185814185840%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl185812185845%_))
                      (_%__kont189553189554%_
                       _%hd185813185843%_
                       _%hd185787185880%_)
                      (let () (declare (not safe)) (_%g185779185819%_)))))
              (let () (declare (not safe)) (_%g185779185819%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl185786185882%_))
                                                  (let ((_%e185814185840%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl185786185882%_))))
                                                    (let ((_%tl185812185845%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e185814185840%_)))
                                                          (_%hd185813185843%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e185814185840%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl185812185845%_))
                                                          (_%__kont189553189554%_
                                                           _%hd185813185843%_
                                                           _%hd185787185880%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g185779185819%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g185779185819%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl185786185882%_))
                                              (let ((_%e185814185840%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl185786185882%_))))
                                                (let ((_%tl185812185845%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e185814185840%_)))
                                                      (_%hd185813185843%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e185814185840%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl185812185845%_))
                                                      (_%__kont189553189554%_
                                                       _%hd185813185843%_
                                                       _%hd185787185880%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g185779185819%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g185779185819%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl185786185882%_))
                                      (let ((_%e185814185840%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl185786185882%_))))
                                        (let ((_%tl185812185845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e185814185840%_)))
                                              (_%hd185813185843%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e185814185840%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl185812185845%_))
                                              (_%__kont189553189554%_
                                               _%hd185813185843%_
                                               _%hd185787185880%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g185779185819%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g185779185819%_))))))
                          (let () (declare (not safe)) (_%g185779185819%_)))))
                  (let () (declare (not safe)) (_%g185779185819%_))))))))
    (define gxc#check-return-type!
      (lambda (_%stx185753%_ _%expr185754%_ _%type185755%_)
        (let ((_%$e185757%_
               (let () (declare (not safe)) (not _%type185755%_))))
          (if _%$e185757%_
              _%$e185757%_
              (let ((_%$e185760%_
                     (eq? (##structure-ref _%type185755%_ '1 gxc#!type::t '#f)
                          't)))
                (if _%$e185760%_
                    _%$e185760%_
                    (let ()
                      (let ((_%expr-type185764%_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-basic-expression-type
                                _%expr185754%_))))
                        (if (let ()
                              (declare (not safe))
                              (not _%expr-type185764%_))
                            (let ()
                              (let ()
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot verify procedure return type; no type information"
                                 _%stx185753%_
                                 _%type185755%_)))
                            (if (eq? 't
                                     (##structure-ref
                                      _%expr-type185764%_
                                      '1
                                      gxc#!type::t
                                      '#f))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"cannot verify procedure return type; unspecific type"
                                     _%stx185753%_
                                     _%type185755%_
                                     _%expr-type185764%_)))
                                (let ((_%$e185768%_
                                       (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%expr-type185764%_
                                          'gxc#!abort::t))))
                                  (if _%$e185768%_
                                      _%$e185768%_
                                      (let ((_%$e185771%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#!type-subtype?
                                                _%expr-type185764%_
                                                _%type185755%_))))
                                        (if _%$e185771%_
                                            _%$e185771%_
                                            (let ()
                                              (let ()
                                                (declare (not safe))
                                                (gxc#raise-compile-error
                                                 '"procedure return type does not match signature"
                                                 _%stx185753%_
                                                 _%type185755%_
                                                 _%expr-type185764%_)))))))))))))))))))
