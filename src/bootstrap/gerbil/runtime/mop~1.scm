(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx90901%_)
      (let* ((_%__stx9741097411%_ _%$stx90901%_)
             (_%g9090690935%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9741097411%_))))
        (let ((_%__kont9741397414%_
               (lambda (_%L91028%_ _%L91030%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L91030%_ (cons _%L91028%_ '())))
                             (cons _%L91028%_ '())))))
              (_%__kont9741597416%_
               (lambda (_%L90972%_ _%L90974%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L90972%_ (cons _%L90972%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L90974%_
                                                           (cons _%L90972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L90972%_ '())))
                                   '()))))))
          (let ((_%__match9743797438%_
                 (lambda (_%e9091290998%_
                          _%hd9091191002%_
                          _%tl9091091005%_
                          _%e9091591008%_
                          _%hd9091491012%_
                          _%tl9091391015%_
                          _%e9091891018%_
                          _%hd9091791022%_
                          _%tl9091691025%_)
                   (let ((_%L91028%_ _%hd9091791022%_)
                         (_%L91030%_ _%hd9091491012%_))
                     (if (or (gx#identifier? _%L91028%_)
                             (gx#stx-fixnum? _%L91028%_))
                         (_%__kont9741397414%_ _%L91028%_ _%L91030%_)
                         (_%__kont9741597416%_
                          _%hd9091791022%_
                          _%hd9091491012%_))))))
            (if (gx#stx-pair? _%__stx9741097411%_)
                (let ((_%e9091290998%_ (gx#syntax-e _%__stx9741097411%_)))
                  (let ((_%tl9091091005%_
                         (let () (declare (not safe)) (##cdr _%e9091290998%_)))
                        (_%hd9091191002%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9091290998%_))))
                    (if (gx#stx-pair? _%tl9091091005%_)
                        (let ((_%e9091591008%_ (gx#syntax-e _%tl9091091005%_)))
                          (let ((_%tl9091391015%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9091591008%_)))
                                (_%hd9091491012%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9091591008%_))))
                            (if (gx#stx-pair? _%tl9091391015%_)
                                (let ((_%e9091891018%_
                                       (gx#syntax-e _%tl9091391015%_)))
                                  (let ((_%tl9091691025%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9091891018%_)))
                                        (_%hd9091791022%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9091891018%_))))
                                    (if (gx#stx-null? _%tl9091691025%_)
                                        (_%__match9743797438%_
                                         _%e9091290998%_
                                         _%hd9091191002%_
                                         _%tl9091091005%_
                                         _%e9091591008%_
                                         _%hd9091491012%_
                                         _%tl9091391015%_
                                         _%e9091891018%_
                                         _%hd9091791022%_
                                         _%tl9091691025%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9090690935%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9090690935%_)))))
                        (let () (declare (not safe)) (_%g9090690935%_)))))
                (let () (declare (not safe)) (_%g9090690935%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx91053%_)
      (let* ((_%__stx9746097461%_ _%$stx91053%_)
             (_%g9105891087%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9746097461%_))))
        (let ((_%__kont9746397464%_
               (lambda (_%L91179%_ _%L91181%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L91181%_ (cons _%L91179%_ '())))
                             (cons '0 '())))))
              (_%__kont9746597466%_
               (lambda (_%L91124%_ _%L91126%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L91124%_ (cons _%L91124%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L91126%_
                                                           (cons _%L91124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match9748797488%_
                 (lambda (_%e9106491149%_
                          _%hd9106391153%_
                          _%tl9106291156%_
                          _%e9106791159%_
                          _%hd9106691163%_
                          _%tl9106591166%_
                          _%e9107091169%_
                          _%hd9106991173%_
                          _%tl9106891176%_)
                   (let ((_%L91179%_ _%hd9106991173%_)
                         (_%L91181%_ _%hd9106691163%_))
                     (if (or (gx#identifier? _%L91179%_)
                             (gx#stx-fixnum? _%L91179%_))
                         (_%__kont9746397464%_ _%L91179%_ _%L91181%_)
                         (_%__kont9746597466%_
                          _%hd9106991173%_
                          _%hd9106691163%_))))))
            (if (gx#stx-pair? _%__stx9746097461%_)
                (let ((_%e9106491149%_ (gx#syntax-e _%__stx9746097461%_)))
                  (let ((_%tl9106291156%_
                         (let () (declare (not safe)) (##cdr _%e9106491149%_)))
                        (_%hd9106391153%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9106491149%_))))
                    (if (gx#stx-pair? _%tl9106291156%_)
                        (let ((_%e9106791159%_ (gx#syntax-e _%tl9106291156%_)))
                          (let ((_%tl9106591166%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9106791159%_)))
                                (_%hd9106691163%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9106791159%_))))
                            (if (gx#stx-pair? _%tl9106591166%_)
                                (let ((_%e9107091169%_
                                       (gx#syntax-e _%tl9106591166%_)))
                                  (let ((_%tl9106891176%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9107091169%_)))
                                        (_%hd9106991173%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9107091169%_))))
                                    (if (gx#stx-null? _%tl9106891176%_)
                                        (_%__match9748797488%_
                                         _%e9106491149%_
                                         _%hd9106391153%_
                                         _%tl9106291156%_
                                         _%e9106791159%_
                                         _%hd9106691163%_
                                         _%tl9106591166%_
                                         _%e9107091169%_
                                         _%hd9106991173%_
                                         _%tl9106891176%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9105891087%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9105891087%_)))))
                        (let () (declare (not safe)) (_%g9105891087%_)))))
                (let () (declare (not safe)) (_%g9105891087%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx91204%_)
      (let* ((_%g9120791228%_
              (lambda (_%g9120891224%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9120891224%_)))
             (_%g9120691456%_
              (lambda (_%g9120891232%_)
                (if (gx#stx-pair? _%g9120891232%_)
                    (let ((_%e9121391235%_ (gx#syntax-e _%g9120891232%_)))
                      (let ((_%hd9121291239%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9121391235%_)))
                            (_%tl9121191242%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9121391235%_))))
                        (if (gx#stx-pair? _%tl9121191242%_)
                            (let ((_%e9121691245%_
                                   (gx#syntax-e _%tl9121191242%_)))
                              (let ((_%hd9121591249%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9121691245%_)))
                                    (_%tl9121491252%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9121691245%_))))
                                (if (gx#stx-pair? _%hd9121591249%_)
                                    (let ((_%e9121991255%_
                                           (gx#syntax-e _%hd9121591249%_)))
                                      (let ((_%hd9121891259%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9121991255%_)))
                                            (_%tl9121791262%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9121991255%_))))
                                        (if (gx#stx-pair? _%tl9121791262%_)
                                            (let ((_%e9122291265%_
                                                   (gx#syntax-e
                                                    _%tl9121791262%_)))
                                              (let ((_%hd9122191269%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9122291265%_)))
                                                    (_%tl9122091272%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9122291265%_))))
                                                (if (gx#stx-null?
                                                     _%tl9122091272%_)
                                                    (if (gx#stx-null?
                                                         _%tl9121491252%_)
                                                        ((lambda (_%L91275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L91277%_)
                   (let* ((_%g9129591303%_
                           (lambda (_%g9129691299%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9129691299%_)))
                          (_%g9129491452%_
                           (lambda (_%g9129691307%_)
                             ((lambda (_%L91310%_)
                                (let ()
                                  (let* ((_%g9132291330%_
                                          (lambda (_%g9132391326%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g9132391326%_)))
                                         (_%g9132191448%_
                                          (lambda (_%g9132391334%_)
                                            ((lambda (_%L91337%_)
                                               (let ()
                                                 (let* ((_%g9135091358%_
                                                         (lambda (_%g9135191354%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g9135191354%_)))
                                                        (_%g9134991444%_
                                                         (lambda (_%g9135191362%_)
                                                           ((lambda (_%L91365%_)
                                                              (let ()
                                                                (let* ((_%g9137891386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g9137991382%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g9137991382%_)))
                               (_%g9137791440%_
                                (lambda (_%g9137991390%_)
                                  ((lambda (_%L91393%_)
                                     (let ()
                                       (let* ((_%g9140691414%_
                                               (lambda (_%g9140791410%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g9140791410%_)))
                                              (_%g9140591436%_
                                               (lambda (_%g9140791418%_)
                                                 ((lambda (_%L91421%_)
                                                    (let ()
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'def)
                                  (cons _%L91337%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.accessor)
                        (cons _%L91310%_ (cons _%L91277%_ (cons '#t '()))))
                  (cons (cons (gx#datum->syntax '#f 'lambda)
                              (cons (cons (gx#datum->syntax '#f 'klass) '())
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 '##structure-ref)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'klass)
                                                      (cons _%L91275%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'class::t)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%L91277%_ '()))
                                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L91365%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.accessor)
                              (cons _%L91310%_
                                    (cons _%L91277%_ (cons '#f '()))))
                        (cons (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f 'klass)
                                                '())
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##unchecked-structure-ref)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'klass)
                                                            (cons _%L91275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L91277%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'def)
                                              (cons _%L91393%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin-annotation)
                        (cons (cons (gx#datum->syntax '#f '@mop.mutator)
                                    (cons _%L91310%_
                                          (cons _%L91277%_ (cons '#t '()))))
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'klass)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            '()))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##structure-set!)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'klass)
                          (cons (gx#datum->syntax '#f 'val)
                                (cons _%L91275%_
                                      (cons (gx#datum->syntax '#f 'class::t)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _%L91277%_ '()))
                                                  '()))))))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons (gx#datum->syntax '#f 'def)
                                                    (cons _%L91421%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin-annotation)
                              (cons (cons (gx#datum->syntax '#f '@mop.mutator)
                                          (cons _%L91310%_
                                                (cons _%L91277%_
                                                      (cons '#f '()))))
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'klass)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'val)
                          '()))
              (cons (cons (gx#datum->syntax '#f '##unchecked-structure-set!)
                          (cons (gx#datum->syntax '#f 'klass)
                                (cons (gx#datum->syntax '#f 'val)
                                      (cons _%L91275%_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'class::t)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _%L91277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g9140791418%_))))
                                         (_%g9140591436%_
                                          (gx#stx-identifier
                                           _%L91277%_
                                           '"&"
                                           _%L91393%_)))))
                                   _%g9137991390%_))))
                          (_%g9137791440%_
                           (gx#stx-identifier
                            _%L91277%_
                            _%L91337%_
                            '"-set!")))))
                    _%g9135191362%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g9134991444%_
                                                    (gx#stx-identifier
                                                     _%L91277%_
                                                     '"&"
                                                     _%L91337%_)))))
                                             _%g9132391334%_))))
                                    (_%g9132191448%_
                                     (gx#stx-identifier
                                      _%L91277%_
                                      '"class-type-"
                                      _%L91277%_)))))
                              _%g9129691307%_))))
                     (_%g9129491452%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9122191269%_
                 _%hd9121891259%_)
                (_%g9120791228%_ _%g9120891232%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9120791228%_
                                                     _%g9120891232%_))))
                                            (_%g9120791228%_
                                             _%g9120891232%_))))
                                    (_%g9120791228%_ _%g9120891232%_))))
                            (_%g9120791228%_ _%g9120891232%_))))
                    (_%g9120791228%_ _%g9120891232%_)))))
        (_%g9120691456%_ _%stx91204%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx91460%_)
      (let* ((_%g9146491493%_
              (lambda (_%g9146591489%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9146591489%_)))
             (_%g9146391593%_
              (lambda (_%g9146591497%_)
                (if (gx#stx-pair? _%g9146591497%_)
                    (let ((_%e9147091500%_ (gx#syntax-e _%g9146591497%_)))
                      (let ((_%hd9146991504%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9147091500%_)))
                            (_%tl9146891507%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9147091500%_))))
                        (if (gx#stx-pair/null? _%tl9146891507%_)
                            (let ((_g97779_
                                   (gx#syntax-split-splice
                                    _%tl9146891507%_
                                    '0)))
                              (begin
                                (let ((_g97780_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g97779_)
                                             (##vector-length _g97779_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g97780_ 2)))
                                      (error "Context expects 2 values"
                                             _g97780_)))
                                (let ((_%target9147191510%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97779_ 0)))
                                      (_%tl9147391513%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97779_ 1))))
                                  (if (gx#stx-null? _%tl9147391513%_)
                                      (letrec ((_%loop9147491516%_
                                                (lambda (_%hd9147291520%_
                                                         _%field9147891523%_
                                                         _%slot9147991525%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9147291520%_)
                                                      (let ((_%e9147591528%_
                                                             (gx#syntax-e
                                                              _%hd9147291520%_)))
                                                        (let ((_%lp-hd9147691532%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9147591528%_)))
                      (_%lp-tl9147791535%_
                       (let () (declare (not safe)) (##cdr _%e9147591528%_))))
                  (if (gx#stx-pair? _%lp-hd9147691532%_)
                      (let ((_%e9148491538%_
                             (gx#syntax-e _%lp-hd9147691532%_)))
                        (let ((_%hd9148391542%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9148491538%_)))
                              (_%tl9148291545%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9148491538%_))))
                          (if (gx#stx-pair? _%tl9148291545%_)
                              (let ((_%e9148791548%_
                                     (gx#syntax-e _%tl9148291545%_)))
                                (let ((_%hd9148691552%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9148791548%_)))
                                      (_%tl9148591555%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9148791548%_))))
                                  (if (gx#stx-null? _%tl9148591555%_)
                                      (_%loop9147491516%_
                                       _%lp-tl9147791535%_
                                       (cons _%hd9148691552%_
                                             _%field9147891523%_)
                                       (cons _%hd9148391542%_
                                             _%slot9147991525%_))
                                      (_%g9146491493%_ _%g9146591497%_))))
                              (_%g9146491493%_ _%g9146591497%_))))
                      (_%g9146491493%_ _%g9146591497%_))))
              (let ((_%field9148091558%_ (reverse _%field9147891523%_))
                    (_%slot9148191561%_ (reverse _%slot9147991525%_)))
                ((lambda (_%L91564%_ _%L91566%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L91564%_
                            _%L91566%_)
                           (let ((__tmp97781
                                  (lambda (_%g9158191585%_
                                           _%g9158291588%_
                                           _%g9158391590%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9158291588%_
                                                            (cons _%g9158191585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9158391590%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp97781
                              '()
                              _%L91564%_
                              _%L91566%_)))))
                 _%field9148091558%_
                 _%slot9148191561%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9147491516%_
                                         _%target9147191510%_
                                         '()
                                         '()))
                                      (_%g9146491493%_ _%g9146591497%_)))))
                            (_%g9146491493%_ _%g9146591497%_))))
                    (_%g9146491493%_ _%g9146591497%_)))))
        (_%g9146391593%_ _%$stx91460%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx91598%_)
      (let* ((_%g9160291636%_
              (lambda (_%g9160391632%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9160391632%_)))
             (_%g9160191747%_
              (lambda (_%g9160391640%_)
                (if (gx#stx-pair? _%g9160391640%_)
                    (let ((_%e9161291643%_ (gx#syntax-e _%g9160391640%_)))
                      (let ((_%hd9161191647%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9161291643%_)))
                            (_%tl9161091650%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9161291643%_))))
                        (if (gx#stx-pair? _%tl9161091650%_)
                            (let ((_%e9161591653%_
                                   (gx#syntax-e _%tl9161091650%_)))
                              (let ((_%hd9161491657%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9161591653%_)))
                                    (_%tl9161391660%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9161591653%_))))
                                (if (gx#stx-pair? _%tl9161391660%_)
                                    (let ((_%e9161891663%_
                                           (gx#syntax-e _%tl9161391660%_)))
                                      (let ((_%hd9161791667%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9161891663%_)))
                                            (_%tl9161691670%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9161891663%_))))
                                        (if (gx#stx-pair? _%tl9161691670%_)
                                            (let ((_%e9162191673%_
                                                   (gx#syntax-e
                                                    _%tl9161691670%_)))
                                              (let ((_%hd9162091677%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9162191673%_)))
                                                    (_%tl9161991680%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9162191673%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9161991680%_)
                                                    (let ((_%e9162491683%_
                                                           (gx#syntax-e
                                                            _%tl9161991680%_)))
                                                      (let ((_%hd9162391687%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9162491683%_)))
                    (_%tl9162291690%_
                     (let () (declare (not safe)) (##cdr _%e9162491683%_))))
                (if (gx#stx-pair? _%tl9162291690%_)
                    (let ((_%e9162791693%_ (gx#syntax-e _%tl9162291690%_)))
                      (let ((_%hd9162691697%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9162791693%_)))
                            (_%tl9162591700%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9162791693%_))))
                        (if (gx#stx-pair? _%tl9162591700%_)
                            (let ((_%e9163091703%_
                                   (gx#syntax-e _%tl9162591700%_)))
                              (let ((_%hd9162991707%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9163091703%_)))
                                    (_%tl9162891710%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9163091703%_))))
                                (if (gx#stx-null? _%tl9162891710%_)
                                    ((lambda (_%L91713%_
                                              _%L91715%_
                                              _%L91716%_
                                              _%L91717%_
                                              _%L91718%_
                                              _%L91719%_)
                                       (cons (gx#datum->syntax '#f 'let)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'field)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'symbolic-table-ref)
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          '&class-type-slot-table)
                                         (cons _%L91719%_ '()))
                                   (cons _%L91718%_ (cons '#f '()))))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'cond)
                                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          'not)
                                         (cons (gx#datum->syntax '#f 'field)
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'abort!)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'error)
                                                           (cons '"unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'class:
                               (cons _%L91719%_
                                     (cons 'slot: (cons _%L91718%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L91719%_ '()))
                                         (cons (cons _%L91717%_
                                                     (cons _%L91719%_
                                                           (cons _%L91718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L91719%_ '()))
                                               (cons (cons _%L91716%_
                                                           (cons _%L91719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L91718%_
                               (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'strukt)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'base-struct/1)
                                           (cons _%L91719%_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'and)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'class-type?)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'strukt)
                                                       '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'field)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##vector-length)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '&class-type-slot-vector)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'strukt)
                                                   '()))
                                       '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _%L91715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L91719%_
                               (cons _%L91718%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L91713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L91719%_
                                     (cons _%L91718%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9162991707%_
                                     _%hd9162691697%_
                                     _%hd9162391687%_
                                     _%hd9162091677%_
                                     _%hd9161791667%_
                                     _%hd9161491657%_)
                                    (_%g9160291636%_ _%g9160391640%_))))
                            (_%g9160291636%_ _%g9160391640%_))))
                    (_%g9160291636%_ _%g9160391640%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9160291636%_
                                                     _%g9160391640%_))))
                                            (_%g9160291636%_
                                             _%g9160391640%_))))
                                    (_%g9160291636%_ _%g9160391640%_))))
                            (_%g9160291636%_ _%g9160391640%_))))
                    (_%g9160291636%_ _%g9160391640%_)))))
        (_%g9160191747%_ _%$stx91598%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx91751%_)
      (let* ((_%g9175591781%_
              (lambda (_%g9175691777%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9175691777%_)))
             (_%g9175491864%_
              (lambda (_%g9175691785%_)
                (if (gx#stx-pair? _%g9175691785%_)
                    (let ((_%e9176391788%_ (gx#syntax-e _%g9175691785%_)))
                      (let ((_%hd9176291792%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9176391788%_)))
                            (_%tl9176191795%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9176391788%_))))
                        (if (gx#stx-pair? _%tl9176191795%_)
                            (let ((_%e9176691798%_
                                   (gx#syntax-e _%tl9176191795%_)))
                              (let ((_%hd9176591802%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9176691798%_)))
                                    (_%tl9176491805%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9176691798%_))))
                                (if (gx#stx-pair? _%tl9176491805%_)
                                    (let ((_%e9176991808%_
                                           (gx#syntax-e _%tl9176491805%_)))
                                      (let ((_%hd9176891812%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9176991808%_)))
                                            (_%tl9176791815%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9176991808%_))))
                                        (if (gx#stx-pair? _%tl9176791815%_)
                                            (let ((_%e9177291818%_
                                                   (gx#syntax-e
                                                    _%tl9176791815%_)))
                                              (let ((_%hd9177191822%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9177291818%_)))
                                                    (_%tl9177091825%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9177291818%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9177091825%_)
                                                    (let ((_%e9177591828%_
                                                           (gx#syntax-e
                                                            _%tl9177091825%_)))
                                                      (let ((_%hd9177491832%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9177591828%_)))
                    (_%tl9177391835%_
                     (let () (declare (not safe)) (##cdr _%e9177591828%_))))
                (if (gx#stx-null? _%tl9177391835%_)
                    ((lambda (_%L91838%_ _%L91840%_ _%L91841%_ _%L91842%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L91842%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L91841%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L91840%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L91838%_
                                     (cons _%L91842%_ (cons _%L91841%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9177491832%_
                     _%hd9177191822%_
                     _%hd9176891812%_
                     _%hd9176591802%_)
                    (_%g9175591781%_ _%g9175691785%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9175591781%_
                                                     _%g9175691785%_))))
                                            (_%g9175591781%_
                                             _%g9175691785%_))))
                                    (_%g9175591781%_ _%g9175691785%_))))
                            (_%g9175591781%_ _%g9175691785%_))))
                    (_%g9175591781%_ _%g9175691785%_)))))
        (_%g9175491864%_ _%$stx91751%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx91868%_)
      (let* ((_%g9187291901%_
              (lambda (_%g9187391897%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9187391897%_)))
             (_%g9187192001%_
              (lambda (_%g9187391905%_)
                (if (gx#stx-pair? _%g9187391905%_)
                    (let ((_%e9187891908%_ (gx#syntax-e _%g9187391905%_)))
                      (let ((_%hd9187791912%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9187891908%_)))
                            (_%tl9187691915%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9187891908%_))))
                        (if (gx#stx-pair/null? _%tl9187691915%_)
                            (let ((_g97782_
                                   (gx#syntax-split-splice
                                    _%tl9187691915%_
                                    '0)))
                              (begin
                                (let ((_g97783_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g97782_)
                                             (##vector-length _g97782_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g97783_ 2)))
                                      (error "Context expects 2 values"
                                             _g97783_)))
                                (let ((_%target9187991918%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97782_ 0)))
                                      (_%tl9188191921%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97782_ 1))))
                                  (if (gx#stx-null? _%tl9188191921%_)
                                      (letrec ((_%loop9188291924%_
                                                (lambda (_%hd9188091928%_
                                                         _%name9188691931%_
                                                         _%t9188791933%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9188091928%_)
                                                      (let ((_%e9188391936%_
                                                             (gx#syntax-e
                                                              _%hd9188091928%_)))
                                                        (let ((_%lp-hd9188491940%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9188391936%_)))
                      (_%lp-tl9188591943%_
                       (let () (declare (not safe)) (##cdr _%e9188391936%_))))
                  (if (gx#stx-pair? _%lp-hd9188491940%_)
                      (let ((_%e9189291946%_
                             (gx#syntax-e _%lp-hd9188491940%_)))
                        (let ((_%hd9189191950%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9189291946%_)))
                              (_%tl9189091953%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9189291946%_))))
                          (if (gx#stx-pair? _%tl9189091953%_)
                              (let ((_%e9189591956%_
                                     (gx#syntax-e _%tl9189091953%_)))
                                (let ((_%hd9189491960%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9189591956%_)))
                                      (_%tl9189391963%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9189591956%_))))
                                  (if (gx#stx-null? _%tl9189391963%_)
                                      (_%loop9188291924%_
                                       _%lp-tl9188591943%_
                                       (cons _%hd9189491960%_
                                             _%name9188691931%_)
                                       (cons _%hd9189191950%_ _%t9188791933%_))
                                      (_%g9187291901%_ _%g9187391905%_))))
                              (_%g9187291901%_ _%g9187391905%_))))
                      (_%g9187291901%_ _%g9187391905%_))))
              (let ((_%name9188891966%_ (reverse _%name9188691931%_))
                    (_%t9188991969%_ (reverse _%t9188791933%_)))
                ((lambda (_%L91972%_ _%L91974%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L91972%_
                            _%L91974%_)
                           (let ((__tmp97784
                                  (lambda (_%g9198991993%_
                                           _%g9199091996%_
                                           _%g9199191998%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9199091996%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9198991993%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9199191998%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp97784
                              '()
                              _%L91972%_
                              _%L91974%_)))))
                 _%name9188891966%_
                 _%t9188991969%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9188291924%_
                                         _%target9187991918%_
                                         '()
                                         '()))
                                      (_%g9187291901%_ _%g9187391905%_)))))
                            (_%g9187291901%_ _%g9187391905%_))))
                    (_%g9187291901%_ _%g9187391905%_)))))
        (_%g9187192001%_ _%$stx91868%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx92006%_)
      (let* ((_%g9201092041%_
              (lambda (_%g9201192037%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9201192037%_)))
             (_%g9200992160%_
              (lambda (_%g9201192045%_)
                (if (gx#stx-pair? _%g9201192045%_)
                    (let ((_%e9201792048%_ (gx#syntax-e _%g9201192045%_)))
                      (let ((_%hd9201692052%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9201792048%_)))
                            (_%tl9201592055%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9201792048%_))))
                        (if (gx#stx-pair? _%tl9201592055%_)
                            (let ((_%e9202092058%_
                                   (gx#syntax-e _%tl9201592055%_)))
                              (let ((_%hd9201992062%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9202092058%_)))
                                    (_%tl9201892065%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9202092058%_))))
                                (if (gx#stx-pair? _%tl9201892065%_)
                                    (let ((_%e9202392068%_
                                           (gx#syntax-e _%tl9201892065%_)))
                                      (let ((_%hd9202292072%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9202392068%_)))
                                            (_%tl9202192075%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9202392068%_))))
                                        (if (gx#stx-pair? _%tl9202192075%_)
                                            (let ((_%e9202692078%_
                                                   (gx#syntax-e
                                                    _%tl9202192075%_)))
                                              (let ((_%hd9202592082%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9202692078%_)))
                                                    (_%tl9202492085%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9202692078%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9202592082%_)
                                                    (let ((_g97785_
                                                           (gx#syntax-split-splice
                                                            _%hd9202592082%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g97786_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g97785_)
                             (##vector-length _g97785_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g97786_ 2)))
                      (error "Context expects 2 values" _g97786_)))
                (let ((_%target9202792088%_
                       (let () (declare (not safe)) (##vector-ref _g97785_ 0)))
                      (_%tl9202992091%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g97785_ 1))))
                  (if (gx#stx-null? _%tl9202992091%_)
                      (letrec ((_%loop9203092094%_
                                (lambda (_%hd9202892098%_ _%super9203492101%_)
                                  (if (gx#stx-pair? _%hd9202892098%_)
                                      (let ((_%e9203192104%_
                                             (gx#syntax-e _%hd9202892098%_)))
                                        (let ((_%lp-hd9203292108%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9203192104%_)))
                                              (_%lp-tl9203392111%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9203192104%_))))
                                          (_%loop9203092094%_
                                           _%lp-tl9203392111%_
                                           (cons _%lp-hd9203292108%_
                                                 _%super9203492101%_))))
                                      (let ((_%super9203592114%_
                                             (reverse _%super9203492101%_)))
                                        (if (gx#stx-null? _%tl9202492085%_)
                                            ((lambda (_%L92118%_
                                                      _%L92120%_
                                                      _%L92121%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L92121%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L92120%_
                                                 (cons (let ((__tmp97787
                                                              (lambda (_%g9214592148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9214692151%_)
                        (cons _%g9214592148%_ _%g9214692151%_))))
                 (declare (not safe))
                 (__foldr1 __tmp97787 '() _%L92118%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L92120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp97788
                                  (lambda (_%g9214392154%_ _%g9214492157%_)
                                    (cons _%g9214392154%_ _%g9214492157%_))))
                             (declare (not safe))
                             (__foldr1 __tmp97788 '() _%L92118%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9203592114%_
                                             _%hd9202292072%_
                                             _%hd9201992062%_)
                                            (_%g9201092041%_
                                             _%g9201192045%_)))))))
                        (_%loop9203092094%_ _%target9202792088%_ '()))
                      (_%g9201092041%_ _%g9201192045%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9201092041%_
                                                     _%g9201192045%_))))
                                            (_%g9201092041%_
                                             _%g9201192045%_))))
                                    (_%g9201092041%_ _%g9201192045%_))))
                            (_%g9201092041%_ _%g9201192045%_))))
                    (_%g9201092041%_ _%g9201192045%_)))))
        (_%g9200992160%_ _%$stx92006%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx92165%_)
      (let* ((_%g9216992200%_
              (lambda (_%g9217092196%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9217092196%_)))
             (_%g9216892311%_
              (lambda (_%g9217092204%_)
                (if (gx#stx-pair? _%g9217092204%_)
                    (let ((_%e9217692207%_ (gx#syntax-e _%g9217092204%_)))
                      (let ((_%hd9217592211%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9217692207%_)))
                            (_%tl9217492214%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9217692207%_))))
                        (if (gx#stx-pair? _%tl9217492214%_)
                            (let ((_%e9217992217%_
                                   (gx#syntax-e _%tl9217492214%_)))
                              (let ((_%hd9217892221%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9217992217%_)))
                                    (_%tl9217792224%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9217992217%_))))
                                (if (gx#stx-pair? _%tl9217792224%_)
                                    (let ((_%e9218292227%_
                                           (gx#syntax-e _%tl9217792224%_)))
                                      (let ((_%hd9218192231%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9218292227%_)))
                                            (_%tl9218092234%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9218292227%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9218192231%_)
                                            (let ((_g97789_
                                                   (gx#syntax-split-splice
                                                    _%hd9218192231%_
                                                    '0)))
                                              (begin
                                                (let ((_g97790_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g97789_)
                                                             (##vector-length
                                                              _g97789_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g97790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g97790_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9218392237%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g97789_
                                                          0)))
                                                      (_%tl9218592240%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g97789_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9218592240%_)
                                                      (letrec ((_%loop9218692243%_
                                                                (lambda (_%hd9218492247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9219092250%_)
                          (if (gx#stx-pair? _%hd9218492247%_)
                              (let ((_%e9218792253%_
                                     (gx#syntax-e _%hd9218492247%_)))
                                (let ((_%lp-hd9218892257%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9218792253%_)))
                                      (_%lp-tl9218992260%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9218792253%_))))
                                  (_%loop9218692243%_
                                   _%lp-tl9218992260%_
                                   (cons _%lp-hd9218892257%_
                                         _%super9219092250%_))))
                              (let ((_%super9219192263%_
                                     (reverse _%super9219092250%_)))
                                (if (gx#stx-pair? _%tl9218092234%_)
                                    (let ((_%e9219492267%_
                                           (gx#syntax-e _%tl9218092234%_)))
                                      (let ((_%hd9219392271%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9219492267%_)))
                                            (_%tl9219292274%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9219492267%_))))
                                        (if (gx#stx-null? _%tl9219292274%_)
                                            ((lambda (_%L92277%_
                                                      _%L92279%_
                                                      _%L92280%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L92280%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L92280%_
                                                 (cons (let ((__tmp97791
                                                              (lambda (_%g9230292305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9230392308%_)
                        (cons _%g9230292305%_ _%g9230392308%_))))
                 (declare (not safe))
                 (__foldr1 __tmp97791 '() _%L92279%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L92277%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9219392271%_
                                             _%super9219192263%_
                                             _%hd9217892221%_)
                                            (_%g9216992200%_
                                             _%g9217092204%_))))
                                    (_%g9216992200%_ _%g9217092204%_)))))))
                (_%loop9218692243%_ _%target9218392237%_ '()))
              (_%g9216992200%_ _%g9217092204%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9216992200%_
                                             _%g9217092204%_))))
                                    (_%g9216992200%_ _%g9217092204%_))))
                            (_%g9216992200%_ _%g9217092204%_))))
                    (_%g9216992200%_ _%g9217092204%_)))))
        (_%g9216892311%_ _%$stx92165%_)))))
