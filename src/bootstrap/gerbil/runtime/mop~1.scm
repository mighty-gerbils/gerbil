(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx90821%_)
      (let* ((_%__stx9733097331%_ _%$stx90821%_)
             (_%g9082690855%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9733097331%_))))
        (let ((_%__kont9733397334%_
               (lambda (_%L90948%_ _%L90950%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L90950%_ (cons _%L90948%_ '())))
                             (cons _%L90948%_ '())))))
              (_%__kont9733597336%_
               (lambda (_%L90892%_ _%L90894%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L90892%_ (cons _%L90892%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L90894%_
                                                           (cons _%L90892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L90892%_ '())))
                                   '()))))))
          (let ((_%__match9735797358%_
                 (lambda (_%e9083290918%_
                          _%hd9083190922%_
                          _%tl9083090925%_
                          _%e9083590928%_
                          _%hd9083490932%_
                          _%tl9083390935%_
                          _%e9083890938%_
                          _%hd9083790942%_
                          _%tl9083690945%_)
                   (let ((_%L90948%_ _%hd9083790942%_)
                         (_%L90950%_ _%hd9083490932%_))
                     (if (or (gx#identifier? _%L90948%_)
                             (gx#stx-fixnum? _%L90948%_))
                         (_%__kont9733397334%_ _%L90948%_ _%L90950%_)
                         (_%__kont9733597336%_
                          _%hd9083790942%_
                          _%hd9083490932%_))))))
            (if (gx#stx-pair? _%__stx9733097331%_)
                (let ((_%e9083290918%_ (gx#syntax-e _%__stx9733097331%_)))
                  (let ((_%tl9083090925%_
                         (let () (declare (not safe)) (##cdr _%e9083290918%_)))
                        (_%hd9083190922%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9083290918%_))))
                    (if (gx#stx-pair? _%tl9083090925%_)
                        (let ((_%e9083590928%_ (gx#syntax-e _%tl9083090925%_)))
                          (let ((_%tl9083390935%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9083590928%_)))
                                (_%hd9083490932%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9083590928%_))))
                            (if (gx#stx-pair? _%tl9083390935%_)
                                (let ((_%e9083890938%_
                                       (gx#syntax-e _%tl9083390935%_)))
                                  (let ((_%tl9083690945%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9083890938%_)))
                                        (_%hd9083790942%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9083890938%_))))
                                    (if (gx#stx-null? _%tl9083690945%_)
                                        (_%__match9735797358%_
                                         _%e9083290918%_
                                         _%hd9083190922%_
                                         _%tl9083090925%_
                                         _%e9083590928%_
                                         _%hd9083490932%_
                                         _%tl9083390935%_
                                         _%e9083890938%_
                                         _%hd9083790942%_
                                         _%tl9083690945%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9082690855%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9082690855%_)))))
                        (let () (declare (not safe)) (_%g9082690855%_)))))
                (let () (declare (not safe)) (_%g9082690855%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx90973%_)
      (let* ((_%__stx9738097381%_ _%$stx90973%_)
             (_%g9097891007%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx9738097381%_))))
        (let ((_%__kont9738397384%_
               (lambda (_%L91099%_ _%L91101%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L91101%_ (cons _%L91099%_ '())))
                             (cons '0 '())))))
              (_%__kont9738597386%_
               (lambda (_%L91044%_ _%L91046%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L91044%_ (cons _%L91044%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L91046%_
                                                           (cons _%L91044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match9740797408%_
                 (lambda (_%e9098491069%_
                          _%hd9098391073%_
                          _%tl9098291076%_
                          _%e9098791079%_
                          _%hd9098691083%_
                          _%tl9098591086%_
                          _%e9099091089%_
                          _%hd9098991093%_
                          _%tl9098891096%_)
                   (let ((_%L91099%_ _%hd9098991093%_)
                         (_%L91101%_ _%hd9098691083%_))
                     (if (or (gx#identifier? _%L91099%_)
                             (gx#stx-fixnum? _%L91099%_))
                         (_%__kont9738397384%_ _%L91099%_ _%L91101%_)
                         (_%__kont9738597386%_
                          _%hd9098991093%_
                          _%hd9098691083%_))))))
            (if (gx#stx-pair? _%__stx9738097381%_)
                (let ((_%e9098491069%_ (gx#syntax-e _%__stx9738097381%_)))
                  (let ((_%tl9098291076%_
                         (let () (declare (not safe)) (##cdr _%e9098491069%_)))
                        (_%hd9098391073%_
                         (let ()
                           (declare (not safe))
                           (##car _%e9098491069%_))))
                    (if (gx#stx-pair? _%tl9098291076%_)
                        (let ((_%e9098791079%_ (gx#syntax-e _%tl9098291076%_)))
                          (let ((_%tl9098591086%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e9098791079%_)))
                                (_%hd9098691083%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e9098791079%_))))
                            (if (gx#stx-pair? _%tl9098591086%_)
                                (let ((_%e9099091089%_
                                       (gx#syntax-e _%tl9098591086%_)))
                                  (let ((_%tl9098891096%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e9099091089%_)))
                                        (_%hd9098991093%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e9099091089%_))))
                                    (if (gx#stx-null? _%tl9098891096%_)
                                        (_%__match9740797408%_
                                         _%e9098491069%_
                                         _%hd9098391073%_
                                         _%tl9098291076%_
                                         _%e9098791079%_
                                         _%hd9098691083%_
                                         _%tl9098591086%_
                                         _%e9099091089%_
                                         _%hd9098991093%_
                                         _%tl9098891096%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g9097891007%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g9097891007%_)))))
                        (let () (declare (not safe)) (_%g9097891007%_)))))
                (let () (declare (not safe)) (_%g9097891007%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx91124%_)
      (let* ((_%g9112791148%_
              (lambda (_%g9112891144%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9112891144%_)))
             (_%g9112691376%_
              (lambda (_%g9112891152%_)
                (if (gx#stx-pair? _%g9112891152%_)
                    (let ((_%e9113391155%_ (gx#syntax-e _%g9112891152%_)))
                      (let ((_%hd9113291159%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9113391155%_)))
                            (_%tl9113191162%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9113391155%_))))
                        (if (gx#stx-pair? _%tl9113191162%_)
                            (let ((_%e9113691165%_
                                   (gx#syntax-e _%tl9113191162%_)))
                              (let ((_%hd9113591169%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9113691165%_)))
                                    (_%tl9113491172%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9113691165%_))))
                                (if (gx#stx-pair? _%hd9113591169%_)
                                    (let ((_%e9113991175%_
                                           (gx#syntax-e _%hd9113591169%_)))
                                      (let ((_%hd9113891179%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9113991175%_)))
                                            (_%tl9113791182%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9113991175%_))))
                                        (if (gx#stx-pair? _%tl9113791182%_)
                                            (let ((_%e9114291185%_
                                                   (gx#syntax-e
                                                    _%tl9113791182%_)))
                                              (let ((_%hd9114191189%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9114291185%_)))
                                                    (_%tl9114091192%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9114291185%_))))
                                                (if (gx#stx-null?
                                                     _%tl9114091192%_)
                                                    (if (gx#stx-null?
                                                         _%tl9113491172%_)
                                                        ((lambda (_%L91195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L91197%_)
                   (let* ((_%g9121591223%_
                           (lambda (_%g9121691219%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g9121691219%_)))
                          (_%g9121491372%_
                           (lambda (_%g9121691227%_)
                             ((lambda (_%L91230%_)
                                (let ()
                                  (let* ((_%g9124291250%_
                                          (lambda (_%g9124391246%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g9124391246%_)))
                                         (_%g9124191368%_
                                          (lambda (_%g9124391254%_)
                                            ((lambda (_%L91257%_)
                                               (let ()
                                                 (let* ((_%g9127091278%_
                                                         (lambda (_%g9127191274%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g9127191274%_)))
                                                        (_%g9126991364%_
                                                         (lambda (_%g9127191282%_)
                                                           ((lambda (_%L91285%_)
                                                              (let ()
                                                                (let* ((_%g9129891306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g9129991302%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g9129991302%_)))
                               (_%g9129791360%_
                                (lambda (_%g9129991310%_)
                                  ((lambda (_%L91313%_)
                                     (let ()
                                       (let* ((_%g9132691334%_
                                               (lambda (_%g9132791330%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g9132791330%_)))
                                              (_%g9132591356%_
                                               (lambda (_%g9132791338%_)
                                                 ((lambda (_%L91341%_)
                                                    (let ()
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'def)
                                  (cons _%L91257%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.accessor)
                        (cons _%L91230%_ (cons _%L91197%_ (cons '#t '()))))
                  (cons (cons (gx#datum->syntax '#f 'lambda)
                              (cons (cons (gx#datum->syntax '#f 'klass) '())
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 '##structure-ref)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'klass)
                                                      (cons _%L91195%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'class::t)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%L91197%_ '()))
                                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L91285%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.accessor)
                              (cons _%L91230%_
                                    (cons _%L91197%_ (cons '#f '()))))
                        (cons (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f 'klass)
                                                '())
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##unchecked-structure-ref)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'klass)
                                                            (cons _%L91195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L91197%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (cons (cons (gx#datum->syntax '#f 'def)
                                              (cons _%L91313%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin-annotation)
                        (cons (cons (gx#datum->syntax '#f '@mop.mutator)
                                    (cons _%L91230%_
                                          (cons _%L91197%_ (cons '#t '()))))
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
                                (cons _%L91195%_
                                      (cons (gx#datum->syntax '#f 'class::t)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _%L91197%_ '()))
                                                  '()))))))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons (gx#datum->syntax '#f 'def)
                                                    (cons _%L91341%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin-annotation)
                              (cons (cons (gx#datum->syntax '#f '@mop.mutator)
                                          (cons _%L91230%_
                                                (cons _%L91197%_
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
                                      (cons _%L91195%_
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'class::t)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _%L91197%_
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
                                                  _%g9132791338%_))))
                                         (_%g9132591356%_
                                          (gx#stx-identifier
                                           _%L91197%_
                                           '"&"
                                           _%L91313%_)))))
                                   _%g9129991310%_))))
                          (_%g9129791360%_
                           (gx#stx-identifier
                            _%L91197%_
                            _%L91257%_
                            '"-set!")))))
                    _%g9127191282%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g9126991364%_
                                                    (gx#stx-identifier
                                                     _%L91197%_
                                                     '"&"
                                                     _%L91257%_)))))
                                             _%g9124391254%_))))
                                    (_%g9124191368%_
                                     (gx#stx-identifier
                                      _%L91197%_
                                      '"class-type-"
                                      _%L91197%_)))))
                              _%g9121691227%_))))
                     (_%g9121491372%_ (gx#core-quote-syntax 'class::t))))
                 _%hd9114191189%_
                 _%hd9113891179%_)
                (_%g9112791148%_ _%g9112891152%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9112791148%_
                                                     _%g9112891152%_))))
                                            (_%g9112791148%_
                                             _%g9112891152%_))))
                                    (_%g9112791148%_ _%g9112891152%_))))
                            (_%g9112791148%_ _%g9112891152%_))))
                    (_%g9112791148%_ _%g9112891152%_)))))
        (_%g9112691376%_ _%stx91124%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx91380%_)
      (let* ((_%g9138491413%_
              (lambda (_%g9138591409%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9138591409%_)))
             (_%g9138391513%_
              (lambda (_%g9138591417%_)
                (if (gx#stx-pair? _%g9138591417%_)
                    (let ((_%e9139091420%_ (gx#syntax-e _%g9138591417%_)))
                      (let ((_%hd9138991424%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9139091420%_)))
                            (_%tl9138891427%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9139091420%_))))
                        (if (gx#stx-pair/null? _%tl9138891427%_)
                            (let ((_g97699_
                                   (gx#syntax-split-splice
                                    _%tl9138891427%_
                                    '0)))
                              (begin
                                (let ((_g97700_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g97699_)
                                             (##vector-length _g97699_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g97700_ 2)))
                                      (error "Context expects 2 values"
                                             _g97700_)))
                                (let ((_%target9139191430%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97699_ 0)))
                                      (_%tl9139391433%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97699_ 1))))
                                  (if (gx#stx-null? _%tl9139391433%_)
                                      (letrec ((_%loop9139491436%_
                                                (lambda (_%hd9139291440%_
                                                         _%field9139891443%_
                                                         _%slot9139991445%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9139291440%_)
                                                      (let ((_%e9139591448%_
                                                             (gx#syntax-e
                                                              _%hd9139291440%_)))
                                                        (let ((_%lp-hd9139691452%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9139591448%_)))
                      (_%lp-tl9139791455%_
                       (let () (declare (not safe)) (##cdr _%e9139591448%_))))
                  (if (gx#stx-pair? _%lp-hd9139691452%_)
                      (let ((_%e9140491458%_
                             (gx#syntax-e _%lp-hd9139691452%_)))
                        (let ((_%hd9140391462%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9140491458%_)))
                              (_%tl9140291465%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9140491458%_))))
                          (if (gx#stx-pair? _%tl9140291465%_)
                              (let ((_%e9140791468%_
                                     (gx#syntax-e _%tl9140291465%_)))
                                (let ((_%hd9140691472%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9140791468%_)))
                                      (_%tl9140591475%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9140791468%_))))
                                  (if (gx#stx-null? _%tl9140591475%_)
                                      (_%loop9139491436%_
                                       _%lp-tl9139791455%_
                                       (cons _%hd9140691472%_
                                             _%field9139891443%_)
                                       (cons _%hd9140391462%_
                                             _%slot9139991445%_))
                                      (_%g9138491413%_ _%g9138591417%_))))
                              (_%g9138491413%_ _%g9138591417%_))))
                      (_%g9138491413%_ _%g9138591417%_))))
              (let ((_%field9140091478%_ (reverse _%field9139891443%_))
                    (_%slot9140191481%_ (reverse _%slot9139991445%_)))
                ((lambda (_%L91484%_ _%L91486%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L91484%_
                            _%L91486%_)
                           (let ((__tmp97701
                                  (lambda (_%g9150191505%_
                                           _%g9150291508%_
                                           _%g9150391510%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g9150291508%_
                                                            (cons _%g9150191505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9150391510%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp97701
                              '()
                              _%L91484%_
                              _%L91486%_)))))
                 _%field9140091478%_
                 _%slot9140191481%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9139491436%_
                                         _%target9139191430%_
                                         '()
                                         '()))
                                      (_%g9138491413%_ _%g9138591417%_)))))
                            (_%g9138491413%_ _%g9138591417%_))))
                    (_%g9138491413%_ _%g9138591417%_)))))
        (_%g9138391513%_ _%$stx91380%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx91518%_)
      (let* ((_%g9152291556%_
              (lambda (_%g9152391552%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9152391552%_)))
             (_%g9152191667%_
              (lambda (_%g9152391560%_)
                (if (gx#stx-pair? _%g9152391560%_)
                    (let ((_%e9153291563%_ (gx#syntax-e _%g9152391560%_)))
                      (let ((_%hd9153191567%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9153291563%_)))
                            (_%tl9153091570%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9153291563%_))))
                        (if (gx#stx-pair? _%tl9153091570%_)
                            (let ((_%e9153591573%_
                                   (gx#syntax-e _%tl9153091570%_)))
                              (let ((_%hd9153491577%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9153591573%_)))
                                    (_%tl9153391580%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9153591573%_))))
                                (if (gx#stx-pair? _%tl9153391580%_)
                                    (let ((_%e9153891583%_
                                           (gx#syntax-e _%tl9153391580%_)))
                                      (let ((_%hd9153791587%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9153891583%_)))
                                            (_%tl9153691590%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9153891583%_))))
                                        (if (gx#stx-pair? _%tl9153691590%_)
                                            (let ((_%e9154191593%_
                                                   (gx#syntax-e
                                                    _%tl9153691590%_)))
                                              (let ((_%hd9154091597%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9154191593%_)))
                                                    (_%tl9153991600%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9154191593%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9153991600%_)
                                                    (let ((_%e9154491603%_
                                                           (gx#syntax-e
                                                            _%tl9153991600%_)))
                                                      (let ((_%hd9154391607%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9154491603%_)))
                    (_%tl9154291610%_
                     (let () (declare (not safe)) (##cdr _%e9154491603%_))))
                (if (gx#stx-pair? _%tl9154291610%_)
                    (let ((_%e9154791613%_ (gx#syntax-e _%tl9154291610%_)))
                      (let ((_%hd9154691617%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9154791613%_)))
                            (_%tl9154591620%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9154791613%_))))
                        (if (gx#stx-pair? _%tl9154591620%_)
                            (let ((_%e9155091623%_
                                   (gx#syntax-e _%tl9154591620%_)))
                              (let ((_%hd9154991627%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9155091623%_)))
                                    (_%tl9154891630%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9155091623%_))))
                                (if (gx#stx-null? _%tl9154891630%_)
                                    ((lambda (_%L91633%_
                                              _%L91635%_
                                              _%L91636%_
                                              _%L91637%_
                                              _%L91638%_
                                              _%L91639%_)
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
                                         (cons _%L91639%_ '()))
                                   (cons _%L91638%_ (cons '#f '()))))
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
                               (cons _%L91639%_
                                     (cons 'slot: (cons _%L91638%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L91639%_ '()))
                                         (cons (cons _%L91637%_
                                                     (cons _%L91639%_
                                                           (cons _%L91638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L91639%_ '()))
                                               (cons (cons _%L91636%_
                                                           (cons _%L91639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L91638%_
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
                                           (cons _%L91639%_ '()))
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
                                                     (cons (cons _%L91635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L91639%_
                               (cons _%L91638%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L91633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L91639%_
                                     (cons _%L91638%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd9154991627%_
                                     _%hd9154691617%_
                                     _%hd9154391607%_
                                     _%hd9154091597%_
                                     _%hd9153791587%_
                                     _%hd9153491577%_)
                                    (_%g9152291556%_ _%g9152391560%_))))
                            (_%g9152291556%_ _%g9152391560%_))))
                    (_%g9152291556%_ _%g9152391560%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9152291556%_
                                                     _%g9152391560%_))))
                                            (_%g9152291556%_
                                             _%g9152391560%_))))
                                    (_%g9152291556%_ _%g9152391560%_))))
                            (_%g9152291556%_ _%g9152391560%_))))
                    (_%g9152291556%_ _%g9152391560%_)))))
        (_%g9152191667%_ _%$stx91518%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx91671%_)
      (let* ((_%g9167591701%_
              (lambda (_%g9167691697%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9167691697%_)))
             (_%g9167491784%_
              (lambda (_%g9167691705%_)
                (if (gx#stx-pair? _%g9167691705%_)
                    (let ((_%e9168391708%_ (gx#syntax-e _%g9167691705%_)))
                      (let ((_%hd9168291712%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9168391708%_)))
                            (_%tl9168191715%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9168391708%_))))
                        (if (gx#stx-pair? _%tl9168191715%_)
                            (let ((_%e9168691718%_
                                   (gx#syntax-e _%tl9168191715%_)))
                              (let ((_%hd9168591722%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9168691718%_)))
                                    (_%tl9168491725%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9168691718%_))))
                                (if (gx#stx-pair? _%tl9168491725%_)
                                    (let ((_%e9168991728%_
                                           (gx#syntax-e _%tl9168491725%_)))
                                      (let ((_%hd9168891732%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9168991728%_)))
                                            (_%tl9168791735%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9168991728%_))))
                                        (if (gx#stx-pair? _%tl9168791735%_)
                                            (let ((_%e9169291738%_
                                                   (gx#syntax-e
                                                    _%tl9168791735%_)))
                                              (let ((_%hd9169191742%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9169291738%_)))
                                                    (_%tl9169091745%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9169291738%_))))
                                                (if (gx#stx-pair?
                                                     _%tl9169091745%_)
                                                    (let ((_%e9169591748%_
                                                           (gx#syntax-e
                                                            _%tl9169091745%_)))
                                                      (let ((_%hd9169491752%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e9169591748%_)))
                    (_%tl9169391755%_
                     (let () (declare (not safe)) (##cdr _%e9169591748%_))))
                (if (gx#stx-null? _%tl9169391755%_)
                    ((lambda (_%L91758%_ _%L91760%_ _%L91761%_ _%L91762%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L91762%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L91761%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L91760%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L91758%_
                                     (cons _%L91762%_ (cons _%L91761%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd9169491752%_
                     _%hd9169191742%_
                     _%hd9168891732%_
                     _%hd9168591722%_)
                    (_%g9167591701%_ _%g9167691705%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9167591701%_
                                                     _%g9167691705%_))))
                                            (_%g9167591701%_
                                             _%g9167691705%_))))
                                    (_%g9167591701%_ _%g9167691705%_))))
                            (_%g9167591701%_ _%g9167691705%_))))
                    (_%g9167591701%_ _%g9167691705%_)))))
        (_%g9167491784%_ _%$stx91671%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx91788%_)
      (let* ((_%g9179291821%_
              (lambda (_%g9179391817%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9179391817%_)))
             (_%g9179191921%_
              (lambda (_%g9179391825%_)
                (if (gx#stx-pair? _%g9179391825%_)
                    (let ((_%e9179891828%_ (gx#syntax-e _%g9179391825%_)))
                      (let ((_%hd9179791832%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9179891828%_)))
                            (_%tl9179691835%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9179891828%_))))
                        (if (gx#stx-pair/null? _%tl9179691835%_)
                            (let ((_g97702_
                                   (gx#syntax-split-splice
                                    _%tl9179691835%_
                                    '0)))
                              (begin
                                (let ((_g97703_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g97702_)
                                             (##vector-length _g97702_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g97703_ 2)))
                                      (error "Context expects 2 values"
                                             _g97703_)))
                                (let ((_%target9179991838%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97702_ 0)))
                                      (_%tl9180191841%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g97702_ 1))))
                                  (if (gx#stx-null? _%tl9180191841%_)
                                      (letrec ((_%loop9180291844%_
                                                (lambda (_%hd9180091848%_
                                                         _%name9180691851%_
                                                         _%t9180791853%_)
                                                  (if (gx#stx-pair?
                                                       _%hd9180091848%_)
                                                      (let ((_%e9180391856%_
                                                             (gx#syntax-e
                                                              _%hd9180091848%_)))
                                                        (let ((_%lp-hd9180491860%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e9180391856%_)))
                      (_%lp-tl9180591863%_
                       (let () (declare (not safe)) (##cdr _%e9180391856%_))))
                  (if (gx#stx-pair? _%lp-hd9180491860%_)
                      (let ((_%e9181291866%_
                             (gx#syntax-e _%lp-hd9180491860%_)))
                        (let ((_%hd9181191870%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e9181291866%_)))
                              (_%tl9181091873%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e9181291866%_))))
                          (if (gx#stx-pair? _%tl9181091873%_)
                              (let ((_%e9181591876%_
                                     (gx#syntax-e _%tl9181091873%_)))
                                (let ((_%hd9181491880%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9181591876%_)))
                                      (_%tl9181391883%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9181591876%_))))
                                  (if (gx#stx-null? _%tl9181391883%_)
                                      (_%loop9180291844%_
                                       _%lp-tl9180591863%_
                                       (cons _%hd9181491880%_
                                             _%name9180691851%_)
                                       (cons _%hd9181191870%_ _%t9180791853%_))
                                      (_%g9179291821%_ _%g9179391825%_))))
                              (_%g9179291821%_ _%g9179391825%_))))
                      (_%g9179291821%_ _%g9179391825%_))))
              (let ((_%name9180891886%_ (reverse _%name9180691851%_))
                    (_%t9180991889%_ (reverse _%t9180791853%_)))
                ((lambda (_%L91892%_ _%L91894%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L91892%_
                            _%L91894%_)
                           (let ((__tmp97704
                                  (lambda (_%g9190991913%_
                                           _%g9191091916%_
                                           _%g9191191918%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g9191091916%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g9190991913%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g9191191918%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp97704
                              '()
                              _%L91892%_
                              _%L91894%_)))))
                 _%name9180891886%_
                 _%t9180991889%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop9180291844%_
                                         _%target9179991838%_
                                         '()
                                         '()))
                                      (_%g9179291821%_ _%g9179391825%_)))))
                            (_%g9179291821%_ _%g9179391825%_))))
                    (_%g9179291821%_ _%g9179391825%_)))))
        (_%g9179191921%_ _%$stx91788%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx91926%_)
      (let* ((_%g9193091961%_
              (lambda (_%g9193191957%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9193191957%_)))
             (_%g9192992080%_
              (lambda (_%g9193191965%_)
                (if (gx#stx-pair? _%g9193191965%_)
                    (let ((_%e9193791968%_ (gx#syntax-e _%g9193191965%_)))
                      (let ((_%hd9193691972%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9193791968%_)))
                            (_%tl9193591975%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9193791968%_))))
                        (if (gx#stx-pair? _%tl9193591975%_)
                            (let ((_%e9194091978%_
                                   (gx#syntax-e _%tl9193591975%_)))
                              (let ((_%hd9193991982%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9194091978%_)))
                                    (_%tl9193891985%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9194091978%_))))
                                (if (gx#stx-pair? _%tl9193891985%_)
                                    (let ((_%e9194391988%_
                                           (gx#syntax-e _%tl9193891985%_)))
                                      (let ((_%hd9194291992%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9194391988%_)))
                                            (_%tl9194191995%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9194391988%_))))
                                        (if (gx#stx-pair? _%tl9194191995%_)
                                            (let ((_%e9194691998%_
                                                   (gx#syntax-e
                                                    _%tl9194191995%_)))
                                              (let ((_%hd9194592002%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e9194691998%_)))
                                                    (_%tl9194492005%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e9194691998%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd9194592002%_)
                                                    (let ((_g97705_
                                                           (gx#syntax-split-splice
                                                            _%hd9194592002%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g97706_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g97705_)
                             (##vector-length _g97705_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g97706_ 2)))
                      (error "Context expects 2 values" _g97706_)))
                (let ((_%target9194792008%_
                       (let () (declare (not safe)) (##vector-ref _g97705_ 0)))
                      (_%tl9194992011%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g97705_ 1))))
                  (if (gx#stx-null? _%tl9194992011%_)
                      (letrec ((_%loop9195092014%_
                                (lambda (_%hd9194892018%_ _%super9195492021%_)
                                  (if (gx#stx-pair? _%hd9194892018%_)
                                      (let ((_%e9195192024%_
                                             (gx#syntax-e _%hd9194892018%_)))
                                        (let ((_%lp-hd9195292028%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e9195192024%_)))
                                              (_%lp-tl9195392031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e9195192024%_))))
                                          (_%loop9195092014%_
                                           _%lp-tl9195392031%_
                                           (cons _%lp-hd9195292028%_
                                                 _%super9195492021%_))))
                                      (let ((_%super9195592034%_
                                             (reverse _%super9195492021%_)))
                                        (if (gx#stx-null? _%tl9194492005%_)
                                            ((lambda (_%L92038%_
                                                      _%L92040%_
                                                      _%L92041%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L92041%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L92040%_
                                                 (cons (let ((__tmp97707
                                                              (lambda (_%g9206592068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9206692071%_)
                        (cons _%g9206592068%_ _%g9206692071%_))))
                 (declare (not safe))
                 (__foldr1 __tmp97707 '() _%L92038%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L92040%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp97708
                                  (lambda (_%g9206392074%_ _%g9206492077%_)
                                    (cons _%g9206392074%_ _%g9206492077%_))))
                             (declare (not safe))
                             (__foldr1 __tmp97708 '() _%L92038%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super9195592034%_
                                             _%hd9194291992%_
                                             _%hd9193991982%_)
                                            (_%g9193091961%_
                                             _%g9193191965%_)))))))
                        (_%loop9195092014%_ _%target9194792008%_ '()))
                      (_%g9193091961%_ _%g9193191965%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g9193091961%_
                                                     _%g9193191965%_))))
                                            (_%g9193091961%_
                                             _%g9193191965%_))))
                                    (_%g9193091961%_ _%g9193191965%_))))
                            (_%g9193091961%_ _%g9193191965%_))))
                    (_%g9193091961%_ _%g9193191965%_)))))
        (_%g9192992080%_ _%$stx91926%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx92085%_)
      (let* ((_%g9208992120%_
              (lambda (_%g9209092116%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g9209092116%_)))
             (_%g9208892231%_
              (lambda (_%g9209092124%_)
                (if (gx#stx-pair? _%g9209092124%_)
                    (let ((_%e9209692127%_ (gx#syntax-e _%g9209092124%_)))
                      (let ((_%hd9209592131%_
                             (let ()
                               (declare (not safe))
                               (##car _%e9209692127%_)))
                            (_%tl9209492134%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e9209692127%_))))
                        (if (gx#stx-pair? _%tl9209492134%_)
                            (let ((_%e9209992137%_
                                   (gx#syntax-e _%tl9209492134%_)))
                              (let ((_%hd9209892141%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e9209992137%_)))
                                    (_%tl9209792144%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e9209992137%_))))
                                (if (gx#stx-pair? _%tl9209792144%_)
                                    (let ((_%e9210292147%_
                                           (gx#syntax-e _%tl9209792144%_)))
                                      (let ((_%hd9210192151%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9210292147%_)))
                                            (_%tl9210092154%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9210292147%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd9210192151%_)
                                            (let ((_g97709_
                                                   (gx#syntax-split-splice
                                                    _%hd9210192151%_
                                                    '0)))
                                              (begin
                                                (let ((_g97710_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g97709_)
                                                             (##vector-length
                                                              _g97709_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g97710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g97710_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target9210392157%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g97709_
                                                          0)))
                                                      (_%tl9210592160%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _g97709_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl9210592160%_)
                                                      (letrec ((_%loop9210692163%_
                                                                (lambda (_%hd9210492167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super9211092170%_)
                          (if (gx#stx-pair? _%hd9210492167%_)
                              (let ((_%e9210792173%_
                                     (gx#syntax-e _%hd9210492167%_)))
                                (let ((_%lp-hd9210892177%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e9210792173%_)))
                                      (_%lp-tl9210992180%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e9210792173%_))))
                                  (_%loop9210692163%_
                                   _%lp-tl9210992180%_
                                   (cons _%lp-hd9210892177%_
                                         _%super9211092170%_))))
                              (let ((_%super9211192183%_
                                     (reverse _%super9211092170%_)))
                                (if (gx#stx-pair? _%tl9210092154%_)
                                    (let ((_%e9211492187%_
                                           (gx#syntax-e _%tl9210092154%_)))
                                      (let ((_%hd9211392191%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e9211492187%_)))
                                            (_%tl9211292194%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e9211492187%_))))
                                        (if (gx#stx-null? _%tl9211292194%_)
                                            ((lambda (_%L92197%_
                                                      _%L92199%_
                                                      _%L92200%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L92200%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L92200%_
                                                 (cons (let ((__tmp97711
                                                              (lambda (_%g9222292225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g9222392228%_)
                        (cons _%g9222292225%_ _%g9222392228%_))))
                 (declare (not safe))
                 (__foldr1 __tmp97711 '() _%L92199%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L92197%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd9211392191%_
                                             _%super9211192183%_
                                             _%hd9209892141%_)
                                            (_%g9208992120%_
                                             _%g9209092124%_))))
                                    (_%g9208992120%_ _%g9209092124%_)))))))
                (_%loop9210692163%_ _%target9210392157%_ '()))
              (_%g9208992120%_ _%g9209092124%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g9208992120%_
                                             _%g9209092124%_))))
                                    (_%g9208992120%_ _%g9209092124%_))))
                            (_%g9208992120%_ _%g9209092124%_))))
                    (_%g9208992120%_ _%g9209092124%_)))))
        (_%g9208892231%_ _%$stx92085%_)))))
