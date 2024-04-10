(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ContractRules[:0:]#maybe|
    (lambda (_%$stx52117%_)
      (let* ((_%g5212152135%_
              (lambda (_%g5212252131%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5212252131%_)))
             (_%g5212052177%_
              (lambda (_%g5212252139%_)
                (if (gx#stx-pair? _%g5212252139%_)
                    (let ((_%e5212452142%_ (gx#syntax-e _%g5212252139%_)))
                      (let ((_%hd5212552146%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5212452142%_)))
                            (_%tl5212652149%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5212452142%_))))
                        (if (gx#stx-pair? _%tl5212652149%_)
                            (let ((_%e5212752152%_
                                   (gx#syntax-e _%tl5212652149%_)))
                              (let ((_%hd5212852156%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5212752152%_)))
                                    (_%tl5212952159%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5212752152%_))))
                                (if (gx#stx-null? _%tl5212952159%_)
                                    ((lambda (_%L52162%_)
                                       (cons (gx#datum->syntax '#f '?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'or)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'not)
                                                               (cons _%L52162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                     _%hd5212852156%_)
                                    (_%g5212152135%_ _%g5212252139%_))))
                            (_%g5212152135%_ _%g5212252139%_))))
                    (_%g5212152135%_ _%g5212252139%_)))))
        (_%g5212052177%_ _%$stx52117%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range?|
    (lambda (_%$stx52181%_)
      (let* ((_%g5218552203%_
              (lambda (_%g5218652199%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5218652199%_)))
             (_%g5218452258%_
              (lambda (_%g5218652207%_)
                (if (gx#stx-pair? _%g5218652207%_)
                    (let ((_%e5218952210%_ (gx#syntax-e _%g5218652207%_)))
                      (let ((_%hd5219052214%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5218952210%_)))
                            (_%tl5219152217%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5218952210%_))))
                        (if (gx#stx-pair? _%tl5219152217%_)
                            (let ((_%e5219252220%_
                                   (gx#syntax-e _%tl5219152217%_)))
                              (let ((_%hd5219352224%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5219252220%_)))
                                    (_%tl5219452227%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5219252220%_))))
                                (if (gx#stx-pair? _%tl5219452227%_)
                                    (let ((_%e5219552230%_
                                           (gx#syntax-e _%tl5219452227%_)))
                                      (let ((_%hd5219652234%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5219552230%_)))
                                            (_%tl5219752237%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5219552230%_))))
                                        (if (gx#stx-null? _%tl5219752237%_)
                                            ((lambda (_%L52240%_ _%L52242%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'o)
                         '())
                   (cons (cons (gx#datum->syntax '#f 'and)
                               (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                           (cons (gx#datum->syntax '#f 'o)
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'fx>=)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'o)
                                                       (cons _%L52242%_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'fx<)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L52240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5219652234%_
                                             _%hd5219352224%_)
                                            (_%g5218552203%_
                                             _%g5218652207%_))))
                                    (_%g5218552203%_ _%g5218652207%_))))
                            (_%g5218552203%_ _%g5218652207%_))))
                    (_%g5218552203%_ _%g5218652207%_)))))
        (_%g5218452258%_ _%$stx52181%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#in-range-inclusive?|
    (lambda (_%$stx52262%_)
      (let* ((_%g5226652284%_
              (lambda (_%g5226752280%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5226752280%_)))
             (_%g5226552339%_
              (lambda (_%g5226752288%_)
                (if (gx#stx-pair? _%g5226752288%_)
                    (let ((_%e5227052291%_ (gx#syntax-e _%g5226752288%_)))
                      (let ((_%hd5227152295%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5227052291%_)))
                            (_%tl5227252298%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5227052291%_))))
                        (if (gx#stx-pair? _%tl5227252298%_)
                            (let ((_%e5227352301%_
                                   (gx#syntax-e _%tl5227252298%_)))
                              (let ((_%hd5227452305%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5227352301%_)))
                                    (_%tl5227552308%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5227352301%_))))
                                (if (gx#stx-pair? _%tl5227552308%_)
                                    (let ((_%e5227652311%_
                                           (gx#syntax-e _%tl5227552308%_)))
                                      (let ((_%hd5227752315%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5227652311%_)))
                                            (_%tl5227852318%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5227652311%_))))
                                        (if (gx#stx-null? _%tl5227852318%_)
                                            ((lambda (_%L52321%_ _%L52323%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'o)
                         '())
                   (cons (cons (gx#datum->syntax '#f 'and)
                               (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                           (cons (gx#datum->syntax '#f 'o)
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'fx<=)
                                                 (cons _%L52323%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'o)
                                                             (cons _%L52321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd5227752315%_
                                             _%hd5227452305%_)
                                            (_%g5226652284%_
                                             _%g5226752288%_))))
                                    (_%g5226652284%_ _%g5226752288%_))))
                            (_%g5226652284%_ _%g5226752288%_))))
                    (_%g5226652284%_ _%g5226752288%_)))))
        (_%g5226552339%_ _%$stx52262%_))))
  (define |gerbil/core/contract~ContractRules[:0:]#list-of?|
    (lambda (_%$stx52343%_)
      (let* ((_%g5234752361%_
              (lambda (_%g5234852357%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5234852357%_)))
             (_%g5234652402%_
              (lambda (_%g5234852365%_)
                (if (gx#stx-pair? _%g5234852365%_)
                    (let ((_%e5235052368%_ (gx#syntax-e _%g5234852365%_)))
                      (let ((_%hd5235152372%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5235052368%_)))
                            (_%tl5235252375%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5235052368%_))))
                        (if (gx#stx-pair? _%tl5235252375%_)
                            (let ((_%e5235352378%_
                                   (gx#syntax-e _%tl5235252375%_)))
                              (let ((_%hd5235452382%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5235352378%_)))
                                    (_%tl5235552385%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5235352378%_))))
                                (if (gx#stx-null? _%tl5235552385%_)
                                    ((lambda (_%L52388%_)
                                       (cons (gx#datum->syntax '#f 'lambda)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'o)
                                                         '())
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'and)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'list?)
                                   (cons (gx#datum->syntax '#f 'o) '()))
                             (cons (cons (gx#datum->syntax '#f 'andmap)
                                         (cons _%L52388%_
                                               (cons (gx#datum->syntax '#f 'o)
                                                     '())))
                                   '())))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd5235452382%_)
                                    (_%g5234752361%_ _%g5234852365%_))))
                            (_%g5234752361%_ _%g5234852365%_))))
                    (_%g5234752361%_ _%g5234852365%_)))))
        (_%g5234652402%_ _%$stx52343%_)))))
