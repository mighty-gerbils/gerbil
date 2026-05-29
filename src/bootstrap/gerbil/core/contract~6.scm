(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g101348_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101349_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101350_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101353_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101354_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101357_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101358_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101359_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101360_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101364_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101365_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101366_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101367_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g101371_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx52012%_)
        (let* ((_%__stx9467494675%_ _%stx52012%_)
               (_%g5202152230%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9467494675%_))))
          (let ((_%__kont9467794678%_
                 (lambda (_%g5202353122%_
                          _%g5202453124%_
                          _%g5202553125%_
                          _%g5202653126%_
                          _%g5202753127%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g5202753127%_
                                     (cons _%g5202653126%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5202753127%_
                                                       (cons _%g5202553125%_
                                                             (cons _%g5202453124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5317053173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5317153176%_)
                  (cons _%g5317053173%_ _%g5317153176%_))
                '()
                _%g5202353122%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9468194682%_
                 (lambda (_%g5205552968%_
                          _%g5205652970%_
                          _%g5205752971%_
                          _%g5205852972%_
                          _%g5205952973%_
                          _%g5206052974%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%g5206052974%_
                                     (cons _%g5205952973%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5206052974%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%g5205852972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%g5206052974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g5205752971%_
                                       (cons _%g5205652970%_ '())))
                           (foldr (lambda (_%g5301853021%_ _%g5301953024%_)
                                    (cons _%g5301853021%_ _%g5301953024%_))
                                  '()
                                  _%g5205552968%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9468594686%_
                 (lambda (_%g5209452787%_
                          _%g5209552789%_
                          _%g5209652790%_
                          _%g5209752791%_)
                   (let ((_%meta52828%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx52012%_
                             _%g5209552789%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta52828%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%g5209752791%_
                                           (cons _%g5209652790%_
                                                 (cons _%g5209552789%_ '())))
                                     (foldr (lambda (_%g5283252835%_
                                                     _%g5283352838%_)
                                              (cons _%g5283252835%_
                                                    _%g5283352838%_))
                                            '()
                                            _%g5209452787%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta52828%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%g5209752791%_
                                               (cons _%g5209652790%_
                                                     (cons _%g5209552789%_
                                                           '())))
                                         (foldr (lambda (_%g5284252845%_
                                                         _%g5284352848%_)
                                                  (cons _%g5284252845%_
                                                        _%g5284352848%_))
                                                '()
                                                _%g5209452787%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx52012%_
                              _%g5209552789%_
                              _%meta52828%_))))))
                (_%__kont9468994690%_
                 (lambda (_%g5212252667%_ _%g5212352669%_ _%g5212452670%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%g5212452670%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g5212352669%_ '())))
                               (foldr (lambda (_%g5269352696%_ _%g5269452699%_)
                                        (cons _%g5269352696%_ _%g5269452699%_))
                                      '()
                                      _%g5212252667%_)))))
                (_%__kont9469394694%_
                 (lambda (_%g5214952527%_
                          _%g5215052529%_
                          _%g5215152530%_
                          _%g5215252531%_
                          _%g5215352532%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g5215352532%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%g5215252531%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%g5215352532%_
                                                       (cons _%g5215152530%_
                                                             (cons _%g5215052529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g5257352576%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5257452579%_)
                  (cons _%g5257352576%_ _%g5257452579%_))
                '()
                _%g5214952527%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9469794698%_
                 (lambda (_%g5218452387%_
                          _%g5218552389%_
                          _%g5218652390%_
                          _%g5218752391%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%g5218752391%_ _%g5218652390%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%g5218552389%_
                                                 (foldr (lambda (_%g5241352416%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5241452419%_)
                  (cons _%g5241352416%_ _%g5241452419%_))
                '()
                _%g5218452387%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9470194702%_
                 (lambda (_%g5220952285%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g5230352306%_ _%g5230452309%_)
                                        (cons _%g5230352306%_ _%g5230452309%_))
                                      '()
                                      _%g5220952285%_))))))
            (let* ((_%__match9500795008%_
                    (lambda (_%e5221052237%_
                             _%hd5221152241%_
                             _%tl5221252244%_
                             _%e5221352247%_
                             _%hd5221452251%_
                             _%tl5221552254%_
                             _%__splice9470394704%_
                             _%target5221652257%_
                             _%tl5221852260%_)
                      (letrec ((_%loop5221952263%_
                                (lambda (_%hd5221752267%_ _%body5222352270%_)
                                  (if (gx#stx-pair? _%hd5221752267%_)
                                      (let ((_%e5222052272%_
                                             (gx#syntax-e _%hd5221752267%_)))
                                        (let ((_%lp-tl5222252279%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5222052272%_)))
                                              (_%lp-hd5222152276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5222052272%_))))
                                          (_%loop5221952263%_
                                           _%lp-tl5222252279%_
                                           (cons _%lp-hd5222152276%_
                                                 _%body5222352270%_))))
                                      (let ((_%body5222452282%_
                                             (reverse _%body5222352270%_)))
                                        (_%__kont9470194702%_
                                         _%body5222452282%_))))))
                        (_%loop5221952263%_ _%target5221652257%_ '()))))
                   (_%__match9498594986%_
                    (lambda (_%e5218852319%_
                             _%hd5218952323%_
                             _%tl5219052326%_
                             _%e5219152329%_
                             _%hd5219252333%_
                             _%tl5219352336%_
                             _%e5219452339%_
                             _%hd5219552343%_
                             _%tl5219652346%_
                             _%e5219752349%_
                             _%hd5219852353%_
                             _%tl5219952356%_
                             _%__splice9469994700%_
                             _%target5220052359%_
                             _%tl5220252362%_)
                      (letrec ((_%loop5220352365%_
                                (lambda (_%hd5220152369%_ _%body5220752372%_)
                                  (if (gx#stx-pair? _%hd5220152369%_)
                                      (let ((_%e5220452374%_
                                             (gx#syntax-e _%hd5220152369%_)))
                                        (let ((_%lp-tl5220652381%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5220452374%_)))
                                              (_%lp-hd5220552378%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5220452374%_))))
                                          (_%loop5220352365%_
                                           _%lp-tl5220652381%_
                                           (cons _%lp-hd5220552378%_
                                                 _%body5220752372%_))))
                                      (let ((_%body5220852384%_
                                             (reverse _%body5220752372%_)))
                                        (let ((_%g5218452387%_
                                               _%body5220852384%_)
                                              (_%g5218552389%_
                                               _%tl5219652346%_)
                                              (_%g5218652390%_
                                               _%tl5219952356%_)
                                              (_%g5218752391%_
                                               _%hd5219852353%_))
                                          (if (gx#identifier? _%g5218752391%_)
                                              (_%__kont9469794698%_
                                               _%g5218452387%_
                                               _%g5218552389%_
                                               _%g5218652390%_
                                               _%g5218752391%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5202152230%_)))))))))
                        (_%loop5220352365%_ _%target5220052359%_ '()))))
                   (_%__match9497194972%_
                    (lambda (_%e5218852319%_
                             _%hd5218952323%_
                             _%tl5219052326%_
                             _%e5219152329%_
                             _%hd5219252333%_
                             _%tl5219352336%_
                             _%e5219452339%_
                             _%hd5219552343%_
                             _%tl5219652346%_)
                      (if (gx#stx-pair? _%hd5219552343%_)
                          (let ((_%e5219752349%_
                                 (gx#syntax-e _%hd5219552343%_)))
                            (let ((_%tl5219952356%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5219752349%_)))
                                  (_%hd5219852353%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5219752349%_))))
                              (if (gx#stx-pair/null? _%tl5219352336%_)
                                  (let ((_%__splice9469994700%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5219352336%_
                                          '0)))
                                    (let ((_%tl5220252362%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9469994700%_
                                              '1)))
                                          (_%target5220052359%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9469994700%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5220252362%_)
                                          (_%__match9498594986%_
                                           _%e5218852319%_
                                           _%hd5218952323%_
                                           _%tl5219052326%_
                                           _%e5219152329%_
                                           _%hd5219252333%_
                                           _%tl5219352336%_
                                           _%e5219452339%_
                                           _%hd5219552343%_
                                           _%tl5219652346%_
                                           _%e5219752349%_
                                           _%hd5219852353%_
                                           _%tl5219952356%_
                                           _%__splice9469994700%_
                                           _%target5220052359%_
                                           _%tl5220252362%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5202152230%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5202152230%_)))))
                          (let () (declare (not safe)) (_%g5202152230%_)))))
                   (_%__match9495394954%_
                    (lambda (_%e5215452429%_
                             _%hd5215552433%_
                             _%tl5215652436%_
                             _%e5215752439%_
                             _%hd5215852443%_
                             _%tl5215952446%_
                             _%e5216052449%_
                             _%hd5216152453%_
                             _%tl5216252456%_
                             _%e5216352459%_
                             _%hd5216452463%_
                             _%tl5216552466%_
                             _%e5216652469%_
                             _%hd5216752473%_
                             _%tl5216852476%_
                             _%e5216952479%_
                             _%hd5217052483%_
                             _%tl5217152486%_
                             _%e5217252489%_
                             _%hd5217352493%_
                             _%tl5217452496%_
                             _%__splice9469594696%_
                             _%target5217552499%_
                             _%tl5217752502%_)
                      (letrec ((_%loop5217852505%_
                                (lambda (_%hd5217652509%_ _%body5218252512%_)
                                  (if (gx#stx-pair? _%hd5217652509%_)
                                      (let ((_%e5217952514%_
                                             (gx#syntax-e _%hd5217652509%_)))
                                        (let ((_%lp-tl5218152521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5217952514%_)))
                                              (_%lp-hd5218052518%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5217952514%_))))
                                          (_%loop5217852505%_
                                           _%lp-tl5218152521%_
                                           (cons _%lp-hd5218052518%_
                                                 _%body5218252512%_))))
                                      (let ((_%body5218352524%_
                                             (reverse _%body5218252512%_)))
                                        (let ((_%g5214952527%_
                                               _%body5218352524%_)
                                              (_%g5215052529%_
                                               _%hd5217352493%_)
                                              (_%g5215152530%_
                                               _%hd5217052483%_)
                                              (_%g5215252531%_
                                               _%hd5216752473%_)
                                              (_%g5215352532%_
                                               _%hd5216152453%_))
                                          (if (and (gx#identifier?
                                                    _%g5215352532%_)
                                                   (gx#identifier?
                                                    _%g5215052529%_)
                                                   (gx#identifier?
                                                    _%g5215152530%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5215152530%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5215152530%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5215152530%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5215152530%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9469394694%_
                                               _%g5214952527%_
                                               _%g5215052529%_
                                               _%g5215152530%_
                                               _%g5215252531%_
                                               _%g5215352532%_)
                                              (_%__match9497194972%_
                                               _%e5215452429%_
                                               _%hd5215552433%_
                                               _%tl5215652436%_
                                               _%e5215752439%_
                                               _%hd5215852443%_
                                               _%tl5215952446%_
                                               _%e5216052449%_
                                               _%hd5216152453%_
                                               _%tl5216252456%_))))))))
                        (_%loop5217852505%_ _%target5217552499%_ '()))))
                   (_%__match9489794898%_
                    (lambda (_%e5212552589%_
                             _%hd5212652593%_
                             _%tl5212752596%_
                             _%e5212852599%_
                             _%hd5212952603%_
                             _%tl5213052606%_
                             _%e5213152609%_
                             _%hd5213252613%_
                             _%tl5213352616%_
                             _%e5213452619%_
                             _%hd5213552623%_
                             _%tl5213652626%_
                             _%e5213752629%_
                             _%hd5213852633%_
                             _%tl5213952636%_
                             _%__splice9469194692%_
                             _%target5214052639%_
                             _%tl5214252642%_)
                      (letrec ((_%loop5214352645%_
                                (lambda (_%hd5214152649%_ _%body5214752652%_)
                                  (if (gx#stx-pair? _%hd5214152649%_)
                                      (let ((_%e5214452654%_
                                             (gx#syntax-e _%hd5214152649%_)))
                                        (let ((_%lp-tl5214652661%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5214452654%_)))
                                              (_%lp-hd5214552658%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5214452654%_))))
                                          (_%loop5214352645%_
                                           _%lp-tl5214652661%_
                                           (cons _%lp-hd5214552658%_
                                                 _%body5214752652%_))))
                                      (let ((_%body5214852664%_
                                             (reverse _%body5214752652%_)))
                                        (let ((_%g5212252667%_
                                               _%body5214852664%_)
                                              (_%g5212352669%_
                                               _%hd5213852633%_)
                                              (_%g5212452670%_
                                               _%hd5213252613%_))
                                          (if (gx#identifier? _%g5212452670%_)
                                              (_%__kont9468994690%_
                                               _%g5212252667%_
                                               _%g5212352669%_
                                               _%g5212452670%_)
                                              (_%__match9497194972%_
                                               _%e5212552589%_
                                               _%hd5212652593%_
                                               _%tl5212752596%_
                                               _%e5212852599%_
                                               _%hd5212952603%_
                                               _%tl5213052606%_
                                               _%e5213152609%_
                                               _%hd5213252613%_
                                               _%tl5213352616%_))))))))
                        (_%loop5214352645%_ _%target5214052639%_ '()))))
                   (_%__match9487794878%_
                    (lambda (_%e5212552589%_
                             _%hd5212652593%_
                             _%tl5212752596%_
                             _%e5212852599%_
                             _%hd5212952603%_
                             _%tl5213052606%_
                             _%e5213152609%_
                             _%hd5213252613%_
                             _%tl5213352616%_
                             _%e5213452619%_
                             _%hd5213552623%_
                             _%tl5213652626%_)
                      (if (gx#identifier? _%hd5213552623%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g101348_|
                               _%hd5213552623%_)
                              (if (gx#stx-pair? _%tl5213652626%_)
                                  (let ((_%e5213752629%_
                                         (gx#syntax-e _%tl5213652626%_)))
                                    (let ((_%tl5213952636%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5213752629%_)))
                                          (_%hd5213852633%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5213752629%_))))
                                      (if (gx#stx-null? _%tl5213952636%_)
                                          (if (gx#stx-pair/null?
                                               _%tl5213052606%_)
                                              (let ((_%__splice9469194692%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5213052606%_
                                                      '0)))
                                                (let ((_%tl5214252642%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9469194692%_
                                                          '1)))
                                                      (_%target5214052639%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9469194692%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5214252642%_)
                                                      (_%__match9489794898%_
                                                       _%e5212552589%_
                                                       _%hd5212652593%_
                                                       _%tl5212752596%_
                                                       _%e5212852599%_
                                                       _%hd5212952603%_
                                                       _%tl5213052606%_
                                                       _%e5213152609%_
                                                       _%hd5213252613%_
                                                       _%tl5213352616%_
                                                       _%e5213452619%_
                                                       _%hd5213552623%_
                                                       _%tl5213652626%_
                                                       _%e5213752629%_
                                                       _%hd5213852633%_
                                                       _%tl5213952636%_
                                                       _%__splice9469194692%_
                                                       _%target5214052639%_
                                                       _%tl5214252642%_)
                                                      (if (gx#stx-pair?
                                                           _%hd5213252613%_)
                                                          (let ((_%e5219752349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd5213252613%_)))
                    (let ((_%tl5219952356%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5219752349%_)))
                          (_%hd5219852353%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5219752349%_))))
                      (let () (declare (not safe)) (_%g5202152230%_))))
                  (let () (declare (not safe)) (_%g5202152230%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5213252613%_)
                                                  (let ((_%e5219752349%_
                                                         (gx#syntax-e
                                                          _%hd5213252613%_)))
                                                    (let ((_%tl5219952356%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5219752349%_)))
                                                          (_%hd5219852353%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5219752349%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5202152230%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5202152230%_))))
                                          (if (gx#stx-pair? _%tl5213952636%_)
                                              (let ((_%e5216952479%_
                                                     (gx#syntax-e
                                                      _%tl5213952636%_)))
                                                (let ((_%tl5217152486%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5216952479%_)))
                                                      (_%hd5217052483%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5216952479%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5217152486%_)
                                                      (let ((_%e5217252489%_
                                                             (gx#syntax-e
                                                              _%tl5217152486%_)))
                                                        (let ((_%tl5217452496%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5217252489%_)))
                      (_%hd5217352493%_
                       (let () (declare (not safe)) (##car _%e5217252489%_))))
                  (if (gx#stx-null? _%tl5217452496%_)
                      (if (gx#stx-pair/null? _%tl5213052606%_)
                          (let ((_%__splice9469594696%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5213052606%_
                                  '0)))
                            (let ((_%tl5217752502%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9469594696%_ '1)))
                                  (_%target5217552499%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9469594696%_
                                      '0))))
                              (if (gx#stx-null? _%tl5217752502%_)
                                  (_%__match9495394954%_
                                   _%e5212552589%_
                                   _%hd5212652593%_
                                   _%tl5212752596%_
                                   _%e5212852599%_
                                   _%hd5212952603%_
                                   _%tl5213052606%_
                                   _%e5213152609%_
                                   _%hd5213252613%_
                                   _%tl5213352616%_
                                   _%e5213452619%_
                                   _%hd5213552623%_
                                   _%tl5213652626%_
                                   _%e5213752629%_
                                   _%hd5213852633%_
                                   _%tl5213952636%_
                                   _%e5216952479%_
                                   _%hd5217052483%_
                                   _%tl5217152486%_
                                   _%e5217252489%_
                                   _%hd5217352493%_
                                   _%tl5217452496%_
                                   _%__splice9469594696%_
                                   _%target5217552499%_
                                   _%tl5217752502%_)
                                  (if (gx#stx-pair? _%hd5213252613%_)
                                      (let ((_%e5219752349%_
                                             (gx#syntax-e _%hd5213252613%_)))
                                        (let ((_%tl5219952356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5219752349%_)))
                                              (_%hd5219852353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5219752349%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5202152230%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5202152230%_))))))
                          (if (gx#stx-pair? _%hd5213252613%_)
                              (let ((_%e5219752349%_
                                     (gx#syntax-e _%hd5213252613%_)))
                                (let ((_%tl5219952356%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5219752349%_)))
                                      (_%hd5219852353%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5219752349%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5202152230%_))))
                              (let () (declare (not safe)) (_%g5202152230%_))))
                      (if (gx#stx-pair? _%hd5213252613%_)
                          (let ((_%e5219752349%_
                                 (gx#syntax-e _%hd5213252613%_)))
                            (let ((_%tl5219952356%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5219752349%_)))
                                  (_%hd5219852353%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5219752349%_))))
                              (if (gx#stx-pair/null? _%tl5213052606%_)
                                  (let ((_%__splice9469994700%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5213052606%_
                                          '0)))
                                    (let ((_%tl5220252362%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9469994700%_
                                              '1)))
                                          (_%target5220052359%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9469994700%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5220252362%_)
                                          (_%__match9498594986%_
                                           _%e5212552589%_
                                           _%hd5212652593%_
                                           _%tl5212752596%_
                                           _%e5212852599%_
                                           _%hd5212952603%_
                                           _%tl5213052606%_
                                           _%e5213152609%_
                                           _%hd5213252613%_
                                           _%tl5213352616%_
                                           _%e5219752349%_
                                           _%hd5219852353%_
                                           _%tl5219952356%_
                                           _%__splice9469994700%_
                                           _%target5220052359%_
                                           _%tl5220252362%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5202152230%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5202152230%_)))))
                          (let () (declare (not safe)) (_%g5202152230%_))))))
              (if (gx#stx-pair? _%hd5213252613%_)
                  (let ((_%e5219752349%_ (gx#syntax-e _%hd5213252613%_)))
                    (let ((_%tl5219952356%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5219752349%_)))
                          (_%hd5219852353%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5219752349%_))))
                      (if (gx#stx-pair/null? _%tl5213052606%_)
                          (let ((_%__splice9469994700%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5213052606%_
                                  '0)))
                            (let ((_%tl5220252362%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9469994700%_ '1)))
                                  (_%target5220052359%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9469994700%_
                                      '0))))
                              (if (gx#stx-null? _%tl5220252362%_)
                                  (_%__match9498594986%_
                                   _%e5212552589%_
                                   _%hd5212652593%_
                                   _%tl5212752596%_
                                   _%e5212852599%_
                                   _%hd5212952603%_
                                   _%tl5213052606%_
                                   _%e5213152609%_
                                   _%hd5213252613%_
                                   _%tl5213352616%_
                                   _%e5219752349%_
                                   _%hd5219852353%_
                                   _%tl5219952356%_
                                   _%__splice9469994700%_
                                   _%target5220052359%_
                                   _%tl5220252362%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5202152230%_)))))
                          (let () (declare (not safe)) (_%g5202152230%_)))))
                  (let () (declare (not safe)) (_%g5202152230%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5213252613%_)
                                                  (let ((_%e5219752349%_
                                                         (gx#syntax-e
                                                          _%hd5213252613%_)))
                                                    (let ((_%tl5219952356%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5219752349%_)))
                                                          (_%hd5219852353%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5219752349%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5213052606%_)
                                                          (let ((_%__splice9469994700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5213052606%_ '0)))
                    (let ((_%tl5220252362%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9469994700%_ '1)))
                          (_%target5220052359%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9469994700%_ '0))))
                      (if (gx#stx-null? _%tl5220252362%_)
                          (_%__match9498594986%_
                           _%e5212552589%_
                           _%hd5212652593%_
                           _%tl5212752596%_
                           _%e5212852599%_
                           _%hd5212952603%_
                           _%tl5213052606%_
                           _%e5213152609%_
                           _%hd5213252613%_
                           _%tl5213352616%_
                           _%e5219752349%_
                           _%hd5219852353%_
                           _%tl5219952356%_
                           _%__splice9469994700%_
                           _%target5220052359%_
                           _%tl5220252362%_)
                          (let () (declare (not safe)) (_%g5202152230%_)))))
                  (let () (declare (not safe)) (_%g5202152230%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5202152230%_)))))))
                                  (if (gx#stx-pair? _%hd5213252613%_)
                                      (let ((_%e5219752349%_
                                             (gx#syntax-e _%hd5213252613%_)))
                                        (let ((_%tl5219952356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5219752349%_)))
                                              (_%hd5219852353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5219752349%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5213052606%_)
                                              (let ((_%__splice9469994700%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5213052606%_
                                                      '0)))
                                                (let ((_%tl5220252362%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9469994700%_
                                                          '1)))
                                                      (_%target5220052359%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9469994700%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5220252362%_)
                                                      (_%__match9498594986%_
                                                       _%e5212552589%_
                                                       _%hd5212652593%_
                                                       _%tl5212752596%_
                                                       _%e5212852599%_
                                                       _%hd5212952603%_
                                                       _%tl5213052606%_
                                                       _%e5213152609%_
                                                       _%hd5213252613%_
                                                       _%tl5213352616%_
                                                       _%e5219752349%_
                                                       _%hd5219852353%_
                                                       _%tl5219952356%_
                                                       _%__splice9469994700%_
                                                       _%target5220052359%_
                                                       _%tl5220252362%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5202152230%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5202152230%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5202152230%_))))
                              (if (gx#stx-pair? _%hd5213252613%_)
                                  (let ((_%e5219752349%_
                                         (gx#syntax-e _%hd5213252613%_)))
                                    (let ((_%tl5219952356%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5219752349%_)))
                                          (_%hd5219852353%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5219752349%_))))
                                      (if (gx#stx-pair/null? _%tl5213052606%_)
                                          (let ((_%__splice9469994700%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5213052606%_
                                                  '0)))
                                            (let ((_%tl5220252362%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9469994700%_
                                                      '1)))
                                                  (_%target5220052359%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9469994700%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5220252362%_)
                                                  (_%__match9498594986%_
                                                   _%e5212552589%_
                                                   _%hd5212652593%_
                                                   _%tl5212752596%_
                                                   _%e5212852599%_
                                                   _%hd5212952603%_
                                                   _%tl5213052606%_
                                                   _%e5213152609%_
                                                   _%hd5213252613%_
                                                   _%tl5213352616%_
                                                   _%e5219752349%_
                                                   _%hd5219852353%_
                                                   _%tl5219952356%_
                                                   _%__splice9469994700%_
                                                   _%target5220052359%_
                                                   _%tl5220252362%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5202152230%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5202152230%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5202152230%_))))
                          (if (gx#stx-pair? _%hd5213252613%_)
                              (let ((_%e5219752349%_
                                     (gx#syntax-e _%hd5213252613%_)))
                                (let ((_%tl5219952356%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5219752349%_)))
                                      (_%hd5219852353%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5219752349%_))))
                                  (if (gx#stx-pair/null? _%tl5213052606%_)
                                      (let ((_%__splice9469994700%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5213052606%_
                                              '0)))
                                        (let ((_%tl5220252362%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9469994700%_
                                                  '1)))
                                              (_%target5220052359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9469994700%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5220252362%_)
                                              (_%__match9498594986%_
                                               _%e5212552589%_
                                               _%hd5212652593%_
                                               _%tl5212752596%_
                                               _%e5212852599%_
                                               _%hd5212952603%_
                                               _%tl5213052606%_
                                               _%e5213152609%_
                                               _%hd5213252613%_
                                               _%tl5213352616%_
                                               _%e5219752349%_
                                               _%hd5219852353%_
                                               _%tl5219952356%_
                                               _%__splice9469994700%_
                                               _%target5220052359%_
                                               _%tl5220252362%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5202152230%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5202152230%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5202152230%_))))))
                   (_%__match9485394854%_
                    (lambda (_%e5209852709%_
                             _%hd5209952713%_
                             _%tl5210052716%_
                             _%e5210152719%_
                             _%hd5210252723%_
                             _%tl5210352726%_
                             _%e5210452729%_
                             _%hd5210552733%_
                             _%tl5210652736%_
                             _%e5210752739%_
                             _%hd5210852743%_
                             _%tl5210952746%_
                             _%e5211052749%_
                             _%hd5211152753%_
                             _%tl5211252756%_
                             _%__splice9468794688%_
                             _%target5211352759%_
                             _%tl5211552762%_)
                      (letrec ((_%loop5211652765%_
                                (lambda (_%hd5211452769%_ _%body5212052772%_)
                                  (if (gx#stx-pair? _%hd5211452769%_)
                                      (let ((_%e5211752774%_
                                             (gx#syntax-e _%hd5211452769%_)))
                                        (let ((_%lp-tl5211952781%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5211752774%_)))
                                              (_%lp-hd5211852778%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5211752774%_))))
                                          (_%loop5211652765%_
                                           _%lp-tl5211952781%_
                                           (cons _%lp-hd5211852778%_
                                                 _%body5212052772%_))))
                                      (let ((_%body5212152784%_
                                             (reverse _%body5212052772%_)))
                                        (let ((_%g5209452787%_
                                               _%body5212152784%_)
                                              (_%g5209552789%_
                                               _%hd5211152753%_)
                                              (_%g5209652790%_
                                               _%hd5210852743%_)
                                              (_%g5209752791%_
                                               _%hd5210552733%_))
                                          (if (and (gx#identifier?
                                                    _%g5209752791%_)
                                                   (gx#identifier?
                                                    _%g5209552789%_)
                                                   (gx#identifier?
                                                    _%g5209652790%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5209652790%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5209652790%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5209652790%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5209652790%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9468594686%_
                                               _%g5209452787%_
                                               _%g5209552789%_
                                               _%g5209652790%_
                                               _%g5209752791%_)
                                              (_%__match9487794878%_
                                               _%e5209852709%_
                                               _%hd5209952713%_
                                               _%tl5210052716%_
                                               _%e5210152719%_
                                               _%hd5210252723%_
                                               _%tl5210352726%_
                                               _%e5210452729%_
                                               _%hd5210552733%_
                                               _%tl5210652736%_
                                               _%e5210752739%_
                                               _%hd5210852743%_
                                               _%tl5210952746%_))))))))
                        (_%loop5211652765%_ _%target5211352759%_ '()))))
                   (_%__match9481394814%_
                    (lambda (_%e5206152860%_
                             _%hd5206252864%_
                             _%tl5206352867%_
                             _%e5206452870%_
                             _%hd5206552874%_
                             _%tl5206652877%_
                             _%e5206752880%_
                             _%hd5206852884%_
                             _%tl5206952887%_
                             _%e5207052890%_
                             _%hd5207152894%_
                             _%tl5207252897%_
                             _%e5207352900%_
                             _%hd5207452904%_
                             _%tl5207552907%_
                             _%e5207652910%_
                             _%hd5207752914%_
                             _%tl5207852917%_
                             _%e5207952920%_
                             _%hd5208052924%_
                             _%tl5208152927%_
                             _%e5208252930%_
                             _%hd5208352934%_
                             _%tl5208452937%_
                             _%__splice9468394684%_
                             _%target5208552940%_
                             _%tl5208752943%_)
                      (letrec ((_%loop5208852946%_
                                (lambda (_%hd5208652950%_ _%body5209252953%_)
                                  (if (gx#stx-pair? _%hd5208652950%_)
                                      (let ((_%e5208952955%_
                                             (gx#syntax-e _%hd5208652950%_)))
                                        (let ((_%lp-tl5209152962%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5208952955%_)))
                                              (_%lp-hd5209052959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5208952955%_))))
                                          (_%loop5208852946%_
                                           _%lp-tl5209152962%_
                                           (cons _%lp-hd5209052959%_
                                                 _%body5209252953%_))))
                                      (let ((_%body5209352965%_
                                             (reverse _%body5209252953%_)))
                                        (let ((_%g5205552968%_
                                               _%body5209352965%_)
                                              (_%g5205652970%_
                                               _%hd5208352934%_)
                                              (_%g5205752971%_
                                               _%hd5208052924%_)
                                              (_%g5205852972%_
                                               _%hd5207752914%_)
                                              (_%g5205952973%_
                                               _%hd5207152894%_)
                                              (_%g5206052974%_
                                               _%hd5206852884%_))
                                          (if (and (gx#identifier?
                                                    _%g5206052974%_)
                                                   (gx#identifier?
                                                    _%g5205652970%_)
                                                   (gx#identifier?
                                                    _%g5205752971%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5205752971%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5205752971%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5205752971%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5205752971%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9468194682%_
                                               _%g5205552968%_
                                               _%g5205652970%_
                                               _%g5205752971%_
                                               _%g5205852972%_
                                               _%g5205952973%_
                                               _%g5206052974%_)
                                              (_%__match9487794878%_
                                               _%e5206152860%_
                                               _%hd5206252864%_
                                               _%tl5206352867%_
                                               _%e5206452870%_
                                               _%hd5206552874%_
                                               _%tl5206652877%_
                                               _%e5206752880%_
                                               _%hd5206852884%_
                                               _%tl5206952887%_
                                               _%e5207052890%_
                                               _%hd5207152894%_
                                               _%tl5207252897%_))))))))
                        (_%loop5208852946%_ _%target5208552940%_ '()))))
                   (_%__match9478194782%_
                    (lambda (_%e5206152860%_
                             _%hd5206252864%_
                             _%tl5206352867%_
                             _%e5206452870%_
                             _%hd5206552874%_
                             _%tl5206652877%_
                             _%e5206752880%_
                             _%hd5206852884%_
                             _%tl5206952887%_
                             _%e5207052890%_
                             _%hd5207152894%_
                             _%tl5207252897%_
                             _%e5207352900%_
                             _%hd5207452904%_
                             _%tl5207552907%_)
                      (if (gx#identifier? _%hd5207452904%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g101349_|
                               _%hd5207452904%_)
                              (if (gx#stx-pair? _%tl5207552907%_)
                                  (let ((_%e5207652910%_
                                         (gx#syntax-e _%tl5207552907%_)))
                                    (let ((_%tl5207852917%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5207652910%_)))
                                          (_%hd5207752914%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5207652910%_))))
                                      (if (gx#stx-pair? _%tl5207852917%_)
                                          (let ((_%e5207952920%_
                                                 (gx#syntax-e
                                                  _%tl5207852917%_)))
                                            (let ((_%tl5208152927%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5207952920%_)))
                                                  (_%hd5208052924%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5207952920%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5208152927%_)
                                                  (let ((_%e5208252930%_
                                                         (gx#syntax-e
                                                          _%tl5208152927%_)))
                                                    (let ((_%tl5208452937%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5208252930%_)))
                                                          (_%hd5208352934%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5208252930%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5208452937%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5206652877%_)
                                                              (let ((_%__splice9468394684%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5206652877%_
                              '0)))
                        (let ((_%tl5208752943%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9468394684%_ '1)))
                              (_%target5208552940%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9468394684%_ '0))))
                          (if (gx#stx-null? _%tl5208752943%_)
                              (_%__match9481394814%_
                               _%e5206152860%_
                               _%hd5206252864%_
                               _%tl5206352867%_
                               _%e5206452870%_
                               _%hd5206552874%_
                               _%tl5206652877%_
                               _%e5206752880%_
                               _%hd5206852884%_
                               _%tl5206952887%_
                               _%e5207052890%_
                               _%hd5207152894%_
                               _%tl5207252897%_
                               _%e5207352900%_
                               _%hd5207452904%_
                               _%tl5207552907%_
                               _%e5207652910%_
                               _%hd5207752914%_
                               _%tl5207852917%_
                               _%e5207952920%_
                               _%hd5208052924%_
                               _%tl5208152927%_
                               _%e5208252930%_
                               _%hd5208352934%_
                               _%tl5208452937%_
                               _%__splice9468394684%_
                               _%target5208552940%_
                               _%tl5208752943%_)
                              (if (gx#stx-pair? _%hd5206852884%_)
                                  (let ((_%e5219752349%_
                                         (gx#syntax-e _%hd5206852884%_)))
                                    (let ((_%tl5219952356%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5219752349%_)))
                                          (_%hd5219852353%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5219752349%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5202152230%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5202152230%_))))))
                      (if (gx#stx-pair? _%hd5206852884%_)
                          (let ((_%e5219752349%_
                                 (gx#syntax-e _%hd5206852884%_)))
                            (let ((_%tl5219952356%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5219752349%_)))
                                  (_%hd5219852353%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5219752349%_))))
                              (let () (declare (not safe)) (_%g5202152230%_))))
                          (let () (declare (not safe)) (_%g5202152230%_))))
                  (if (gx#stx-pair? _%hd5206852884%_)
                      (let ((_%e5219752349%_ (gx#syntax-e _%hd5206852884%_)))
                        (let ((_%tl5219952356%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5219752349%_)))
                              (_%hd5219852353%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5219752349%_))))
                          (if (gx#stx-pair/null? _%tl5206652877%_)
                              (let ((_%__splice9469994700%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5206652877%_
                                      '0)))
                                (let ((_%tl5220252362%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9469994700%_
                                          '1)))
                                      (_%target5220052359%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9469994700%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5220252362%_)
                                      (_%__match9498594986%_
                                       _%e5206152860%_
                                       _%hd5206252864%_
                                       _%tl5206352867%_
                                       _%e5206452870%_
                                       _%hd5206552874%_
                                       _%tl5206652877%_
                                       _%e5206752880%_
                                       _%hd5206852884%_
                                       _%tl5206952887%_
                                       _%e5219752349%_
                                       _%hd5219852353%_
                                       _%tl5219952356%_
                                       _%__splice9469994700%_
                                       _%target5220052359%_
                                       _%tl5220252362%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5202152230%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5202152230%_)))))
                      (let () (declare (not safe)) (_%g5202152230%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd5207152894%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g101348_|
                                                           _%hd5207152894%_)
                                                          (if (gx#stx-null?
                                                               _%tl5208152927%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl5206652877%_)
                          (let ((_%__splice9469594696%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5206652877%_
                                  '0)))
                            (let ((_%tl5217752502%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9469594696%_ '1)))
                                  (_%target5217552499%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9469594696%_
                                      '0))))
                              (if (gx#stx-null? _%tl5217752502%_)
                                  (_%__match9495394954%_
                                   _%e5206152860%_
                                   _%hd5206252864%_
                                   _%tl5206352867%_
                                   _%e5206452870%_
                                   _%hd5206552874%_
                                   _%tl5206652877%_
                                   _%e5206752880%_
                                   _%hd5206852884%_
                                   _%tl5206952887%_
                                   _%e5207052890%_
                                   _%hd5207152894%_
                                   _%tl5207252897%_
                                   _%e5207352900%_
                                   _%hd5207452904%_
                                   _%tl5207552907%_
                                   _%e5207652910%_
                                   _%hd5207752914%_
                                   _%tl5207852917%_
                                   _%e5207952920%_
                                   _%hd5208052924%_
                                   _%tl5208152927%_
                                   _%__splice9469594696%_
                                   _%target5217552499%_
                                   _%tl5217752502%_)
                                  (if (gx#stx-pair? _%hd5206852884%_)
                                      (let ((_%e5219752349%_
                                             (gx#syntax-e _%hd5206852884%_)))
                                        (let ((_%tl5219952356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5219752349%_)))
                                              (_%hd5219852353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5219752349%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5202152230%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5202152230%_))))))
                          (if (gx#stx-pair? _%hd5206852884%_)
                              (let ((_%e5219752349%_
                                     (gx#syntax-e _%hd5206852884%_)))
                                (let ((_%tl5219952356%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5219752349%_)))
                                      (_%hd5219852353%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5219752349%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5202152230%_))))
                              (let () (declare (not safe)) (_%g5202152230%_))))
                      (if (gx#stx-pair? _%hd5206852884%_)
                          (let ((_%e5219752349%_
                                 (gx#syntax-e _%hd5206852884%_)))
                            (let ((_%tl5219952356%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5219752349%_)))
                                  (_%hd5219852353%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5219752349%_))))
                              (if (gx#stx-pair/null? _%tl5206652877%_)
                                  (let ((_%__splice9469994700%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5206652877%_
                                          '0)))
                                    (let ((_%tl5220252362%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9469994700%_
                                              '1)))
                                          (_%target5220052359%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9469994700%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5220252362%_)
                                          (_%__match9498594986%_
                                           _%e5206152860%_
                                           _%hd5206252864%_
                                           _%tl5206352867%_
                                           _%e5206452870%_
                                           _%hd5206552874%_
                                           _%tl5206652877%_
                                           _%e5206752880%_
                                           _%hd5206852884%_
                                           _%tl5206952887%_
                                           _%e5219752349%_
                                           _%hd5219852353%_
                                           _%tl5219952356%_
                                           _%__splice9469994700%_
                                           _%target5220052359%_
                                           _%tl5220252362%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5202152230%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5202152230%_)))))
                          (let () (declare (not safe)) (_%g5202152230%_))))
                  (if (gx#stx-pair? _%hd5206852884%_)
                      (let ((_%e5219752349%_ (gx#syntax-e _%hd5206852884%_)))
                        (let ((_%tl5219952356%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5219752349%_)))
                              (_%hd5219852353%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5219752349%_))))
                          (if (gx#stx-pair/null? _%tl5206652877%_)
                              (let ((_%__splice9469994700%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5206652877%_
                                      '0)))
                                (let ((_%tl5220252362%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9469994700%_
                                          '1)))
                                      (_%target5220052359%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9469994700%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5220252362%_)
                                      (_%__match9498594986%_
                                       _%e5206152860%_
                                       _%hd5206252864%_
                                       _%tl5206352867%_
                                       _%e5206452870%_
                                       _%hd5206552874%_
                                       _%tl5206652877%_
                                       _%e5206752880%_
                                       _%hd5206852884%_
                                       _%tl5206952887%_
                                       _%e5219752349%_
                                       _%hd5219852353%_
                                       _%tl5219952356%_
                                       _%__splice9469994700%_
                                       _%target5220052359%_
                                       _%tl5220252362%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5202152230%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5202152230%_)))))
                      (let () (declare (not safe)) (_%g5202152230%_))))
              (if (gx#stx-pair? _%hd5206852884%_)
                  (let ((_%e5219752349%_ (gx#syntax-e _%hd5206852884%_)))
                    (let ((_%tl5219952356%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5219752349%_)))
                          (_%hd5219852353%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5219752349%_))))
                      (if (gx#stx-pair/null? _%tl5206652877%_)
                          (let ((_%__splice9469994700%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5206652877%_
                                  '0)))
                            (let ((_%tl5220252362%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9469994700%_ '1)))
                                  (_%target5220052359%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9469994700%_
                                      '0))))
                              (if (gx#stx-null? _%tl5220252362%_)
                                  (_%__match9498594986%_
                                   _%e5206152860%_
                                   _%hd5206252864%_
                                   _%tl5206352867%_
                                   _%e5206452870%_
                                   _%hd5206552874%_
                                   _%tl5206652877%_
                                   _%e5206752880%_
                                   _%hd5206852884%_
                                   _%tl5206952887%_
                                   _%e5219752349%_
                                   _%hd5219852353%_
                                   _%tl5219952356%_
                                   _%__splice9469994700%_
                                   _%target5220052359%_
                                   _%tl5220252362%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5202152230%_)))))
                          (let () (declare (not safe)) (_%g5202152230%_)))))
                  (let () (declare (not safe)) (_%g5202152230%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5206852884%_)
                                              (let ((_%e5219752349%_
                                                     (gx#syntax-e
                                                      _%hd5206852884%_)))
                                                (let ((_%tl5219952356%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5219752349%_)))
                                                      (_%hd5219852353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5219752349%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5206652877%_)
                                                      (let ((_%__splice9469994700%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5206652877%_
                                                              '0)))
                                                        (let ((_%tl5220252362%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9469994700%_ '1)))
                      (_%target5220052359%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9469994700%_ '0))))
                  (if (gx#stx-null? _%tl5220252362%_)
                      (_%__match9498594986%_
                       _%e5206152860%_
                       _%hd5206252864%_
                       _%tl5206352867%_
                       _%e5206452870%_
                       _%hd5206552874%_
                       _%tl5206652877%_
                       _%e5206752880%_
                       _%hd5206852884%_
                       _%tl5206952887%_
                       _%e5219752349%_
                       _%hd5219852353%_
                       _%tl5219952356%_
                       _%__splice9469994700%_
                       _%target5220052359%_
                       _%tl5220252362%_)
                      (let () (declare (not safe)) (_%g5202152230%_)))))
              (let () (declare (not safe)) (_%g5202152230%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5202152230%_))))))
                                  (if (gx#stx-null? _%tl5207552907%_)
                                      (if (gx#stx-pair/null? _%tl5206652877%_)
                                          (let ((_%__splice9468794688%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5206652877%_
                                                  '0)))
                                            (let ((_%tl5211552762%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9468794688%_
                                                      '1)))
                                                  (_%target5211352759%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9468794688%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5211552762%_)
                                                  (_%__match9485394854%_
                                                   _%e5206152860%_
                                                   _%hd5206252864%_
                                                   _%tl5206352867%_
                                                   _%e5206452870%_
                                                   _%hd5206552874%_
                                                   _%tl5206652877%_
                                                   _%e5206752880%_
                                                   _%hd5206852884%_
                                                   _%tl5206952887%_
                                                   _%e5207052890%_
                                                   _%hd5207152894%_
                                                   _%tl5207252897%_
                                                   _%e5207352900%_
                                                   _%hd5207452904%_
                                                   _%tl5207552907%_
                                                   _%__splice9468794688%_
                                                   _%target5211352759%_
                                                   _%tl5211552762%_)
                                                  (if (gx#stx-pair?
                                                       _%hd5206852884%_)
                                                      (let ((_%e5219752349%_
                                                             (gx#syntax-e
                                                              _%hd5206852884%_)))
                                                        (let ((_%tl5219952356%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5219752349%_)))
                      (_%hd5219852353%_
                       (let () (declare (not safe)) (##car _%e5219752349%_))))
                  (let () (declare (not safe)) (_%g5202152230%_))))
              (let () (declare (not safe)) (_%g5202152230%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5206852884%_)
                                              (let ((_%e5219752349%_
                                                     (gx#syntax-e
                                                      _%hd5206852884%_)))
                                                (let ((_%tl5219952356%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5219752349%_)))
                                                      (_%hd5219852353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5219752349%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5202152230%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5202152230%_))))
                                      (if (gx#stx-pair? _%hd5206852884%_)
                                          (let ((_%e5219752349%_
                                                 (gx#syntax-e
                                                  _%hd5206852884%_)))
                                            (let ((_%tl5219952356%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5219752349%_)))
                                                  (_%hd5219852353%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5219752349%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5206652877%_)
                                                  (let ((_%__splice9469994700%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5206652877%_
                                                          '0)))
                                                    (let ((_%tl5220252362%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9469994700%_
                                                              '1)))
                                                          (_%target5220052359%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9469994700%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5220252362%_)
                                                          (_%__match9498594986%_
                                                           _%e5206152860%_
                                                           _%hd5206252864%_
                                                           _%tl5206352867%_
                                                           _%e5206452870%_
                                                           _%hd5206552874%_
                                                           _%tl5206652877%_
                                                           _%e5206752880%_
                                                           _%hd5206852884%_
                                                           _%tl5206952887%_
                                                           _%e5219752349%_
                                                           _%hd5219852353%_
                                                           _%tl5219952356%_
                                                           _%__splice9469994700%_
                                                           _%target5220052359%_
                                                           _%tl5220252362%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5202152230%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5202152230%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5202152230%_)))))
                              (if (gx#stx-null? _%tl5207552907%_)
                                  (if (gx#stx-pair/null? _%tl5206652877%_)
                                      (let ((_%__splice9468794688%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5206652877%_
                                              '0)))
                                        (let ((_%tl5211552762%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9468794688%_
                                                  '1)))
                                              (_%target5211352759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9468794688%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5211552762%_)
                                              (_%__match9485394854%_
                                               _%e5206152860%_
                                               _%hd5206252864%_
                                               _%tl5206352867%_
                                               _%e5206452870%_
                                               _%hd5206552874%_
                                               _%tl5206652877%_
                                               _%e5206752880%_
                                               _%hd5206852884%_
                                               _%tl5206952887%_
                                               _%e5207052890%_
                                               _%hd5207152894%_
                                               _%tl5207252897%_
                                               _%e5207352900%_
                                               _%hd5207452904%_
                                               _%tl5207552907%_
                                               _%__splice9468794688%_
                                               _%target5211352759%_
                                               _%tl5211552762%_)
                                              (if (gx#stx-pair?
                                                   _%hd5206852884%_)
                                                  (let ((_%e5219752349%_
                                                         (gx#syntax-e
                                                          _%hd5206852884%_)))
                                                    (let ((_%tl5219952356%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5219752349%_)))
                                                          (_%hd5219852353%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5219752349%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5202152230%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5202152230%_))))))
                                      (if (gx#stx-pair? _%hd5206852884%_)
                                          (let ((_%e5219752349%_
                                                 (gx#syntax-e
                                                  _%hd5206852884%_)))
                                            (let ((_%tl5219952356%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5219752349%_)))
                                                  (_%hd5219852353%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5219752349%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5202152230%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5202152230%_))))
                                  (if (gx#identifier? _%hd5207152894%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g101348_|
                                           _%hd5207152894%_)
                                          (if (gx#stx-pair? _%tl5207552907%_)
                                              (let ((_%e5216952479%_
                                                     (gx#syntax-e
                                                      _%tl5207552907%_)))
                                                (let ((_%tl5217152486%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5216952479%_)))
                                                      (_%hd5217052483%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5216952479%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5217152486%_)
                                                      (let ((_%e5217252489%_
                                                             (gx#syntax-e
                                                              _%tl5217152486%_)))
                                                        (let ((_%tl5217452496%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5217252489%_)))
                      (_%hd5217352493%_
                       (let () (declare (not safe)) (##car _%e5217252489%_))))
                  (if (gx#stx-null? _%tl5217452496%_)
                      (if (gx#stx-pair/null? _%tl5206652877%_)
                          (let ((_%__splice9469594696%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5206652877%_
                                  '0)))
                            (let ((_%tl5217752502%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9469594696%_ '1)))
                                  (_%target5217552499%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9469594696%_
                                      '0))))
                              (if (gx#stx-null? _%tl5217752502%_)
                                  (_%__match9495394954%_
                                   _%e5206152860%_
                                   _%hd5206252864%_
                                   _%tl5206352867%_
                                   _%e5206452870%_
                                   _%hd5206552874%_
                                   _%tl5206652877%_
                                   _%e5206752880%_
                                   _%hd5206852884%_
                                   _%tl5206952887%_
                                   _%e5207052890%_
                                   _%hd5207152894%_
                                   _%tl5207252897%_
                                   _%e5207352900%_
                                   _%hd5207452904%_
                                   _%tl5207552907%_
                                   _%e5216952479%_
                                   _%hd5217052483%_
                                   _%tl5217152486%_
                                   _%e5217252489%_
                                   _%hd5217352493%_
                                   _%tl5217452496%_
                                   _%__splice9469594696%_
                                   _%target5217552499%_
                                   _%tl5217752502%_)
                                  (if (gx#stx-pair? _%hd5206852884%_)
                                      (let ((_%e5219752349%_
                                             (gx#syntax-e _%hd5206852884%_)))
                                        (let ((_%tl5219952356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5219752349%_)))
                                              (_%hd5219852353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5219752349%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5202152230%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5202152230%_))))))
                          (if (gx#stx-pair? _%hd5206852884%_)
                              (let ((_%e5219752349%_
                                     (gx#syntax-e _%hd5206852884%_)))
                                (let ((_%tl5219952356%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5219752349%_)))
                                      (_%hd5219852353%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5219752349%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5202152230%_))))
                              (let () (declare (not safe)) (_%g5202152230%_))))
                      (if (gx#stx-pair? _%hd5206852884%_)
                          (let ((_%e5219752349%_
                                 (gx#syntax-e _%hd5206852884%_)))
                            (let ((_%tl5219952356%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5219752349%_)))
                                  (_%hd5219852353%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5219752349%_))))
                              (if (gx#stx-pair/null? _%tl5206652877%_)
                                  (let ((_%__splice9469994700%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5206652877%_
                                          '0)))
                                    (let ((_%tl5220252362%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9469994700%_
                                              '1)))
                                          (_%target5220052359%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9469994700%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5220252362%_)
                                          (_%__match9498594986%_
                                           _%e5206152860%_
                                           _%hd5206252864%_
                                           _%tl5206352867%_
                                           _%e5206452870%_
                                           _%hd5206552874%_
                                           _%tl5206652877%_
                                           _%e5206752880%_
                                           _%hd5206852884%_
                                           _%tl5206952887%_
                                           _%e5219752349%_
                                           _%hd5219852353%_
                                           _%tl5219952356%_
                                           _%__splice9469994700%_
                                           _%target5220052359%_
                                           _%tl5220252362%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5202152230%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5202152230%_)))))
                          (let () (declare (not safe)) (_%g5202152230%_))))))
              (if (gx#stx-pair? _%hd5206852884%_)
                  (let ((_%e5219752349%_ (gx#syntax-e _%hd5206852884%_)))
                    (let ((_%tl5219952356%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5219752349%_)))
                          (_%hd5219852353%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5219752349%_))))
                      (if (gx#stx-pair/null? _%tl5206652877%_)
                          (let ((_%__splice9469994700%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5206652877%_
                                  '0)))
                            (let ((_%tl5220252362%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9469994700%_ '1)))
                                  (_%target5220052359%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9469994700%_
                                      '0))))
                              (if (gx#stx-null? _%tl5220252362%_)
                                  (_%__match9498594986%_
                                   _%e5206152860%_
                                   _%hd5206252864%_
                                   _%tl5206352867%_
                                   _%e5206452870%_
                                   _%hd5206552874%_
                                   _%tl5206652877%_
                                   _%e5206752880%_
                                   _%hd5206852884%_
                                   _%tl5206952887%_
                                   _%e5219752349%_
                                   _%hd5219852353%_
                                   _%tl5219952356%_
                                   _%__splice9469994700%_
                                   _%target5220052359%_
                                   _%tl5220252362%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5202152230%_)))))
                          (let () (declare (not safe)) (_%g5202152230%_)))))
                  (let () (declare (not safe)) (_%g5202152230%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5206852884%_)
                                                  (let ((_%e5219752349%_
                                                         (gx#syntax-e
                                                          _%hd5206852884%_)))
                                                    (let ((_%tl5219952356%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5219752349%_)))
                                                          (_%hd5219852353%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5219752349%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5206652877%_)
                                                          (let ((_%__splice9469994700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5206652877%_ '0)))
                    (let ((_%tl5220252362%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9469994700%_ '1)))
                          (_%target5220052359%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9469994700%_ '0))))
                      (if (gx#stx-null? _%tl5220252362%_)
                          (_%__match9498594986%_
                           _%e5206152860%_
                           _%hd5206252864%_
                           _%tl5206352867%_
                           _%e5206452870%_
                           _%hd5206552874%_
                           _%tl5206652877%_
                           _%e5206752880%_
                           _%hd5206852884%_
                           _%tl5206952887%_
                           _%e5219752349%_
                           _%hd5219852353%_
                           _%tl5219952356%_
                           _%__splice9469994700%_
                           _%target5220052359%_
                           _%tl5220252362%_)
                          (let () (declare (not safe)) (_%g5202152230%_)))))
                  (let () (declare (not safe)) (_%g5202152230%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5202152230%_))))
                                          (if (gx#stx-pair? _%hd5206852884%_)
                                              (let ((_%e5219752349%_
                                                     (gx#syntax-e
                                                      _%hd5206852884%_)))
                                                (let ((_%tl5219952356%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5219752349%_)))
                                                      (_%hd5219852353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5219752349%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5206652877%_)
                                                      (let ((_%__splice9469994700%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5206652877%_
                                                              '0)))
                                                        (let ((_%tl5220252362%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9469994700%_ '1)))
                      (_%target5220052359%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9469994700%_ '0))))
                  (if (gx#stx-null? _%tl5220252362%_)
                      (_%__match9498594986%_
                       _%e5206152860%_
                       _%hd5206252864%_
                       _%tl5206352867%_
                       _%e5206452870%_
                       _%hd5206552874%_
                       _%tl5206652877%_
                       _%e5206752880%_
                       _%hd5206852884%_
                       _%tl5206952887%_
                       _%e5219752349%_
                       _%hd5219852353%_
                       _%tl5219952356%_
                       _%__splice9469994700%_
                       _%target5220052359%_
                       _%tl5220252362%_)
                      (let () (declare (not safe)) (_%g5202152230%_)))))
              (let () (declare (not safe)) (_%g5202152230%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5202152230%_))))
                                      (if (gx#stx-pair? _%hd5206852884%_)
                                          (let ((_%e5219752349%_
                                                 (gx#syntax-e
                                                  _%hd5206852884%_)))
                                            (let ((_%tl5219952356%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5219752349%_)))
                                                  (_%hd5219852353%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5219752349%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5206652877%_)
                                                  (let ((_%__splice9469994700%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5206652877%_
                                                          '0)))
                                                    (let ((_%tl5220252362%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9469994700%_
                                                              '1)))
                                                          (_%target5220052359%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9469994700%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5220252362%_)
                                                          (_%__match9498594986%_
                                                           _%e5206152860%_
                                                           _%hd5206252864%_
                                                           _%tl5206352867%_
                                                           _%e5206452870%_
                                                           _%hd5206552874%_
                                                           _%tl5206652877%_
                                                           _%e5206752880%_
                                                           _%hd5206852884%_
                                                           _%tl5206952887%_
                                                           _%e5219752349%_
                                                           _%hd5219852353%_
                                                           _%tl5219952356%_
                                                           _%__splice9469994700%_
                                                           _%target5220052359%_
                                                           _%tl5220252362%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5202152230%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5202152230%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5202152230%_))))))
                          (if (gx#stx-null? _%tl5207552907%_)
                              (if (gx#stx-pair/null? _%tl5206652877%_)
                                  (let ((_%__splice9468794688%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5206652877%_
                                          '0)))
                                    (let ((_%tl5211552762%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9468794688%_
                                              '1)))
                                          (_%target5211352759%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9468794688%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5211552762%_)
                                          (_%__match9485394854%_
                                           _%e5206152860%_
                                           _%hd5206252864%_
                                           _%tl5206352867%_
                                           _%e5206452870%_
                                           _%hd5206552874%_
                                           _%tl5206652877%_
                                           _%e5206752880%_
                                           _%hd5206852884%_
                                           _%tl5206952887%_
                                           _%e5207052890%_
                                           _%hd5207152894%_
                                           _%tl5207252897%_
                                           _%e5207352900%_
                                           _%hd5207452904%_
                                           _%tl5207552907%_
                                           _%__splice9468794688%_
                                           _%target5211352759%_
                                           _%tl5211552762%_)
                                          (if (gx#stx-pair? _%hd5206852884%_)
                                              (let ((_%e5219752349%_
                                                     (gx#syntax-e
                                                      _%hd5206852884%_)))
                                                (let ((_%tl5219952356%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5219752349%_)))
                                                      (_%hd5219852353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5219752349%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5202152230%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5202152230%_))))))
                                  (if (gx#stx-pair? _%hd5206852884%_)
                                      (let ((_%e5219752349%_
                                             (gx#syntax-e _%hd5206852884%_)))
                                        (let ((_%tl5219952356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5219752349%_)))
                                              (_%hd5219852353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5219752349%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5202152230%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5202152230%_))))
                              (if (gx#identifier? _%hd5207152894%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g101348_|
                                       _%hd5207152894%_)
                                      (if (gx#stx-pair? _%tl5207552907%_)
                                          (let ((_%e5216952479%_
                                                 (gx#syntax-e
                                                  _%tl5207552907%_)))
                                            (let ((_%tl5217152486%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5216952479%_)))
                                                  (_%hd5217052483%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5216952479%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5217152486%_)
                                                  (let ((_%e5217252489%_
                                                         (gx#syntax-e
                                                          _%tl5217152486%_)))
                                                    (let ((_%tl5217452496%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5217252489%_)))
                                                          (_%hd5217352493%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5217252489%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5217452496%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5206652877%_)
                                                              (let ((_%__splice9469594696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5206652877%_
                              '0)))
                        (let ((_%tl5217752502%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9469594696%_ '1)))
                              (_%target5217552499%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9469594696%_ '0))))
                          (if (gx#stx-null? _%tl5217752502%_)
                              (_%__match9495394954%_
                               _%e5206152860%_
                               _%hd5206252864%_
                               _%tl5206352867%_
                               _%e5206452870%_
                               _%hd5206552874%_
                               _%tl5206652877%_
                               _%e5206752880%_
                               _%hd5206852884%_
                               _%tl5206952887%_
                               _%e5207052890%_
                               _%hd5207152894%_
                               _%tl5207252897%_
                               _%e5207352900%_
                               _%hd5207452904%_
                               _%tl5207552907%_
                               _%e5216952479%_
                               _%hd5217052483%_
                               _%tl5217152486%_
                               _%e5217252489%_
                               _%hd5217352493%_
                               _%tl5217452496%_
                               _%__splice9469594696%_
                               _%target5217552499%_
                               _%tl5217752502%_)
                              (if (gx#stx-pair? _%hd5206852884%_)
                                  (let ((_%e5219752349%_
                                         (gx#syntax-e _%hd5206852884%_)))
                                    (let ((_%tl5219952356%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5219752349%_)))
                                          (_%hd5219852353%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5219752349%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5202152230%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5202152230%_))))))
                      (if (gx#stx-pair? _%hd5206852884%_)
                          (let ((_%e5219752349%_
                                 (gx#syntax-e _%hd5206852884%_)))
                            (let ((_%tl5219952356%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5219752349%_)))
                                  (_%hd5219852353%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5219752349%_))))
                              (let () (declare (not safe)) (_%g5202152230%_))))
                          (let () (declare (not safe)) (_%g5202152230%_))))
                  (if (gx#stx-pair? _%hd5206852884%_)
                      (let ((_%e5219752349%_ (gx#syntax-e _%hd5206852884%_)))
                        (let ((_%tl5219952356%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5219752349%_)))
                              (_%hd5219852353%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5219752349%_))))
                          (if (gx#stx-pair/null? _%tl5206652877%_)
                              (let ((_%__splice9469994700%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5206652877%_
                                      '0)))
                                (let ((_%tl5220252362%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9469994700%_
                                          '1)))
                                      (_%target5220052359%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9469994700%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5220252362%_)
                                      (_%__match9498594986%_
                                       _%e5206152860%_
                                       _%hd5206252864%_
                                       _%tl5206352867%_
                                       _%e5206452870%_
                                       _%hd5206552874%_
                                       _%tl5206652877%_
                                       _%e5206752880%_
                                       _%hd5206852884%_
                                       _%tl5206952887%_
                                       _%e5219752349%_
                                       _%hd5219852353%_
                                       _%tl5219952356%_
                                       _%__splice9469994700%_
                                       _%target5220052359%_
                                       _%tl5220252362%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5202152230%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5202152230%_)))))
                      (let () (declare (not safe)) (_%g5202152230%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5206852884%_)
                                                      (let ((_%e5219752349%_
                                                             (gx#syntax-e
                                                              _%hd5206852884%_)))
                                                        (let ((_%tl5219952356%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5219752349%_)))
                      (_%hd5219852353%_
                       (let () (declare (not safe)) (##car _%e5219752349%_))))
                  (if (gx#stx-pair/null? _%tl5206652877%_)
                      (let ((_%__splice9469994700%_
                             (gx#syntax-split-splice->vector
                              _%tl5206652877%_
                              '0)))
                        (let ((_%tl5220252362%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9469994700%_ '1)))
                              (_%target5220052359%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9469994700%_ '0))))
                          (if (gx#stx-null? _%tl5220252362%_)
                              (_%__match9498594986%_
                               _%e5206152860%_
                               _%hd5206252864%_
                               _%tl5206352867%_
                               _%e5206452870%_
                               _%hd5206552874%_
                               _%tl5206652877%_
                               _%e5206752880%_
                               _%hd5206852884%_
                               _%tl5206952887%_
                               _%e5219752349%_
                               _%hd5219852353%_
                               _%tl5219952356%_
                               _%__splice9469994700%_
                               _%target5220052359%_
                               _%tl5220252362%_)
                              (let ()
                                (declare (not safe))
                                (_%g5202152230%_)))))
                      (let () (declare (not safe)) (_%g5202152230%_)))))
              (let () (declare (not safe)) (_%g5202152230%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5206852884%_)
                                              (let ((_%e5219752349%_
                                                     (gx#syntax-e
                                                      _%hd5206852884%_)))
                                                (let ((_%tl5219952356%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5219752349%_)))
                                                      (_%hd5219852353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5219752349%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5206652877%_)
                                                      (let ((_%__splice9469994700%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5206652877%_
                                                              '0)))
                                                        (let ((_%tl5220252362%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9469994700%_ '1)))
                      (_%target5220052359%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9469994700%_ '0))))
                  (if (gx#stx-null? _%tl5220252362%_)
                      (_%__match9498594986%_
                       _%e5206152860%_
                       _%hd5206252864%_
                       _%tl5206352867%_
                       _%e5206452870%_
                       _%hd5206552874%_
                       _%tl5206652877%_
                       _%e5206752880%_
                       _%hd5206852884%_
                       _%tl5206952887%_
                       _%e5219752349%_
                       _%hd5219852353%_
                       _%tl5219952356%_
                       _%__splice9469994700%_
                       _%target5220052359%_
                       _%tl5220252362%_)
                      (let () (declare (not safe)) (_%g5202152230%_)))))
              (let () (declare (not safe)) (_%g5202152230%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5202152230%_))))
                                      (if (gx#stx-pair? _%hd5206852884%_)
                                          (let ((_%e5219752349%_
                                                 (gx#syntax-e
                                                  _%hd5206852884%_)))
                                            (let ((_%tl5219952356%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5219752349%_)))
                                                  (_%hd5219852353%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5219752349%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5206652877%_)
                                                  (let ((_%__splice9469994700%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5206652877%_
                                                          '0)))
                                                    (let ((_%tl5220252362%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9469994700%_
                                                              '1)))
                                                          (_%target5220052359%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9469994700%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5220252362%_)
                                                          (_%__match9498594986%_
                                                           _%e5206152860%_
                                                           _%hd5206252864%_
                                                           _%tl5206352867%_
                                                           _%e5206452870%_
                                                           _%hd5206552874%_
                                                           _%tl5206652877%_
                                                           _%e5206752880%_
                                                           _%hd5206852884%_
                                                           _%tl5206952887%_
                                                           _%e5219752349%_
                                                           _%hd5219852353%_
                                                           _%tl5219952356%_
                                                           _%__splice9469994700%_
                                                           _%target5220052359%_
                                                           _%tl5220252362%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5202152230%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5202152230%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5202152230%_))))
                                  (if (gx#stx-pair? _%hd5206852884%_)
                                      (let ((_%e5219752349%_
                                             (gx#syntax-e _%hd5206852884%_)))
                                        (let ((_%tl5219952356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5219752349%_)))
                                              (_%hd5219852353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5219752349%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5206652877%_)
                                              (let ((_%__splice9469994700%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5206652877%_
                                                      '0)))
                                                (let ((_%tl5220252362%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9469994700%_
                                                          '1)))
                                                      (_%target5220052359%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9469994700%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5220252362%_)
                                                      (_%__match9498594986%_
                                                       _%e5206152860%_
                                                       _%hd5206252864%_
                                                       _%tl5206352867%_
                                                       _%e5206452870%_
                                                       _%hd5206552874%_
                                                       _%tl5206652877%_
                                                       _%e5206752880%_
                                                       _%hd5206852884%_
                                                       _%tl5206952887%_
                                                       _%e5219752349%_
                                                       _%hd5219852353%_
                                                       _%tl5219952356%_
                                                       _%__splice9469994700%_
                                                       _%target5220052359%_
                                                       _%tl5220252362%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5202152230%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5202152230%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5202152230%_))))))))
                   (_%__match9475194752%_
                    (lambda (_%e5202853034%_
                             _%hd5202953038%_
                             _%tl5203053041%_
                             _%e5203153044%_
                             _%hd5203253048%_
                             _%tl5203353051%_
                             _%e5203453054%_
                             _%hd5203553058%_
                             _%tl5203653061%_
                             _%e5203753064%_
                             _%hd5203853068%_
                             _%tl5203953071%_
                             _%e5204053074%_
                             _%hd5204153078%_
                             _%tl5204253081%_
                             _%e5204353084%_
                             _%hd5204453088%_
                             _%tl5204553091%_
                             _%__splice9467994680%_
                             _%target5204653094%_
                             _%tl5204853097%_)
                      (letrec ((_%loop5204953100%_
                                (lambda (_%hd5204753104%_ _%body5205353107%_)
                                  (if (gx#stx-pair? _%hd5204753104%_)
                                      (let ((_%e5205053109%_
                                             (gx#syntax-e _%hd5204753104%_)))
                                        (let ((_%lp-tl5205253116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5205053109%_)))
                                              (_%lp-hd5205153113%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5205053109%_))))
                                          (_%loop5204953100%_
                                           _%lp-tl5205253116%_
                                           (cons _%lp-hd5205153113%_
                                                 _%body5205353107%_))))
                                      (let ((_%body5205453119%_
                                             (reverse _%body5205353107%_)))
                                        (let ((_%g5202353122%_
                                               _%body5205453119%_)
                                              (_%g5202453124%_
                                               _%hd5204453088%_)
                                              (_%g5202553125%_
                                               _%hd5204153078%_)
                                              (_%g5202653126%_
                                               _%hd5203853068%_)
                                              (_%g5202753127%_
                                               _%hd5203553058%_))
                                          (if (and (gx#identifier?
                                                    _%g5202753127%_)
                                                   (gx#identifier?
                                                    _%g5202553125%_)
                                                   (or (gx#free-identifier=?
                                                        _%g5202553125%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%g5202553125%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%g5202553125%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%g5202553125%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%g5202553125%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont9467794678%_
                                               _%g5202353122%_
                                               _%g5202453124%_
                                               _%g5202553125%_
                                               _%g5202653126%_
                                               _%g5202753127%_)
                                              (_%__match9478194782%_
                                               _%e5202853034%_
                                               _%hd5202953038%_
                                               _%tl5203053041%_
                                               _%e5203153044%_
                                               _%hd5203253048%_
                                               _%tl5203353051%_
                                               _%e5203453054%_
                                               _%hd5203553058%_
                                               _%tl5203653061%_
                                               _%e5203753064%_
                                               _%hd5203853068%_
                                               _%tl5203953071%_
                                               _%e5204053074%_
                                               _%hd5204153078%_
                                               _%tl5204253081%_))))))))
                        (_%loop5204953100%_ _%target5204653094%_ '())))))
              (if (gx#stx-pair? _%__stx9467494675%_)
                  (let ((_%e5202853034%_ (gx#syntax-e _%__stx9467494675%_)))
                    (let ((_%tl5203053041%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5202853034%_)))
                          (_%hd5202953038%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5202853034%_))))
                      (if (gx#stx-pair? _%tl5203053041%_)
                          (let ((_%e5203153044%_
                                 (gx#syntax-e _%tl5203053041%_)))
                            (let ((_%tl5203353051%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5203153044%_)))
                                  (_%hd5203253048%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5203153044%_))))
                              (if (gx#stx-pair? _%hd5203253048%_)
                                  (let ((_%e5203453054%_
                                         (gx#syntax-e _%hd5203253048%_)))
                                    (let ((_%tl5203653061%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5203453054%_)))
                                          (_%hd5203553058%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5203453054%_))))
                                      (if (gx#stx-pair? _%tl5203653061%_)
                                          (let ((_%e5203753064%_
                                                 (gx#syntax-e
                                                  _%tl5203653061%_)))
                                            (let ((_%tl5203953071%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5203753064%_)))
                                                  (_%hd5203853068%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5203753064%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5203953071%_)
                                                  (let ((_%e5204053074%_
                                                         (gx#syntax-e
                                                          _%tl5203953071%_)))
                                                    (let ((_%tl5204253081%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5204053074%_)))
                                                          (_%hd5204153078%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5204053074%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5204253081%_)
                                                          (let ((_%e5204353084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5204253081%_)))
                    (let ((_%tl5204553091%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5204353084%_)))
                          (_%hd5204453088%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5204353084%_))))
                      (if (gx#stx-null? _%tl5204553091%_)
                          (if (gx#stx-pair/null? _%tl5203353051%_)
                              (let ((_%__splice9467994680%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5203353051%_
                                      '0)))
                                (let ((_%tl5204853097%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9467994680%_
                                          '1)))
                                      (_%target5204653094%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9467994680%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5204853097%_)
                                      (_%__match9475194752%_
                                       _%e5202853034%_
                                       _%hd5202953038%_
                                       _%tl5203053041%_
                                       _%e5203153044%_
                                       _%hd5203253048%_
                                       _%tl5203353051%_
                                       _%e5203453054%_
                                       _%hd5203553058%_
                                       _%tl5203653061%_
                                       _%e5203753064%_
                                       _%hd5203853068%_
                                       _%tl5203953071%_
                                       _%e5204053074%_
                                       _%hd5204153078%_
                                       _%tl5204253081%_
                                       _%e5204353084%_
                                       _%hd5204453088%_
                                       _%tl5204553091%_
                                       _%__splice9467994680%_
                                       _%target5204653094%_
                                       _%tl5204853097%_)
                                      (if (gx#stx-pair? _%hd5203553058%_)
                                          (let ((_%e5219752349%_
                                                 (gx#syntax-e
                                                  _%hd5203553058%_)))
                                            (let ((_%tl5219952356%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5219752349%_)))
                                                  (_%hd5219852353%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5219752349%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5202152230%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5202152230%_))))))
                              (if (gx#stx-pair? _%hd5203553058%_)
                                  (let ((_%e5219752349%_
                                         (gx#syntax-e _%hd5203553058%_)))
                                    (let ((_%tl5219952356%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5219752349%_)))
                                          (_%hd5219852353%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5219752349%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5202152230%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5202152230%_))))
                          (if (gx#identifier? _%hd5204153078%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g101349_|
                                   _%hd5204153078%_)
                                  (if (gx#stx-pair? _%tl5204553091%_)
                                      (let ((_%e5207952920%_
                                             (gx#syntax-e _%tl5204553091%_)))
                                        (let ((_%tl5208152927%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5207952920%_)))
                                              (_%hd5208052924%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5207952920%_))))
                                          (if (gx#stx-pair? _%tl5208152927%_)
                                              (let ((_%e5208252930%_
                                                     (gx#syntax-e
                                                      _%tl5208152927%_)))
                                                (let ((_%tl5208452937%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5208252930%_)))
                                                      (_%hd5208352934%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5208252930%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5208452937%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5203353051%_)
                                                          (let ((_%__splice9468394684%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5203353051%_ '0)))
                    (let ((_%tl5208752943%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9468394684%_ '1)))
                          (_%target5208552940%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9468394684%_ '0))))
                      (if (gx#stx-null? _%tl5208752943%_)
                          (_%__match9481394814%_
                           _%e5202853034%_
                           _%hd5202953038%_
                           _%tl5203053041%_
                           _%e5203153044%_
                           _%hd5203253048%_
                           _%tl5203353051%_
                           _%e5203453054%_
                           _%hd5203553058%_
                           _%tl5203653061%_
                           _%e5203753064%_
                           _%hd5203853068%_
                           _%tl5203953071%_
                           _%e5204053074%_
                           _%hd5204153078%_
                           _%tl5204253081%_
                           _%e5204353084%_
                           _%hd5204453088%_
                           _%tl5204553091%_
                           _%e5207952920%_
                           _%hd5208052924%_
                           _%tl5208152927%_
                           _%e5208252930%_
                           _%hd5208352934%_
                           _%tl5208452937%_
                           _%__splice9468394684%_
                           _%target5208552940%_
                           _%tl5208752943%_)
                          (if (gx#stx-pair? _%hd5203553058%_)
                              (let ((_%e5219752349%_
                                     (gx#syntax-e _%hd5203553058%_)))
                                (let ((_%tl5219952356%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5219752349%_)))
                                      (_%hd5219852353%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5219752349%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5202152230%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5202152230%_))))))
                  (if (gx#stx-pair? _%hd5203553058%_)
                      (let ((_%e5219752349%_ (gx#syntax-e _%hd5203553058%_)))
                        (let ((_%tl5219952356%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5219752349%_)))
                              (_%hd5219852353%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5219752349%_))))
                          (let () (declare (not safe)) (_%g5202152230%_))))
                      (let () (declare (not safe)) (_%g5202152230%_))))
              (if (gx#stx-pair? _%hd5203553058%_)
                  (let ((_%e5219752349%_ (gx#syntax-e _%hd5203553058%_)))
                    (let ((_%tl5219952356%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5219752349%_)))
                          (_%hd5219852353%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5219752349%_))))
                      (if (gx#stx-pair/null? _%tl5203353051%_)
                          (let ((_%__splice9469994700%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5203353051%_
                                  '0)))
                            (let ((_%tl5220252362%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9469994700%_ '1)))
                                  (_%target5220052359%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9469994700%_
                                      '0))))
                              (if (gx#stx-null? _%tl5220252362%_)
                                  (_%__match9498594986%_
                                   _%e5202853034%_
                                   _%hd5202953038%_
                                   _%tl5203053041%_
                                   _%e5203153044%_
                                   _%hd5203253048%_
                                   _%tl5203353051%_
                                   _%e5203453054%_
                                   _%hd5203553058%_
                                   _%tl5203653061%_
                                   _%e5219752349%_
                                   _%hd5219852353%_
                                   _%tl5219952356%_
                                   _%__splice9469994700%_
                                   _%target5220052359%_
                                   _%tl5220252362%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5202152230%_)))))
                          (let () (declare (not safe)) (_%g5202152230%_)))))
                  (let () (declare (not safe)) (_%g5202152230%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd5203853068%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g101348_|
                                                       _%hd5203853068%_)
                                                      (if (gx#stx-null?
                                                           _%tl5208152927%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5203353051%_)
                                                              (let ((_%__splice9469594696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5203353051%_
                              '0)))
                        (let ((_%tl5217752502%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9469594696%_ '1)))
                              (_%target5217552499%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9469594696%_ '0))))
                          (if (gx#stx-null? _%tl5217752502%_)
                              (_%__match9495394954%_
                               _%e5202853034%_
                               _%hd5202953038%_
                               _%tl5203053041%_
                               _%e5203153044%_
                               _%hd5203253048%_
                               _%tl5203353051%_
                               _%e5203453054%_
                               _%hd5203553058%_
                               _%tl5203653061%_
                               _%e5203753064%_
                               _%hd5203853068%_
                               _%tl5203953071%_
                               _%e5204053074%_
                               _%hd5204153078%_
                               _%tl5204253081%_
                               _%e5204353084%_
                               _%hd5204453088%_
                               _%tl5204553091%_
                               _%e5207952920%_
                               _%hd5208052924%_
                               _%tl5208152927%_
                               _%__splice9469594696%_
                               _%target5217552499%_
                               _%tl5217752502%_)
                              (if (gx#stx-pair? _%hd5203553058%_)
                                  (let ((_%e5219752349%_
                                         (gx#syntax-e _%hd5203553058%_)))
                                    (let ((_%tl5219952356%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5219752349%_)))
                                          (_%hd5219852353%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5219752349%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5202152230%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5202152230%_))))))
                      (if (gx#stx-pair? _%hd5203553058%_)
                          (let ((_%e5219752349%_
                                 (gx#syntax-e _%hd5203553058%_)))
                            (let ((_%tl5219952356%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5219752349%_)))
                                  (_%hd5219852353%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5219752349%_))))
                              (let () (declare (not safe)) (_%g5202152230%_))))
                          (let () (declare (not safe)) (_%g5202152230%_))))
                  (if (gx#stx-pair? _%hd5203553058%_)
                      (let ((_%e5219752349%_ (gx#syntax-e _%hd5203553058%_)))
                        (let ((_%tl5219952356%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5219752349%_)))
                              (_%hd5219852353%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5219752349%_))))
                          (if (gx#stx-pair/null? _%tl5203353051%_)
                              (let ((_%__splice9469994700%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5203353051%_
                                      '0)))
                                (let ((_%tl5220252362%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9469994700%_
                                          '1)))
                                      (_%target5220052359%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9469994700%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5220252362%_)
                                      (_%__match9498594986%_
                                       _%e5202853034%_
                                       _%hd5202953038%_
                                       _%tl5203053041%_
                                       _%e5203153044%_
                                       _%hd5203253048%_
                                       _%tl5203353051%_
                                       _%e5203453054%_
                                       _%hd5203553058%_
                                       _%tl5203653061%_
                                       _%e5219752349%_
                                       _%hd5219852353%_
                                       _%tl5219952356%_
                                       _%__splice9469994700%_
                                       _%target5220052359%_
                                       _%tl5220252362%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5202152230%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5202152230%_)))))
                      (let () (declare (not safe)) (_%g5202152230%_))))
              (if (gx#stx-pair? _%hd5203553058%_)
                  (let ((_%e5219752349%_ (gx#syntax-e _%hd5203553058%_)))
                    (let ((_%tl5219952356%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5219752349%_)))
                          (_%hd5219852353%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5219752349%_))))
                      (if (gx#stx-pair/null? _%tl5203353051%_)
                          (let ((_%__splice9469994700%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5203353051%_
                                  '0)))
                            (let ((_%tl5220252362%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9469994700%_ '1)))
                                  (_%target5220052359%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9469994700%_
                                      '0))))
                              (if (gx#stx-null? _%tl5220252362%_)
                                  (_%__match9498594986%_
                                   _%e5202853034%_
                                   _%hd5202953038%_
                                   _%tl5203053041%_
                                   _%e5203153044%_
                                   _%hd5203253048%_
                                   _%tl5203353051%_
                                   _%e5203453054%_
                                   _%hd5203553058%_
                                   _%tl5203653061%_
                                   _%e5219752349%_
                                   _%hd5219852353%_
                                   _%tl5219952356%_
                                   _%__splice9469994700%_
                                   _%target5220052359%_
                                   _%tl5220252362%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5202152230%_)))))
                          (let () (declare (not safe)) (_%g5202152230%_)))))
                  (let () (declare (not safe)) (_%g5202152230%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5203553058%_)
                                                      (let ((_%e5219752349%_
                                                             (gx#syntax-e
                                                              _%hd5203553058%_)))
                                                        (let ((_%tl5219952356%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5219752349%_)))
                      (_%hd5219852353%_
                       (let () (declare (not safe)) (##car _%e5219752349%_))))
                  (if (gx#stx-pair/null? _%tl5203353051%_)
                      (let ((_%__splice9469994700%_
                             (gx#syntax-split-splice->vector
                              _%tl5203353051%_
                              '0)))
                        (let ((_%tl5220252362%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9469994700%_ '1)))
                              (_%target5220052359%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9469994700%_ '0))))
                          (if (gx#stx-null? _%tl5220252362%_)
                              (_%__match9498594986%_
                               _%e5202853034%_
                               _%hd5202953038%_
                               _%tl5203053041%_
                               _%e5203153044%_
                               _%hd5203253048%_
                               _%tl5203353051%_
                               _%e5203453054%_
                               _%hd5203553058%_
                               _%tl5203653061%_
                               _%e5219752349%_
                               _%hd5219852353%_
                               _%tl5219952356%_
                               _%__splice9469994700%_
                               _%target5220052359%_
                               _%tl5220252362%_)
                              (let ()
                                (declare (not safe))
                                (_%g5202152230%_)))))
                      (let () (declare (not safe)) (_%g5202152230%_)))))
              (let () (declare (not safe)) (_%g5202152230%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd5203553058%_)
                                          (let ((_%e5219752349%_
                                                 (gx#syntax-e
                                                  _%hd5203553058%_)))
                                            (let ((_%tl5219952356%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5219752349%_)))
                                                  (_%hd5219852353%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5219752349%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5203353051%_)
                                                  (let ((_%__splice9469994700%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5203353051%_
                                                          '0)))
                                                    (let ((_%tl5220252362%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9469994700%_
                                                              '1)))
                                                          (_%target5220052359%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9469994700%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5220252362%_)
                                                          (_%__match9498594986%_
                                                           _%e5202853034%_
                                                           _%hd5202953038%_
                                                           _%tl5203053041%_
                                                           _%e5203153044%_
                                                           _%hd5203253048%_
                                                           _%tl5203353051%_
                                                           _%e5203453054%_
                                                           _%hd5203553058%_
                                                           _%tl5203653061%_
                                                           _%e5219752349%_
                                                           _%hd5219852353%_
                                                           _%tl5219952356%_
                                                           _%__splice9469994700%_
                                                           _%target5220052359%_
                                                           _%tl5220252362%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5202152230%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5202152230%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5202152230%_))))
                                  (if (gx#identifier? _%hd5203853068%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g101348_|
                                           _%hd5203853068%_)
                                          (if (gx#stx-pair? _%tl5204553091%_)
                                              (let ((_%e5217252489%_
                                                     (gx#syntax-e
                                                      _%tl5204553091%_)))
                                                (let ((_%tl5217452496%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5217252489%_)))
                                                      (_%hd5217352493%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5217252489%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5217452496%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl5203353051%_)
                                                          (let ((_%__splice9469594696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5203353051%_ '0)))
                    (let ((_%tl5217752502%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9469594696%_ '1)))
                          (_%target5217552499%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9469594696%_ '0))))
                      (if (gx#stx-null? _%tl5217752502%_)
                          (_%__match9495394954%_
                           _%e5202853034%_
                           _%hd5202953038%_
                           _%tl5203053041%_
                           _%e5203153044%_
                           _%hd5203253048%_
                           _%tl5203353051%_
                           _%e5203453054%_
                           _%hd5203553058%_
                           _%tl5203653061%_
                           _%e5203753064%_
                           _%hd5203853068%_
                           _%tl5203953071%_
                           _%e5204053074%_
                           _%hd5204153078%_
                           _%tl5204253081%_
                           _%e5204353084%_
                           _%hd5204453088%_
                           _%tl5204553091%_
                           _%e5217252489%_
                           _%hd5217352493%_
                           _%tl5217452496%_
                           _%__splice9469594696%_
                           _%target5217552499%_
                           _%tl5217752502%_)
                          (if (gx#stx-pair? _%hd5203553058%_)
                              (let ((_%e5219752349%_
                                     (gx#syntax-e _%hd5203553058%_)))
                                (let ((_%tl5219952356%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5219752349%_)))
                                      (_%hd5219852353%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5219752349%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5202152230%_))))
                              (let ()
                                (declare (not safe))
                                (_%g5202152230%_))))))
                  (if (gx#stx-pair? _%hd5203553058%_)
                      (let ((_%e5219752349%_ (gx#syntax-e _%hd5203553058%_)))
                        (let ((_%tl5219952356%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5219752349%_)))
                              (_%hd5219852353%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5219752349%_))))
                          (let () (declare (not safe)) (_%g5202152230%_))))
                      (let () (declare (not safe)) (_%g5202152230%_))))
              (if (gx#stx-pair? _%hd5203553058%_)
                  (let ((_%e5219752349%_ (gx#syntax-e _%hd5203553058%_)))
                    (let ((_%tl5219952356%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5219752349%_)))
                          (_%hd5219852353%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5219752349%_))))
                      (if (gx#stx-pair/null? _%tl5203353051%_)
                          (let ((_%__splice9469994700%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5203353051%_
                                  '0)))
                            (let ((_%tl5220252362%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9469994700%_ '1)))
                                  (_%target5220052359%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9469994700%_
                                      '0))))
                              (if (gx#stx-null? _%tl5220252362%_)
                                  (_%__match9498594986%_
                                   _%e5202853034%_
                                   _%hd5202953038%_
                                   _%tl5203053041%_
                                   _%e5203153044%_
                                   _%hd5203253048%_
                                   _%tl5203353051%_
                                   _%e5203453054%_
                                   _%hd5203553058%_
                                   _%tl5203653061%_
                                   _%e5219752349%_
                                   _%hd5219852353%_
                                   _%tl5219952356%_
                                   _%__splice9469994700%_
                                   _%target5220052359%_
                                   _%tl5220252362%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5202152230%_)))))
                          (let () (declare (not safe)) (_%g5202152230%_)))))
                  (let () (declare (not safe)) (_%g5202152230%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd5203553058%_)
                                                  (let ((_%e5219752349%_
                                                         (gx#syntax-e
                                                          _%hd5203553058%_)))
                                                    (let ((_%tl5219952356%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5219752349%_)))
                                                          (_%hd5219852353%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5219752349%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl5203353051%_)
                                                          (let ((_%__splice9469994700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl5203353051%_ '0)))
                    (let ((_%tl5220252362%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9469994700%_ '1)))
                          (_%target5220052359%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9469994700%_ '0))))
                      (if (gx#stx-null? _%tl5220252362%_)
                          (_%__match9498594986%_
                           _%e5202853034%_
                           _%hd5202953038%_
                           _%tl5203053041%_
                           _%e5203153044%_
                           _%hd5203253048%_
                           _%tl5203353051%_
                           _%e5203453054%_
                           _%hd5203553058%_
                           _%tl5203653061%_
                           _%e5219752349%_
                           _%hd5219852353%_
                           _%tl5219952356%_
                           _%__splice9469994700%_
                           _%target5220052359%_
                           _%tl5220252362%_)
                          (let () (declare (not safe)) (_%g5202152230%_)))))
                  (let () (declare (not safe)) (_%g5202152230%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5202152230%_))))
                                          (if (gx#stx-pair? _%hd5203553058%_)
                                              (let ((_%e5219752349%_
                                                     (gx#syntax-e
                                                      _%hd5203553058%_)))
                                                (let ((_%tl5219952356%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5219752349%_)))
                                                      (_%hd5219852353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5219752349%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5203353051%_)
                                                      (let ((_%__splice9469994700%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5203353051%_
                                                              '0)))
                                                        (let ((_%tl5220252362%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9469994700%_ '1)))
                      (_%target5220052359%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9469994700%_ '0))))
                  (if (gx#stx-null? _%tl5220252362%_)
                      (_%__match9498594986%_
                       _%e5202853034%_
                       _%hd5202953038%_
                       _%tl5203053041%_
                       _%e5203153044%_
                       _%hd5203253048%_
                       _%tl5203353051%_
                       _%e5203453054%_
                       _%hd5203553058%_
                       _%tl5203653061%_
                       _%e5219752349%_
                       _%hd5219852353%_
                       _%tl5219952356%_
                       _%__splice9469994700%_
                       _%target5220052359%_
                       _%tl5220252362%_)
                      (let () (declare (not safe)) (_%g5202152230%_)))))
              (let () (declare (not safe)) (_%g5202152230%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5202152230%_))))
                                      (if (gx#stx-pair? _%hd5203553058%_)
                                          (let ((_%e5219752349%_
                                                 (gx#syntax-e
                                                  _%hd5203553058%_)))
                                            (let ((_%tl5219952356%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5219752349%_)))
                                                  (_%hd5219852353%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5219752349%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5203353051%_)
                                                  (let ((_%__splice9469994700%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5203353051%_
                                                          '0)))
                                                    (let ((_%tl5220252362%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9469994700%_
                                                              '1)))
                                                          (_%target5220052359%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9469994700%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5220252362%_)
                                                          (_%__match9498594986%_
                                                           _%e5202853034%_
                                                           _%hd5202953038%_
                                                           _%tl5203053041%_
                                                           _%e5203153044%_
                                                           _%hd5203253048%_
                                                           _%tl5203353051%_
                                                           _%e5203453054%_
                                                           _%hd5203553058%_
                                                           _%tl5203653061%_
                                                           _%e5219752349%_
                                                           _%hd5219852353%_
                                                           _%tl5219952356%_
                                                           _%__splice9469994700%_
                                                           _%target5220052359%_
                                                           _%tl5220252362%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5202152230%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5202152230%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5202152230%_)))))
                              (if (gx#identifier? _%hd5203853068%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g101348_|
                                       _%hd5203853068%_)
                                      (if (gx#stx-pair? _%tl5204553091%_)
                                          (let ((_%e5217252489%_
                                                 (gx#syntax-e
                                                  _%tl5204553091%_)))
                                            (let ((_%tl5217452496%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5217252489%_)))
                                                  (_%hd5217352493%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5217252489%_))))
                                              (if (gx#stx-null?
                                                   _%tl5217452496%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5203353051%_)
                                                      (let ((_%__splice9469594696%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5203353051%_
                                                              '0)))
                                                        (let ((_%tl5217752502%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9469594696%_ '1)))
                      (_%target5217552499%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9469594696%_ '0))))
                  (if (gx#stx-null? _%tl5217752502%_)
                      (_%__match9495394954%_
                       _%e5202853034%_
                       _%hd5202953038%_
                       _%tl5203053041%_
                       _%e5203153044%_
                       _%hd5203253048%_
                       _%tl5203353051%_
                       _%e5203453054%_
                       _%hd5203553058%_
                       _%tl5203653061%_
                       _%e5203753064%_
                       _%hd5203853068%_
                       _%tl5203953071%_
                       _%e5204053074%_
                       _%hd5204153078%_
                       _%tl5204253081%_
                       _%e5204353084%_
                       _%hd5204453088%_
                       _%tl5204553091%_
                       _%e5217252489%_
                       _%hd5217352493%_
                       _%tl5217452496%_
                       _%__splice9469594696%_
                       _%target5217552499%_
                       _%tl5217752502%_)
                      (if (gx#stx-pair? _%hd5203553058%_)
                          (let ((_%e5219752349%_
                                 (gx#syntax-e _%hd5203553058%_)))
                            (let ((_%tl5219952356%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5219752349%_)))
                                  (_%hd5219852353%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5219752349%_))))
                              (let () (declare (not safe)) (_%g5202152230%_))))
                          (let () (declare (not safe)) (_%g5202152230%_))))))
              (if (gx#stx-pair? _%hd5203553058%_)
                  (let ((_%e5219752349%_ (gx#syntax-e _%hd5203553058%_)))
                    (let ((_%tl5219952356%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5219752349%_)))
                          (_%hd5219852353%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5219752349%_))))
                      (let () (declare (not safe)) (_%g5202152230%_))))
                  (let () (declare (not safe)) (_%g5202152230%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5203553058%_)
                                                      (let ((_%e5219752349%_
                                                             (gx#syntax-e
                                                              _%hd5203553058%_)))
                                                        (let ((_%tl5219952356%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5219752349%_)))
                      (_%hd5219852353%_
                       (let () (declare (not safe)) (##car _%e5219752349%_))))
                  (if (gx#stx-pair/null? _%tl5203353051%_)
                      (let ((_%__splice9469994700%_
                             (gx#syntax-split-splice->vector
                              _%tl5203353051%_
                              '0)))
                        (let ((_%tl5220252362%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9469994700%_ '1)))
                              (_%target5220052359%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9469994700%_ '0))))
                          (if (gx#stx-null? _%tl5220252362%_)
                              (_%__match9498594986%_
                               _%e5202853034%_
                               _%hd5202953038%_
                               _%tl5203053041%_
                               _%e5203153044%_
                               _%hd5203253048%_
                               _%tl5203353051%_
                               _%e5203453054%_
                               _%hd5203553058%_
                               _%tl5203653061%_
                               _%e5219752349%_
                               _%hd5219852353%_
                               _%tl5219952356%_
                               _%__splice9469994700%_
                               _%target5220052359%_
                               _%tl5220252362%_)
                              (let ()
                                (declare (not safe))
                                (_%g5202152230%_)))))
                      (let () (declare (not safe)) (_%g5202152230%_)))))
              (let () (declare (not safe)) (_%g5202152230%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5203553058%_)
                                              (let ((_%e5219752349%_
                                                     (gx#syntax-e
                                                      _%hd5203553058%_)))
                                                (let ((_%tl5219952356%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5219752349%_)))
                                                      (_%hd5219852353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5219752349%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5203353051%_)
                                                      (let ((_%__splice9469994700%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5203353051%_
                                                              '0)))
                                                        (let ((_%tl5220252362%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9469994700%_ '1)))
                      (_%target5220052359%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9469994700%_ '0))))
                  (if (gx#stx-null? _%tl5220252362%_)
                      (_%__match9498594986%_
                       _%e5202853034%_
                       _%hd5202953038%_
                       _%tl5203053041%_
                       _%e5203153044%_
                       _%hd5203253048%_
                       _%tl5203353051%_
                       _%e5203453054%_
                       _%hd5203553058%_
                       _%tl5203653061%_
                       _%e5219752349%_
                       _%hd5219852353%_
                       _%tl5219952356%_
                       _%__splice9469994700%_
                       _%target5220052359%_
                       _%tl5220252362%_)
                      (let () (declare (not safe)) (_%g5202152230%_)))))
              (let () (declare (not safe)) (_%g5202152230%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5202152230%_))))
                                      (if (gx#stx-pair? _%hd5203553058%_)
                                          (let ((_%e5219752349%_
                                                 (gx#syntax-e
                                                  _%hd5203553058%_)))
                                            (let ((_%tl5219952356%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5219752349%_)))
                                                  (_%hd5219852353%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5219752349%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl5203353051%_)
                                                  (let ((_%__splice9469994700%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5203353051%_
                                                          '0)))
                                                    (let ((_%tl5220252362%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9469994700%_
                                                              '1)))
                                                          (_%target5220052359%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9469994700%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5220252362%_)
                                                          (_%__match9498594986%_
                                                           _%e5202853034%_
                                                           _%hd5202953038%_
                                                           _%tl5203053041%_
                                                           _%e5203153044%_
                                                           _%hd5203253048%_
                                                           _%tl5203353051%_
                                                           _%e5203453054%_
                                                           _%hd5203553058%_
                                                           _%tl5203653061%_
                                                           _%e5219752349%_
                                                           _%hd5219852353%_
                                                           _%tl5219952356%_
                                                           _%__splice9469994700%_
                                                           _%target5220052359%_
                                                           _%tl5220252362%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5202152230%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5202152230%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5202152230%_))))
                                  (if (gx#stx-pair? _%hd5203553058%_)
                                      (let ((_%e5219752349%_
                                             (gx#syntax-e _%hd5203553058%_)))
                                        (let ((_%tl5219952356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5219752349%_)))
                                              (_%hd5219852353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5219752349%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5203353051%_)
                                              (let ((_%__splice9469994700%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5203353051%_
                                                      '0)))
                                                (let ((_%tl5220252362%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9469994700%_
                                                          '1)))
                                                      (_%target5220052359%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9469994700%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5220252362%_)
                                                      (_%__match9498594986%_
                                                       _%e5202853034%_
                                                       _%hd5202953038%_
                                                       _%tl5203053041%_
                                                       _%e5203153044%_
                                                       _%hd5203253048%_
                                                       _%tl5203353051%_
                                                       _%e5203453054%_
                                                       _%hd5203553058%_
                                                       _%tl5203653061%_
                                                       _%e5219752349%_
                                                       _%hd5219852353%_
                                                       _%tl5219952356%_
                                                       _%__splice9469994700%_
                                                       _%target5220052359%_
                                                       _%tl5220252362%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5202152230%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5202152230%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5202152230%_))))))))
                  (if (gx#stx-null? _%tl5204253081%_)
                      (if (gx#stx-pair/null? _%tl5203353051%_)
                          (let ((_%__splice9468794688%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5203353051%_
                                  '0)))
                            (let ((_%tl5211552762%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9468794688%_ '1)))
                                  (_%target5211352759%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9468794688%_
                                      '0))))
                              (if (gx#stx-null? _%tl5211552762%_)
                                  (_%__match9485394854%_
                                   _%e5202853034%_
                                   _%hd5202953038%_
                                   _%tl5203053041%_
                                   _%e5203153044%_
                                   _%hd5203253048%_
                                   _%tl5203353051%_
                                   _%e5203453054%_
                                   _%hd5203553058%_
                                   _%tl5203653061%_
                                   _%e5203753064%_
                                   _%hd5203853068%_
                                   _%tl5203953071%_
                                   _%e5204053074%_
                                   _%hd5204153078%_
                                   _%tl5204253081%_
                                   _%__splice9468794688%_
                                   _%target5211352759%_
                                   _%tl5211552762%_)
                                  (if (gx#stx-pair? _%hd5203553058%_)
                                      (let ((_%e5219752349%_
                                             (gx#syntax-e _%hd5203553058%_)))
                                        (let ((_%tl5219952356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5219752349%_)))
                                              (_%hd5219852353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5219752349%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5202152230%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5202152230%_))))))
                          (if (gx#stx-pair? _%hd5203553058%_)
                              (let ((_%e5219752349%_
                                     (gx#syntax-e _%hd5203553058%_)))
                                (let ((_%tl5219952356%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5219752349%_)))
                                      (_%hd5219852353%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5219752349%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5202152230%_))))
                              (let () (declare (not safe)) (_%g5202152230%_))))
                      (if (gx#stx-pair? _%hd5203553058%_)
                          (let ((_%e5219752349%_
                                 (gx#syntax-e _%hd5203553058%_)))
                            (let ((_%tl5219952356%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5219752349%_)))
                                  (_%hd5219852353%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5219752349%_))))
                              (if (gx#stx-pair/null? _%tl5203353051%_)
                                  (let ((_%__splice9469994700%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5203353051%_
                                          '0)))
                                    (let ((_%tl5220252362%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9469994700%_
                                              '1)))
                                          (_%target5220052359%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9469994700%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5220252362%_)
                                          (_%__match9498594986%_
                                           _%e5202853034%_
                                           _%hd5202953038%_
                                           _%tl5203053041%_
                                           _%e5203153044%_
                                           _%hd5203253048%_
                                           _%tl5203353051%_
                                           _%e5203453054%_
                                           _%hd5203553058%_
                                           _%tl5203653061%_
                                           _%e5219752349%_
                                           _%hd5219852353%_
                                           _%tl5219952356%_
                                           _%__splice9469994700%_
                                           _%target5220052359%_
                                           _%tl5220252362%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5202152230%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5202152230%_)))))
                          (let () (declare (not safe)) (_%g5202152230%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd5203553058%_)
                                                      (let ((_%e5219752349%_
                                                             (gx#syntax-e
                                                              _%hd5203553058%_)))
                                                        (let ((_%tl5219952356%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5219752349%_)))
                      (_%hd5219852353%_
                       (let () (declare (not safe)) (##car _%e5219752349%_))))
                  (if (gx#stx-pair/null? _%tl5203353051%_)
                      (let ((_%__splice9469994700%_
                             (gx#syntax-split-splice->vector
                              _%tl5203353051%_
                              '0)))
                        (let ((_%tl5220252362%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9469994700%_ '1)))
                              (_%target5220052359%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9469994700%_ '0))))
                          (if (gx#stx-null? _%tl5220252362%_)
                              (_%__match9498594986%_
                               _%e5202853034%_
                               _%hd5202953038%_
                               _%tl5203053041%_
                               _%e5203153044%_
                               _%hd5203253048%_
                               _%tl5203353051%_
                               _%e5203453054%_
                               _%hd5203553058%_
                               _%tl5203653061%_
                               _%e5219752349%_
                               _%hd5219852353%_
                               _%tl5219952356%_
                               _%__splice9469994700%_
                               _%target5220052359%_
                               _%tl5220252362%_)
                              (let ()
                                (declare (not safe))
                                (_%g5202152230%_)))))
                      (let () (declare (not safe)) (_%g5202152230%_)))))
              (let () (declare (not safe)) (_%g5202152230%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd5203553058%_)
                                              (let ((_%e5219752349%_
                                                     (gx#syntax-e
                                                      _%hd5203553058%_)))
                                                (let ((_%tl5219952356%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5219752349%_)))
                                                      (_%hd5219852353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5219752349%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl5203353051%_)
                                                      (let ((_%__splice9469994700%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5203353051%_
                                                              '0)))
                                                        (let ((_%tl5220252362%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9469994700%_ '1)))
                      (_%target5220052359%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9469994700%_ '0))))
                  (if (gx#stx-null? _%tl5220252362%_)
                      (_%__match9498594986%_
                       _%e5202853034%_
                       _%hd5202953038%_
                       _%tl5203053041%_
                       _%e5203153044%_
                       _%hd5203253048%_
                       _%tl5203353051%_
                       _%e5203453054%_
                       _%hd5203553058%_
                       _%tl5203653061%_
                       _%e5219752349%_
                       _%hd5219852353%_
                       _%tl5219952356%_
                       _%__splice9469994700%_
                       _%target5220052359%_
                       _%tl5220252362%_)
                      (let () (declare (not safe)) (_%g5202152230%_)))))
              (let () (declare (not safe)) (_%g5202152230%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5202152230%_))))))
                                  (if (gx#stx-null? _%hd5203253048%_)
                                      (if (gx#stx-pair/null? _%tl5203353051%_)
                                          (let ((_%__splice9470394704%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5203353051%_
                                                  '0)))
                                            (let ((_%tl5221852260%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9470394704%_
                                                      '1)))
                                                  (_%target5221652257%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9470394704%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5221852260%_)
                                                  (_%__match9500795008%_
                                                   _%e5202853034%_
                                                   _%hd5202953038%_
                                                   _%tl5203053041%_
                                                   _%e5203153044%_
                                                   _%hd5203253048%_
                                                   _%tl5203353051%_
                                                   _%__splice9470394704%_
                                                   _%target5221652257%_
                                                   _%tl5221852260%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5202152230%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5202152230%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5202152230%_))))))
                          (let () (declare (not safe)) (_%g5202152230%_)))))
                  (let () (declare (not safe)) (_%g5202152230%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx53190%_)
        (let* ((_%g5319453228%_
                (lambda (_%g5319553224%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5319553224%_)))
               (_%g5319353349%_
                (lambda (_%g5319553232%_)
                  (if (gx#stx-pair? _%g5319553232%_)
                      (let ((_%e5319953235%_ (gx#syntax-e _%g5319553232%_)))
                        (let ((_%hd5320053239%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5319953235%_)))
                              (_%tl5320153242%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5319953235%_))))
                          (if (gx#stx-pair? _%tl5320153242%_)
                              (let ((_%e5320253245%_
                                     (gx#syntax-e _%tl5320153242%_)))
                                (let ((_%hd5320353249%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5320253245%_)))
                                      (_%tl5320453252%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5320253245%_))))
                                  (if (gx#stx-pair? _%hd5320353249%_)
                                      (let ((_%e5320553255%_
                                             (gx#syntax-e _%hd5320353249%_)))
                                        (let ((_%hd5320653259%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5320553255%_)))
                                              (_%tl5320753262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5320553255%_))))
                                          (if (gx#stx-pair? _%tl5320753262%_)
                                              (let ((_%e5320853265%_
                                                     (gx#syntax-e
                                                      _%tl5320753262%_)))
                                                (let ((_%hd5320953269%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5320853265%_)))
                                                      (_%tl5321053272%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5320853265%_))))
                                                  (if (gx#identifier?
                                                       _%hd5320953269%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g101350_|
                                                           _%hd5320953269%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5321053272%_)
                                                              (let ((_%e5321153275%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5321053272%_)))
                        (let ((_%hd5321253279%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5321153275%_)))
                              (_%tl5321353282%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5321153275%_))))
                          (if (gx#stx-null? _%tl5321353282%_)
                              (if (gx#stx-pair/null? _%tl5320453252%_)
                                  (let ((_g101351_
                                         (gx#syntax-split-splice
                                          _%tl5320453252%_
                                          '0)))
                                    (begin
                                      (let ((_g101352_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g101351_)
                                                   (##values-length _g101351_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g101352_ 2)))
                                            (error "Context expects 2 values"
                                                   _g101352_)))
                                      (let ((_%target5321453285%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g101351_ 0)))
                                            (_%tl5321653288%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g101351_ 1))))
                                        (if (gx#stx-null? _%tl5321653288%_)
                                            (letrec ((_%loop5321753291%_
                                                      (lambda (_%hd5321553295%_
                                                               _%body5322153298%_)
                                                        (if (gx#stx-pair?
                                                             _%hd5321553295%_)
                                                            (let ((_%e5321853300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd5321553295%_)))
                      (let ((_%lp-hd5321953304%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5321853300%_)))
                            (_%lp-tl5322053307%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5321853300%_))))
                        (_%loop5321753291%_
                         _%lp-tl5322053307%_
                         (cons _%lp-hd5321953304%_ _%body5322153298%_))))
                    (let ((_%body5322253310%_ (reverse _%body5322153298%_)))
                      (if (gx#identifier? _%hd5320653259%_)
                          (cons (gx#datum->syntax '#f 'if)
                                (cons (cons _%hd5321253279%_
                                            (cons _%hd5320653259%_ '()))
                                      (cons (cons (gx#datum->syntax '#f 'let)
                                                  (cons '()
                                                        (foldr (lambda (_%g5334053343%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g5334153346%_)
                         (cons _%g5334053343%_ _%g5334153346%_))
                       '()
                       _%body5322253310%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'contract-violation!)
                                                        (cons _%hd5320653259%_
                                                              (cons _%hd5321253279%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%hd5320653259%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                          (_%g5319453228%_ _%g5319553232%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop5321753291%_
                                               _%target5321453285%_
                                               '()))
                                            (_%g5319453228%_
                                             _%g5319553232%_)))))
                                  (_%g5319453228%_ _%g5319553232%_))
                              (_%g5319453228%_ _%g5319553232%_))))
                      (_%g5319453228%_ _%g5319553232%_))
                  (_%g5319453228%_ _%g5319553232%_))
              (_%g5319453228%_ _%g5319553232%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5319453228%_
                                               _%g5319553232%_))))
                                      (_%g5319453228%_ _%g5319553232%_))))
                              (_%g5319453228%_ _%g5319553232%_))))
                      (_%g5319453228%_ _%g5319553232%_)))))
          (_%g5319353349%_ _%$stx53190%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass54107%_ _%slot54109%_)
        (let ((_%$e54111%_
               (let ((__obj101146 _%klass54107%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj101146
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj101146 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj101146
                      'slot-types)))))
          (if _%$e54111%_ (agetq _%slot54109%_ _%$e54111%_) '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass54088%_ _%slot54090%_)
        (let ((_%$e54092%_
               (let ((__obj101147 _%klass54088%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj101147
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj101147 '21 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj101147
                      'slot-defaults)))))
          (if _%$e54092%_
              (let ((_%$e54099%_ (agetq _%slot54090%_ _%$e54092%_)))
                (if _%$e54099%_ (gx#syntax-local-introduce _%$e54099%_) '#f))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass54069%_ _%slot54071%_)
        (let ((_%$e54073%_
               (let ((__obj101148 _%klass54069%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj101148
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj101148 '21 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj101148
                      'slot-defaults)))))
          (if _%$e54073%_
              (let ((_%$e54080%_ (agetq _%slot54071%_ _%$e54073%_)))
                (if _%$e54080%_ (gx#syntax-local-introduce _%$e54080%_) '#f))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass53838%_ _%slot53840%_)
        (let ((_%contract5384153843%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass53838%_
                _%slot53840%_)))
          (if _%contract5384153843%_
              (let* ((_%contract53846%_ _%contract5384153843%_)
                     (_%__stx9501095011%_ _%contract53846%_)
                     (_%g5385153888%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9501095011%_))))
                (let ((_%__kont9501395014%_
                       (lambda (_%g5385354038%_ _%g5385454040%_)
                         (not (gx#free-identifier=?
                               _%g5385454040%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9501595016%_
                       (lambda (_%g5386153978%_
                                _%g5386253980%_
                                _%g5386353981%_)
                         (not (gx#free-identifier=?
                               _%g5386253980%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9501795018%_ (lambda (_%g5387653915%_) '#f)))
                  (let* ((_%__match9506395064%_
                          (lambda (_%e5386453938%_
                                   _%hd5386553942%_
                                   _%tl5386653945%_
                                   _%e5386753948%_
                                   _%hd5386853952%_
                                   _%tl5386953955%_
                                   _%e5387053958%_
                                   _%hd5387153962%_
                                   _%tl5387253965%_
                                   _%e5387353968%_
                                   _%hd5387453972%_
                                   _%tl5387553975%_)
                            (let ((_%g5386153978%_ _%hd5387453972%_)
                                  (_%g5386253980%_ _%hd5387153962%_)
                                  (_%g5386353981%_ _%hd5386853952%_))
                              (if (and (gx#identifier? _%g5386253980%_)
                                       (or (gx#free-identifier=?
                                            _%g5386253980%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5386253980%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5386253980%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5386253980%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9501595016%_
                                   _%g5386153978%_
                                   _%g5386253980%_
                                   _%g5386353981%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5385153888%_))))))
                         (_%__match9503395034%_
                          (lambda (_%e5385554018%_
                                   _%hd5385654022%_
                                   _%tl5385754025%_
                                   _%e5385854028%_
                                   _%hd5385954032%_
                                   _%tl5386054035%_)
                            (let ((_%g5385354038%_ _%hd5385954032%_)
                                  (_%g5385454040%_ _%hd5385654022%_))
                              (if (and (gx#identifier? _%g5385454040%_)
                                       (or (gx#free-identifier=?
                                            _%g5385454040%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5385454040%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5385454040%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5385454040%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9501395014%_
                                   _%g5385354038%_
                                   _%g5385454040%_)
                                  (if (gx#identifier? _%hd5385654022%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g101353_|
                                           _%hd5385654022%_)
                                          (_%__kont9501795018%_
                                           _%hd5385954032%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5385153888%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5385153888%_))))))))
                    (if (gx#stx-pair? _%__stx9501095011%_)
                        (let ((_%e5385554018%_
                               (gx#syntax-e _%__stx9501095011%_)))
                          (let ((_%tl5385754025%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5385554018%_)))
                                (_%hd5385654022%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5385554018%_))))
                            (if (gx#stx-pair? _%tl5385754025%_)
                                (let ((_%e5385854028%_
                                       (gx#syntax-e _%tl5385754025%_)))
                                  (let ((_%tl5386054035%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5385854028%_)))
                                        (_%hd5385954032%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5385854028%_))))
                                    (if (gx#stx-null? _%tl5386054035%_)
                                        (_%__match9503395034%_
                                         _%e5385554018%_
                                         _%hd5385654022%_
                                         _%tl5385754025%_
                                         _%e5385854028%_
                                         _%hd5385954032%_
                                         _%tl5386054035%_)
                                        (if (gx#identifier? _%hd5385654022%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g101353_|
                                                 _%hd5385654022%_)
                                                (if (gx#stx-pair?
                                                     _%tl5386054035%_)
                                                    (let ((_%e5387053958%_
                                                           (gx#syntax-e
                                                            _%tl5386054035%_)))
                                                      (let ((_%tl5387253965%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5387053958%_)))
                    (_%hd5387153962%_
                     (let () (declare (not safe)) (##car _%e5387053958%_))))
                (if (gx#stx-pair? _%tl5387253965%_)
                    (let ((_%e5387353968%_ (gx#syntax-e _%tl5387253965%_)))
                      (let ((_%tl5387553975%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5387353968%_)))
                            (_%hd5387453972%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5387353968%_))))
                        (if (gx#stx-null? _%tl5387553975%_)
                            (_%__match9506395064%_
                             _%e5385554018%_
                             _%hd5385654022%_
                             _%tl5385754025%_
                             _%e5385854028%_
                             _%hd5385954032%_
                             _%tl5386054035%_
                             _%e5387053958%_
                             _%hd5387153962%_
                             _%tl5387253965%_
                             _%e5387353968%_
                             _%hd5387453972%_
                             _%tl5387553975%_)
                            (let () (declare (not safe)) (_%g5385153888%_)))))
                    (let () (declare (not safe)) (_%g5385153888%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5385153888%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5385153888%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5385153888%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5385153888%_)))))
                        (let () (declare (not safe)) (_%g5385153888%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass53607%_ _%slot53609%_)
        (let ((_%contract5361053612%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass53607%_
                _%slot53609%_)))
          (if _%contract5361053612%_
              (let* ((_%contract53615%_ _%contract5361053612%_)
                     (_%__stx9508495085%_ _%contract53615%_)
                     (_%g5362053657%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx9508495085%_))))
                (let ((_%__kont9508795088%_
                       (lambda (_%g5362253807%_ _%g5362353809%_)
                         (not (gx#free-identifier=?
                               _%g5362353809%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont9508995090%_
                       (lambda (_%g5363053747%_
                                _%g5363153749%_
                                _%g5363253750%_)
                         '#t))
                      (_%__kont9509195092%_ (lambda (_%g5364553684%_) '#t)))
                  (let* ((_%__match9513795138%_
                          (lambda (_%e5363353707%_
                                   _%hd5363453711%_
                                   _%tl5363553714%_
                                   _%e5363653717%_
                                   _%hd5363753721%_
                                   _%tl5363853724%_
                                   _%e5363953727%_
                                   _%hd5364053731%_
                                   _%tl5364153734%_
                                   _%e5364253737%_
                                   _%hd5364353741%_
                                   _%tl5364453744%_)
                            (let ((_%g5363053747%_ _%hd5364353741%_)
                                  (_%g5363153749%_ _%hd5364053731%_)
                                  (_%g5363253750%_ _%hd5363753721%_))
                              (if (and (gx#identifier? _%g5363153749%_)
                                       (or (gx#free-identifier=?
                                            _%g5363153749%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5363153749%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5363153749%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5363153749%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9508995090%_
                                   _%g5363053747%_
                                   _%g5363153749%_
                                   _%g5363253750%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5362053657%_))))))
                         (_%__match9510795108%_
                          (lambda (_%e5362453787%_
                                   _%hd5362553791%_
                                   _%tl5362653794%_
                                   _%e5362753797%_
                                   _%hd5362853801%_
                                   _%tl5362953804%_)
                            (let ((_%g5362253807%_ _%hd5362853801%_)
                                  (_%g5362353809%_ _%hd5362553791%_))
                              (if (and (gx#identifier? _%g5362353809%_)
                                       (or (gx#free-identifier=?
                                            _%g5362353809%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%g5362353809%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%g5362353809%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%g5362353809%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont9508795088%_
                                   _%g5362253807%_
                                   _%g5362353809%_)
                                  (if (gx#identifier? _%hd5362553791%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g101354_|
                                           _%hd5362553791%_)
                                          (_%__kont9509195092%_
                                           _%hd5362853801%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5362053657%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5362053657%_))))))))
                    (if (gx#stx-pair? _%__stx9508495085%_)
                        (let ((_%e5362453787%_
                               (gx#syntax-e _%__stx9508495085%_)))
                          (let ((_%tl5362653794%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5362453787%_)))
                                (_%hd5362553791%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5362453787%_))))
                            (if (gx#stx-pair? _%tl5362653794%_)
                                (let ((_%e5362753797%_
                                       (gx#syntax-e _%tl5362653794%_)))
                                  (let ((_%tl5362953804%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5362753797%_)))
                                        (_%hd5362853801%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5362753797%_))))
                                    (if (gx#stx-null? _%tl5362953804%_)
                                        (_%__match9510795108%_
                                         _%e5362453787%_
                                         _%hd5362553791%_
                                         _%tl5362653794%_
                                         _%e5362753797%_
                                         _%hd5362853801%_
                                         _%tl5362953804%_)
                                        (if (gx#identifier? _%hd5362553791%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g101354_|
                                                 _%hd5362553791%_)
                                                (if (gx#stx-pair?
                                                     _%tl5362953804%_)
                                                    (let ((_%e5363953727%_
                                                           (gx#syntax-e
                                                            _%tl5362953804%_)))
                                                      (let ((_%tl5364153734%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5363953727%_)))
                    (_%hd5364053731%_
                     (let () (declare (not safe)) (##car _%e5363953727%_))))
                (if (gx#stx-pair? _%tl5364153734%_)
                    (let ((_%e5364253737%_ (gx#syntax-e _%tl5364153734%_)))
                      (let ((_%tl5364453744%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5364253737%_)))
                            (_%hd5364353741%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5364253737%_))))
                        (if (gx#stx-null? _%tl5364453744%_)
                            (_%__match9513795138%_
                             _%e5362453787%_
                             _%hd5362553791%_
                             _%tl5362653794%_
                             _%e5362753797%_
                             _%hd5362853801%_
                             _%tl5362953804%_
                             _%e5363953727%_
                             _%hd5364053731%_
                             _%tl5364153734%_
                             _%e5364253737%_
                             _%hd5364353741%_
                             _%tl5364453744%_)
                            (let () (declare (not safe)) (_%g5362053657%_)))))
                    (let () (declare (not safe)) (_%g5362053657%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5362053657%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5362053657%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5362053657%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5362053657%_)))))
                        (let () (declare (not safe)) (_%g5362053657%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id53594%_)
        (if (gx#identifier? _%id53594%_)
            (let* ((_%str53597%_ (symbol->string (gx#stx-e _%id53594%_)))
                   (_%index5359953601%_ (string-index _%str53597%_ '#\.)))
              (if _%index5359953601%_
                  (let ((_%index53604%_ _%index5359953601%_))
                    (if (let () (declare (not safe)) (##fx> _%index53604%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str53597%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx53587%_ _%id53589%_)
        (let ((_%parts53591%_
               (string-split (symbol->string (gx#stx-e _%id53589%_)) '#\.)))
          (if (find string-empty? _%parts53591%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx53587%_
               _%id53589%_)
              (cons (gx#stx-identifier _%id53589%_ (car _%parts53591%_))
                    (map string->symbol (cdr _%parts53591%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx53473%_ _%klass-or-id53475%_ _%slot53476%_)
        (let* ((_%klass53478%_
                (if (gx#identifier? _%klass-or-id53475%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx53473%_
                       _%klass-or-id53475%_))
                    _%klass-or-id53475%_))
               (_%$e53483%_
                (agetq _%slot53476%_
                       (let ((__obj101149 _%klass53478%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj101149
                                'gerbil/core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj101149
                                '18
                                '#f
                                '#f))
                             (class-slot-ref
                              gerbil/core/mop~MOP-2#class-type-info::t
                              __obj101149
                              'unchecked-accessors))))))
          (if _%$e53483%_
              _%$e53483%_
              (let ((_%$e53491%_
                     (agetq _%slot53476%_
                            (let ((_%$e53487%_
                                   (let ((__obj101150 _%klass53478%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj101150
                                            'gerbil/core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj101150
                                            '23
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj101150
                                          'slot-offsets)))))
                              (if _%$e53487%_ _%$e53487%_ '())))))
                (if _%$e53491%_
                    (let* ((_%g5349853517%_
                            (lambda (_%g5349953513%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5349953513%_)))
                           (_%g5349753581%_
                            (lambda (_%g5349953521%_)
                              (if (gx#stx-pair? _%g5349953521%_)
                                  (let ((_%e5350353524%_
                                         (gx#syntax-e _%g5349953521%_)))
                                    (let ((_%hd5350453528%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5350353524%_)))
                                          (_%tl5350553531%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5350353524%_))))
                                      (if (gx#stx-pair? _%tl5350553531%_)
                                          (let ((_%e5350653534%_
                                                 (gx#syntax-e
                                                  _%tl5350553531%_)))
                                            (let ((_%hd5350753538%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5350653534%_)))
                                                  (_%tl5350853541%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5350653534%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5350853541%_)
                                                  (let ((_%e5350953544%_
                                                         (gx#syntax-e
                                                          _%tl5350853541%_)))
                                                    (let ((_%hd5351053548%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5350953544%_)))
                                                          (_%tl5351153551%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5350953544%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5351153551%_)
                                                          (gx#stx-wrap-source
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj) '())
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '##unchecked-structure-ref)
                                           (cons (gx#datum->syntax '#f '$obj)
                                                 (cons _%hd5351053548%_
                                                       (cons _%hd5350453528%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%hd5350753538%_ '()))
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (gx#stx-source _%stx53473%_))
                  (_%g5349853517%_ _%g5349953521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5349853517%_
                                                   _%g5349953521%_))))
                                          (_%g5349853517%_ _%g5349953521%_))))
                                  (_%g5349853517%_ _%g5349953521%_)))))
                      (_%g5349753581%_
                       (list (let ((__obj101151 _%klass53478%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj101151
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj101151
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj101151
                                    'type-descriptor)))
                             _%slot53476%_
                             _%$e53491%_)))
                    (gx#raise-syntax-error
                     '#f
                     '"no accessor for slot"
                     _%stx53473%_
                     _%klass53478%_
                     _%slot53476%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx53354%_
               _%klass-or-id53356%_
               _%slot53357%_
               _%checked?53358%_)
        (let* ((_%klass53360%_
                (if (gx#identifier? _%klass-or-id53356%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx53354%_
                       _%klass-or-id53356%_))
                    _%klass-or-id53356%_))
               (_%mutators53363%_
                (if _%checked?53358%_
                    (let ((__obj101152 _%klass53360%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj101152
                             'gerbil/core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj101152
                             '17
                             '#f
                             '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj101152
                           'mutators)))
                    (let ((__obj101153 _%klass53360%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj101153
                             'gerbil/core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             __obj101153
                             '19
                             '#f
                             '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj101153
                           'unchecked-mutators)))))
               (_%$e53368%_ (agetq _%slot53357%_ _%mutators53363%_)))
          (if _%$e53368%_
              _%$e53368%_
              (let ((_%$e53376%_
                     (agetq _%slot53357%_
                            (let ((_%$e53372%_
                                   (let ((__obj101154 _%klass53360%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj101154
                                            'gerbil/core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj101154
                                            '23
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj101154
                                          'slot-offsets)))))
                              (if _%$e53372%_ _%$e53372%_ '())))))
                (if _%$e53376%_
                    (let* ((_%g5338353402%_
                            (lambda (_%g5338453398%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5338453398%_)))
                           (_%g5338253467%_
                            (lambda (_%g5338453406%_)
                              (if (gx#stx-pair? _%g5338453406%_)
                                  (let ((_%e5338853409%_
                                         (gx#syntax-e _%g5338453406%_)))
                                    (let ((_%hd5338953413%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5338853409%_)))
                                          (_%tl5339053416%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5338853409%_))))
                                      (if (gx#stx-pair? _%tl5339053416%_)
                                          (let ((_%e5339153419%_
                                                 (gx#syntax-e
                                                  _%tl5339053416%_)))
                                            (let ((_%hd5339253423%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5339153419%_)))
                                                  (_%tl5339353426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5339153419%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5339353426%_)
                                                  (let ((_%e5339453429%_
                                                         (gx#syntax-e
                                                          _%tl5339353426%_)))
                                                    (let ((_%hd5339553433%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5339453429%_)))
                                                          (_%tl5339653436%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5339453429%_))))
                                                      (if (gx#stx-null?
                                                           _%tl5339653436%_)
                                                          (gx#stx-wrap-source
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'lambda)
                         (cons (cons (gx#datum->syntax '#f '$obj)
                                     (cons (gx#datum->syntax '#f '$val) '()))
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '##unchecked-structure-set!)
                                           (cons (gx#datum->syntax '#f '$obj)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '$val)
                                                       (cons _%hd5339553433%_
                                                             (cons _%hd5338953413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%hd5339253423%_ '()))
                                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (gx#stx-source _%stx53354%_))
                  (_%g5338353402%_ _%g5338453406%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5338353402%_
                                                   _%g5338453406%_))))
                                          (_%g5338353402%_ _%g5338453406%_))))
                                  (_%g5338353402%_ _%g5338453406%_)))))
                      (_%g5338253467%_
                       (list (let ((__obj101155 _%klass53360%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj101155
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj101155
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj101155
                                    'type-descriptor)))
                             _%slot53357%_
                             _%$e53376%_)))
                    (gx#raise-syntax-error
                     '#f
                     '"no mutator for slot"
                     _%stx53354%_
                     _%klass53360%_
                     _%slot53357%_)))))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx54120%_)
        (letrec ((_%expand-body54123%_
                  (lambda (_%klass55021%_
                           _%var55023%_
                           _%Type55024%_
                           _%body55025%_
                           _%checked?55026%_)
                    (let* ((_%g5502855072%_
                            (lambda (_%g5502955068%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5502955068%_)))
                           (_%g5502755227%_
                            (lambda (_%g5502955076%_)
                              (if (gx#stx-pair? _%g5502955076%_)
                                  (let ((_%e5503755079%_
                                         (gx#syntax-e _%g5502955076%_)))
                                    (let ((_%hd5503855083%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5503755079%_)))
                                          (_%tl5503955086%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5503755079%_))))
                                      (if (gx#stx-pair? _%tl5503955086%_)
                                          (let ((_%e5504055089%_
                                                 (gx#syntax-e
                                                  _%tl5503955086%_)))
                                            (let ((_%hd5504155093%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5504055089%_)))
                                                  (_%tl5504255096%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5504055089%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5504255096%_)
                                                  (let ((_%e5504355099%_
                                                         (gx#syntax-e
                                                          _%tl5504255096%_)))
                                                    (let ((_%hd5504455103%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5504355099%_)))
                                                          (_%tl5504555106%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5504355099%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5504555106%_)
                                                          (let ((_%e5504655109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5504555106%_)))
                    (let ((_%hd5504755113%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5504655109%_)))
                          (_%tl5504855116%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5504655109%_))))
                      (if (gx#stx-pair? _%tl5504855116%_)
                          (let ((_%e5504955119%_
                                 (gx#syntax-e _%tl5504855116%_)))
                            (let ((_%hd5505055123%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5504955119%_)))
                                  (_%tl5505155126%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5504955119%_))))
                              (if (gx#stx-pair? _%tl5505155126%_)
                                  (let ((_%e5505255129%_
                                         (gx#syntax-e _%tl5505155126%_)))
                                    (let ((_%hd5505355133%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5505255129%_)))
                                          (_%tl5505455136%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5505255129%_))))
                                      (if (gx#stx-pair? _%tl5505455136%_)
                                          (let ((_%e5505555139%_
                                                 (gx#syntax-e
                                                  _%tl5505455136%_)))
                                            (let ((_%hd5505655143%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5505555139%_)))
                                                  (_%tl5505755146%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5505555139%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5505655143%_)
                                                  (let ((_g101355_
                                                         (gx#syntax-split-splice
                                                          _%hd5505655143%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g101356_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g101355_)
                           (##values-length _g101355_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g101356_ 2)))
                    (error "Context expects 2 values" _g101356_)))
              (let ((_%target5505855149%_
                     (let () (declare (not safe)) (##values-ref _g101355_ 0)))
                    (_%tl5506055152%_
                     (let () (declare (not safe)) (##values-ref _g101355_ 1))))
                (if (gx#stx-null? _%tl5506055152%_)
                    (letrec ((_%loop5506155155%_
                              (lambda (_%hd5505955159%_ _%body5506555162%_)
                                (if (gx#stx-pair? _%hd5505955159%_)
                                    (let ((_%e5506255164%_
                                           (gx#syntax-e _%hd5505955159%_)))
                                      (let ((_%lp-hd5506355168%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5506255164%_)))
                                            (_%lp-tl5506455171%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5506255164%_))))
                                        (_%loop5506155155%_
                                         _%lp-tl5506455171%_
                                         (cons _%lp-hd5506355168%_
                                               _%body5506555162%_))))
                                    (let ((_%body5506655174%_
                                           (reverse _%body5506555162%_)))
                                      (if (gx#stx-null? _%tl5505755146%_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons _%hd5504455103%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%hd5504155093%_ '()))
                                      (cons _%hd5504455103%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'let-syntax)
                          (cons (cons (cons _%hd5503855083%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'make-type-env)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote-syntax)
                            (cons _%hd5504455103%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _%hd5504755113%_ '()))
                            (cons _%hd5505055123%_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%hd5505355133%_ '()))
                                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (foldr (lambda (_%g5521855221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g5521955224%_)
                   (cons _%g5521855221%_ _%g5521955224%_))
                 '()
                 _%body5506655174%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g5502855072%_
                                           _%g5502955076%_)))))))
                      (_%loop5506155155%_ _%target5505855149%_ '()))
                    (_%g5502855072%_ _%g5502955076%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5502855072%_
                                                   _%g5502955076%_))))
                                          (_%g5502855072%_ _%g5502955076%_))))
                                  (_%g5502855072%_ _%g5502955076%_))))
                          (_%g5502855072%_ _%g5502955076%_))))
                  (_%g5502855072%_ _%g5502955076%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5502855072%_
                                                   _%g5502955076%_))))
                                          (_%g5502855072%_ _%g5502955076%_))))
                                  (_%g5502855072%_ _%g5502955076%_)))))
                      (_%g5502755227%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj101156 _%klass55021%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj101156
                                      'gerbil/core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj101156
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj101156
                                    'type-descriptor)))
                             _%var55023%_
                             _%klass55021%_
                             _%checked?55026%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body55025%_)))))
                 (_%expand54125%_
                  (lambda (_%var54913%_
                           _%Type54915%_
                           _%body54916%_
                           _%checked?54917%_
                           _%checked-mutators?54918%_
                           _%maybe?54919%_)
                    (let* ((_%klass54921%_
                            (gx#syntax-local-value _%Type54915%_ false))
                           (_%expr-body54928%_
                            (_%expand-body54123%_
                             _%klass54921%_
                             _%var54913%_
                             _%Type54915%_
                             _%body54916%_
                             (let ((_%$e54924%_ _%checked?54917%_))
                               (if _%$e54924%_
                                   _%$e54924%_
                                   _%checked-mutators?54918%_)))))
                      (if _%checked?54917%_
                          (let* ((_%g5493354952%_
                                  (lambda (_%g5493454948%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g5493454948%_)))
                                 (_%g5493255014%_
                                  (lambda (_%g5493454956%_)
                                    (if (gx#stx-pair? _%g5493454956%_)
                                        (let ((_%e5493854959%_
                                               (gx#syntax-e _%g5493454956%_)))
                                          (let ((_%hd5493954963%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5493854959%_)))
                                                (_%tl5494054966%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5493854959%_))))
                                            (if (gx#stx-pair? _%tl5494054966%_)
                                                (let ((_%e5494154969%_
                                                       (gx#syntax-e
                                                        _%tl5494054966%_)))
                                                  (let ((_%hd5494254973%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5494154969%_)))
                                                        (_%tl5494354976%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5494154969%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl5494354976%_)
                                                        (let ((_%e5494454979%_
                                                               (gx#syntax-e
                                                                _%tl5494354976%_)))
                                                          (let ((_%hd5494554983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e5494454979%_)))
                        (_%tl5494654986%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e5494454979%_))))
                    (if (gx#stx-null? _%tl5494654986%_)
                        (cons (gx#datum->syntax '#f 'with-contract)
                              (cons (cons _%hd5494254973%_
                                          (cons (gx#datum->syntax '#f ':~)
                                                (cons _%hd5493954963%_ '())))
                                    (cons _%hd5494554983%_ '())))
                        (_%g5493354952%_ _%g5493454956%_))))
                (_%g5493354952%_ _%g5493454956%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5493354952%_
                                                 _%g5493454956%_))))
                                        (_%g5493354952%_ _%g5493454956%_)))))
                            (_%g5493255014%_
                             (list (let ((_%instance?55018%_
                                          (let ((__obj101157 _%klass54921%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj101157
                                                   'gerbil/core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj101157
                                                   '15
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj101157
                                                 'predicate)))))
                                     (if _%maybe?54919%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?55018%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?55018%_))
                                   _%var54913%_
                                   _%expr-body54928%_)))
                          _%expr-body54928%_)))))
          (let* ((_%__stx9515895159%_ _%stx54120%_)
                 (_%g5413154274%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9515895159%_))))
            (let ((_%__kont9516195162%_
                   (lambda (_%g5413354841%_
                            _%g5413454843%_
                            _%g5413554844%_
                            _%g5413654845%_)
                     (let* ((_%g5487054878%_
                             (lambda (_%g5487154874%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5487154874%_)))
                            (_%g5486954905%_
                             (lambda (_%g5487154882%_)
                               (cons (gx#datum->syntax '#f 'with-class)
                                     (cons (cons _%g5413654845%_
                                                 (cons _%g5413554844%_
                                                       (cons _%g5487154882%_
                                                             '())))
                                           (foldr (lambda (_%g5489654899%_
                                                           _%g5489754902%_)
                                                    (cons _%g5489654899%_
                                                          _%g5489754902%_))
                                                  '()
                                                  _%g5413354841%_))))))
                       (_%g5486954905%_
                        (let ((__obj101158
                               (gx#syntax-local-value _%g5413454843%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj101158
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj101158
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj101158
                               'identifier)))))))
                  (_%__kont9516595166%_
                   (lambda (_%g5416154721%_ _%g5416254723%_ _%g5416354724%_)
                     (_%expand54125%_
                      _%g5416354724%_
                      _%g5416254723%_
                      (foldr (lambda (_%g5474754750%_ _%g5474854753%_)
                               (cons _%g5474754750%_ _%g5474854753%_))
                             '()
                             _%g5416154721%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9516995170%_
                   (lambda (_%g5418854601%_ _%g5418954603%_ _%g5419054604%_)
                     (_%expand54125%_
                      _%g5419054604%_
                      _%g5418954603%_
                      (foldr (lambda (_%g5462754630%_ _%g5462854633%_)
                               (cons _%g5462754630%_ _%g5462854633%_))
                             '()
                             _%g5418854601%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9517395174%_
                   (lambda (_%g5421554481%_ _%g5421654483%_ _%g5421754484%_)
                     (_%expand54125%_
                      _%g5421754484%_
                      _%g5421654483%_
                      (foldr (lambda (_%g5450754510%_ _%g5450854513%_)
                               (cons _%g5450754510%_ _%g5450854513%_))
                             '()
                             _%g5421554481%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9517795178%_
                   (lambda (_%g5424254359%_ _%g5424354361%_ _%g5424454362%_)
                     (_%expand54125%_
                      _%g5424454362%_
                      _%g5424354361%_
                      (foldr (lambda (_%g5438754390%_ _%g5438854393%_)
                               (cons _%g5438754390%_ _%g5438854393%_))
                             '()
                             _%g5424254359%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9539795398%_
                      (lambda (_%e5424554281%_
                               _%hd5424654285%_
                               _%tl5424754288%_
                               _%e5424854291%_
                               _%hd5424954295%_
                               _%tl5425054298%_
                               _%e5425154301%_
                               _%hd5425254305%_
                               _%tl5425354308%_
                               _%e5425454311%_
                               _%hd5425554315%_
                               _%tl5425654318%_
                               _%e5425754321%_
                               _%hd5425854325%_
                               _%tl5425954328%_
                               _%__splice9517995180%_
                               _%target5426054331%_
                               _%tl5426254334%_)
                        (letrec ((_%loop5426354337%_
                                  (lambda (_%hd5426154341%_ _%body5426754344%_)
                                    (if (gx#stx-pair? _%hd5426154341%_)
                                        (let ((_%e5426454346%_
                                               (gx#syntax-e _%hd5426154341%_)))
                                          (let ((_%lp-tl5426654353%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5426454346%_)))
                                                (_%lp-hd5426554350%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5426454346%_))))
                                            (_%loop5426354337%_
                                             _%lp-tl5426654353%_
                                             (cons _%lp-hd5426554350%_
                                                   _%body5426754344%_))))
                                        (let ((_%body5426854356%_
                                               (reverse _%body5426754344%_)))
                                          (let ((_%g5424254359%_
                                                 _%body5426854356%_)
                                                (_%g5424354361%_
                                                 _%hd5425854325%_)
                                                (_%g5424454362%_
                                                 _%hd5425254305%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5424354361%_))
                                                (_%__kont9517795178%_
                                                 _%g5424254359%_
                                                 _%g5424354361%_
                                                 _%g5424454362%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5413154274%_)))))))))
                          (_%loop5426354337%_ _%target5426054331%_ '()))))
                     (_%__match9535395354%_
                      (lambda (_%e5421854403%_
                               _%hd5421954407%_
                               _%tl5422054410%_
                               _%e5422154413%_
                               _%hd5422254417%_
                               _%tl5422354420%_
                               _%e5422454423%_
                               _%hd5422554427%_
                               _%tl5422654430%_
                               _%e5422754433%_
                               _%hd5422854437%_
                               _%tl5422954440%_
                               _%e5423054443%_
                               _%hd5423154447%_
                               _%tl5423254450%_
                               _%__splice9517595176%_
                               _%target5423354453%_
                               _%tl5423554456%_)
                        (letrec ((_%loop5423654459%_
                                  (lambda (_%hd5423454463%_ _%body5424054466%_)
                                    (if (gx#stx-pair? _%hd5423454463%_)
                                        (let ((_%e5423754468%_
                                               (gx#syntax-e _%hd5423454463%_)))
                                          (let ((_%lp-tl5423954475%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5423754468%_)))
                                                (_%lp-hd5423854472%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5423754468%_))))
                                            (_%loop5423654459%_
                                             _%lp-tl5423954475%_
                                             (cons _%lp-hd5423854472%_
                                                   _%body5424054466%_))))
                                        (let ((_%body5424154478%_
                                               (reverse _%body5424054466%_)))
                                          (let ((_%g5421554481%_
                                                 _%body5424154478%_)
                                                (_%g5421654483%_
                                                 _%hd5423154447%_)
                                                (_%g5421754484%_
                                                 _%hd5422554427%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5421654483%_))
                                                (_%__kont9517395174%_
                                                 _%g5421554481%_
                                                 _%g5421654483%_
                                                 _%g5421754484%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5413154274%_)))))))))
                          (_%loop5423654459%_ _%target5423354453%_ '()))))
                     (_%__match9530995310%_
                      (lambda (_%e5419154523%_
                               _%hd5419254527%_
                               _%tl5419354530%_
                               _%e5419454533%_
                               _%hd5419554537%_
                               _%tl5419654540%_
                               _%e5419754543%_
                               _%hd5419854547%_
                               _%tl5419954550%_
                               _%e5420054553%_
                               _%hd5420154557%_
                               _%tl5420254560%_
                               _%e5420354563%_
                               _%hd5420454567%_
                               _%tl5420554570%_
                               _%__splice9517195172%_
                               _%target5420654573%_
                               _%tl5420854576%_)
                        (letrec ((_%loop5420954579%_
                                  (lambda (_%hd5420754583%_ _%body5421354586%_)
                                    (if (gx#stx-pair? _%hd5420754583%_)
                                        (let ((_%e5421054588%_
                                               (gx#syntax-e _%hd5420754583%_)))
                                          (let ((_%lp-tl5421254595%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5421054588%_)))
                                                (_%lp-hd5421154592%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5421054588%_))))
                                            (_%loop5420954579%_
                                             _%lp-tl5421254595%_
                                             (cons _%lp-hd5421154592%_
                                                   _%body5421354586%_))))
                                        (let ((_%body5421454598%_
                                               (reverse _%body5421354586%_)))
                                          (let ((_%g5418854601%_
                                                 _%body5421454598%_)
                                                (_%g5418954603%_
                                                 _%hd5420454567%_)
                                                (_%g5419054604%_
                                                 _%hd5419854547%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5418954603%_))
                                                (_%__kont9516995170%_
                                                 _%g5418854601%_
                                                 _%g5418954603%_
                                                 _%g5419054604%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5413154274%_)))))))))
                          (_%loop5420954579%_ _%target5420654573%_ '()))))
                     (_%__match9526595266%_
                      (lambda (_%e5416454643%_
                               _%hd5416554647%_
                               _%tl5416654650%_
                               _%e5416754653%_
                               _%hd5416854657%_
                               _%tl5416954660%_
                               _%e5417054663%_
                               _%hd5417154667%_
                               _%tl5417254670%_
                               _%e5417354673%_
                               _%hd5417454677%_
                               _%tl5417554680%_
                               _%e5417654683%_
                               _%hd5417754687%_
                               _%tl5417854690%_
                               _%__splice9516795168%_
                               _%target5417954693%_
                               _%tl5418154696%_)
                        (letrec ((_%loop5418254699%_
                                  (lambda (_%hd5418054703%_ _%body5418654706%_)
                                    (if (gx#stx-pair? _%hd5418054703%_)
                                        (let ((_%e5418354708%_
                                               (gx#syntax-e _%hd5418054703%_)))
                                          (let ((_%lp-tl5418554715%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5418354708%_)))
                                                (_%lp-hd5418454712%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5418354708%_))))
                                            (_%loop5418254699%_
                                             _%lp-tl5418554715%_
                                             (cons _%lp-hd5418454712%_
                                                   _%body5418654706%_))))
                                        (let ((_%body5418754718%_
                                               (reverse _%body5418654706%_)))
                                          (let ((_%g5416154721%_
                                                 _%body5418754718%_)
                                                (_%g5416254723%_
                                                 _%hd5417754687%_)
                                                (_%g5416354724%_
                                                 _%hd5417154667%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%g5416254723%_))
                                                (_%__kont9516595166%_
                                                 _%g5416154721%_
                                                 _%g5416254723%_
                                                 _%g5416354724%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5413154274%_)))))))))
                          (_%loop5418254699%_ _%target5417954693%_ '()))))
                     (_%__match9524595246%_
                      (lambda (_%e5416454643%_
                               _%hd5416554647%_
                               _%tl5416654650%_
                               _%e5416754653%_
                               _%hd5416854657%_
                               _%tl5416954660%_
                               _%e5417054663%_
                               _%hd5417154667%_
                               _%tl5417254670%_
                               _%e5417354673%_
                               _%hd5417454677%_
                               _%tl5417554680%_)
                        (if (gx#identifier? _%hd5417454677%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g101357_|
                                 _%hd5417454677%_)
                                (if (gx#stx-pair? _%tl5417554680%_)
                                    (let ((_%e5417654683%_
                                           (gx#syntax-e _%tl5417554680%_)))
                                      (let ((_%tl5417854690%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5417654683%_)))
                                            (_%hd5417754687%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5417654683%_))))
                                        (if (gx#stx-null? _%tl5417854690%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5416954660%_)
                                                (let ((_%__splice9516795168%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5416954660%_
                                                        '0)))
                                                  (let ((_%tl5418154696%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9516795168%_
                                                            '1)))
                                                        (_%target5417954693%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9516795168%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5418154696%_)
                                                        (_%__match9526595266%_
                                                         _%e5416454643%_
                                                         _%hd5416554647%_
                                                         _%tl5416654650%_
                                                         _%e5416754653%_
                                                         _%hd5416854657%_
                                                         _%tl5416954660%_
                                                         _%e5417054663%_
                                                         _%hd5417154667%_
                                                         _%tl5417254670%_
                                                         _%e5417354673%_
                                                         _%hd5417454677%_
                                                         _%tl5417554680%_
                                                         _%e5417654683%_
                                                         _%hd5417754687%_
                                                         _%tl5417854690%_
                                                         _%__splice9516795168%_
                                                         _%target5417954693%_
                                                         _%tl5418154696%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5413154274%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5413154274%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5413154274%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5413154274%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g101358_|
                                     _%hd5417454677%_)
                                    (if (gx#stx-pair? _%tl5417554680%_)
                                        (let ((_%e5420354563%_
                                               (gx#syntax-e _%tl5417554680%_)))
                                          (let ((_%tl5420554570%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5420354563%_)))
                                                (_%hd5420454567%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5420354563%_))))
                                            (if (gx#stx-null? _%tl5420554570%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5416954660%_)
                                                    (let ((_%__splice9517195172%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5416954660%_
                                                            '0)))
                                                      (let ((_%tl5420854576%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9517195172%_ '1)))
                    (_%target5420654573%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9517195172%_ '0))))
                (if (gx#stx-null? _%tl5420854576%_)
                    (_%__match9530995310%_
                     _%e5416454643%_
                     _%hd5416554647%_
                     _%tl5416654650%_
                     _%e5416754653%_
                     _%hd5416854657%_
                     _%tl5416954660%_
                     _%e5417054663%_
                     _%hd5417154667%_
                     _%tl5417254670%_
                     _%e5417354673%_
                     _%hd5417454677%_
                     _%tl5417554680%_
                     _%e5420354563%_
                     _%hd5420454567%_
                     _%tl5420554570%_
                     _%__splice9517195172%_
                     _%target5420654573%_
                     _%tl5420854576%_)
                    (let () (declare (not safe)) (_%g5413154274%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5413154274%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5413154274%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5413154274%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g101359_|
                                         _%hd5417454677%_)
                                        (if (gx#stx-pair? _%tl5417554680%_)
                                            (let ((_%e5423054443%_
                                                   (gx#syntax-e
                                                    _%tl5417554680%_)))
                                              (let ((_%tl5423254450%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5423054443%_)))
                                                    (_%hd5423154447%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5423054443%_))))
                                                (if (gx#stx-null?
                                                     _%tl5423254450%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5416954660%_)
                                                        (let ((_%__splice9517595176%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5416954660%_
                                                                '0)))
                                                          (let ((_%tl5423554456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9517595176%_ '1)))
                        (_%target5423354453%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9517595176%_ '0))))
                    (if (gx#stx-null? _%tl5423554456%_)
                        (_%__match9535395354%_
                         _%e5416454643%_
                         _%hd5416554647%_
                         _%tl5416654650%_
                         _%e5416754653%_
                         _%hd5416854657%_
                         _%tl5416954660%_
                         _%e5417054663%_
                         _%hd5417154667%_
                         _%tl5417254670%_
                         _%e5417354673%_
                         _%hd5417454677%_
                         _%tl5417554680%_
                         _%e5423054443%_
                         _%hd5423154447%_
                         _%tl5423254450%_
                         _%__splice9517595176%_
                         _%target5423354453%_
                         _%tl5423554456%_)
                        (let () (declare (not safe)) (_%g5413154274%_)))))
                (let () (declare (not safe)) (_%g5413154274%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5413154274%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5413154274%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g101360_|
                                             _%hd5417454677%_)
                                            (if (gx#stx-pair? _%tl5417554680%_)
                                                (let ((_%e5425754321%_
                                                       (gx#syntax-e
                                                        _%tl5417554680%_)))
                                                  (let ((_%tl5425954328%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5425754321%_)))
                                                        (_%hd5425854325%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5425754321%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5425954328%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5416954660%_)
                                                            (let ((_%__splice9517995180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5416954660%_
                            '0)))
                      (let ((_%tl5426254334%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9517995180%_ '1)))
                            (_%target5426054331%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9517995180%_ '0))))
                        (if (gx#stx-null? _%tl5426254334%_)
                            (_%__match9539795398%_
                             _%e5416454643%_
                             _%hd5416554647%_
                             _%tl5416654650%_
                             _%e5416754653%_
                             _%hd5416854657%_
                             _%tl5416954660%_
                             _%e5417054663%_
                             _%hd5417154667%_
                             _%tl5417254670%_
                             _%e5417354673%_
                             _%hd5417454677%_
                             _%tl5417554680%_
                             _%e5425754321%_
                             _%hd5425854325%_
                             _%tl5425954328%_
                             _%__splice9517995180%_
                             _%target5426054331%_
                             _%tl5426254334%_)
                            (let () (declare (not safe)) (_%g5413154274%_)))))
                    (let () (declare (not safe)) (_%g5413154274%_)))
                (let () (declare (not safe)) (_%g5413154274%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5413154274%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5413154274%_))))))
                            (let () (declare (not safe)) (_%g5413154274%_)))))
                     (_%__match9522195222%_
                      (lambda (_%e5413754763%_
                               _%hd5413854767%_
                               _%tl5413954770%_
                               _%e5414054773%_
                               _%hd5414154777%_
                               _%tl5414254780%_
                               _%e5414354783%_
                               _%hd5414454787%_
                               _%tl5414554790%_
                               _%e5414654793%_
                               _%hd5414754797%_
                               _%tl5414854800%_
                               _%e5414954803%_
                               _%hd5415054807%_
                               _%tl5415154810%_
                               _%__splice9516395164%_
                               _%target5415254813%_
                               _%tl5415454816%_)
                        (letrec ((_%loop5415554819%_
                                  (lambda (_%hd5415354823%_ _%body5415954826%_)
                                    (if (gx#stx-pair? _%hd5415354823%_)
                                        (let ((_%e5415654828%_
                                               (gx#syntax-e _%hd5415354823%_)))
                                          (let ((_%lp-tl5415854835%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5415654828%_)))
                                                (_%lp-hd5415754832%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5415654828%_))))
                                            (_%loop5415554819%_
                                             _%lp-tl5415854835%_
                                             (cons _%lp-hd5415754832%_
                                                   _%body5415954826%_))))
                                        (let ((_%body5416054838%_
                                               (reverse _%body5415954826%_)))
                                          (let ((_%g5413354841%_
                                                 _%body5416054838%_)
                                                (_%g5413454843%_
                                                 _%hd5415054807%_)
                                                (_%g5413554844%_
                                                 _%hd5414754797%_)
                                                (_%g5413654845%_
                                                 _%hd5414454787%_))
                                            (if (let ((__tmp101361
                                                       (gx#syntax-local-value
                                                        _%g5413454843%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp101361))
                                                (_%__kont9516195162%_
                                                 _%g5413354841%_
                                                 _%g5413454843%_
                                                 _%g5413554844%_
                                                 _%g5413654845%_)
                                                (_%__match9524595246%_
                                                 _%e5413754763%_
                                                 _%hd5413854767%_
                                                 _%tl5413954770%_
                                                 _%e5414054773%_
                                                 _%hd5414154777%_
                                                 _%tl5414254780%_
                                                 _%e5414354783%_
                                                 _%hd5414454787%_
                                                 _%tl5414554790%_
                                                 _%e5414654793%_
                                                 _%hd5414754797%_
                                                 _%tl5414854800%_))))))))
                          (_%loop5415554819%_ _%target5415254813%_ '())))))
                (if (gx#stx-pair? _%__stx9515895159%_)
                    (let ((_%e5413754763%_ (gx#syntax-e _%__stx9515895159%_)))
                      (let ((_%tl5413954770%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5413754763%_)))
                            (_%hd5413854767%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5413754763%_))))
                        (if (gx#stx-pair? _%tl5413954770%_)
                            (let ((_%e5414054773%_
                                   (gx#syntax-e _%tl5413954770%_)))
                              (let ((_%tl5414254780%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5414054773%_)))
                                    (_%hd5414154777%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5414054773%_))))
                                (if (gx#stx-pair? _%hd5414154777%_)
                                    (let ((_%e5414354783%_
                                           (gx#syntax-e _%hd5414154777%_)))
                                      (let ((_%tl5414554790%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5414354783%_)))
                                            (_%hd5414454787%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5414354783%_))))
                                        (if (gx#stx-pair? _%tl5414554790%_)
                                            (let ((_%e5414654793%_
                                                   (gx#syntax-e
                                                    _%tl5414554790%_)))
                                              (let ((_%tl5414854800%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5414654793%_)))
                                                    (_%hd5414754797%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5414654793%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5414854800%_)
                                                    (let ((_%e5414954803%_
                                                           (gx#syntax-e
                                                            _%tl5414854800%_)))
                                                      (let ((_%tl5415154810%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5414954803%_)))
                    (_%hd5415054807%_
                     (let () (declare (not safe)) (##car _%e5414954803%_))))
                (if (gx#stx-null? _%tl5415154810%_)
                    (if (gx#stx-pair/null? _%tl5414254780%_)
                        (let ((_%__splice9516395164%_
                               (gx#syntax-split-splice->vector
                                _%tl5414254780%_
                                '0)))
                          (let ((_%tl5415454816%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9516395164%_ '1)))
                                (_%target5415254813%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9516395164%_ '0))))
                            (if (gx#stx-null? _%tl5415454816%_)
                                (_%__match9522195222%_
                                 _%e5413754763%_
                                 _%hd5413854767%_
                                 _%tl5413954770%_
                                 _%e5414054773%_
                                 _%hd5414154777%_
                                 _%tl5414254780%_
                                 _%e5414354783%_
                                 _%hd5414454787%_
                                 _%tl5414554790%_
                                 _%e5414654793%_
                                 _%hd5414754797%_
                                 _%tl5414854800%_
                                 _%e5414954803%_
                                 _%hd5415054807%_
                                 _%tl5415154810%_
                                 _%__splice9516395164%_
                                 _%target5415254813%_
                                 _%tl5415454816%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5413154274%_)))))
                        (let () (declare (not safe)) (_%g5413154274%_)))
                    (let () (declare (not safe)) (_%g5413154274%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5413154274%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5413154274%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5413154274%_)))))
                            (let () (declare (not safe)) (_%g5413154274%_)))))
                    (let () (declare (not safe)) (_%g5413154274%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx55237%_)
        (letrec ((_%expand-body55240%_
                  (lambda (_%var56231%_
                           _%Interface56233%_
                           _%body56234%_
                           _%checked?56235%_)
                    (let* ((_%type56237%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx55237%_
                               _%Interface56233%_)))
                           (_%g5624056284%_
                            (lambda (_%g5624156280%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5624156280%_)))
                           (_%g5623956440%_
                            (lambda (_%g5624156288%_)
                              (if (gx#stx-pair? _%g5624156288%_)
                                  (let ((_%e5624956291%_
                                         (gx#syntax-e _%g5624156288%_)))
                                    (let ((_%hd5625056295%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5624956291%_)))
                                          (_%tl5625156298%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5624956291%_))))
                                      (if (gx#stx-pair? _%tl5625156298%_)
                                          (let ((_%e5625256301%_
                                                 (gx#syntax-e
                                                  _%tl5625156298%_)))
                                            (let ((_%hd5625356305%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5625256301%_)))
                                                  (_%tl5625456308%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5625256301%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5625456308%_)
                                                  (let ((_%e5625556311%_
                                                         (gx#syntax-e
                                                          _%tl5625456308%_)))
                                                    (let ((_%hd5625656315%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5625556311%_)))
                                                          (_%tl5625756318%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5625556311%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5625756318%_)
                                                          (let ((_%e5625856321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5625756318%_)))
                    (let ((_%hd5625956325%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5625856321%_)))
                          (_%tl5626056328%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5625856321%_))))
                      (if (gx#stx-pair? _%tl5626056328%_)
                          (let ((_%e5626156331%_
                                 (gx#syntax-e _%tl5626056328%_)))
                            (let ((_%hd5626256335%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5626156331%_)))
                                  (_%tl5626356338%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5626156331%_))))
                              (if (gx#stx-pair? _%tl5626356338%_)
                                  (let ((_%e5626456341%_
                                         (gx#syntax-e _%tl5626356338%_)))
                                    (let ((_%hd5626556345%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5626456341%_)))
                                          (_%tl5626656348%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5626456341%_))))
                                      (if (gx#stx-pair? _%tl5626656348%_)
                                          (let ((_%e5626756351%_
                                                 (gx#syntax-e
                                                  _%tl5626656348%_)))
                                            (let ((_%hd5626856355%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5626756351%_)))
                                                  (_%tl5626956358%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5626756351%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5626856355%_)
                                                  (let ((_g101362_
                                                         (gx#syntax-split-splice
                                                          _%hd5626856355%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g101363_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g101362_)
                           (##values-length _g101362_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g101363_ 2)))
                    (error "Context expects 2 values" _g101363_)))
              (let ((_%target5627056361%_
                     (let () (declare (not safe)) (##values-ref _g101362_ 0)))
                    (_%tl5627256364%_
                     (let () (declare (not safe)) (##values-ref _g101362_ 1))))
                (if (gx#stx-null? _%tl5627256364%_)
                    (letrec ((_%loop5627356367%_
                              (lambda (_%hd5627156371%_ _%body5627756374%_)
                                (if (gx#stx-pair? _%hd5627156371%_)
                                    (let ((_%e5627456376%_
                                           (gx#syntax-e _%hd5627156371%_)))
                                      (let ((_%lp-hd5627556380%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5627456376%_)))
                                            (_%lp-tl5627656383%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5627456376%_))))
                                        (_%loop5627356367%_
                                         _%lp-tl5627656383%_
                                         (cons _%lp-hd5627556380%_
                                               _%body5627756374%_))))
                                    (let ((_%body5627856386%_
                                           (reverse _%body5627756374%_)))
                                      (if (gx#stx-null? _%tl5626956358%_)
                                          (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons _%hd5625956325%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%hd5625656315%_ '()))
                                      (cons _%hd5625956325%_ '())))
                          '()))
              (cons (cons (gx#datum->syntax '#f 'let-syntax)
                          (cons (cons (cons _%hd5625056295%_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'make-type-env)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote-syntax)
                            (cons _%hd5625956325%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'quote)
                                  (cons _%hd5625356305%_ '()))
                            (cons _%hd5626256335%_
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%hd5626556345%_ '()))
                                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      '())
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (foldr (lambda (_%g5643156434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g5643256437%_)
                   (cons _%g5643156434%_ _%g5643256437%_))
                 '()
                 _%body5627856386%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g5624056284%_
                                           _%g5624156288%_)))))))
                      (_%loop5627356367%_ _%target5627056361%_ '()))
                    (_%g5624056284%_ _%g5624156288%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5624056284%_
                                                   _%g5624156288%_))))
                                          (_%g5624056284%_ _%g5624156288%_))))
                                  (_%g5624056284%_ _%g5624156288%_))))
                          (_%g5624056284%_ _%g5624156288%_))))
                  (_%g5624056284%_ _%g5624156288%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5624056284%_
                                                   _%g5624156288%_))))
                                          (_%g5624056284%_ _%g5624156288%_))))
                                  (_%g5624056284%_ _%g5624156288%_)))))
                      (_%g5623956440%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type56237%_
                             (let ((__obj101159 _%type56237%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj101159
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj101159
                                      '3
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#runtime-type-info::t
                                    __obj101159
                                    'type-descriptor)))
                             _%var56231%_
                             _%checked?56235%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body56234%_)))))
                 (_%expand55242%_
                  (lambda (_%var56030%_
                           _%Interface56032%_
                           _%body56033%_
                           _%checked?56034%_
                           _%checked-methods?56035%_
                           _%maybe?56036%_)
                    (let* ((_%g5603856046%_
                            (lambda (_%g5603956042%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5603956042%_)))
                           (_%g5603756223%_
                            (lambda (_%g5603956050%_)
                              (if _%checked?56034%_
                                  (if _%maybe?56036%_
                                      (let* ((_%g5606556080%_
                                              (lambda (_%g5606656076%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g5606656076%_)))
                                             (_%g5606456126%_
                                              (lambda (_%g5606656084%_)
                                                (if (gx#stx-pair?
                                                     _%g5606656084%_)
                                                    (let ((_%e5606956087%_
                                                           (gx#syntax-e
                                                            _%g5606656084%_)))
                                                      (let ((_%hd5607056091%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5606956087%_)))
                    (_%tl5607156094%_
                     (let () (declare (not safe)) (##cdr _%e5606956087%_))))
                (if (gx#stx-pair? _%tl5607156094%_)
                    (let ((_%e5607256097%_ (gx#syntax-e _%tl5607156094%_)))
                      (let ((_%hd5607356101%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5607256097%_)))
                            (_%tl5607456104%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5607256097%_))))
                        (if (gx#stx-null? _%tl5607456104%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons _%hd5607056091%_
                                              (cons (cons _%hd5607356101%_
                                                          (cons _%hd5607056091%_
                                                                '()))
                                                    '()))
                                        (cons (cons (gx#datum->syntax '#f 'if)
                                                    (cons _%hd5607056091%_
                                                          (cons _%g5603956050%_
                                                                (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     '#f
                                     'nil-dereference!)
                                    (cons _%hd5607056091%_ '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (_%g5606556080%_ _%g5606656084%_))))
                    (_%g5606556080%_ _%g5606656084%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5606556080%_
                                                     _%g5606656084%_)))))
                                        (_%g5606456126%_
                                         (list _%var56030%_
                                               _%Interface56032%_)))
                                      (let* ((_%g5613056145%_
                                              (lambda (_%g5613156141%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g5613156141%_)))
                                             (_%g5612956189%_
                                              (lambda (_%g5613156149%_)
                                                (if (gx#stx-pair?
                                                     _%g5613156149%_)
                                                    (let ((_%e5613456152%_
                                                           (gx#syntax-e
                                                            _%g5613156149%_)))
                                                      (let ((_%hd5613556156%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5613456152%_)))
                    (_%tl5613656159%_
                     (let () (declare (not safe)) (##cdr _%e5613456152%_))))
                (if (gx#stx-pair? _%tl5613656159%_)
                    (let ((_%e5613756162%_ (gx#syntax-e _%tl5613656159%_)))
                      (let ((_%hd5613856166%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5613756162%_)))
                            (_%tl5613956169%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5613756162%_))))
                        (if (gx#stx-null? _%tl5613956169%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons _%hd5613556156%_
                                              (cons (cons _%hd5613856166%_
                                                          (cons _%hd5613556156%_
                                                                '()))
                                                    '()))
                                        (cons _%g5603956050%_ '())))
                            (_%g5613056145%_ _%g5613156149%_))))
                    (_%g5613056145%_ _%g5613156149%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5613056145%_
                                                     _%g5613156149%_)))))
                                        (_%g5612956189%_
                                         (list _%var56030%_
                                               _%Interface56032%_))))
                                  (if _%maybe?56036%_
                                      (let* ((_%g5619356201%_
                                              (lambda (_%g5619456197%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g5619456197%_)))
                                             (_%g5619256219%_
                                              (lambda (_%g5619456205%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'if)
                                                      (cons _%g5619456205%_
                                                            (cons _%g5603956050%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'nil-dereference!)
                                      (cons _%g5619456205%_ '()))
                                '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%g5619256219%_ _%var56030%_))
                                      _%g5603956050%_)))))
                      (_%g5603756223%_
                       (_%expand-body55240%_
                        _%var56030%_
                        _%Interface56032%_
                        _%body56033%_
                        (let ((_%$e56227%_ _%checked?56034%_))
                          (if _%$e56227%_
                              _%$e56227%_
                              _%checked-methods?56035%_))))))))
          (let* ((_%__stx9540095401%_ _%stx55237%_)
                 (_%g5524855391%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx9540095401%_))))
            (let ((_%__kont9540395404%_
                   (lambda (_%g5525055958%_
                            _%g5525155960%_
                            _%g5525255961%_
                            _%g5525355962%_)
                     (let* ((_%g5598755995%_
                             (lambda (_%g5598855991%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5598855991%_)))
                            (_%g5598656022%_
                             (lambda (_%g5598855999%_)
                               (cons (gx#datum->syntax '#f 'with-interface)
                                     (cons (cons _%g5525355962%_
                                                 (cons _%g5525255961%_
                                                       (cons _%g5598855999%_
                                                             '())))
                                           (foldr (lambda (_%g5601356016%_
                                                           _%g5601456019%_)
                                                    (cons _%g5601356016%_
                                                          _%g5601456019%_))
                                                  '()
                                                  _%g5525055958%_))))))
                       (_%g5598656022%_
                        (let ((__obj101160
                               (gx#syntax-local-value _%g5525155960%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj101160
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj101160
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj101160
                               'identifier)))))))
                  (_%__kont9540795408%_
                   (lambda (_%g5527855838%_ _%g5527955840%_ _%g5528055841%_)
                     (_%expand55242%_
                      _%g5528055841%_
                      _%g5527955840%_
                      (foldr (lambda (_%g5586455867%_ _%g5586555870%_)
                               (cons _%g5586455867%_ _%g5586555870%_))
                             '()
                             _%g5527855838%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont9541195412%_
                   (lambda (_%g5530555718%_ _%g5530655720%_ _%g5530755721%_)
                     (_%expand55242%_
                      _%g5530755721%_
                      _%g5530655720%_
                      (foldr (lambda (_%g5574455747%_ _%g5574555750%_)
                               (cons _%g5574455747%_ _%g5574555750%_))
                             '()
                             _%g5530555718%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont9541595416%_
                   (lambda (_%g5533255598%_ _%g5533355600%_ _%g5533455601%_)
                     (_%expand55242%_
                      _%g5533455601%_
                      _%g5533355600%_
                      (foldr (lambda (_%g5562455627%_ _%g5562555630%_)
                               (cons _%g5562455627%_ _%g5562555630%_))
                             '()
                             _%g5533255598%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont9541995420%_
                   (lambda (_%g5535955476%_ _%g5536055478%_ _%g5536155479%_)
                     (_%expand55242%_
                      _%g5536155479%_
                      _%g5536055478%_
                      (foldr (lambda (_%g5550455507%_ _%g5550555510%_)
                               (cons _%g5550455507%_ _%g5550555510%_))
                             '()
                             _%g5535955476%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match9563995640%_
                      (lambda (_%e5536255398%_
                               _%hd5536355402%_
                               _%tl5536455405%_
                               _%e5536555408%_
                               _%hd5536655412%_
                               _%tl5536755415%_
                               _%e5536855418%_
                               _%hd5536955422%_
                               _%tl5537055425%_
                               _%e5537155428%_
                               _%hd5537255432%_
                               _%tl5537355435%_
                               _%e5537455438%_
                               _%hd5537555442%_
                               _%tl5537655445%_
                               _%__splice9542195422%_
                               _%target5537755448%_
                               _%tl5537955451%_)
                        (letrec ((_%loop5538055454%_
                                  (lambda (_%hd5537855458%_ _%body5538455461%_)
                                    (if (gx#stx-pair? _%hd5537855458%_)
                                        (let ((_%e5538155463%_
                                               (gx#syntax-e _%hd5537855458%_)))
                                          (let ((_%lp-tl5538355470%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5538155463%_)))
                                                (_%lp-hd5538255467%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5538155463%_))))
                                            (_%loop5538055454%_
                                             _%lp-tl5538355470%_
                                             (cons _%lp-hd5538255467%_
                                                   _%body5538455461%_))))
                                        (let ((_%body5538555473%_
                                               (reverse _%body5538455461%_)))
                                          (let ((_%g5535955476%_
                                                 _%body5538555473%_)
                                                (_%g5536055478%_
                                                 _%hd5537555442%_)
                                                (_%g5536155479%_
                                                 _%hd5536955422%_))
                                            (if (and (gx#identifier?
                                                      _%g5536155479%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5536055478%_)))
                                                (_%__kont9541995420%_
                                                 _%g5535955476%_
                                                 _%g5536055478%_
                                                 _%g5536155479%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5524855391%_)))))))))
                          (_%loop5538055454%_ _%target5537755448%_ '()))))
                     (_%__match9559595596%_
                      (lambda (_%e5533555520%_
                               _%hd5533655524%_
                               _%tl5533755527%_
                               _%e5533855530%_
                               _%hd5533955534%_
                               _%tl5534055537%_
                               _%e5534155540%_
                               _%hd5534255544%_
                               _%tl5534355547%_
                               _%e5534455550%_
                               _%hd5534555554%_
                               _%tl5534655557%_
                               _%e5534755560%_
                               _%hd5534855564%_
                               _%tl5534955567%_
                               _%__splice9541795418%_
                               _%target5535055570%_
                               _%tl5535255573%_)
                        (letrec ((_%loop5535355576%_
                                  (lambda (_%hd5535155580%_ _%body5535755583%_)
                                    (if (gx#stx-pair? _%hd5535155580%_)
                                        (let ((_%e5535455585%_
                                               (gx#syntax-e _%hd5535155580%_)))
                                          (let ((_%lp-tl5535655592%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5535455585%_)))
                                                (_%lp-hd5535555589%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5535455585%_))))
                                            (_%loop5535355576%_
                                             _%lp-tl5535655592%_
                                             (cons _%lp-hd5535555589%_
                                                   _%body5535755583%_))))
                                        (let ((_%body5535855595%_
                                               (reverse _%body5535755583%_)))
                                          (let ((_%g5533255598%_
                                                 _%body5535855595%_)
                                                (_%g5533355600%_
                                                 _%hd5534855564%_)
                                                (_%g5533455601%_
                                                 _%hd5534255544%_))
                                            (if (and (gx#identifier?
                                                      _%g5533455601%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5533355600%_)))
                                                (_%__kont9541595416%_
                                                 _%g5533255598%_
                                                 _%g5533355600%_
                                                 _%g5533455601%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5524855391%_)))))))))
                          (_%loop5535355576%_ _%target5535055570%_ '()))))
                     (_%__match9555195552%_
                      (lambda (_%e5530855640%_
                               _%hd5530955644%_
                               _%tl5531055647%_
                               _%e5531155650%_
                               _%hd5531255654%_
                               _%tl5531355657%_
                               _%e5531455660%_
                               _%hd5531555664%_
                               _%tl5531655667%_
                               _%e5531755670%_
                               _%hd5531855674%_
                               _%tl5531955677%_
                               _%e5532055680%_
                               _%hd5532155684%_
                               _%tl5532255687%_
                               _%__splice9541395414%_
                               _%target5532355690%_
                               _%tl5532555693%_)
                        (letrec ((_%loop5532655696%_
                                  (lambda (_%hd5532455700%_ _%body5533055703%_)
                                    (if (gx#stx-pair? _%hd5532455700%_)
                                        (let ((_%e5532755705%_
                                               (gx#syntax-e _%hd5532455700%_)))
                                          (let ((_%lp-tl5532955712%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5532755705%_)))
                                                (_%lp-hd5532855709%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5532755705%_))))
                                            (_%loop5532655696%_
                                             _%lp-tl5532955712%_
                                             (cons _%lp-hd5532855709%_
                                                   _%body5533055703%_))))
                                        (let ((_%body5533155715%_
                                               (reverse _%body5533055703%_)))
                                          (let ((_%g5530555718%_
                                                 _%body5533155715%_)
                                                (_%g5530655720%_
                                                 _%hd5532155684%_)
                                                (_%g5530755721%_
                                                 _%hd5531555664%_))
                                            (if (and (gx#identifier?
                                                      _%g5530755721%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5530655720%_)))
                                                (_%__kont9541195412%_
                                                 _%g5530555718%_
                                                 _%g5530655720%_
                                                 _%g5530755721%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5524855391%_)))))))))
                          (_%loop5532655696%_ _%target5532355690%_ '()))))
                     (_%__match9550795508%_
                      (lambda (_%e5528155760%_
                               _%hd5528255764%_
                               _%tl5528355767%_
                               _%e5528455770%_
                               _%hd5528555774%_
                               _%tl5528655777%_
                               _%e5528755780%_
                               _%hd5528855784%_
                               _%tl5528955787%_
                               _%e5529055790%_
                               _%hd5529155794%_
                               _%tl5529255797%_
                               _%e5529355800%_
                               _%hd5529455804%_
                               _%tl5529555807%_
                               _%__splice9540995410%_
                               _%target5529655810%_
                               _%tl5529855813%_)
                        (letrec ((_%loop5529955816%_
                                  (lambda (_%hd5529755820%_ _%body5530355823%_)
                                    (if (gx#stx-pair? _%hd5529755820%_)
                                        (let ((_%e5530055825%_
                                               (gx#syntax-e _%hd5529755820%_)))
                                          (let ((_%lp-tl5530255832%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5530055825%_)))
                                                (_%lp-hd5530155829%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5530055825%_))))
                                            (_%loop5529955816%_
                                             _%lp-tl5530255832%_
                                             (cons _%lp-hd5530155829%_
                                                   _%body5530355823%_))))
                                        (let ((_%body5530455835%_
                                               (reverse _%body5530355823%_)))
                                          (let ((_%g5527855838%_
                                                 _%body5530455835%_)
                                                (_%g5527955840%_
                                                 _%hd5529455804%_)
                                                (_%g5528055841%_
                                                 _%hd5528855784%_))
                                            (if (and (gx#identifier?
                                                      _%g5528055841%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%g5527955840%_)))
                                                (_%__kont9540795408%_
                                                 _%g5527855838%_
                                                 _%g5527955840%_
                                                 _%g5528055841%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5524855391%_)))))))))
                          (_%loop5529955816%_ _%target5529655810%_ '()))))
                     (_%__match9548795488%_
                      (lambda (_%e5528155760%_
                               _%hd5528255764%_
                               _%tl5528355767%_
                               _%e5528455770%_
                               _%hd5528555774%_
                               _%tl5528655777%_
                               _%e5528755780%_
                               _%hd5528855784%_
                               _%tl5528955787%_
                               _%e5529055790%_
                               _%hd5529155794%_
                               _%tl5529255797%_)
                        (if (gx#identifier? _%hd5529155794%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g101364_|
                                 _%hd5529155794%_)
                                (if (gx#stx-pair? _%tl5529255797%_)
                                    (let ((_%e5529355800%_
                                           (gx#syntax-e _%tl5529255797%_)))
                                      (let ((_%tl5529555807%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5529355800%_)))
                                            (_%hd5529455804%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5529355800%_))))
                                        (if (gx#stx-null? _%tl5529555807%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl5528655777%_)
                                                (let ((_%__splice9540995410%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl5528655777%_
                                                        '0)))
                                                  (let ((_%tl5529855813%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9540995410%_
                                                            '1)))
                                                        (_%target5529655810%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice9540995410%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl5529855813%_)
                                                        (_%__match9550795508%_
                                                         _%e5528155760%_
                                                         _%hd5528255764%_
                                                         _%tl5528355767%_
                                                         _%e5528455770%_
                                                         _%hd5528555774%_
                                                         _%tl5528655777%_
                                                         _%e5528755780%_
                                                         _%hd5528855784%_
                                                         _%tl5528955787%_
                                                         _%e5529055790%_
                                                         _%hd5529155794%_
                                                         _%tl5529255797%_
                                                         _%e5529355800%_
                                                         _%hd5529455804%_
                                                         _%tl5529555807%_
                                                         _%__splice9540995410%_
                                                         _%target5529655810%_
                                                         _%tl5529855813%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g5524855391%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5524855391%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5524855391%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5524855391%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g101365_|
                                     _%hd5529155794%_)
                                    (if (gx#stx-pair? _%tl5529255797%_)
                                        (let ((_%e5532055680%_
                                               (gx#syntax-e _%tl5529255797%_)))
                                          (let ((_%tl5532255687%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5532055680%_)))
                                                (_%hd5532155684%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5532055680%_))))
                                            (if (gx#stx-null? _%tl5532255687%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl5528655777%_)
                                                    (let ((_%__splice9541395414%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl5528655777%_
                                                            '0)))
                                                      (let ((_%tl5532555693%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice9541395414%_ '1)))
                    (_%target5532355690%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice9541395414%_ '0))))
                (if (gx#stx-null? _%tl5532555693%_)
                    (_%__match9555195552%_
                     _%e5528155760%_
                     _%hd5528255764%_
                     _%tl5528355767%_
                     _%e5528455770%_
                     _%hd5528555774%_
                     _%tl5528655777%_
                     _%e5528755780%_
                     _%hd5528855784%_
                     _%tl5528955787%_
                     _%e5529055790%_
                     _%hd5529155794%_
                     _%tl5529255797%_
                     _%e5532055680%_
                     _%hd5532155684%_
                     _%tl5532255687%_
                     _%__splice9541395414%_
                     _%target5532355690%_
                     _%tl5532555693%_)
                    (let () (declare (not safe)) (_%g5524855391%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5524855391%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5524855391%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g5524855391%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g101366_|
                                         _%hd5529155794%_)
                                        (if (gx#stx-pair? _%tl5529255797%_)
                                            (let ((_%e5534755560%_
                                                   (gx#syntax-e
                                                    _%tl5529255797%_)))
                                              (let ((_%tl5534955567%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5534755560%_)))
                                                    (_%hd5534855564%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5534755560%_))))
                                                (if (gx#stx-null?
                                                     _%tl5534955567%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl5528655777%_)
                                                        (let ((_%__splice9541795418%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl5528655777%_
                                                                '0)))
                                                          (let ((_%tl5535255573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9541795418%_ '1)))
                        (_%target5535055570%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice9541795418%_ '0))))
                    (if (gx#stx-null? _%tl5535255573%_)
                        (_%__match9559595596%_
                         _%e5528155760%_
                         _%hd5528255764%_
                         _%tl5528355767%_
                         _%e5528455770%_
                         _%hd5528555774%_
                         _%tl5528655777%_
                         _%e5528755780%_
                         _%hd5528855784%_
                         _%tl5528955787%_
                         _%e5529055790%_
                         _%hd5529155794%_
                         _%tl5529255797%_
                         _%e5534755560%_
                         _%hd5534855564%_
                         _%tl5534955567%_
                         _%__splice9541795418%_
                         _%target5535055570%_
                         _%tl5535255573%_)
                        (let () (declare (not safe)) (_%g5524855391%_)))))
                (let () (declare (not safe)) (_%g5524855391%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5524855391%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5524855391%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g101367_|
                                             _%hd5529155794%_)
                                            (if (gx#stx-pair? _%tl5529255797%_)
                                                (let ((_%e5537455438%_
                                                       (gx#syntax-e
                                                        _%tl5529255797%_)))
                                                  (let ((_%tl5537655445%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e5537455438%_)))
                                                        (_%hd5537555442%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e5537455438%_))))
                                                    (if (gx#stx-null?
                                                         _%tl5537655445%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl5528655777%_)
                                                            (let ((_%__splice9542195422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%tl5528655777%_
                            '0)))
                      (let ((_%tl5537955451%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9542195422%_ '1)))
                            (_%target5537755448%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice9542195422%_ '0))))
                        (if (gx#stx-null? _%tl5537955451%_)
                            (_%__match9563995640%_
                             _%e5528155760%_
                             _%hd5528255764%_
                             _%tl5528355767%_
                             _%e5528455770%_
                             _%hd5528555774%_
                             _%tl5528655777%_
                             _%e5528755780%_
                             _%hd5528855784%_
                             _%tl5528955787%_
                             _%e5529055790%_
                             _%hd5529155794%_
                             _%tl5529255797%_
                             _%e5537455438%_
                             _%hd5537555442%_
                             _%tl5537655445%_
                             _%__splice9542195422%_
                             _%target5537755448%_
                             _%tl5537955451%_)
                            (let () (declare (not safe)) (_%g5524855391%_)))))
                    (let () (declare (not safe)) (_%g5524855391%_)))
                (let () (declare (not safe)) (_%g5524855391%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g5524855391%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5524855391%_))))))
                            (let () (declare (not safe)) (_%g5524855391%_)))))
                     (_%__match9546395464%_
                      (lambda (_%e5525455880%_
                               _%hd5525555884%_
                               _%tl5525655887%_
                               _%e5525755890%_
                               _%hd5525855894%_
                               _%tl5525955897%_
                               _%e5526055900%_
                               _%hd5526155904%_
                               _%tl5526255907%_
                               _%e5526355910%_
                               _%hd5526455914%_
                               _%tl5526555917%_
                               _%e5526655920%_
                               _%hd5526755924%_
                               _%tl5526855927%_
                               _%__splice9540595406%_
                               _%target5526955930%_
                               _%tl5527155933%_)
                        (letrec ((_%loop5527255936%_
                                  (lambda (_%hd5527055940%_ _%body5527655943%_)
                                    (if (gx#stx-pair? _%hd5527055940%_)
                                        (let ((_%e5527355945%_
                                               (gx#syntax-e _%hd5527055940%_)))
                                          (let ((_%lp-tl5527555952%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5527355945%_)))
                                                (_%lp-hd5527455949%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5527355945%_))))
                                            (_%loop5527255936%_
                                             _%lp-tl5527555952%_
                                             (cons _%lp-hd5527455949%_
                                                   _%body5527655943%_))))
                                        (let ((_%body5527755955%_
                                               (reverse _%body5527655943%_)))
                                          (let ((_%g5525055958%_
                                                 _%body5527755955%_)
                                                (_%g5525155960%_
                                                 _%hd5526755924%_)
                                                (_%g5525255961%_
                                                 _%hd5526455914%_)
                                                (_%g5525355962%_
                                                 _%hd5526155904%_))
                                            (if (let ((__tmp101368
                                                       (gx#syntax-local-value
                                                        _%g5525155960%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp101368))
                                                (_%__kont9540395404%_
                                                 _%g5525055958%_
                                                 _%g5525155960%_
                                                 _%g5525255961%_
                                                 _%g5525355962%_)
                                                (_%__match9548795488%_
                                                 _%e5525455880%_
                                                 _%hd5525555884%_
                                                 _%tl5525655887%_
                                                 _%e5525755890%_
                                                 _%hd5525855894%_
                                                 _%tl5525955897%_
                                                 _%e5526055900%_
                                                 _%hd5526155904%_
                                                 _%tl5526255907%_
                                                 _%e5526355910%_
                                                 _%hd5526455914%_
                                                 _%tl5526555917%_))))))))
                          (_%loop5527255936%_ _%target5526955930%_ '())))))
                (if (gx#stx-pair? _%__stx9540095401%_)
                    (let ((_%e5525455880%_ (gx#syntax-e _%__stx9540095401%_)))
                      (let ((_%tl5525655887%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5525455880%_)))
                            (_%hd5525555884%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5525455880%_))))
                        (if (gx#stx-pair? _%tl5525655887%_)
                            (let ((_%e5525755890%_
                                   (gx#syntax-e _%tl5525655887%_)))
                              (let ((_%tl5525955897%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5525755890%_)))
                                    (_%hd5525855894%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5525755890%_))))
                                (if (gx#stx-pair? _%hd5525855894%_)
                                    (let ((_%e5526055900%_
                                           (gx#syntax-e _%hd5525855894%_)))
                                      (let ((_%tl5526255907%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5526055900%_)))
                                            (_%hd5526155904%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5526055900%_))))
                                        (if (gx#stx-pair? _%tl5526255907%_)
                                            (let ((_%e5526355910%_
                                                   (gx#syntax-e
                                                    _%tl5526255907%_)))
                                              (let ((_%tl5526555917%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5526355910%_)))
                                                    (_%hd5526455914%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5526355910%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5526555917%_)
                                                    (let ((_%e5526655920%_
                                                           (gx#syntax-e
                                                            _%tl5526555917%_)))
                                                      (let ((_%tl5526855927%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e5526655920%_)))
                    (_%hd5526755924%_
                     (let () (declare (not safe)) (##car _%e5526655920%_))))
                (if (gx#stx-null? _%tl5526855927%_)
                    (if (gx#stx-pair/null? _%tl5525955897%_)
                        (let ((_%__splice9540595406%_
                               (gx#syntax-split-splice->vector
                                _%tl5525955897%_
                                '0)))
                          (let ((_%tl5527155933%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9540595406%_ '1)))
                                (_%target5526955930%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice9540595406%_ '0))))
                            (if (gx#stx-null? _%tl5527155933%_)
                                (_%__match9546395464%_
                                 _%e5525455880%_
                                 _%hd5525555884%_
                                 _%tl5525655887%_
                                 _%e5525755890%_
                                 _%hd5525855894%_
                                 _%tl5525955897%_
                                 _%e5526055900%_
                                 _%hd5526155904%_
                                 _%tl5526255907%_
                                 _%e5526355910%_
                                 _%hd5526455914%_
                                 _%tl5526555917%_
                                 _%e5526655920%_
                                 _%hd5526755924%_
                                 _%tl5526855927%_
                                 _%__splice9540595406%_
                                 _%target5526955930%_
                                 _%tl5527155933%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g5524855391%_)))))
                        (let () (declare (not safe)) (_%g5524855391%_)))
                    (let () (declare (not safe)) (_%g5524855391%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5524855391%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5524855391%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g5524855391%_)))))
                            (let () (declare (not safe)) (_%g5524855391%_)))))
                    (let () (declare (not safe)) (_%g5524855391%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx56450%_)
        (let* ((_%__stx9564295643%_ _%stx56450%_)
               (_%g5645556515%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9564295643%_))))
          (let ((_%__kont9564595646%_
                 (lambda (_%g5645757071%_ _%g5645857073%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%g5645857073%_ '()))
                               (foldr (lambda (_%g5708957092%_ _%g5709057095%_)
                                        (cons _%g5708957092%_ _%g5709057095%_))
                                      '()
                                      _%g5645757071%_)))))
                (_%__kont9564995650%_
                 (lambda (_%g5647456659%_ _%g5647556661%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%g5647556661%_)
                       (let* ((_%g5668156688%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx56450%_
                                _%g5647556661%_))
                              (_%E5668356694%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5668156688%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5668456992%_
                               (lambda (_%parts56698%_ _%var56700%_)
                                 (let ((_%$e56702%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var56700%_))))
                                   (if _%$e56702%_
                                       (let _%loop56709%_ ((_%parts56712%_
                                                            _%parts56698%_)
                                                           (_%type56714%_
                                                            (##direct-structure-ref
                                                             _%$e56702%_
                                                             '2
                                                             gerbil/core/contract~TypeEnv#type-env::t
                                                             '#f))
                                                           (_%object56715%_
                                                            _%var56700%_)
                                                           (_%checked-method?56716%_
                                                            (##direct-structure-ref
                                                             _%$e56702%_
                                                             '3
                                                             gerbil/core/contract~TypeEnv#type-env::t
                                                             '#f))
                                                           (_%nil-check?56717%_
                                                            '#f))
                                         (let* ((_%parts5671856726%_
                                                 _%parts56712%_)
                                                (_%else5672056787%_
                                                 (lambda ()
                                                   (let* ((_%g5673856746%_
                                                           (lambda (_%g5673956742%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g5673956742%_)))
                                                          (_%g5673756783%_
                                                           (lambda (_%g5673956750%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '%%app)
                           (cons _%g5673956750%_
                                 (foldr (lambda (_%g5677456777%_
                                                 _%g5677556780%_)
                                          (cons _%g5677456777%_
                                                _%g5677556780%_))
                                        '()
                                        _%g5647456659%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5673756783%_
                                                      _%object56715%_))))
                                                (_%K5672256966%_
                                                 (lambda (_%rest56791%_
                                                          _%part56793%_)
                                                   (if (and (not _%nil-check?56717%_)
                                                            (let ((__tmp101369
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (symbol->string _%part56793%_)))
                      (declare (not safe))
                      (##string-prefix? '"?" __tmp101369)))
               (let ((_%str56797%_ (symbol->string _%part56793%_)))
                 (_%loop56709%_
                  (cons (let ((__tmp101370
                               (substring
                                _%str56797%_
                                '1
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%str56797%_)))))
                          (declare (not safe))
                          (##string->symbol __tmp101370))
                        _%rest56791%_)
                  _%type56714%_
                  _%object56715%_
                  _%checked-method?56716%_
                  '#t))
               (if (let ()
                     (declare (not safe))
                     (class-instance?
                      gerbil/core/mop~MOP-2#class-type-info::t
                      _%type56714%_))
                   (let* ((_%g5680256817%_
                           (lambda (_%g5680356813%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g5680356813%_)))
                          (_%g5680156886%_
                           (lambda (_%g5680356821%_)
                             (if (gx#stx-pair? _%g5680356821%_)
                                 (let ((_%e5680656824%_
                                        (gx#syntax-e _%g5680356821%_)))
                                   (let ((_%hd5680756828%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e5680656824%_)))
                                         (_%tl5680856831%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e5680656824%_))))
                                     (if (gx#stx-pair? _%tl5680856831%_)
                                         (let ((_%e5680956834%_
                                                (gx#syntax-e
                                                 _%tl5680856831%_)))
                                           (let ((_%hd5681056838%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e5680956834%_)))
                                                 (_%tl5681156841%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e5680956834%_))))
                                             (if (gx#stx-null?
                                                  _%tl5681156841%_)
                                                 (if (null? _%rest56791%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '%%app)
                                                           (cons (cons _%hd5681056838%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%hd5680756828%_ '()))
                         (foldr (lambda (_%g5686556868%_ _%g5686656871%_)
                                  (cons _%g5686556868%_ _%g5686656871%_))
                                '()
                                _%g5647456659%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%$e56874%_
                                                            (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                             _%type56714%_
                                                             _%part56793%_)))
                                                       (if _%$e56874%_
                                                           (let ((_%slot-type56881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx56450%_
                             _%$e56874%_))))
                     (_%loop56709%_
                      _%rest56791%_
                      _%slot-type56881%_
                      (cons _%hd5681056838%_ (cons _%hd5680756828%_ '()))
                      (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                       _%type56714%_
                       _%part56793%_)
                      '#f))
                   (gx#raise-syntax-error
                    '#f
                    '"unresolved dotted reference; unknown type for slot"
                    _%stx56450%_
                    _%g5647556661%_
                    _%part56793%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g5680256817%_
                                                  _%g5680356821%_))))
                                         (_%g5680256817%_ _%g5680356821%_))))
                                 (_%g5680256817%_ _%g5680356821%_)))))
                     (_%g5680156886%_
                      (list (if _%nil-check?56717%_
                                (cons 'check-nil! (cons _%object56715%_ '()))
                                _%object56715%_)
                            (|gerbil/core/contract~Using[1]#get-slot-accessor|
                             _%stx56450%_
                             _%type56714%_
                             _%part56793%_))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%type56714%_))
                       (if (null? _%rest56791%_)
                           (let* ((_%g5689256907%_
                                   (lambda (_%g5689356903%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g5689356903%_)))
                                  (_%g5689156960%_
                                   (lambda (_%g5689356911%_)
                                     (if (gx#stx-pair? _%g5689356911%_)
                                         (let ((_%e5689656914%_
                                                (gx#syntax-e _%g5689356911%_)))
                                           (let ((_%hd5689756918%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e5689656914%_)))
                                                 (_%tl5689856921%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e5689656914%_))))
                                             (if (gx#stx-pair?
                                                  _%tl5689856921%_)
                                                 (let ((_%e5689956924%_
                                                        (gx#syntax-e
                                                         _%tl5689856921%_)))
                                                   (let ((_%hd5690056928%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e5689956924%_)))
                                                         (_%tl5690156931%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e5689956924%_))))
                                                     (if (gx#stx-null?
                                                          _%tl5690156931%_)
                                                         (cons _%hd5690056928%_
                                                               (cons _%hd5689756918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr (lambda (_%g5695156954%_ _%g5695256957%_)
                                      (cons _%g5695156954%_ _%g5695256957%_))
                                    '()
                                    _%g5647456659%_)))
                 (_%g5689256907%_ _%g5689356911%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g5689256907%_
                                                  _%g5689356911%_))))
                                         (_%g5689256907%_ _%g5689356911%_)))))
                             (_%g5689156960%_
                              (list (if _%nil-check?56717%_
                                        (cons 'check-nil!
                                              (cons _%object56715%_ '()))
                                        _%object56715%_)
                                    (gx#stx-identifier
                                     _%g5647556661%_
                                     (if _%checked-method?56716%_ '"" '"&")
                                     (let ((__obj101161 _%type56714%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj101161
                                              'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj101161
                                              '2
                                              '#f
                                              '#f))
                                           (unchecked-slot-ref
                                            __obj101161
                                            'name)))
                                     '"-"
                                     _%part56793%_))))
                           (gx#raise-syntax-error
                            '#f
                            '"illegal dotted reference; interface has no slots"
                            _%stx56450%_
                            _%g5647556661%_
                            _%part56793%_))
                       (gx#raise-syntax-error
                        '#f
                        '"unexpected type"
                        _%stx56450%_
                        _%type56714%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (pair? _%parts5671856726%_)
                                               (let ((_%hd5672356970%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%parts5671856726%_)))
                                                     (_%tl5672456973%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%parts5671856726%_))))
                                                 (let* ((_%part56976%_
                                                         _%hd5672356970%_)
                                                        (_%rest56979%_
                                                         _%tl5672456973%_))
                                                   (_%K5672256966%_
                                                    _%rest56979%_
                                                    _%part56976%_)))
                                               (_%else5672056787%_))))
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%g5647556661%_
                                                   (foldr (lambda (_%g5698356986%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5698456989%_)
                    (cons _%g5698356986%_ _%g5698456989%_))
                  '()
                  _%g5647456659%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%g5668156688%_)
                             (let ((_%hd5668556996%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5668156688%_)))
                                   (_%tl5668656999%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5668156688%_))))
                               (let* ((_%var57002%_ _%hd5668556996%_)
                                      (_%parts57005%_ _%tl5668656999%_))
                                 (_%K5668456992%_
                                  _%parts57005%_
                                  _%var57002%_)))
                             (_%E5668356694%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%g5647556661%_
                                   (foldr (lambda (_%g5700757010%_
                                                   _%g5700857013%_)
                                            (cons _%g5700757010%_
                                                  _%g5700857013%_))
                                          '()
                                          _%g5647456659%_))))))
                (_%__kont9565395654%_
                 (lambda (_%g5649756560%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5657556578%_ _%g5657656581%_)
                                  (cons _%g5657556578%_ _%g5657656581%_))
                                '()
                                _%g5649756560%_)))))
            (let* ((_%__match9572995730%_
                    (lambda (_%e5649856522%_
                             _%hd5649956526%_
                             _%tl5650056529%_
                             _%__splice9565595656%_
                             _%target5650156532%_
                             _%tl5650356535%_)
                      (letrec ((_%loop5650456538%_
                                (lambda (_%hd5650256542%_ _%arg5650856545%_)
                                  (if (gx#stx-pair? _%hd5650256542%_)
                                      (let ((_%e5650556547%_
                                             (gx#syntax-e _%hd5650256542%_)))
                                        (let ((_%lp-tl5650756554%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5650556547%_)))
                                              (_%lp-hd5650656551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5650556547%_))))
                                          (_%loop5650456538%_
                                           _%lp-tl5650756554%_
                                           (cons _%lp-hd5650656551%_
                                                 _%arg5650856545%_))))
                                      (let ((_%arg5650956557%_
                                             (reverse _%arg5650856545%_)))
                                        (_%__kont9565395654%_
                                         _%arg5650956557%_))))))
                        (_%loop5650456538%_ _%target5650156532%_ '()))))
                   (_%__match9571595716%_
                    (lambda (_%e5647656591%_
                             _%hd5647756595%_
                             _%tl5647856598%_
                             _%e5647956601%_
                             _%hd5648056605%_
                             _%tl5648156608%_
                             _%e5648256611%_
                             _%hd5648356615%_
                             _%tl5648456618%_
                             _%e5648556621%_
                             _%hd5648656625%_
                             _%tl5648756628%_
                             _%__splice9565195652%_
                             _%target5648856631%_
                             _%tl5649056634%_)
                      (letrec ((_%loop5649156637%_
                                (lambda (_%hd5648956641%_ _%rand5649556644%_)
                                  (if (gx#stx-pair? _%hd5648956641%_)
                                      (let ((_%e5649256646%_
                                             (gx#syntax-e _%hd5648956641%_)))
                                        (let ((_%lp-tl5649456653%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5649256646%_)))
                                              (_%lp-hd5649356650%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5649256646%_))))
                                          (_%loop5649156637%_
                                           _%lp-tl5649456653%_
                                           (cons _%lp-hd5649356650%_
                                                 _%rand5649556644%_))))
                                      (let ((_%rand5649656656%_
                                             (reverse _%rand5649556644%_)))
                                        (_%__kont9564995650%_
                                         _%rand5649656656%_
                                         _%hd5648656625%_))))))
                        (_%loop5649156637%_ _%target5648856631%_ '()))))
                   (_%__match9568995690%_
                    (lambda (_%e5647656591%_
                             _%hd5647756595%_
                             _%tl5647856598%_
                             _%e5647956601%_
                             _%hd5648056605%_
                             _%tl5648156608%_)
                      (if (gx#stx-pair? _%hd5648056605%_)
                          (let ((_%e5648256611%_
                                 (gx#syntax-e _%hd5648056605%_)))
                            (let ((_%tl5648456618%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5648256611%_)))
                                  (_%hd5648356615%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5648256611%_))))
                              (if (gx#identifier? _%hd5648356615%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g101371_|
                                       _%hd5648356615%_)
                                      (if (gx#stx-pair? _%tl5648456618%_)
                                          (let ((_%e5648556621%_
                                                 (gx#syntax-e
                                                  _%tl5648456618%_)))
                                            (let ((_%tl5648756628%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5648556621%_)))
                                                  (_%hd5648656625%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5648556621%_))))
                                              (if (gx#stx-null?
                                                   _%tl5648756628%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5648156608%_)
                                                      (let ((_%__splice9565195652%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5648156608%_
                                                              '0)))
                                                        (let ((_%tl5649056634%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9565195652%_ '1)))
                      (_%target5648856631%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9565195652%_ '0))))
                  (if (gx#stx-null? _%tl5649056634%_)
                      (_%__match9571595716%_
                       _%e5647656591%_
                       _%hd5647756595%_
                       _%tl5647856598%_
                       _%e5647956601%_
                       _%hd5648056605%_
                       _%tl5648156608%_
                       _%e5648256611%_
                       _%hd5648356615%_
                       _%tl5648456618%_
                       _%e5648556621%_
                       _%hd5648656625%_
                       _%tl5648756628%_
                       _%__splice9565195652%_
                       _%target5648856631%_
                       _%tl5649056634%_)
                      (if (gx#stx-pair/null? _%tl5647856598%_)
                          (let ((_%__splice9565595656%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5647856598%_
                                  '0)))
                            (let ((_%tl5650356535%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9565595656%_ '1)))
                                  (_%target5650156532%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9565595656%_
                                      '0))))
                              (if (gx#stx-null? _%tl5650356535%_)
                                  (_%__match9572995730%_
                                   _%e5647656591%_
                                   _%hd5647756595%_
                                   _%tl5647856598%_
                                   _%__splice9565595656%_
                                   _%target5650156532%_
                                   _%tl5650356535%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5645556515%_)))))
                          (let () (declare (not safe)) (_%g5645556515%_))))))
              (if (gx#stx-pair/null? _%tl5647856598%_)
                  (let ((_%__splice9565595656%_
                         (gx#syntax-split-splice->vector _%tl5647856598%_ '0)))
                    (let ((_%tl5650356535%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9565595656%_ '1)))
                          (_%target5650156532%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9565595656%_ '0))))
                      (if (gx#stx-null? _%tl5650356535%_)
                          (_%__match9572995730%_
                           _%e5647656591%_
                           _%hd5647756595%_
                           _%tl5647856598%_
                           _%__splice9565595656%_
                           _%target5650156532%_
                           _%tl5650356535%_)
                          (let () (declare (not safe)) (_%g5645556515%_)))))
                  (let () (declare (not safe)) (_%g5645556515%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5647856598%_)
                                                      (let ((_%__splice9565595656%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5647856598%_
                                                              '0)))
                                                        (let ((_%tl5650356535%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9565595656%_ '1)))
                      (_%target5650156532%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9565595656%_ '0))))
                  (if (gx#stx-null? _%tl5650356535%_)
                      (_%__match9572995730%_
                       _%e5647656591%_
                       _%hd5647756595%_
                       _%tl5647856598%_
                       _%__splice9565595656%_
                       _%target5650156532%_
                       _%tl5650356535%_)
                      (let () (declare (not safe)) (_%g5645556515%_)))))
              (let () (declare (not safe)) (_%g5645556515%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5647856598%_)
                                              (let ((_%__splice9565595656%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl5647856598%_
                                                      '0)))
                                                (let ((_%tl5650356535%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9565595656%_
                                                          '1)))
                                                      (_%target5650156532%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9565595656%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5650356535%_)
                                                      (_%__match9572995730%_
                                                       _%e5647656591%_
                                                       _%hd5647756595%_
                                                       _%tl5647856598%_
                                                       _%__splice9565595656%_
                                                       _%target5650156532%_
                                                       _%tl5650356535%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5645556515%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5645556515%_))))
                                      (if (gx#stx-pair/null? _%tl5647856598%_)
                                          (let ((_%__splice9565595656%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5647856598%_
                                                  '0)))
                                            (let ((_%tl5650356535%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9565595656%_
                                                      '1)))
                                                  (_%target5650156532%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9565595656%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5650356535%_)
                                                  (_%__match9572995730%_
                                                   _%e5647656591%_
                                                   _%hd5647756595%_
                                                   _%tl5647856598%_
                                                   _%__splice9565595656%_
                                                   _%target5650156532%_
                                                   _%tl5650356535%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5645556515%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5645556515%_))))
                                  (if (gx#stx-pair/null? _%tl5647856598%_)
                                      (let ((_%__splice9565595656%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5647856598%_
                                              '0)))
                                        (let ((_%tl5650356535%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9565595656%_
                                                  '1)))
                                              (_%target5650156532%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9565595656%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5650356535%_)
                                              (_%__match9572995730%_
                                               _%e5647656591%_
                                               _%hd5647756595%_
                                               _%tl5647856598%_
                                               _%__splice9565595656%_
                                               _%target5650156532%_
                                               _%tl5650356535%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5645556515%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5645556515%_))))))
                          (if (gx#stx-pair/null? _%tl5647856598%_)
                              (let ((_%__splice9565595656%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5647856598%_
                                      '0)))
                                (let ((_%tl5650356535%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9565595656%_
                                          '1)))
                                      (_%target5650156532%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9565595656%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5650356535%_)
                                      (_%__match9572995730%_
                                       _%e5647656591%_
                                       _%hd5647756595%_
                                       _%tl5647856598%_
                                       _%__splice9565595656%_
                                       _%target5650156532%_
                                       _%tl5650356535%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5645556515%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5645556515%_))))))
                   (_%__match9567795678%_
                    (lambda (_%e5645957023%_
                             _%hd5646057027%_
                             _%tl5646157030%_
                             _%e5646257033%_
                             _%hd5646357037%_
                             _%tl5646457040%_
                             _%__splice9564795648%_
                             _%target5646557043%_
                             _%tl5646757046%_)
                      (letrec ((_%loop5646857049%_
                                (lambda (_%hd5646657053%_ _%rand5647257056%_)
                                  (if (gx#stx-pair? _%hd5646657053%_)
                                      (let ((_%e5646957058%_
                                             (gx#syntax-e _%hd5646657053%_)))
                                        (let ((_%lp-tl5647157065%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5646957058%_)))
                                              (_%lp-hd5647057062%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5646957058%_))))
                                          (_%loop5646857049%_
                                           _%lp-tl5647157065%_
                                           (cons _%lp-hd5647057062%_
                                                 _%rand5647257056%_))))
                                      (let ((_%rand5647357068%_
                                             (reverse _%rand5647257056%_)))
                                        (let ((_%g5645757071%_
                                               _%rand5647357068%_)
                                              (_%g5645857073%_
                                               _%hd5646357037%_))
                                          (if (gx#identifier? _%g5645857073%_)
                                              (_%__kont9564595646%_
                                               _%g5645757071%_
                                               _%g5645857073%_)
                                              (_%__match9568995690%_
                                               _%e5645957023%_
                                               _%hd5646057027%_
                                               _%tl5646157030%_
                                               _%e5646257033%_
                                               _%hd5646357037%_
                                               _%tl5646457040%_))))))))
                        (_%loop5646857049%_ _%target5646557043%_ '())))))
              (if (gx#stx-pair? _%__stx9564295643%_)
                  (let ((_%e5645957023%_ (gx#syntax-e _%__stx9564295643%_)))
                    (let ((_%tl5646157030%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5645957023%_)))
                          (_%hd5646057027%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5645957023%_))))
                      (if (gx#stx-pair? _%tl5646157030%_)
                          (let ((_%e5646257033%_
                                 (gx#syntax-e _%tl5646157030%_)))
                            (let ((_%tl5646457040%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5646257033%_)))
                                  (_%hd5646357037%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5646257033%_))))
                              (if (gx#stx-pair/null? _%tl5646457040%_)
                                  (let ((_%__splice9564795648%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5646457040%_
                                          '0)))
                                    (let ((_%tl5646757046%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9564795648%_
                                              '1)))
                                          (_%target5646557043%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9564795648%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5646757046%_)
                                          (_%__match9567795678%_
                                           _%e5645957023%_
                                           _%hd5646057027%_
                                           _%tl5646157030%_
                                           _%e5646257033%_
                                           _%hd5646357037%_
                                           _%tl5646457040%_
                                           _%__splice9564795648%_
                                           _%target5646557043%_
                                           _%tl5646757046%_)
                                          (if (gx#stx-pair? _%hd5646357037%_)
                                              (let ((_%e5648256611%_
                                                     (gx#syntax-e
                                                      _%hd5646357037%_)))
                                                (let ((_%tl5648456618%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5648256611%_)))
                                                      (_%hd5648356615%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5648256611%_))))
                                                  (if (gx#identifier?
                                                       _%hd5648356615%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g101371_|
                                                           _%hd5648356615%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5648456618%_)
                                                              (let ((_%e5648556621%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5648456618%_)))
                        (let ((_%tl5648756628%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5648556621%_)))
                              (_%hd5648656625%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5648556621%_))))
                          (if (gx#stx-pair/null? _%tl5646157030%_)
                              (let ((_%__splice9565595656%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5646157030%_
                                      '0)))
                                (let ((_%tl5650356535%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9565595656%_
                                          '1)))
                                      (_%target5650156532%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9565595656%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5650356535%_)
                                      (_%__match9572995730%_
                                       _%e5645957023%_
                                       _%hd5646057027%_
                                       _%tl5646157030%_
                                       _%__splice9565595656%_
                                       _%target5650156532%_
                                       _%tl5650356535%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5645556515%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5645556515%_)))))
                      (if (gx#stx-pair/null? _%tl5646157030%_)
                          (let ((_%__splice9565595656%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5646157030%_
                                  '0)))
                            (let ((_%tl5650356535%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9565595656%_ '1)))
                                  (_%target5650156532%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9565595656%_
                                      '0))))
                              (if (gx#stx-null? _%tl5650356535%_)
                                  (_%__match9572995730%_
                                   _%e5645957023%_
                                   _%hd5646057027%_
                                   _%tl5646157030%_
                                   _%__splice9565595656%_
                                   _%target5650156532%_
                                   _%tl5650356535%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5645556515%_)))))
                          (let () (declare (not safe)) (_%g5645556515%_))))
                  (if (gx#stx-pair/null? _%tl5646157030%_)
                      (let ((_%__splice9565595656%_
                             (gx#syntax-split-splice->vector
                              _%tl5646157030%_
                              '0)))
                        (let ((_%tl5650356535%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9565595656%_ '1)))
                              (_%target5650156532%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9565595656%_ '0))))
                          (if (gx#stx-null? _%tl5650356535%_)
                              (_%__match9572995730%_
                               _%e5645957023%_
                               _%hd5646057027%_
                               _%tl5646157030%_
                               _%__splice9565595656%_
                               _%target5650156532%_
                               _%tl5650356535%_)
                              (let ()
                                (declare (not safe))
                                (_%g5645556515%_)))))
                      (let () (declare (not safe)) (_%g5645556515%_))))
              (if (gx#stx-pair/null? _%tl5646157030%_)
                  (let ((_%__splice9565595656%_
                         (gx#syntax-split-splice->vector _%tl5646157030%_ '0)))
                    (let ((_%tl5650356535%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9565595656%_ '1)))
                          (_%target5650156532%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9565595656%_ '0))))
                      (if (gx#stx-null? _%tl5650356535%_)
                          (_%__match9572995730%_
                           _%e5645957023%_
                           _%hd5646057027%_
                           _%tl5646157030%_
                           _%__splice9565595656%_
                           _%target5650156532%_
                           _%tl5650356535%_)
                          (let () (declare (not safe)) (_%g5645556515%_)))))
                  (let () (declare (not safe)) (_%g5645556515%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5646157030%_)
                                                  (let ((_%__splice9565595656%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5646157030%_
                                                          '0)))
                                                    (let ((_%tl5650356535%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9565595656%_
                                                              '1)))
                                                          (_%target5650156532%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9565595656%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5650356535%_)
                                                          (_%__match9572995730%_
                                                           _%e5645957023%_
                                                           _%hd5646057027%_
                                                           _%tl5646157030%_
                                                           _%__splice9565595656%_
                                                           _%target5650156532%_
                                                           _%tl5650356535%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5645556515%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5645556515%_)))))))
                                  (if (gx#stx-pair? _%hd5646357037%_)
                                      (let ((_%e5648256611%_
                                             (gx#syntax-e _%hd5646357037%_)))
                                        (let ((_%tl5648456618%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5648256611%_)))
                                              (_%hd5648356615%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5648256611%_))))
                                          (if (gx#identifier? _%hd5648356615%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g101371_|
                                                   _%hd5648356615%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5648456618%_)
                                                      (let ((_%e5648556621%_
                                                             (gx#syntax-e
                                                              _%tl5648456618%_)))
                                                        (let ((_%tl5648756628%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5648556621%_)))
                      (_%hd5648656625%_
                       (let () (declare (not safe)) (##car _%e5648556621%_))))
                  (if (gx#stx-pair/null? _%tl5646157030%_)
                      (let ((_%__splice9565595656%_
                             (gx#syntax-split-splice->vector
                              _%tl5646157030%_
                              '0)))
                        (let ((_%tl5650356535%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9565595656%_ '1)))
                              (_%target5650156532%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9565595656%_ '0))))
                          (if (gx#stx-null? _%tl5650356535%_)
                              (_%__match9572995730%_
                               _%e5645957023%_
                               _%hd5646057027%_
                               _%tl5646157030%_
                               _%__splice9565595656%_
                               _%target5650156532%_
                               _%tl5650356535%_)
                              (let ()
                                (declare (not safe))
                                (_%g5645556515%_)))))
                      (let () (declare (not safe)) (_%g5645556515%_)))))
              (if (gx#stx-pair/null? _%tl5646157030%_)
                  (let ((_%__splice9565595656%_
                         (gx#syntax-split-splice->vector _%tl5646157030%_ '0)))
                    (let ((_%tl5650356535%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9565595656%_ '1)))
                          (_%target5650156532%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9565595656%_ '0))))
                      (if (gx#stx-null? _%tl5650356535%_)
                          (_%__match9572995730%_
                           _%e5645957023%_
                           _%hd5646057027%_
                           _%tl5646157030%_
                           _%__splice9565595656%_
                           _%target5650156532%_
                           _%tl5650356535%_)
                          (let () (declare (not safe)) (_%g5645556515%_)))))
                  (let () (declare (not safe)) (_%g5645556515%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5646157030%_)
                                                      (let ((_%__splice9565595656%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl5646157030%_
                                                              '0)))
                                                        (let ((_%tl5650356535%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9565595656%_ '1)))
                      (_%target5650156532%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9565595656%_ '0))))
                  (if (gx#stx-null? _%tl5650356535%_)
                      (_%__match9572995730%_
                       _%e5645957023%_
                       _%hd5646057027%_
                       _%tl5646157030%_
                       _%__splice9565595656%_
                       _%target5650156532%_
                       _%tl5650356535%_)
                      (let () (declare (not safe)) (_%g5645556515%_)))))
              (let () (declare (not safe)) (_%g5645556515%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5646157030%_)
                                                  (let ((_%__splice9565595656%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl5646157030%_
                                                          '0)))
                                                    (let ((_%tl5650356535%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9565595656%_
                                                              '1)))
                                                          (_%target5650156532%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice9565595656%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5650356535%_)
                                                          (_%__match9572995730%_
                                                           _%e5645957023%_
                                                           _%hd5646057027%_
                                                           _%tl5646157030%_
                                                           _%__splice9565595656%_
                                                           _%target5650156532%_
                                                           _%tl5650356535%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5645556515%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5645556515%_))))))
                                      (if (gx#stx-pair/null? _%tl5646157030%_)
                                          (let ((_%__splice9565595656%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5646157030%_
                                                  '0)))
                                            (let ((_%tl5650356535%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9565595656%_
                                                      '1)))
                                                  (_%target5650156532%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9565595656%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5650356535%_)
                                                  (_%__match9572995730%_
                                                   _%e5645957023%_
                                                   _%hd5646057027%_
                                                   _%tl5646157030%_
                                                   _%__splice9565595656%_
                                                   _%target5650156532%_
                                                   _%tl5650356535%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5645556515%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5645556515%_)))))))
                          (if (gx#stx-pair/null? _%tl5646157030%_)
                              (let ((_%__splice9565595656%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5646157030%_
                                      '0)))
                                (let ((_%tl5650356535%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9565595656%_
                                          '1)))
                                      (_%target5650156532%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9565595656%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5650356535%_)
                                      (_%__match9572995730%_
                                       _%e5645957023%_
                                       _%hd5646057027%_
                                       _%tl5646157030%_
                                       _%__splice9565595656%_
                                       _%target5650156532%_
                                       _%tl5650356535%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5645556515%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5645556515%_))))))
                  (let () (declare (not safe)) (_%g5645556515%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx57105%_)
        (let* ((_%__stx9573295733%_ _%stx57105%_)
               (_%g5710957130%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9573295733%_))))
          (let ((_%__kont9573595736%_
                 (lambda (_%g5711157198%_)
                   (let* ((_%g5721057217%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx57105%_
                            _%g5711157198%_))
                          (_%E5721257223%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5721057217%_
                                    '([var . parts]))
                             (void)))
                          (_%K5721357439%_
                           (lambda (_%parts57227%_ _%var57229%_)
                             (let ((_%$e57231%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var57229%_))))
                               (if _%$e57231%_
                                   (let _%loop57238%_ ((_%parts57241%_
                                                        _%parts57227%_)
                                                       (_%type57243%_
                                                        (##direct-structure-ref
                                                         _%$e57231%_
                                                         '2
                                                         gerbil/core/contract~TypeEnv#type-env::t
                                                         '#f))
                                                       (_%object57244%_
                                                        _%var57229%_)
                                                       (_%nil-check?57245%_
                                                        '#f))
                                     (let* ((_%parts5724657254%_
                                             _%parts57241%_)
                                            (_%else5724857266%_
                                             (lambda () _%object57244%_))
                                            (_%K5725057421%_
                                             (lambda (_%rest57270%_
                                                      _%part57272%_)
                                               (if (and (not _%nil-check?57245%_)
                                                        (let ((__tmp101372
                                                               (symbol->string
                                                                _%part57272%_)))
                                                          (declare (not safe))
                                                          (##string-prefix?
                                                           '"?"
                                                           __tmp101372)))
                                                   (let ((_%str57276%_
                                                          (symbol->string
                                                           _%part57272%_)))
                                                     (_%loop57238%_
                                                      (cons (let ((__tmp101373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (substring
                            _%str57276%_
                            '1
                            (let ()
                              (declare (not safe))
                              (##string-length _%str57276%_)))))
                      (declare (not safe))
                      (##string->symbol __tmp101373))
                    _%rest57270%_)
              _%type57243%_
              _%object57244%_
              '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (class-instance?
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          _%type57243%_))
                                                       (let* ((_%g5728157296%_
                                                               (lambda (_%g5728257292%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g5728257292%_)))
                      (_%g5728057413%_
                       (lambda (_%g5728257300%_)
                         (if (gx#stx-pair? _%g5728257300%_)
                             (let ((_%e5728557303%_
                                    (gx#syntax-e _%g5728257300%_)))
                               (let ((_%hd5728657307%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e5728557303%_)))
                                     (_%tl5728757310%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e5728557303%_))))
                                 (if (gx#stx-pair? _%tl5728757310%_)
                                     (let ((_%e5728857313%_
                                            (gx#syntax-e _%tl5728757310%_)))
                                       (let ((_%hd5728957317%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e5728857313%_)))
                                             (_%tl5729057320%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e5728857313%_))))
                                         (if (gx#stx-null? _%tl5729057320%_)
                                             (if (null? _%rest57270%_)
                                                 (let ((_%$e57355%_
                                                        (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                         _%type57243%_
                                                         _%part57272%_)))
                                                   (if _%$e57355%_
                                                       (let* ((_%g5736257370%_
                                                               (lambda (_%g5736357366%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g5736357366%_)))
                      (_%g5736157393%_
                       (lambda (_%g5736357374%_)
                         (cons (gx#datum->syntax '#f 'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@type)
                                           (cons _%g5736357374%_ '()))
                                     (cons (cons _%hd5728957317%_
                                                 (cons _%hd5728657307%_ '()))
                                           '()))))))
                 (_%g5736157393%_
                  (let ()
                    (declare (not safe))
                    (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                     _%stx57105%_
                     _%$e57355%_))))
               (if _%nil-check?57245%_
                   (cons _%hd5728957317%_
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%hd5728657307%_ '()))
                               '()))
                   (cons _%hd5728957317%_ (cons _%hd5728657307%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$e57401%_
                                                        (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                         _%type57243%_
                                                         _%part57272%_)))
                                                   (if _%$e57401%_
                                                       (let ((_%type57408%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (|gerbil/core/contract~TypeReference[1]#resolve-type|
                         _%stx57105%_
                         _%$e57401%_))))
                 (if _%nil-check?57245%_
                     (_%loop57238%_
                      _%rest57270%_
                      _%type57408%_
                      (cons _%hd5728957317%_
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%hd5728657307%_ '()))
                                  '()))
                      '#f)
                     (_%loop57238%_
                      _%rest57270%_
                      _%type57408%_
                      (cons _%hd5728957317%_ (cons _%hd5728657307%_ '()))
                      '#f)))
               (gx#raise-syntax-error
                '#f
                '"unresolved dotted reference; unknown type for slot"
                _%stx57105%_
                _%g5711157198%_
                _%part57272%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g5728157296%_
                                              _%g5728257300%_))))
                                     (_%g5728157296%_ _%g5728257300%_))))
                             (_%g5728157296%_ _%g5728257300%_)))))
                 (_%g5728057413%_
                  (list (if _%nil-check?57245%_
                            (cons 'check-nil! (cons _%object57244%_ '()))
                            _%object57244%_)
                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                         _%stx57105%_
                         _%type57243%_
                         _%part57272%_))))
               (if (let ()
                     (declare (not safe))
                     (class-instance?
                      gerbil/core/contract~InterfaceInfo#interface-info::t
                      _%type57243%_))
                   (gx#raise-syntax-error
                    '#f
                    '"illegal dotted reference; interface has no slots")
                   (gx#raise-syntax-error
                    '#f
                    '"unexpected type"
                    _%stx57105%_
                    _%type57243%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%parts5724657254%_)
                                           (let ((_%hd5725157425%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%parts5724657254%_)))
                                                 (_%tl5725257428%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%parts5724657254%_))))
                                             (let* ((_%part57431%_
                                                     _%hd5725157425%_)
                                                    (_%rest57434%_
                                                     _%tl5725257428%_))
                                               (_%K5725057421%_
                                                _%rest57434%_
                                                _%part57431%_)))
                                           (_%else5724857266%_))))
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%g5711157198%_ '())))))))
                     (if (pair? _%g5721057217%_)
                         (let ((_%hd5721457443%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5721057217%_)))
                               (_%tl5721557446%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5721057217%_))))
                           (let* ((_%var57449%_ _%hd5721457443%_)
                                  (_%parts57452%_ _%tl5721557446%_))
                             (_%K5721357439%_ _%parts57452%_ _%var57449%_)))
                         (_%E5721257223%_)))))
                (_%__kont9573795738%_
                 (lambda (_%g5711857157%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%g5711857157%_ '())))))
            (let ((_%__match9575395754%_
                   (lambda (_%e5711257178%_
                            _%hd5711357182%_
                            _%tl5711457185%_
                            _%e5711557188%_
                            _%hd5711657192%_
                            _%tl5711757195%_)
                     (let ((_%g5711157198%_ _%hd5711657192%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g5711157198%_)
                           (_%__kont9573595736%_ _%g5711157198%_)
                           (_%__kont9573795738%_ _%hd5711657192%_))))))
              (if (gx#stx-pair? _%__stx9573295733%_)
                  (let ((_%e5711257178%_ (gx#syntax-e _%__stx9573295733%_)))
                    (let ((_%tl5711457185%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5711257178%_)))
                          (_%hd5711357182%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5711257178%_))))
                      (if (gx#stx-pair? _%tl5711457185%_)
                          (let ((_%e5711557188%_
                                 (gx#syntax-e _%tl5711457185%_)))
                            (let ((_%tl5711757195%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5711557188%_)))
                                  (_%hd5711657192%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5711557188%_))))
                              (if (gx#stx-null? _%tl5711757195%_)
                                  (_%__match9575395754%_
                                   _%e5711257178%_
                                   _%hd5711357182%_
                                   _%tl5711457185%_
                                   _%e5711557188%_
                                   _%hd5711657192%_
                                   _%tl5711757195%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5710957130%_)))))
                          (let () (declare (not safe)) (_%g5710957130%_)))))
                  (let () (declare (not safe)) (_%g5710957130%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx57459%_)
        (let* ((_%__stx9577095771%_ _%stx57459%_)
               (_%g5746357492%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9577095771%_))))
          (let ((_%__kont9577395774%_
                 (lambda (_%g5746557584%_ _%g5746657586%_)
                   (let* ((_%g5760057607%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx57459%_
                            _%g5746657586%_))
                          (_%E5760257613%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5760057607%_
                                    '([var . parts]))
                             (void)))
                          (_%K5760357843%_
                           (lambda (_%parts57617%_ _%var57619%_)
                             (let ((_%$e57621%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var57619%_))))
                               (if _%$e57621%_
                                   (let _%loop57628%_ ((_%parts57631%_
                                                        _%parts57617%_)
                                                       (_%type57633%_
                                                        (##direct-structure-ref
                                                         _%$e57621%_
                                                         '2
                                                         gerbil/core/contract~TypeEnv#type-env::t
                                                         '#f))
                                                       (_%object57634%_
                                                        _%var57619%_)
                                                       (_%checked-mutator?57635%_
                                                        (##direct-structure-ref
                                                         _%$e57621%_
                                                         '3
                                                         gerbil/core/contract~TypeEnv#type-env::t
                                                         '#f))
                                                       (_%nil-check?57636%_
                                                        '#f))
                                     (let* ((_%parts5763757644%_
                                             _%parts57631%_)
                                            (_%E5763957650%_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _%parts5763757644%_
                                                      '([part . rest]))
                                               (void)))
                                            (_%K5764057825%_
                                             (lambda (_%rest57654%_
                                                      _%part57656%_)
                                               (if (and (not _%nil-check?57636%_)
                                                        (let ((__tmp101374
                                                               (symbol->string
                                                                _%part57656%_)))
                                                          (declare (not safe))
                                                          (##string-prefix?
                                                           '"?"
                                                           __tmp101374)))
                                                   (let ((_%str57660%_
                                                          (symbol->string
                                                           _%part57656%_)))
                                                     (_%loop57628%_
                                                      (cons (let ((__tmp101375
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (substring
                            _%str57660%_
                            '1
                            (let ()
                              (declare (not safe))
                              (##string-length _%str57660%_)))))
                      (declare (not safe))
                      (##string->symbol __tmp101375))
                    _%rest57654%_)
              _%type57633%_
              _%object57634%_
              _%checked-mutator?57635%_
              '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (class-instance?
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          _%type57633%_))
                                                       (if (null? _%rest57654%_)
                                                           (let* ((_%g5766757682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g5766857678%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g5766857678%_)))
                          (_%g5766657739%_
                           (lambda (_%g5766857686%_)
                             (if (gx#stx-pair? _%g5766857686%_)
                                 (let ((_%e5767157689%_
                                        (gx#syntax-e _%g5766857686%_)))
                                   (let ((_%hd5767257693%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e5767157689%_)))
                                         (_%tl5767357696%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e5767157689%_))))
                                     (if (gx#stx-pair? _%tl5767357696%_)
                                         (let ((_%e5767457699%_
                                                (gx#syntax-e
                                                 _%tl5767357696%_)))
                                           (let ((_%hd5767557703%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e5767457699%_)))
                                                 (_%tl5767657706%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e5767457699%_))))
                                             (if (gx#stx-null?
                                                  _%tl5767657706%_)
                                                 (if _%nil-check?57636%_
                                                     (cons _%hd5767557703%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'check-nil!)
                               (cons _%hd5767257693%_ '()))
                         (cons _%g5746557584%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%hd5767557703%_
                                                           (cons _%hd5767257693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%g5746557584%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g5766757682%_
                                                  _%g5766857686%_))))
                                         (_%g5766757682%_ _%g5766857686%_))))
                                 (_%g5766757682%_ _%g5766857686%_)))))
                     (_%g5766657739%_
                      (list _%object57634%_
                            (|gerbil/core/contract~Using[1]#get-slot-mutator|
                             _%stx57459%_
                             _%type57633%_
                             _%part57656%_
                             (if _%checked-mutator?57635%_
                                 (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                  _%type57633%_
                                  _%part57656%_)
                                 '#f)))))
                   (let ((_%$e57743%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type57633%_
                           _%part57656%_)))
                     (if _%$e57743%_
                         (let* ((_%type57750%_
                                 (let ()
                                   (declare (not safe))
                                   (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                    _%stx57459%_
                                    _%$e57743%_)))
                                (_%g5775357768%_
                                 (lambda (_%g5775457764%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g5775457764%_)))
                                (_%g5775257815%_
                                 (lambda (_%g5775457772%_)
                                   (if (gx#stx-pair? _%g5775457772%_)
                                       (let ((_%e5775757775%_
                                              (gx#syntax-e _%g5775457772%_)))
                                         (let ((_%hd5775857779%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e5775757775%_)))
                                               (_%tl5775957782%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e5775757775%_))))
                                           (if (gx#stx-pair? _%tl5775957782%_)
                                               (let ((_%e5776057785%_
                                                      (gx#syntax-e
                                                       _%tl5775957782%_)))
                                                 (let ((_%hd5776157789%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e5776057785%_)))
                                                       (_%tl5776257792%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e5776057785%_))))
                                                   (if (gx#stx-null?
                                                        _%tl5776257792%_)
                                                       (_%loop57628%_
                                                        _%rest57654%_
                                                        _%type57750%_
                                                        (cons _%hd5776157789%_
                                                              (cons _%hd5775857779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                 _%type57750%_
                 _%part57656%_)
                '#f)
               (_%g5775357768%_ _%g5775457772%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g5775357768%_
                                                _%g5775457772%_))))
                                       (_%g5775357768%_ _%g5775457772%_)))))
                           (_%g5775257815%_
                            (list (if _%nil-check?57636%_
                                      (cons 'check-nil!
                                            (cons _%object57634%_ '()))
                                      _%object57634%_)
                                  (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                   _%stx57459%_
                                   _%type57750%_
                                   _%part57656%_))))
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx57459%_
                          _%g5746657586%_
                          _%part57656%_))))
               (if (let ()
                     (declare (not safe))
                     (class-instance?
                      gerbil/core/contract~InterfaceInfo#interface-info::t
                      _%type57633%_))
                   (gx#raise-syntax-error
                    '#f
                    '"illegal dotted reference; interface has no slots")
                   (gx#raise-syntax-error
                    '#f
                    '"unexpected type"
                    _%stx57459%_
                    _%type57633%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%parts5763757644%_)
                                           (let ((_%hd5764157829%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%parts5763757644%_)))
                                                 (_%tl5764257832%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%parts5763757644%_))))
                                             (let* ((_%part57835%_
                                                     _%hd5764157829%_)
                                                    (_%rest57838%_
                                                     _%tl5764257832%_))
                                               (_%K5764057825%_
                                                _%rest57838%_
                                                _%part57835%_)))
                                           (_%E5763957650%_))))
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx57459%_)))))))
                     (if (pair? _%g5760057607%_)
                         (let ((_%hd5760457847%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5760057607%_)))
                               (_%tl5760557850%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5760057607%_))))
                           (let* ((_%var57853%_ _%hd5760457847%_)
                                  (_%parts57856%_ _%tl5760557850%_))
                             (_%K5760357843%_ _%parts57856%_ _%var57853%_)))
                         (_%E5760257613%_)))))
                (_%__kont9577595776%_
                 (lambda (_%g5747657529%_ _%g5747757531%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx57459%_)))))
            (let ((_%__match9579795798%_
                   (lambda (_%e5746757554%_
                            _%hd5746857558%_
                            _%tl5746957561%_
                            _%e5747057564%_
                            _%hd5747157568%_
                            _%tl5747257571%_
                            _%e5747357574%_
                            _%hd5747457578%_
                            _%tl5747557581%_)
                     (let ((_%g5746557584%_ _%hd5747457578%_)
                           (_%g5746657586%_ _%hd5747157568%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%g5746657586%_)
                           (_%__kont9577395774%_
                            _%g5746557584%_
                            _%g5746657586%_)
                           (_%__kont9577595776%_
                            _%hd5747457578%_
                            _%hd5747157568%_))))))
              (if (gx#stx-pair? _%__stx9577095771%_)
                  (let ((_%e5746757554%_ (gx#syntax-e _%__stx9577095771%_)))
                    (let ((_%tl5746957561%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5746757554%_)))
                          (_%hd5746857558%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5746757554%_))))
                      (if (gx#stx-pair? _%tl5746957561%_)
                          (let ((_%e5747057564%_
                                 (gx#syntax-e _%tl5746957561%_)))
                            (let ((_%tl5747257571%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5747057564%_)))
                                  (_%hd5747157568%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5747057564%_))))
                              (if (gx#stx-pair? _%tl5747257571%_)
                                  (let ((_%e5747357574%_
                                         (gx#syntax-e _%tl5747257571%_)))
                                    (let ((_%tl5747557581%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5747357574%_)))
                                          (_%hd5747457578%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5747357574%_))))
                                      (if (gx#stx-null? _%tl5747557581%_)
                                          (_%__match9579795798%_
                                           _%e5746757554%_
                                           _%hd5746857558%_
                                           _%tl5746957561%_
                                           _%e5747057564%_
                                           _%hd5747157568%_
                                           _%tl5747257571%_
                                           _%e5747357574%_
                                           _%hd5747457578%_
                                           _%tl5747557581%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5746357492%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5746357492%_)))))
                          (let () (declare (not safe)) (_%g5746357492%_)))))
                  (let () (declare (not safe)) (_%g5746357492%_))))))))))
