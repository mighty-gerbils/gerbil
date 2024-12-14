(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~Using[1]#_g84127_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84128_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84129_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84132_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84133_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84136_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84137_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84138_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84139_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84143_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84144_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84145_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84146_|
    (##structure gx#syntax-quote::t '::- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~Using[1]#_g84150_|
    (##structure
     gx#syntax-quote::t
     '%%ref-dotted
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/contract~Using[:0:]#using|
      (lambda (_%stx46428%_)
        (let* ((_%__stx7855378554%_ _%stx46428%_)
               (_%g4643746646%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7855378554%_))))
          (let ((_%__kont7855678557%_
                 (lambda (_%L47552%_
                          _%L47554%_
                          _%L47555%_
                          _%L47556%_
                          _%L47557%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47557%_ (cons _%L47556%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47557%_
                                                       (cons _%L47555%_
                                                             (cons _%L47554%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4760047603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4760147606%_)
                  (cons _%g4760047603%_ _%g4760147606%_))
                '()
                _%L47552%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7856078561%_
                 (lambda (_%L47396%_
                          _%L47398%_
                          _%L47399%_
                          _%L47400%_
                          _%L47401%_
                          _%L47402%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons _%L47402%_ (cons _%L47401%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L47402%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              ':~)
                                                             (cons _%L47400%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'using)
                                                             (cons (cons _%L47402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L47399%_ (cons _%L47398%_ '())))
                           (foldr (lambda (_%g4744647449%_ _%g4744747452%_)
                                    (cons _%g4744647449%_ _%g4744747452%_))
                                  '()
                                  _%L47396%_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7856478565%_
                 (lambda (_%L47213%_ _%L47215%_ _%L47216%_ _%L47217%_)
                   (let ((_%meta47254%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx46428%_
                             _%L47215%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/contract~InterfaceInfo#interface-info::t
                            _%meta47254%_))
                         (cons (gx#datum->syntax '#f 'with-interface)
                               (cons (cons _%L47217%_
                                           (cons _%L47216%_
                                                 (cons _%L47215%_ '())))
                                     (foldr (lambda (_%g4725847261%_
                                                     _%g4725947264%_)
                                              (cons _%g4725847261%_
                                                    _%g4725947264%_))
                                            '()
                                            _%L47213%_)))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/mop~MOP-2#class-type-info::t
                                _%meta47254%_))
                             (cons (gx#datum->syntax '#f 'with-class)
                                   (cons (cons _%L47217%_
                                               (cons _%L47216%_
                                                     (cons _%L47215%_ '())))
                                         (foldr (lambda (_%g4726847271%_
                                                         _%g4726947274%_)
                                                  (cons _%g4726847271%_
                                                        _%g4726947274%_))
                                                '()
                                                _%L47213%_)))
                             (gx#raise-syntax-error
                              '#f
                              '"unexpected type; must be a class type or interface"
                              _%stx46428%_
                              _%L47215%_
                              _%meta47254%_))))))
                (_%__kont7856878569%_
                 (lambda (_%L47091%_ _%L47093%_ _%L47094%_)
                   (cons (gx#datum->syntax '#f 'with-contract)
                         (cons (cons _%L47094%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L47093%_ '())))
                               (foldr (lambda (_%g4711747120%_ _%g4711847123%_)
                                        (cons _%g4711747120%_ _%g4711847123%_))
                                      '()
                                      _%L47091%_)))))
                (_%__kont7857278573%_
                 (lambda (_%L46949%_
                          _%L46951%_
                          _%L46952%_
                          _%L46953%_
                          _%L46954%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L46954%_
                                     (cons (gx#datum->syntax '#f ':~)
                                           (cons _%L46953%_ '())))
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons (cons _%L46954%_
                                                       (cons _%L46952%_
                                                             (cons _%L46951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (foldr (lambda (_%g4699546998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4699647001%_)
                  (cons _%g4699546998%_ _%g4699647001%_))
                '()
                _%L46949%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7857678577%_
                 (lambda (_%L46807%_ _%L46809%_ _%L46810%_ _%L46811%_)
                   (cons (gx#datum->syntax '#f 'using)
                         (cons (cons _%L46811%_ _%L46810%_)
                               (cons (cons (gx#datum->syntax '#f 'using)
                                           (cons _%L46809%_
                                                 (foldr (lambda (_%g4683346836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g4683446839%_)
                  (cons _%g4683346836%_ _%g4683446839%_))
                '()
                _%L46807%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont7858078581%_
                 (lambda (_%L46703%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g4672146724%_ _%g4672246727%_)
                                        (cons _%g4672146724%_ _%g4672246727%_))
                                      '()
                                      _%L46703%_))))))
            (let* ((_%__match7888678887%_
                    (lambda (_%e4662646653%_
                             _%hd4662746657%_
                             _%tl4662846660%_
                             _%e4662946663%_
                             _%hd4663046667%_
                             _%tl4663146670%_
                             _%__splice7858278583%_
                             _%target4663246673%_
                             _%tl4663446676%_)
                      (letrec ((_%loop4663546679%_
                                (lambda (_%hd4663346683%_ _%body4663946686%_)
                                  (if (gx#stx-pair? _%hd4663346683%_)
                                      (let ((_%e4663646689%_
                                             (gx#syntax-e _%hd4663346683%_)))
                                        (let ((_%lp-tl4663846696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4663646689%_)))
                                              (_%lp-hd4663746693%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4663646689%_))))
                                          (_%loop4663546679%_
                                           _%lp-tl4663846696%_
                                           (cons _%lp-hd4663746693%_
                                                 _%body4663946686%_))))
                                      (let ((_%body4664046699%_
                                             (reverse _%body4663946686%_)))
                                        (_%__kont7858078581%_
                                         _%body4664046699%_))))))
                        (_%loop4663546679%_ _%target4663246673%_ '()))))
                   (_%__match7886478865%_
                    (lambda (_%e4660446737%_
                             _%hd4660546741%_
                             _%tl4660646744%_
                             _%e4660746747%_
                             _%hd4660846751%_
                             _%tl4660946754%_
                             _%e4661046757%_
                             _%hd4661146761%_
                             _%tl4661246764%_
                             _%e4661346767%_
                             _%hd4661446771%_
                             _%tl4661546774%_
                             _%__splice7857878579%_
                             _%target4661646777%_
                             _%tl4661846780%_)
                      (letrec ((_%loop4661946783%_
                                (lambda (_%hd4661746787%_ _%body4662346790%_)
                                  (if (gx#stx-pair? _%hd4661746787%_)
                                      (let ((_%e4662046793%_
                                             (gx#syntax-e _%hd4661746787%_)))
                                        (let ((_%lp-tl4662246800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4662046793%_)))
                                              (_%lp-hd4662146797%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4662046793%_))))
                                          (_%loop4661946783%_
                                           _%lp-tl4662246800%_
                                           (cons _%lp-hd4662146797%_
                                                 _%body4662346790%_))))
                                      (let ((_%body4662446803%_
                                             (reverse _%body4662346790%_)))
                                        (let ((_%L46807%_ _%body4662446803%_)
                                              (_%L46809%_ _%tl4661246764%_)
                                              (_%L46810%_ _%tl4661546774%_)
                                              (_%L46811%_ _%hd4661446771%_))
                                          (if (gx#identifier? _%L46811%_)
                                              (_%__kont7857678577%_
                                               _%L46807%_
                                               _%L46809%_
                                               _%L46810%_
                                               _%L46811%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4643746646%_)))))))))
                        (_%loop4661946783%_ _%target4661646777%_ '()))))
                   (_%__match7885078851%_
                    (lambda (_%e4660446737%_
                             _%hd4660546741%_
                             _%tl4660646744%_
                             _%e4660746747%_
                             _%hd4660846751%_
                             _%tl4660946754%_
                             _%e4661046757%_
                             _%hd4661146761%_
                             _%tl4661246764%_)
                      (if (gx#stx-pair? _%hd4661146761%_)
                          (let ((_%e4661346767%_
                                 (gx#syntax-e _%hd4661146761%_)))
                            (let ((_%tl4661546774%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4661346767%_)))
                                  (_%hd4661446771%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4661346767%_))))
                              (if (gx#stx-pair/null? _%tl4660946754%_)
                                  (let ((_%__splice7857878579%_
                                         (gx#syntax-split-splice
                                          _%tl4660946754%_
                                          '0)))
                                    (let ((_%tl4661846780%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7857878579%_
                                              '1)))
                                          (_%target4661646777%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7857878579%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4661846780%_)
                                          (_%__match7886478865%_
                                           _%e4660446737%_
                                           _%hd4660546741%_
                                           _%tl4660646744%_
                                           _%e4660746747%_
                                           _%hd4660846751%_
                                           _%tl4660946754%_
                                           _%e4661046757%_
                                           _%hd4661146761%_
                                           _%tl4661246764%_
                                           _%e4661346767%_
                                           _%hd4661446771%_
                                           _%tl4661546774%_
                                           _%__splice7857878579%_
                                           _%target4661646777%_
                                           _%tl4661846780%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4643746646%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4643746646%_)))))
                          (let () (declare (not safe)) (_%g4643746646%_)))))
                   (_%__match7883278833%_
                    (lambda (_%e4657046849%_
                             _%hd4657146853%_
                             _%tl4657246856%_
                             _%e4657346859%_
                             _%hd4657446863%_
                             _%tl4657546866%_
                             _%e4657646869%_
                             _%hd4657746873%_
                             _%tl4657846876%_
                             _%e4657946879%_
                             _%hd4658046883%_
                             _%tl4658146886%_
                             _%e4658246889%_
                             _%hd4658346893%_
                             _%tl4658446896%_
                             _%e4658546899%_
                             _%hd4658646903%_
                             _%tl4658746906%_
                             _%e4658846909%_
                             _%hd4658946913%_
                             _%tl4659046916%_
                             _%__splice7857478575%_
                             _%target4659146919%_
                             _%tl4659346922%_)
                      (letrec ((_%loop4659446925%_
                                (lambda (_%hd4659246929%_ _%body4659846932%_)
                                  (if (gx#stx-pair? _%hd4659246929%_)
                                      (let ((_%e4659546935%_
                                             (gx#syntax-e _%hd4659246929%_)))
                                        (let ((_%lp-tl4659746942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4659546935%_)))
                                              (_%lp-hd4659646939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4659546935%_))))
                                          (_%loop4659446925%_
                                           _%lp-tl4659746942%_
                                           (cons _%lp-hd4659646939%_
                                                 _%body4659846932%_))))
                                      (let ((_%body4659946945%_
                                             (reverse _%body4659846932%_)))
                                        (let ((_%L46949%_ _%body4659946945%_)
                                              (_%L46951%_ _%hd4658946913%_)
                                              (_%L46952%_ _%hd4658646903%_)
                                              (_%L46953%_ _%hd4658346893%_)
                                              (_%L46954%_ _%hd4657746873%_))
                                          (if (and (gx#identifier? _%L46954%_)
                                                   (gx#identifier? _%L46951%_)
                                                   (gx#identifier? _%L46952%_)
                                                   (or (gx#free-identifier=?
                                                        _%L46952%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L46952%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L46952%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L46952%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7857278573%_
                                               _%L46949%_
                                               _%L46951%_
                                               _%L46952%_
                                               _%L46953%_
                                               _%L46954%_)
                                              (_%__match7885078851%_
                                               _%e4657046849%_
                                               _%hd4657146853%_
                                               _%tl4657246856%_
                                               _%e4657346859%_
                                               _%hd4657446863%_
                                               _%tl4657546866%_
                                               _%e4657646869%_
                                               _%hd4657746873%_
                                               _%tl4657846876%_))))))))
                        (_%loop4659446925%_ _%target4659146919%_ '()))))
                   (_%__match7877678777%_
                    (lambda (_%e4654147011%_
                             _%hd4654247015%_
                             _%tl4654347018%_
                             _%e4654447021%_
                             _%hd4654547025%_
                             _%tl4654647028%_
                             _%e4654747031%_
                             _%hd4654847035%_
                             _%tl4654947038%_
                             _%e4655047041%_
                             _%hd4655147045%_
                             _%tl4655247048%_
                             _%e4655347051%_
                             _%hd4655447055%_
                             _%tl4655547058%_
                             _%__splice7857078571%_
                             _%target4655647061%_
                             _%tl4655847064%_)
                      (letrec ((_%loop4655947067%_
                                (lambda (_%hd4655747071%_ _%body4656347074%_)
                                  (if (gx#stx-pair? _%hd4655747071%_)
                                      (let ((_%e4656047077%_
                                             (gx#syntax-e _%hd4655747071%_)))
                                        (let ((_%lp-tl4656247084%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4656047077%_)))
                                              (_%lp-hd4656147081%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4656047077%_))))
                                          (_%loop4655947067%_
                                           _%lp-tl4656247084%_
                                           (cons _%lp-hd4656147081%_
                                                 _%body4656347074%_))))
                                      (let ((_%body4656447087%_
                                             (reverse _%body4656347074%_)))
                                        (let ((_%L47091%_ _%body4656447087%_)
                                              (_%L47093%_ _%hd4655447055%_)
                                              (_%L47094%_ _%hd4654847035%_))
                                          (if (gx#identifier? _%L47094%_)
                                              (_%__kont7856878569%_
                                               _%L47091%_
                                               _%L47093%_
                                               _%L47094%_)
                                              (_%__match7885078851%_
                                               _%e4654147011%_
                                               _%hd4654247015%_
                                               _%tl4654347018%_
                                               _%e4654447021%_
                                               _%hd4654547025%_
                                               _%tl4654647028%_
                                               _%e4654747031%_
                                               _%hd4654847035%_
                                               _%tl4654947038%_))))))))
                        (_%loop4655947067%_ _%target4655647061%_ '()))))
                   (_%__match7875678757%_
                    (lambda (_%e4654147011%_
                             _%hd4654247015%_
                             _%tl4654347018%_
                             _%e4654447021%_
                             _%hd4654547025%_
                             _%tl4654647028%_
                             _%e4654747031%_
                             _%hd4654847035%_
                             _%tl4654947038%_
                             _%e4655047041%_
                             _%hd4655147045%_
                             _%tl4655247048%_)
                      (if (gx#identifier? _%hd4655147045%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g84127_|
                               _%hd4655147045%_)
                              (if (gx#stx-pair? _%tl4655247048%_)
                                  (let ((_%e4655347051%_
                                         (gx#syntax-e _%tl4655247048%_)))
                                    (let ((_%tl4655547058%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4655347051%_)))
                                          (_%hd4655447055%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4655347051%_))))
                                      (if (gx#stx-null? _%tl4655547058%_)
                                          (if (gx#stx-pair/null?
                                               _%tl4654647028%_)
                                              (let ((_%__splice7857078571%_
                                                     (gx#syntax-split-splice
                                                      _%tl4654647028%_
                                                      '0)))
                                                (let ((_%tl4655847064%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7857078571%_
                                                          '1)))
                                                      (_%target4655647061%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7857078571%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4655847064%_)
                                                      (_%__match7877678777%_
                                                       _%e4654147011%_
                                                       _%hd4654247015%_
                                                       _%tl4654347018%_
                                                       _%e4654447021%_
                                                       _%hd4654547025%_
                                                       _%tl4654647028%_
                                                       _%e4654747031%_
                                                       _%hd4654847035%_
                                                       _%tl4654947038%_
                                                       _%e4655047041%_
                                                       _%hd4655147045%_
                                                       _%tl4655247048%_
                                                       _%e4655347051%_
                                                       _%hd4655447055%_
                                                       _%tl4655547058%_
                                                       _%__splice7857078571%_
                                                       _%target4655647061%_
                                                       _%tl4655847064%_)
                                                      (if (gx#stx-pair?
                                                           _%hd4654847035%_)
                                                          (let ((_%e4661346767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd4654847035%_)))
                    (let ((_%tl4661546774%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4661346767%_)))
                          (_%hd4661446771%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4661346767%_))))
                      (let () (declare (not safe)) (_%g4643746646%_))))
                  (let () (declare (not safe)) (_%g4643746646%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4654847035%_)
                                                  (let ((_%e4661346767%_
                                                         (gx#syntax-e
                                                          _%hd4654847035%_)))
                                                    (let ((_%tl4661546774%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4661346767%_)))
                                                          (_%hd4661446771%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4661346767%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4643746646%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4643746646%_))))
                                          (if (gx#stx-pair? _%tl4655547058%_)
                                              (let ((_%e4658546899%_
                                                     (gx#syntax-e
                                                      _%tl4655547058%_)))
                                                (let ((_%tl4658746906%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4658546899%_)))
                                                      (_%hd4658646903%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4658546899%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4658746906%_)
                                                      (let ((_%e4658846909%_
                                                             (gx#syntax-e
                                                              _%tl4658746906%_)))
                                                        (let ((_%tl4659046916%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4658846909%_)))
                      (_%hd4658946913%_
                       (let () (declare (not safe)) (##car _%e4658846909%_))))
                  (if (gx#stx-null? _%tl4659046916%_)
                      (if (gx#stx-pair/null? _%tl4654647028%_)
                          (let ((_%__splice7857478575%_
                                 (gx#syntax-split-splice _%tl4654647028%_ '0)))
                            (let ((_%tl4659346922%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7857478575%_ '1)))
                                  (_%target4659146919%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7857478575%_
                                      '0))))
                              (if (gx#stx-null? _%tl4659346922%_)
                                  (_%__match7883278833%_
                                   _%e4654147011%_
                                   _%hd4654247015%_
                                   _%tl4654347018%_
                                   _%e4654447021%_
                                   _%hd4654547025%_
                                   _%tl4654647028%_
                                   _%e4654747031%_
                                   _%hd4654847035%_
                                   _%tl4654947038%_
                                   _%e4655047041%_
                                   _%hd4655147045%_
                                   _%tl4655247048%_
                                   _%e4655347051%_
                                   _%hd4655447055%_
                                   _%tl4655547058%_
                                   _%e4658546899%_
                                   _%hd4658646903%_
                                   _%tl4658746906%_
                                   _%e4658846909%_
                                   _%hd4658946913%_
                                   _%tl4659046916%_
                                   _%__splice7857478575%_
                                   _%target4659146919%_
                                   _%tl4659346922%_)
                                  (if (gx#stx-pair? _%hd4654847035%_)
                                      (let ((_%e4661346767%_
                                             (gx#syntax-e _%hd4654847035%_)))
                                        (let ((_%tl4661546774%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4661346767%_)))
                                              (_%hd4661446771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4661346767%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4643746646%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4643746646%_))))))
                          (if (gx#stx-pair? _%hd4654847035%_)
                              (let ((_%e4661346767%_
                                     (gx#syntax-e _%hd4654847035%_)))
                                (let ((_%tl4661546774%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4661346767%_)))
                                      (_%hd4661446771%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4661346767%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4643746646%_))))
                              (let () (declare (not safe)) (_%g4643746646%_))))
                      (if (gx#stx-pair? _%hd4654847035%_)
                          (let ((_%e4661346767%_
                                 (gx#syntax-e _%hd4654847035%_)))
                            (let ((_%tl4661546774%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4661346767%_)))
                                  (_%hd4661446771%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4661346767%_))))
                              (if (gx#stx-pair/null? _%tl4654647028%_)
                                  (let ((_%__splice7857878579%_
                                         (gx#syntax-split-splice
                                          _%tl4654647028%_
                                          '0)))
                                    (let ((_%tl4661846780%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7857878579%_
                                              '1)))
                                          (_%target4661646777%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7857878579%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4661846780%_)
                                          (_%__match7886478865%_
                                           _%e4654147011%_
                                           _%hd4654247015%_
                                           _%tl4654347018%_
                                           _%e4654447021%_
                                           _%hd4654547025%_
                                           _%tl4654647028%_
                                           _%e4654747031%_
                                           _%hd4654847035%_
                                           _%tl4654947038%_
                                           _%e4661346767%_
                                           _%hd4661446771%_
                                           _%tl4661546774%_
                                           _%__splice7857878579%_
                                           _%target4661646777%_
                                           _%tl4661846780%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4643746646%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4643746646%_)))))
                          (let () (declare (not safe)) (_%g4643746646%_))))))
              (if (gx#stx-pair? _%hd4654847035%_)
                  (let ((_%e4661346767%_ (gx#syntax-e _%hd4654847035%_)))
                    (let ((_%tl4661546774%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4661346767%_)))
                          (_%hd4661446771%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4661346767%_))))
                      (if (gx#stx-pair/null? _%tl4654647028%_)
                          (let ((_%__splice7857878579%_
                                 (gx#syntax-split-splice _%tl4654647028%_ '0)))
                            (let ((_%tl4661846780%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7857878579%_ '1)))
                                  (_%target4661646777%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7857878579%_
                                      '0))))
                              (if (gx#stx-null? _%tl4661846780%_)
                                  (_%__match7886478865%_
                                   _%e4654147011%_
                                   _%hd4654247015%_
                                   _%tl4654347018%_
                                   _%e4654447021%_
                                   _%hd4654547025%_
                                   _%tl4654647028%_
                                   _%e4654747031%_
                                   _%hd4654847035%_
                                   _%tl4654947038%_
                                   _%e4661346767%_
                                   _%hd4661446771%_
                                   _%tl4661546774%_
                                   _%__splice7857878579%_
                                   _%target4661646777%_
                                   _%tl4661846780%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4643746646%_)))))
                          (let () (declare (not safe)) (_%g4643746646%_)))))
                  (let () (declare (not safe)) (_%g4643746646%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4654847035%_)
                                                  (let ((_%e4661346767%_
                                                         (gx#syntax-e
                                                          _%hd4654847035%_)))
                                                    (let ((_%tl4661546774%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4661346767%_)))
                                                          (_%hd4661446771%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4661346767%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4654647028%_)
                                                          (let ((_%__splice7857878579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4654647028%_ '0)))
                    (let ((_%tl4661846780%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7857878579%_ '1)))
                          (_%target4661646777%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7857878579%_ '0))))
                      (if (gx#stx-null? _%tl4661846780%_)
                          (_%__match7886478865%_
                           _%e4654147011%_
                           _%hd4654247015%_
                           _%tl4654347018%_
                           _%e4654447021%_
                           _%hd4654547025%_
                           _%tl4654647028%_
                           _%e4654747031%_
                           _%hd4654847035%_
                           _%tl4654947038%_
                           _%e4661346767%_
                           _%hd4661446771%_
                           _%tl4661546774%_
                           _%__splice7857878579%_
                           _%target4661646777%_
                           _%tl4661846780%_)
                          (let () (declare (not safe)) (_%g4643746646%_)))))
                  (let () (declare (not safe)) (_%g4643746646%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4643746646%_)))))))
                                  (if (gx#stx-pair? _%hd4654847035%_)
                                      (let ((_%e4661346767%_
                                             (gx#syntax-e _%hd4654847035%_)))
                                        (let ((_%tl4661546774%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4661346767%_)))
                                              (_%hd4661446771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4661346767%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4654647028%_)
                                              (let ((_%__splice7857878579%_
                                                     (gx#syntax-split-splice
                                                      _%tl4654647028%_
                                                      '0)))
                                                (let ((_%tl4661846780%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7857878579%_
                                                          '1)))
                                                      (_%target4661646777%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7857878579%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4661846780%_)
                                                      (_%__match7886478865%_
                                                       _%e4654147011%_
                                                       _%hd4654247015%_
                                                       _%tl4654347018%_
                                                       _%e4654447021%_
                                                       _%hd4654547025%_
                                                       _%tl4654647028%_
                                                       _%e4654747031%_
                                                       _%hd4654847035%_
                                                       _%tl4654947038%_
                                                       _%e4661346767%_
                                                       _%hd4661446771%_
                                                       _%tl4661546774%_
                                                       _%__splice7857878579%_
                                                       _%target4661646777%_
                                                       _%tl4661846780%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4643746646%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4643746646%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4643746646%_))))
                              (if (gx#stx-pair? _%hd4654847035%_)
                                  (let ((_%e4661346767%_
                                         (gx#syntax-e _%hd4654847035%_)))
                                    (let ((_%tl4661546774%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4661346767%_)))
                                          (_%hd4661446771%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4661346767%_))))
                                      (if (gx#stx-pair/null? _%tl4654647028%_)
                                          (let ((_%__splice7857878579%_
                                                 (gx#syntax-split-splice
                                                  _%tl4654647028%_
                                                  '0)))
                                            (let ((_%tl4661846780%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7857878579%_
                                                      '1)))
                                                  (_%target4661646777%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7857878579%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4661846780%_)
                                                  (_%__match7886478865%_
                                                   _%e4654147011%_
                                                   _%hd4654247015%_
                                                   _%tl4654347018%_
                                                   _%e4654447021%_
                                                   _%hd4654547025%_
                                                   _%tl4654647028%_
                                                   _%e4654747031%_
                                                   _%hd4654847035%_
                                                   _%tl4654947038%_
                                                   _%e4661346767%_
                                                   _%hd4661446771%_
                                                   _%tl4661546774%_
                                                   _%__splice7857878579%_
                                                   _%target4661646777%_
                                                   _%tl4661846780%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4643746646%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4643746646%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4643746646%_))))
                          (if (gx#stx-pair? _%hd4654847035%_)
                              (let ((_%e4661346767%_
                                     (gx#syntax-e _%hd4654847035%_)))
                                (let ((_%tl4661546774%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4661346767%_)))
                                      (_%hd4661446771%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4661346767%_))))
                                  (if (gx#stx-pair/null? _%tl4654647028%_)
                                      (let ((_%__splice7857878579%_
                                             (gx#syntax-split-splice
                                              _%tl4654647028%_
                                              '0)))
                                        (let ((_%tl4661846780%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7857878579%_
                                                  '1)))
                                              (_%target4661646777%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7857878579%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4661846780%_)
                                              (_%__match7886478865%_
                                               _%e4654147011%_
                                               _%hd4654247015%_
                                               _%tl4654347018%_
                                               _%e4654447021%_
                                               _%hd4654547025%_
                                               _%tl4654647028%_
                                               _%e4654747031%_
                                               _%hd4654847035%_
                                               _%tl4654947038%_
                                               _%e4661346767%_
                                               _%hd4661446771%_
                                               _%tl4661546774%_
                                               _%__splice7857878579%_
                                               _%target4661646777%_
                                               _%tl4661846780%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4643746646%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4643746646%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4643746646%_))))))
                   (_%__match7873278733%_
                    (lambda (_%e4651447133%_
                             _%hd4651547137%_
                             _%tl4651647140%_
                             _%e4651747143%_
                             _%hd4651847147%_
                             _%tl4651947150%_
                             _%e4652047153%_
                             _%hd4652147157%_
                             _%tl4652247160%_
                             _%e4652347163%_
                             _%hd4652447167%_
                             _%tl4652547170%_
                             _%e4652647173%_
                             _%hd4652747177%_
                             _%tl4652847180%_
                             _%__splice7856678567%_
                             _%target4652947183%_
                             _%tl4653147186%_)
                      (letrec ((_%loop4653247189%_
                                (lambda (_%hd4653047193%_ _%body4653647196%_)
                                  (if (gx#stx-pair? _%hd4653047193%_)
                                      (let ((_%e4653347199%_
                                             (gx#syntax-e _%hd4653047193%_)))
                                        (let ((_%lp-tl4653547206%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4653347199%_)))
                                              (_%lp-hd4653447203%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4653347199%_))))
                                          (_%loop4653247189%_
                                           _%lp-tl4653547206%_
                                           (cons _%lp-hd4653447203%_
                                                 _%body4653647196%_))))
                                      (let ((_%body4653747209%_
                                             (reverse _%body4653647196%_)))
                                        (let ((_%L47213%_ _%body4653747209%_)
                                              (_%L47215%_ _%hd4652747177%_)
                                              (_%L47216%_ _%hd4652447167%_)
                                              (_%L47217%_ _%hd4652147157%_))
                                          (if (and (gx#identifier? _%L47217%_)
                                                   (gx#identifier? _%L47215%_)
                                                   (gx#identifier? _%L47216%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47216%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47216%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47216%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47216%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7856478565%_
                                               _%L47213%_
                                               _%L47215%_
                                               _%L47216%_
                                               _%L47217%_)
                                              (_%__match7875678757%_
                                               _%e4651447133%_
                                               _%hd4651547137%_
                                               _%tl4651647140%_
                                               _%e4651747143%_
                                               _%hd4651847147%_
                                               _%tl4651947150%_
                                               _%e4652047153%_
                                               _%hd4652147157%_
                                               _%tl4652247160%_
                                               _%e4652347163%_
                                               _%hd4652447167%_
                                               _%tl4652547170%_))))))))
                        (_%loop4653247189%_ _%target4652947183%_ '()))))
                   (_%__match7869278693%_
                    (lambda (_%e4647747286%_
                             _%hd4647847290%_
                             _%tl4647947293%_
                             _%e4648047296%_
                             _%hd4648147300%_
                             _%tl4648247303%_
                             _%e4648347306%_
                             _%hd4648447310%_
                             _%tl4648547313%_
                             _%e4648647316%_
                             _%hd4648747320%_
                             _%tl4648847323%_
                             _%e4648947326%_
                             _%hd4649047330%_
                             _%tl4649147333%_
                             _%e4649247336%_
                             _%hd4649347340%_
                             _%tl4649447343%_
                             _%e4649547346%_
                             _%hd4649647350%_
                             _%tl4649747353%_
                             _%e4649847356%_
                             _%hd4649947360%_
                             _%tl4650047363%_
                             _%__splice7856278563%_
                             _%target4650147366%_
                             _%tl4650347369%_)
                      (letrec ((_%loop4650447372%_
                                (lambda (_%hd4650247376%_ _%body4650847379%_)
                                  (if (gx#stx-pair? _%hd4650247376%_)
                                      (let ((_%e4650547382%_
                                             (gx#syntax-e _%hd4650247376%_)))
                                        (let ((_%lp-tl4650747389%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4650547382%_)))
                                              (_%lp-hd4650647386%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4650547382%_))))
                                          (_%loop4650447372%_
                                           _%lp-tl4650747389%_
                                           (cons _%lp-hd4650647386%_
                                                 _%body4650847379%_))))
                                      (let ((_%body4650947392%_
                                             (reverse _%body4650847379%_)))
                                        (let ((_%L47396%_ _%body4650947392%_)
                                              (_%L47398%_ _%hd4649947360%_)
                                              (_%L47399%_ _%hd4649647350%_)
                                              (_%L47400%_ _%hd4649347340%_)
                                              (_%L47401%_ _%hd4648747320%_)
                                              (_%L47402%_ _%hd4648447310%_))
                                          (if (and (gx#identifier? _%L47402%_)
                                                   (gx#identifier? _%L47398%_)
                                                   (gx#identifier? _%L47399%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47399%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47399%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47399%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47399%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7856078561%_
                                               _%L47396%_
                                               _%L47398%_
                                               _%L47399%_
                                               _%L47400%_
                                               _%L47401%_
                                               _%L47402%_)
                                              (_%__match7875678757%_
                                               _%e4647747286%_
                                               _%hd4647847290%_
                                               _%tl4647947293%_
                                               _%e4648047296%_
                                               _%hd4648147300%_
                                               _%tl4648247303%_
                                               _%e4648347306%_
                                               _%hd4648447310%_
                                               _%tl4648547313%_
                                               _%e4648647316%_
                                               _%hd4648747320%_
                                               _%tl4648847323%_))))))))
                        (_%loop4650447372%_ _%target4650147366%_ '()))))
                   (_%__match7866078661%_
                    (lambda (_%e4647747286%_
                             _%hd4647847290%_
                             _%tl4647947293%_
                             _%e4648047296%_
                             _%hd4648147300%_
                             _%tl4648247303%_
                             _%e4648347306%_
                             _%hd4648447310%_
                             _%tl4648547313%_
                             _%e4648647316%_
                             _%hd4648747320%_
                             _%tl4648847323%_
                             _%e4648947326%_
                             _%hd4649047330%_
                             _%tl4649147333%_)
                      (if (gx#identifier? _%hd4649047330%_)
                          (if (gx#free-identifier=?
                               |gerbil/core/contract~Using[1]#_g84128_|
                               _%hd4649047330%_)
                              (if (gx#stx-pair? _%tl4649147333%_)
                                  (let ((_%e4649247336%_
                                         (gx#syntax-e _%tl4649147333%_)))
                                    (let ((_%tl4649447343%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4649247336%_)))
                                          (_%hd4649347340%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4649247336%_))))
                                      (if (gx#stx-pair? _%tl4649447343%_)
                                          (let ((_%e4649547346%_
                                                 (gx#syntax-e
                                                  _%tl4649447343%_)))
                                            (let ((_%tl4649747353%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4649547346%_)))
                                                  (_%hd4649647350%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4649547346%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4649747353%_)
                                                  (let ((_%e4649847356%_
                                                         (gx#syntax-e
                                                          _%tl4649747353%_)))
                                                    (let ((_%tl4650047363%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4649847356%_)))
                                                          (_%hd4649947360%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4649847356%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4650047363%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4648247303%_)
                                                              (let ((_%__splice7856278563%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4648247303%_ '0)))
                        (let ((_%tl4650347369%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7856278563%_ '1)))
                              (_%target4650147366%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7856278563%_ '0))))
                          (if (gx#stx-null? _%tl4650347369%_)
                              (_%__match7869278693%_
                               _%e4647747286%_
                               _%hd4647847290%_
                               _%tl4647947293%_
                               _%e4648047296%_
                               _%hd4648147300%_
                               _%tl4648247303%_
                               _%e4648347306%_
                               _%hd4648447310%_
                               _%tl4648547313%_
                               _%e4648647316%_
                               _%hd4648747320%_
                               _%tl4648847323%_
                               _%e4648947326%_
                               _%hd4649047330%_
                               _%tl4649147333%_
                               _%e4649247336%_
                               _%hd4649347340%_
                               _%tl4649447343%_
                               _%e4649547346%_
                               _%hd4649647350%_
                               _%tl4649747353%_
                               _%e4649847356%_
                               _%hd4649947360%_
                               _%tl4650047363%_
                               _%__splice7856278563%_
                               _%target4650147366%_
                               _%tl4650347369%_)
                              (if (gx#stx-pair? _%hd4648447310%_)
                                  (let ((_%e4661346767%_
                                         (gx#syntax-e _%hd4648447310%_)))
                                    (let ((_%tl4661546774%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4661346767%_)))
                                          (_%hd4661446771%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4661346767%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4643746646%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4643746646%_))))))
                      (if (gx#stx-pair? _%hd4648447310%_)
                          (let ((_%e4661346767%_
                                 (gx#syntax-e _%hd4648447310%_)))
                            (let ((_%tl4661546774%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4661346767%_)))
                                  (_%hd4661446771%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4661346767%_))))
                              (let () (declare (not safe)) (_%g4643746646%_))))
                          (let () (declare (not safe)) (_%g4643746646%_))))
                  (if (gx#stx-pair? _%hd4648447310%_)
                      (let ((_%e4661346767%_ (gx#syntax-e _%hd4648447310%_)))
                        (let ((_%tl4661546774%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4661346767%_)))
                              (_%hd4661446771%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4661346767%_))))
                          (if (gx#stx-pair/null? _%tl4648247303%_)
                              (let ((_%__splice7857878579%_
                                     (gx#syntax-split-splice
                                      _%tl4648247303%_
                                      '0)))
                                (let ((_%tl4661846780%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7857878579%_
                                          '1)))
                                      (_%target4661646777%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7857878579%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4661846780%_)
                                      (_%__match7886478865%_
                                       _%e4647747286%_
                                       _%hd4647847290%_
                                       _%tl4647947293%_
                                       _%e4648047296%_
                                       _%hd4648147300%_
                                       _%tl4648247303%_
                                       _%e4648347306%_
                                       _%hd4648447310%_
                                       _%tl4648547313%_
                                       _%e4661346767%_
                                       _%hd4661446771%_
                                       _%tl4661546774%_
                                       _%__splice7857878579%_
                                       _%target4661646777%_
                                       _%tl4661846780%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4643746646%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4643746646%_)))))
                      (let () (declare (not safe)) (_%g4643746646%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#identifier?
                                                       _%hd4648747320%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g84127_|
                                                           _%hd4648747320%_)
                                                          (if (gx#stx-null?
                                                               _%tl4649747353%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl4648247303%_)
                          (let ((_%__splice7857478575%_
                                 (gx#syntax-split-splice _%tl4648247303%_ '0)))
                            (let ((_%tl4659346922%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7857478575%_ '1)))
                                  (_%target4659146919%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7857478575%_
                                      '0))))
                              (if (gx#stx-null? _%tl4659346922%_)
                                  (_%__match7883278833%_
                                   _%e4647747286%_
                                   _%hd4647847290%_
                                   _%tl4647947293%_
                                   _%e4648047296%_
                                   _%hd4648147300%_
                                   _%tl4648247303%_
                                   _%e4648347306%_
                                   _%hd4648447310%_
                                   _%tl4648547313%_
                                   _%e4648647316%_
                                   _%hd4648747320%_
                                   _%tl4648847323%_
                                   _%e4648947326%_
                                   _%hd4649047330%_
                                   _%tl4649147333%_
                                   _%e4649247336%_
                                   _%hd4649347340%_
                                   _%tl4649447343%_
                                   _%e4649547346%_
                                   _%hd4649647350%_
                                   _%tl4649747353%_
                                   _%__splice7857478575%_
                                   _%target4659146919%_
                                   _%tl4659346922%_)
                                  (if (gx#stx-pair? _%hd4648447310%_)
                                      (let ((_%e4661346767%_
                                             (gx#syntax-e _%hd4648447310%_)))
                                        (let ((_%tl4661546774%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4661346767%_)))
                                              (_%hd4661446771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4661346767%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4643746646%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4643746646%_))))))
                          (if (gx#stx-pair? _%hd4648447310%_)
                              (let ((_%e4661346767%_
                                     (gx#syntax-e _%hd4648447310%_)))
                                (let ((_%tl4661546774%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4661346767%_)))
                                      (_%hd4661446771%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4661346767%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4643746646%_))))
                              (let () (declare (not safe)) (_%g4643746646%_))))
                      (if (gx#stx-pair? _%hd4648447310%_)
                          (let ((_%e4661346767%_
                                 (gx#syntax-e _%hd4648447310%_)))
                            (let ((_%tl4661546774%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4661346767%_)))
                                  (_%hd4661446771%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4661346767%_))))
                              (if (gx#stx-pair/null? _%tl4648247303%_)
                                  (let ((_%__splice7857878579%_
                                         (gx#syntax-split-splice
                                          _%tl4648247303%_
                                          '0)))
                                    (let ((_%tl4661846780%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7857878579%_
                                              '1)))
                                          (_%target4661646777%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7857878579%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4661846780%_)
                                          (_%__match7886478865%_
                                           _%e4647747286%_
                                           _%hd4647847290%_
                                           _%tl4647947293%_
                                           _%e4648047296%_
                                           _%hd4648147300%_
                                           _%tl4648247303%_
                                           _%e4648347306%_
                                           _%hd4648447310%_
                                           _%tl4648547313%_
                                           _%e4661346767%_
                                           _%hd4661446771%_
                                           _%tl4661546774%_
                                           _%__splice7857878579%_
                                           _%target4661646777%_
                                           _%tl4661846780%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4643746646%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4643746646%_)))))
                          (let () (declare (not safe)) (_%g4643746646%_))))
                  (if (gx#stx-pair? _%hd4648447310%_)
                      (let ((_%e4661346767%_ (gx#syntax-e _%hd4648447310%_)))
                        (let ((_%tl4661546774%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4661346767%_)))
                              (_%hd4661446771%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4661346767%_))))
                          (if (gx#stx-pair/null? _%tl4648247303%_)
                              (let ((_%__splice7857878579%_
                                     (gx#syntax-split-splice
                                      _%tl4648247303%_
                                      '0)))
                                (let ((_%tl4661846780%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7857878579%_
                                          '1)))
                                      (_%target4661646777%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7857878579%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4661846780%_)
                                      (_%__match7886478865%_
                                       _%e4647747286%_
                                       _%hd4647847290%_
                                       _%tl4647947293%_
                                       _%e4648047296%_
                                       _%hd4648147300%_
                                       _%tl4648247303%_
                                       _%e4648347306%_
                                       _%hd4648447310%_
                                       _%tl4648547313%_
                                       _%e4661346767%_
                                       _%hd4661446771%_
                                       _%tl4661546774%_
                                       _%__splice7857878579%_
                                       _%target4661646777%_
                                       _%tl4661846780%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4643746646%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4643746646%_)))))
                      (let () (declare (not safe)) (_%g4643746646%_))))
              (if (gx#stx-pair? _%hd4648447310%_)
                  (let ((_%e4661346767%_ (gx#syntax-e _%hd4648447310%_)))
                    (let ((_%tl4661546774%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4661346767%_)))
                          (_%hd4661446771%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4661346767%_))))
                      (if (gx#stx-pair/null? _%tl4648247303%_)
                          (let ((_%__splice7857878579%_
                                 (gx#syntax-split-splice _%tl4648247303%_ '0)))
                            (let ((_%tl4661846780%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7857878579%_ '1)))
                                  (_%target4661646777%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7857878579%_
                                      '0))))
                              (if (gx#stx-null? _%tl4661846780%_)
                                  (_%__match7886478865%_
                                   _%e4647747286%_
                                   _%hd4647847290%_
                                   _%tl4647947293%_
                                   _%e4648047296%_
                                   _%hd4648147300%_
                                   _%tl4648247303%_
                                   _%e4648347306%_
                                   _%hd4648447310%_
                                   _%tl4648547313%_
                                   _%e4661346767%_
                                   _%hd4661446771%_
                                   _%tl4661546774%_
                                   _%__splice7857878579%_
                                   _%target4661646777%_
                                   _%tl4661846780%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4643746646%_)))))
                          (let () (declare (not safe)) (_%g4643746646%_)))))
                  (let () (declare (not safe)) (_%g4643746646%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4648447310%_)
                                              (let ((_%e4661346767%_
                                                     (gx#syntax-e
                                                      _%hd4648447310%_)))
                                                (let ((_%tl4661546774%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4661346767%_)))
                                                      (_%hd4661446771%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4661346767%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4648247303%_)
                                                      (let ((_%__splice7857878579%_
                                                             (gx#syntax-split-splice
                                                              _%tl4648247303%_
                                                              '0)))
                                                        (let ((_%tl4661846780%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7857878579%_ '1)))
                      (_%target4661646777%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7857878579%_ '0))))
                  (if (gx#stx-null? _%tl4661846780%_)
                      (_%__match7886478865%_
                       _%e4647747286%_
                       _%hd4647847290%_
                       _%tl4647947293%_
                       _%e4648047296%_
                       _%hd4648147300%_
                       _%tl4648247303%_
                       _%e4648347306%_
                       _%hd4648447310%_
                       _%tl4648547313%_
                       _%e4661346767%_
                       _%hd4661446771%_
                       _%tl4661546774%_
                       _%__splice7857878579%_
                       _%target4661646777%_
                       _%tl4661846780%_)
                      (let () (declare (not safe)) (_%g4643746646%_)))))
              (let () (declare (not safe)) (_%g4643746646%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4643746646%_))))))
                                  (if (gx#stx-null? _%tl4649147333%_)
                                      (if (gx#stx-pair/null? _%tl4648247303%_)
                                          (let ((_%__splice7856678567%_
                                                 (gx#syntax-split-splice
                                                  _%tl4648247303%_
                                                  '0)))
                                            (let ((_%tl4653147186%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7856678567%_
                                                      '1)))
                                                  (_%target4652947183%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7856678567%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4653147186%_)
                                                  (_%__match7873278733%_
                                                   _%e4647747286%_
                                                   _%hd4647847290%_
                                                   _%tl4647947293%_
                                                   _%e4648047296%_
                                                   _%hd4648147300%_
                                                   _%tl4648247303%_
                                                   _%e4648347306%_
                                                   _%hd4648447310%_
                                                   _%tl4648547313%_
                                                   _%e4648647316%_
                                                   _%hd4648747320%_
                                                   _%tl4648847323%_
                                                   _%e4648947326%_
                                                   _%hd4649047330%_
                                                   _%tl4649147333%_
                                                   _%__splice7856678567%_
                                                   _%target4652947183%_
                                                   _%tl4653147186%_)
                                                  (if (gx#stx-pair?
                                                       _%hd4648447310%_)
                                                      (let ((_%e4661346767%_
                                                             (gx#syntax-e
                                                              _%hd4648447310%_)))
                                                        (let ((_%tl4661546774%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4661346767%_)))
                      (_%hd4661446771%_
                       (let () (declare (not safe)) (##car _%e4661346767%_))))
                  (let () (declare (not safe)) (_%g4643746646%_))))
              (let () (declare (not safe)) (_%g4643746646%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4648447310%_)
                                              (let ((_%e4661346767%_
                                                     (gx#syntax-e
                                                      _%hd4648447310%_)))
                                                (let ((_%tl4661546774%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4661346767%_)))
                                                      (_%hd4661446771%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4661346767%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4643746646%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4643746646%_))))
                                      (if (gx#stx-pair? _%hd4648447310%_)
                                          (let ((_%e4661346767%_
                                                 (gx#syntax-e
                                                  _%hd4648447310%_)))
                                            (let ((_%tl4661546774%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4661346767%_)))
                                                  (_%hd4661446771%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4661346767%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4648247303%_)
                                                  (let ((_%__splice7857878579%_
                                                         (gx#syntax-split-splice
                                                          _%tl4648247303%_
                                                          '0)))
                                                    (let ((_%tl4661846780%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7857878579%_
                                                              '1)))
                                                          (_%target4661646777%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7857878579%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4661846780%_)
                                                          (_%__match7886478865%_
                                                           _%e4647747286%_
                                                           _%hd4647847290%_
                                                           _%tl4647947293%_
                                                           _%e4648047296%_
                                                           _%hd4648147300%_
                                                           _%tl4648247303%_
                                                           _%e4648347306%_
                                                           _%hd4648447310%_
                                                           _%tl4648547313%_
                                                           _%e4661346767%_
                                                           _%hd4661446771%_
                                                           _%tl4661546774%_
                                                           _%__splice7857878579%_
                                                           _%target4661646777%_
                                                           _%tl4661846780%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4643746646%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4643746646%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4643746646%_)))))
                              (if (gx#stx-null? _%tl4649147333%_)
                                  (if (gx#stx-pair/null? _%tl4648247303%_)
                                      (let ((_%__splice7856678567%_
                                             (gx#syntax-split-splice
                                              _%tl4648247303%_
                                              '0)))
                                        (let ((_%tl4653147186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7856678567%_
                                                  '1)))
                                              (_%target4652947183%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7856678567%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl4653147186%_)
                                              (_%__match7873278733%_
                                               _%e4647747286%_
                                               _%hd4647847290%_
                                               _%tl4647947293%_
                                               _%e4648047296%_
                                               _%hd4648147300%_
                                               _%tl4648247303%_
                                               _%e4648347306%_
                                               _%hd4648447310%_
                                               _%tl4648547313%_
                                               _%e4648647316%_
                                               _%hd4648747320%_
                                               _%tl4648847323%_
                                               _%e4648947326%_
                                               _%hd4649047330%_
                                               _%tl4649147333%_
                                               _%__splice7856678567%_
                                               _%target4652947183%_
                                               _%tl4653147186%_)
                                              (if (gx#stx-pair?
                                                   _%hd4648447310%_)
                                                  (let ((_%e4661346767%_
                                                         (gx#syntax-e
                                                          _%hd4648447310%_)))
                                                    (let ((_%tl4661546774%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4661346767%_)))
                                                          (_%hd4661446771%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4661346767%_))))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4643746646%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4643746646%_))))))
                                      (if (gx#stx-pair? _%hd4648447310%_)
                                          (let ((_%e4661346767%_
                                                 (gx#syntax-e
                                                  _%hd4648447310%_)))
                                            (let ((_%tl4661546774%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4661346767%_)))
                                                  (_%hd4661446771%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4661346767%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4643746646%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4643746646%_))))
                                  (if (gx#identifier? _%hd4648747320%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g84127_|
                                           _%hd4648747320%_)
                                          (if (gx#stx-pair? _%tl4649147333%_)
                                              (let ((_%e4658546899%_
                                                     (gx#syntax-e
                                                      _%tl4649147333%_)))
                                                (let ((_%tl4658746906%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4658546899%_)))
                                                      (_%hd4658646903%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4658546899%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl4658746906%_)
                                                      (let ((_%e4658846909%_
                                                             (gx#syntax-e
                                                              _%tl4658746906%_)))
                                                        (let ((_%tl4659046916%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4658846909%_)))
                      (_%hd4658946913%_
                       (let () (declare (not safe)) (##car _%e4658846909%_))))
                  (if (gx#stx-null? _%tl4659046916%_)
                      (if (gx#stx-pair/null? _%tl4648247303%_)
                          (let ((_%__splice7857478575%_
                                 (gx#syntax-split-splice _%tl4648247303%_ '0)))
                            (let ((_%tl4659346922%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7857478575%_ '1)))
                                  (_%target4659146919%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7857478575%_
                                      '0))))
                              (if (gx#stx-null? _%tl4659346922%_)
                                  (_%__match7883278833%_
                                   _%e4647747286%_
                                   _%hd4647847290%_
                                   _%tl4647947293%_
                                   _%e4648047296%_
                                   _%hd4648147300%_
                                   _%tl4648247303%_
                                   _%e4648347306%_
                                   _%hd4648447310%_
                                   _%tl4648547313%_
                                   _%e4648647316%_
                                   _%hd4648747320%_
                                   _%tl4648847323%_
                                   _%e4648947326%_
                                   _%hd4649047330%_
                                   _%tl4649147333%_
                                   _%e4658546899%_
                                   _%hd4658646903%_
                                   _%tl4658746906%_
                                   _%e4658846909%_
                                   _%hd4658946913%_
                                   _%tl4659046916%_
                                   _%__splice7857478575%_
                                   _%target4659146919%_
                                   _%tl4659346922%_)
                                  (if (gx#stx-pair? _%hd4648447310%_)
                                      (let ((_%e4661346767%_
                                             (gx#syntax-e _%hd4648447310%_)))
                                        (let ((_%tl4661546774%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4661346767%_)))
                                              (_%hd4661446771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4661346767%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4643746646%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4643746646%_))))))
                          (if (gx#stx-pair? _%hd4648447310%_)
                              (let ((_%e4661346767%_
                                     (gx#syntax-e _%hd4648447310%_)))
                                (let ((_%tl4661546774%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4661346767%_)))
                                      (_%hd4661446771%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4661346767%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4643746646%_))))
                              (let () (declare (not safe)) (_%g4643746646%_))))
                      (if (gx#stx-pair? _%hd4648447310%_)
                          (let ((_%e4661346767%_
                                 (gx#syntax-e _%hd4648447310%_)))
                            (let ((_%tl4661546774%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4661346767%_)))
                                  (_%hd4661446771%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4661346767%_))))
                              (if (gx#stx-pair/null? _%tl4648247303%_)
                                  (let ((_%__splice7857878579%_
                                         (gx#syntax-split-splice
                                          _%tl4648247303%_
                                          '0)))
                                    (let ((_%tl4661846780%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7857878579%_
                                              '1)))
                                          (_%target4661646777%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7857878579%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4661846780%_)
                                          (_%__match7886478865%_
                                           _%e4647747286%_
                                           _%hd4647847290%_
                                           _%tl4647947293%_
                                           _%e4648047296%_
                                           _%hd4648147300%_
                                           _%tl4648247303%_
                                           _%e4648347306%_
                                           _%hd4648447310%_
                                           _%tl4648547313%_
                                           _%e4661346767%_
                                           _%hd4661446771%_
                                           _%tl4661546774%_
                                           _%__splice7857878579%_
                                           _%target4661646777%_
                                           _%tl4661846780%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4643746646%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4643746646%_)))))
                          (let () (declare (not safe)) (_%g4643746646%_))))))
              (if (gx#stx-pair? _%hd4648447310%_)
                  (let ((_%e4661346767%_ (gx#syntax-e _%hd4648447310%_)))
                    (let ((_%tl4661546774%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4661346767%_)))
                          (_%hd4661446771%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4661346767%_))))
                      (if (gx#stx-pair/null? _%tl4648247303%_)
                          (let ((_%__splice7857878579%_
                                 (gx#syntax-split-splice _%tl4648247303%_ '0)))
                            (let ((_%tl4661846780%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7857878579%_ '1)))
                                  (_%target4661646777%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7857878579%_
                                      '0))))
                              (if (gx#stx-null? _%tl4661846780%_)
                                  (_%__match7886478865%_
                                   _%e4647747286%_
                                   _%hd4647847290%_
                                   _%tl4647947293%_
                                   _%e4648047296%_
                                   _%hd4648147300%_
                                   _%tl4648247303%_
                                   _%e4648347306%_
                                   _%hd4648447310%_
                                   _%tl4648547313%_
                                   _%e4661346767%_
                                   _%hd4661446771%_
                                   _%tl4661546774%_
                                   _%__splice7857878579%_
                                   _%target4661646777%_
                                   _%tl4661846780%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4643746646%_)))))
                          (let () (declare (not safe)) (_%g4643746646%_)))))
                  (let () (declare (not safe)) (_%g4643746646%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4648447310%_)
                                                  (let ((_%e4661346767%_
                                                         (gx#syntax-e
                                                          _%hd4648447310%_)))
                                                    (let ((_%tl4661546774%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4661346767%_)))
                                                          (_%hd4661446771%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4661346767%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4648247303%_)
                                                          (let ((_%__splice7857878579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4648247303%_ '0)))
                    (let ((_%tl4661846780%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7857878579%_ '1)))
                          (_%target4661646777%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7857878579%_ '0))))
                      (if (gx#stx-null? _%tl4661846780%_)
                          (_%__match7886478865%_
                           _%e4647747286%_
                           _%hd4647847290%_
                           _%tl4647947293%_
                           _%e4648047296%_
                           _%hd4648147300%_
                           _%tl4648247303%_
                           _%e4648347306%_
                           _%hd4648447310%_
                           _%tl4648547313%_
                           _%e4661346767%_
                           _%hd4661446771%_
                           _%tl4661546774%_
                           _%__splice7857878579%_
                           _%target4661646777%_
                           _%tl4661846780%_)
                          (let () (declare (not safe)) (_%g4643746646%_)))))
                  (let () (declare (not safe)) (_%g4643746646%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4643746646%_))))
                                          (if (gx#stx-pair? _%hd4648447310%_)
                                              (let ((_%e4661346767%_
                                                     (gx#syntax-e
                                                      _%hd4648447310%_)))
                                                (let ((_%tl4661546774%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4661346767%_)))
                                                      (_%hd4661446771%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4661346767%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4648247303%_)
                                                      (let ((_%__splice7857878579%_
                                                             (gx#syntax-split-splice
                                                              _%tl4648247303%_
                                                              '0)))
                                                        (let ((_%tl4661846780%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7857878579%_ '1)))
                      (_%target4661646777%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7857878579%_ '0))))
                  (if (gx#stx-null? _%tl4661846780%_)
                      (_%__match7886478865%_
                       _%e4647747286%_
                       _%hd4647847290%_
                       _%tl4647947293%_
                       _%e4648047296%_
                       _%hd4648147300%_
                       _%tl4648247303%_
                       _%e4648347306%_
                       _%hd4648447310%_
                       _%tl4648547313%_
                       _%e4661346767%_
                       _%hd4661446771%_
                       _%tl4661546774%_
                       _%__splice7857878579%_
                       _%target4661646777%_
                       _%tl4661846780%_)
                      (let () (declare (not safe)) (_%g4643746646%_)))))
              (let () (declare (not safe)) (_%g4643746646%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4643746646%_))))
                                      (if (gx#stx-pair? _%hd4648447310%_)
                                          (let ((_%e4661346767%_
                                                 (gx#syntax-e
                                                  _%hd4648447310%_)))
                                            (let ((_%tl4661546774%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4661346767%_)))
                                                  (_%hd4661446771%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4661346767%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4648247303%_)
                                                  (let ((_%__splice7857878579%_
                                                         (gx#syntax-split-splice
                                                          _%tl4648247303%_
                                                          '0)))
                                                    (let ((_%tl4661846780%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7857878579%_
                                                              '1)))
                                                          (_%target4661646777%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7857878579%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4661846780%_)
                                                          (_%__match7886478865%_
                                                           _%e4647747286%_
                                                           _%hd4647847290%_
                                                           _%tl4647947293%_
                                                           _%e4648047296%_
                                                           _%hd4648147300%_
                                                           _%tl4648247303%_
                                                           _%e4648347306%_
                                                           _%hd4648447310%_
                                                           _%tl4648547313%_
                                                           _%e4661346767%_
                                                           _%hd4661446771%_
                                                           _%tl4661546774%_
                                                           _%__splice7857878579%_
                                                           _%target4661646777%_
                                                           _%tl4661846780%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4643746646%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4643746646%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4643746646%_))))))
                          (if (gx#stx-null? _%tl4649147333%_)
                              (if (gx#stx-pair/null? _%tl4648247303%_)
                                  (let ((_%__splice7856678567%_
                                         (gx#syntax-split-splice
                                          _%tl4648247303%_
                                          '0)))
                                    (let ((_%tl4653147186%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7856678567%_
                                              '1)))
                                          (_%target4652947183%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7856678567%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4653147186%_)
                                          (_%__match7873278733%_
                                           _%e4647747286%_
                                           _%hd4647847290%_
                                           _%tl4647947293%_
                                           _%e4648047296%_
                                           _%hd4648147300%_
                                           _%tl4648247303%_
                                           _%e4648347306%_
                                           _%hd4648447310%_
                                           _%tl4648547313%_
                                           _%e4648647316%_
                                           _%hd4648747320%_
                                           _%tl4648847323%_
                                           _%e4648947326%_
                                           _%hd4649047330%_
                                           _%tl4649147333%_
                                           _%__splice7856678567%_
                                           _%target4652947183%_
                                           _%tl4653147186%_)
                                          (if (gx#stx-pair? _%hd4648447310%_)
                                              (let ((_%e4661346767%_
                                                     (gx#syntax-e
                                                      _%hd4648447310%_)))
                                                (let ((_%tl4661546774%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4661346767%_)))
                                                      (_%hd4661446771%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4661346767%_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4643746646%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4643746646%_))))))
                                  (if (gx#stx-pair? _%hd4648447310%_)
                                      (let ((_%e4661346767%_
                                             (gx#syntax-e _%hd4648447310%_)))
                                        (let ((_%tl4661546774%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4661346767%_)))
                                              (_%hd4661446771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4661346767%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4643746646%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4643746646%_))))
                              (if (gx#identifier? _%hd4648747320%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g84127_|
                                       _%hd4648747320%_)
                                      (if (gx#stx-pair? _%tl4649147333%_)
                                          (let ((_%e4658546899%_
                                                 (gx#syntax-e
                                                  _%tl4649147333%_)))
                                            (let ((_%tl4658746906%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4658546899%_)))
                                                  (_%hd4658646903%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4658546899%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4658746906%_)
                                                  (let ((_%e4658846909%_
                                                         (gx#syntax-e
                                                          _%tl4658746906%_)))
                                                    (let ((_%tl4659046916%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4658846909%_)))
                                                          (_%hd4658946913%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4658846909%_))))
                                                      (if (gx#stx-null?
                                                           _%tl4659046916%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4648247303%_)
                                                              (let ((_%__splice7857478575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4648247303%_ '0)))
                        (let ((_%tl4659346922%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7857478575%_ '1)))
                              (_%target4659146919%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7857478575%_ '0))))
                          (if (gx#stx-null? _%tl4659346922%_)
                              (_%__match7883278833%_
                               _%e4647747286%_
                               _%hd4647847290%_
                               _%tl4647947293%_
                               _%e4648047296%_
                               _%hd4648147300%_
                               _%tl4648247303%_
                               _%e4648347306%_
                               _%hd4648447310%_
                               _%tl4648547313%_
                               _%e4648647316%_
                               _%hd4648747320%_
                               _%tl4648847323%_
                               _%e4648947326%_
                               _%hd4649047330%_
                               _%tl4649147333%_
                               _%e4658546899%_
                               _%hd4658646903%_
                               _%tl4658746906%_
                               _%e4658846909%_
                               _%hd4658946913%_
                               _%tl4659046916%_
                               _%__splice7857478575%_
                               _%target4659146919%_
                               _%tl4659346922%_)
                              (if (gx#stx-pair? _%hd4648447310%_)
                                  (let ((_%e4661346767%_
                                         (gx#syntax-e _%hd4648447310%_)))
                                    (let ((_%tl4661546774%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4661346767%_)))
                                          (_%hd4661446771%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4661346767%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4643746646%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4643746646%_))))))
                      (if (gx#stx-pair? _%hd4648447310%_)
                          (let ((_%e4661346767%_
                                 (gx#syntax-e _%hd4648447310%_)))
                            (let ((_%tl4661546774%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4661346767%_)))
                                  (_%hd4661446771%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4661346767%_))))
                              (let () (declare (not safe)) (_%g4643746646%_))))
                          (let () (declare (not safe)) (_%g4643746646%_))))
                  (if (gx#stx-pair? _%hd4648447310%_)
                      (let ((_%e4661346767%_ (gx#syntax-e _%hd4648447310%_)))
                        (let ((_%tl4661546774%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4661346767%_)))
                              (_%hd4661446771%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4661346767%_))))
                          (if (gx#stx-pair/null? _%tl4648247303%_)
                              (let ((_%__splice7857878579%_
                                     (gx#syntax-split-splice
                                      _%tl4648247303%_
                                      '0)))
                                (let ((_%tl4661846780%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7857878579%_
                                          '1)))
                                      (_%target4661646777%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7857878579%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4661846780%_)
                                      (_%__match7886478865%_
                                       _%e4647747286%_
                                       _%hd4647847290%_
                                       _%tl4647947293%_
                                       _%e4648047296%_
                                       _%hd4648147300%_
                                       _%tl4648247303%_
                                       _%e4648347306%_
                                       _%hd4648447310%_
                                       _%tl4648547313%_
                                       _%e4661346767%_
                                       _%hd4661446771%_
                                       _%tl4661546774%_
                                       _%__splice7857878579%_
                                       _%target4661646777%_
                                       _%tl4661846780%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4643746646%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4643746646%_)))))
                      (let () (declare (not safe)) (_%g4643746646%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4648447310%_)
                                                      (let ((_%e4661346767%_
                                                             (gx#syntax-e
                                                              _%hd4648447310%_)))
                                                        (let ((_%tl4661546774%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4661346767%_)))
                      (_%hd4661446771%_
                       (let () (declare (not safe)) (##car _%e4661346767%_))))
                  (if (gx#stx-pair/null? _%tl4648247303%_)
                      (let ((_%__splice7857878579%_
                             (gx#syntax-split-splice _%tl4648247303%_ '0)))
                        (let ((_%tl4661846780%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7857878579%_ '1)))
                              (_%target4661646777%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7857878579%_ '0))))
                          (if (gx#stx-null? _%tl4661846780%_)
                              (_%__match7886478865%_
                               _%e4647747286%_
                               _%hd4647847290%_
                               _%tl4647947293%_
                               _%e4648047296%_
                               _%hd4648147300%_
                               _%tl4648247303%_
                               _%e4648347306%_
                               _%hd4648447310%_
                               _%tl4648547313%_
                               _%e4661346767%_
                               _%hd4661446771%_
                               _%tl4661546774%_
                               _%__splice7857878579%_
                               _%target4661646777%_
                               _%tl4661846780%_)
                              (let ()
                                (declare (not safe))
                                (_%g4643746646%_)))))
                      (let () (declare (not safe)) (_%g4643746646%_)))))
              (let () (declare (not safe)) (_%g4643746646%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4648447310%_)
                                              (let ((_%e4661346767%_
                                                     (gx#syntax-e
                                                      _%hd4648447310%_)))
                                                (let ((_%tl4661546774%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4661346767%_)))
                                                      (_%hd4661446771%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4661346767%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4648247303%_)
                                                      (let ((_%__splice7857878579%_
                                                             (gx#syntax-split-splice
                                                              _%tl4648247303%_
                                                              '0)))
                                                        (let ((_%tl4661846780%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7857878579%_ '1)))
                      (_%target4661646777%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7857878579%_ '0))))
                  (if (gx#stx-null? _%tl4661846780%_)
                      (_%__match7886478865%_
                       _%e4647747286%_
                       _%hd4647847290%_
                       _%tl4647947293%_
                       _%e4648047296%_
                       _%hd4648147300%_
                       _%tl4648247303%_
                       _%e4648347306%_
                       _%hd4648447310%_
                       _%tl4648547313%_
                       _%e4661346767%_
                       _%hd4661446771%_
                       _%tl4661546774%_
                       _%__splice7857878579%_
                       _%target4661646777%_
                       _%tl4661846780%_)
                      (let () (declare (not safe)) (_%g4643746646%_)))))
              (let () (declare (not safe)) (_%g4643746646%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4643746646%_))))
                                      (if (gx#stx-pair? _%hd4648447310%_)
                                          (let ((_%e4661346767%_
                                                 (gx#syntax-e
                                                  _%hd4648447310%_)))
                                            (let ((_%tl4661546774%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4661346767%_)))
                                                  (_%hd4661446771%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4661346767%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4648247303%_)
                                                  (let ((_%__splice7857878579%_
                                                         (gx#syntax-split-splice
                                                          _%tl4648247303%_
                                                          '0)))
                                                    (let ((_%tl4661846780%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7857878579%_
                                                              '1)))
                                                          (_%target4661646777%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7857878579%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4661846780%_)
                                                          (_%__match7886478865%_
                                                           _%e4647747286%_
                                                           _%hd4647847290%_
                                                           _%tl4647947293%_
                                                           _%e4648047296%_
                                                           _%hd4648147300%_
                                                           _%tl4648247303%_
                                                           _%e4648347306%_
                                                           _%hd4648447310%_
                                                           _%tl4648547313%_
                                                           _%e4661346767%_
                                                           _%hd4661446771%_
                                                           _%tl4661546774%_
                                                           _%__splice7857878579%_
                                                           _%target4661646777%_
                                                           _%tl4661846780%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4643746646%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4643746646%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4643746646%_))))
                                  (if (gx#stx-pair? _%hd4648447310%_)
                                      (let ((_%e4661346767%_
                                             (gx#syntax-e _%hd4648447310%_)))
                                        (let ((_%tl4661546774%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4661346767%_)))
                                              (_%hd4661446771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4661346767%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4648247303%_)
                                              (let ((_%__splice7857878579%_
                                                     (gx#syntax-split-splice
                                                      _%tl4648247303%_
                                                      '0)))
                                                (let ((_%tl4661846780%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7857878579%_
                                                          '1)))
                                                      (_%target4661646777%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7857878579%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4661846780%_)
                                                      (_%__match7886478865%_
                                                       _%e4647747286%_
                                                       _%hd4647847290%_
                                                       _%tl4647947293%_
                                                       _%e4648047296%_
                                                       _%hd4648147300%_
                                                       _%tl4648247303%_
                                                       _%e4648347306%_
                                                       _%hd4648447310%_
                                                       _%tl4648547313%_
                                                       _%e4661346767%_
                                                       _%hd4661446771%_
                                                       _%tl4661546774%_
                                                       _%__splice7857878579%_
                                                       _%target4661646777%_
                                                       _%tl4661846780%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4643746646%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4643746646%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4643746646%_))))))))
                   (_%__match7863078631%_
                    (lambda (_%e4644447462%_
                             _%hd4644547466%_
                             _%tl4644647469%_
                             _%e4644747472%_
                             _%hd4644847476%_
                             _%tl4644947479%_
                             _%e4645047482%_
                             _%hd4645147486%_
                             _%tl4645247489%_
                             _%e4645347492%_
                             _%hd4645447496%_
                             _%tl4645547499%_
                             _%e4645647502%_
                             _%hd4645747506%_
                             _%tl4645847509%_
                             _%e4645947512%_
                             _%hd4646047516%_
                             _%tl4646147519%_
                             _%__splice7855878559%_
                             _%target4646247522%_
                             _%tl4646447525%_)
                      (letrec ((_%loop4646547528%_
                                (lambda (_%hd4646347532%_ _%body4646947535%_)
                                  (if (gx#stx-pair? _%hd4646347532%_)
                                      (let ((_%e4646647538%_
                                             (gx#syntax-e _%hd4646347532%_)))
                                        (let ((_%lp-tl4646847545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4646647538%_)))
                                              (_%lp-hd4646747542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4646647538%_))))
                                          (_%loop4646547528%_
                                           _%lp-tl4646847545%_
                                           (cons _%lp-hd4646747542%_
                                                 _%body4646947535%_))))
                                      (let ((_%body4647047548%_
                                             (reverse _%body4646947535%_)))
                                        (let ((_%L47552%_ _%body4647047548%_)
                                              (_%L47554%_ _%hd4646047516%_)
                                              (_%L47555%_ _%hd4645747506%_)
                                              (_%L47556%_ _%hd4645447496%_)
                                              (_%L47557%_ _%hd4645147486%_))
                                          (if (and (gx#identifier? _%L47557%_)
                                                   (gx#identifier? _%L47555%_)
                                                   (or (gx#free-identifier=?
                                                        _%L47555%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':))
                                                       (gx#free-identifier=?
                                                        _%L47555%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':-))
                                                       (gx#free-identifier=?
                                                        _%L47555%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         '::-))
                                                       (gx#free-identifier=?
                                                        _%L47555%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':~))
                                                       (gx#free-identifier=?
                                                        _%L47555%_
                                                        (gx#datum->syntax
                                                         '#f
                                                         ':?))))
                                              (_%__kont7855678557%_
                                               _%L47552%_
                                               _%L47554%_
                                               _%L47555%_
                                               _%L47556%_
                                               _%L47557%_)
                                              (_%__match7866078661%_
                                               _%e4644447462%_
                                               _%hd4644547466%_
                                               _%tl4644647469%_
                                               _%e4644747472%_
                                               _%hd4644847476%_
                                               _%tl4644947479%_
                                               _%e4645047482%_
                                               _%hd4645147486%_
                                               _%tl4645247489%_
                                               _%e4645347492%_
                                               _%hd4645447496%_
                                               _%tl4645547499%_
                                               _%e4645647502%_
                                               _%hd4645747506%_
                                               _%tl4645847509%_))))))))
                        (_%loop4646547528%_ _%target4646247522%_ '())))))
              (if (gx#stx-pair? _%__stx7855378554%_)
                  (let ((_%e4644447462%_ (gx#syntax-e _%__stx7855378554%_)))
                    (let ((_%tl4644647469%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4644447462%_)))
                          (_%hd4644547466%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4644447462%_))))
                      (if (gx#stx-pair? _%tl4644647469%_)
                          (let ((_%e4644747472%_
                                 (gx#syntax-e _%tl4644647469%_)))
                            (let ((_%tl4644947479%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4644747472%_)))
                                  (_%hd4644847476%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4644747472%_))))
                              (if (gx#stx-pair? _%hd4644847476%_)
                                  (let ((_%e4645047482%_
                                         (gx#syntax-e _%hd4644847476%_)))
                                    (let ((_%tl4645247489%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4645047482%_)))
                                          (_%hd4645147486%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4645047482%_))))
                                      (if (gx#stx-pair? _%tl4645247489%_)
                                          (let ((_%e4645347492%_
                                                 (gx#syntax-e
                                                  _%tl4645247489%_)))
                                            (let ((_%tl4645547499%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4645347492%_)))
                                                  (_%hd4645447496%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4645347492%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4645547499%_)
                                                  (let ((_%e4645647502%_
                                                         (gx#syntax-e
                                                          _%tl4645547499%_)))
                                                    (let ((_%tl4645847509%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4645647502%_)))
                                                          (_%hd4645747506%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4645647502%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4645847509%_)
                                                          (let ((_%e4645947512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4645847509%_)))
                    (let ((_%tl4646147519%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4645947512%_)))
                          (_%hd4646047516%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4645947512%_))))
                      (if (gx#stx-null? _%tl4646147519%_)
                          (if (gx#stx-pair/null? _%tl4644947479%_)
                              (let ((_%__splice7855878559%_
                                     (gx#syntax-split-splice
                                      _%tl4644947479%_
                                      '0)))
                                (let ((_%tl4646447525%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7855878559%_
                                          '1)))
                                      (_%target4646247522%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7855878559%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4646447525%_)
                                      (_%__match7863078631%_
                                       _%e4644447462%_
                                       _%hd4644547466%_
                                       _%tl4644647469%_
                                       _%e4644747472%_
                                       _%hd4644847476%_
                                       _%tl4644947479%_
                                       _%e4645047482%_
                                       _%hd4645147486%_
                                       _%tl4645247489%_
                                       _%e4645347492%_
                                       _%hd4645447496%_
                                       _%tl4645547499%_
                                       _%e4645647502%_
                                       _%hd4645747506%_
                                       _%tl4645847509%_
                                       _%e4645947512%_
                                       _%hd4646047516%_
                                       _%tl4646147519%_
                                       _%__splice7855878559%_
                                       _%target4646247522%_
                                       _%tl4646447525%_)
                                      (if (gx#stx-pair? _%hd4645147486%_)
                                          (let ((_%e4661346767%_
                                                 (gx#syntax-e
                                                  _%hd4645147486%_)))
                                            (let ((_%tl4661546774%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4661346767%_)))
                                                  (_%hd4661446771%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4661346767%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4643746646%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4643746646%_))))))
                              (if (gx#stx-pair? _%hd4645147486%_)
                                  (let ((_%e4661346767%_
                                         (gx#syntax-e _%hd4645147486%_)))
                                    (let ((_%tl4661546774%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4661346767%_)))
                                          (_%hd4661446771%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4661346767%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4643746646%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4643746646%_))))
                          (if (gx#identifier? _%hd4645747506%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~Using[1]#_g84128_|
                                   _%hd4645747506%_)
                                  (if (gx#stx-pair? _%tl4646147519%_)
                                      (let ((_%e4649547346%_
                                             (gx#syntax-e _%tl4646147519%_)))
                                        (let ((_%tl4649747353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4649547346%_)))
                                              (_%hd4649647350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4649547346%_))))
                                          (if (gx#stx-pair? _%tl4649747353%_)
                                              (let ((_%e4649847356%_
                                                     (gx#syntax-e
                                                      _%tl4649747353%_)))
                                                (let ((_%tl4650047363%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4649847356%_)))
                                                      (_%hd4649947360%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4649847356%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4650047363%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4644947479%_)
                                                          (let ((_%__splice7856278563%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4644947479%_ '0)))
                    (let ((_%tl4650347369%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7856278563%_ '1)))
                          (_%target4650147366%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7856278563%_ '0))))
                      (if (gx#stx-null? _%tl4650347369%_)
                          (_%__match7869278693%_
                           _%e4644447462%_
                           _%hd4644547466%_
                           _%tl4644647469%_
                           _%e4644747472%_
                           _%hd4644847476%_
                           _%tl4644947479%_
                           _%e4645047482%_
                           _%hd4645147486%_
                           _%tl4645247489%_
                           _%e4645347492%_
                           _%hd4645447496%_
                           _%tl4645547499%_
                           _%e4645647502%_
                           _%hd4645747506%_
                           _%tl4645847509%_
                           _%e4645947512%_
                           _%hd4646047516%_
                           _%tl4646147519%_
                           _%e4649547346%_
                           _%hd4649647350%_
                           _%tl4649747353%_
                           _%e4649847356%_
                           _%hd4649947360%_
                           _%tl4650047363%_
                           _%__splice7856278563%_
                           _%target4650147366%_
                           _%tl4650347369%_)
                          (if (gx#stx-pair? _%hd4645147486%_)
                              (let ((_%e4661346767%_
                                     (gx#syntax-e _%hd4645147486%_)))
                                (let ((_%tl4661546774%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4661346767%_)))
                                      (_%hd4661446771%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4661346767%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4643746646%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4643746646%_))))))
                  (if (gx#stx-pair? _%hd4645147486%_)
                      (let ((_%e4661346767%_ (gx#syntax-e _%hd4645147486%_)))
                        (let ((_%tl4661546774%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4661346767%_)))
                              (_%hd4661446771%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4661346767%_))))
                          (let () (declare (not safe)) (_%g4643746646%_))))
                      (let () (declare (not safe)) (_%g4643746646%_))))
              (if (gx#stx-pair? _%hd4645147486%_)
                  (let ((_%e4661346767%_ (gx#syntax-e _%hd4645147486%_)))
                    (let ((_%tl4661546774%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4661346767%_)))
                          (_%hd4661446771%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4661346767%_))))
                      (if (gx#stx-pair/null? _%tl4644947479%_)
                          (let ((_%__splice7857878579%_
                                 (gx#syntax-split-splice _%tl4644947479%_ '0)))
                            (let ((_%tl4661846780%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7857878579%_ '1)))
                                  (_%target4661646777%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7857878579%_
                                      '0))))
                              (if (gx#stx-null? _%tl4661846780%_)
                                  (_%__match7886478865%_
                                   _%e4644447462%_
                                   _%hd4644547466%_
                                   _%tl4644647469%_
                                   _%e4644747472%_
                                   _%hd4644847476%_
                                   _%tl4644947479%_
                                   _%e4645047482%_
                                   _%hd4645147486%_
                                   _%tl4645247489%_
                                   _%e4661346767%_
                                   _%hd4661446771%_
                                   _%tl4661546774%_
                                   _%__splice7857878579%_
                                   _%target4661646777%_
                                   _%tl4661846780%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4643746646%_)))))
                          (let () (declare (not safe)) (_%g4643746646%_)))))
                  (let () (declare (not safe)) (_%g4643746646%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#identifier?
                                                   _%hd4645447496%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~Using[1]#_g84127_|
                                                       _%hd4645447496%_)
                                                      (if (gx#stx-null?
                                                           _%tl4649747353%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl4644947479%_)
                                                              (let ((_%__splice7857478575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _%tl4644947479%_ '0)))
                        (let ((_%tl4659346922%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7857478575%_ '1)))
                              (_%target4659146919%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7857478575%_ '0))))
                          (if (gx#stx-null? _%tl4659346922%_)
                              (_%__match7883278833%_
                               _%e4644447462%_
                               _%hd4644547466%_
                               _%tl4644647469%_
                               _%e4644747472%_
                               _%hd4644847476%_
                               _%tl4644947479%_
                               _%e4645047482%_
                               _%hd4645147486%_
                               _%tl4645247489%_
                               _%e4645347492%_
                               _%hd4645447496%_
                               _%tl4645547499%_
                               _%e4645647502%_
                               _%hd4645747506%_
                               _%tl4645847509%_
                               _%e4645947512%_
                               _%hd4646047516%_
                               _%tl4646147519%_
                               _%e4649547346%_
                               _%hd4649647350%_
                               _%tl4649747353%_
                               _%__splice7857478575%_
                               _%target4659146919%_
                               _%tl4659346922%_)
                              (if (gx#stx-pair? _%hd4645147486%_)
                                  (let ((_%e4661346767%_
                                         (gx#syntax-e _%hd4645147486%_)))
                                    (let ((_%tl4661546774%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4661346767%_)))
                                          (_%hd4661446771%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4661346767%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4643746646%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4643746646%_))))))
                      (if (gx#stx-pair? _%hd4645147486%_)
                          (let ((_%e4661346767%_
                                 (gx#syntax-e _%hd4645147486%_)))
                            (let ((_%tl4661546774%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4661346767%_)))
                                  (_%hd4661446771%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4661346767%_))))
                              (let () (declare (not safe)) (_%g4643746646%_))))
                          (let () (declare (not safe)) (_%g4643746646%_))))
                  (if (gx#stx-pair? _%hd4645147486%_)
                      (let ((_%e4661346767%_ (gx#syntax-e _%hd4645147486%_)))
                        (let ((_%tl4661546774%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4661346767%_)))
                              (_%hd4661446771%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4661346767%_))))
                          (if (gx#stx-pair/null? _%tl4644947479%_)
                              (let ((_%__splice7857878579%_
                                     (gx#syntax-split-splice
                                      _%tl4644947479%_
                                      '0)))
                                (let ((_%tl4661846780%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7857878579%_
                                          '1)))
                                      (_%target4661646777%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7857878579%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4661846780%_)
                                      (_%__match7886478865%_
                                       _%e4644447462%_
                                       _%hd4644547466%_
                                       _%tl4644647469%_
                                       _%e4644747472%_
                                       _%hd4644847476%_
                                       _%tl4644947479%_
                                       _%e4645047482%_
                                       _%hd4645147486%_
                                       _%tl4645247489%_
                                       _%e4661346767%_
                                       _%hd4661446771%_
                                       _%tl4661546774%_
                                       _%__splice7857878579%_
                                       _%target4661646777%_
                                       _%tl4661846780%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4643746646%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4643746646%_)))))
                      (let () (declare (not safe)) (_%g4643746646%_))))
              (if (gx#stx-pair? _%hd4645147486%_)
                  (let ((_%e4661346767%_ (gx#syntax-e _%hd4645147486%_)))
                    (let ((_%tl4661546774%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4661346767%_)))
                          (_%hd4661446771%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4661346767%_))))
                      (if (gx#stx-pair/null? _%tl4644947479%_)
                          (let ((_%__splice7857878579%_
                                 (gx#syntax-split-splice _%tl4644947479%_ '0)))
                            (let ((_%tl4661846780%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7857878579%_ '1)))
                                  (_%target4661646777%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7857878579%_
                                      '0))))
                              (if (gx#stx-null? _%tl4661846780%_)
                                  (_%__match7886478865%_
                                   _%e4644447462%_
                                   _%hd4644547466%_
                                   _%tl4644647469%_
                                   _%e4644747472%_
                                   _%hd4644847476%_
                                   _%tl4644947479%_
                                   _%e4645047482%_
                                   _%hd4645147486%_
                                   _%tl4645247489%_
                                   _%e4661346767%_
                                   _%hd4661446771%_
                                   _%tl4661546774%_
                                   _%__splice7857878579%_
                                   _%target4661646777%_
                                   _%tl4661846780%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4643746646%_)))))
                          (let () (declare (not safe)) (_%g4643746646%_)))))
                  (let () (declare (not safe)) (_%g4643746646%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4645147486%_)
                                                      (let ((_%e4661346767%_
                                                             (gx#syntax-e
                                                              _%hd4645147486%_)))
                                                        (let ((_%tl4661546774%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4661346767%_)))
                      (_%hd4661446771%_
                       (let () (declare (not safe)) (##car _%e4661346767%_))))
                  (if (gx#stx-pair/null? _%tl4644947479%_)
                      (let ((_%__splice7857878579%_
                             (gx#syntax-split-splice _%tl4644947479%_ '0)))
                        (let ((_%tl4661846780%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7857878579%_ '1)))
                              (_%target4661646777%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7857878579%_ '0))))
                          (if (gx#stx-null? _%tl4661846780%_)
                              (_%__match7886478865%_
                               _%e4644447462%_
                               _%hd4644547466%_
                               _%tl4644647469%_
                               _%e4644747472%_
                               _%hd4644847476%_
                               _%tl4644947479%_
                               _%e4645047482%_
                               _%hd4645147486%_
                               _%tl4645247489%_
                               _%e4661346767%_
                               _%hd4661446771%_
                               _%tl4661546774%_
                               _%__splice7857878579%_
                               _%target4661646777%_
                               _%tl4661846780%_)
                              (let ()
                                (declare (not safe))
                                (_%g4643746646%_)))))
                      (let () (declare (not safe)) (_%g4643746646%_)))))
              (let () (declare (not safe)) (_%g4643746646%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _%hd4645147486%_)
                                          (let ((_%e4661346767%_
                                                 (gx#syntax-e
                                                  _%hd4645147486%_)))
                                            (let ((_%tl4661546774%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4661346767%_)))
                                                  (_%hd4661446771%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4661346767%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4644947479%_)
                                                  (let ((_%__splice7857878579%_
                                                         (gx#syntax-split-splice
                                                          _%tl4644947479%_
                                                          '0)))
                                                    (let ((_%tl4661846780%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7857878579%_
                                                              '1)))
                                                          (_%target4661646777%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7857878579%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4661846780%_)
                                                          (_%__match7886478865%_
                                                           _%e4644447462%_
                                                           _%hd4644547466%_
                                                           _%tl4644647469%_
                                                           _%e4644747472%_
                                                           _%hd4644847476%_
                                                           _%tl4644947479%_
                                                           _%e4645047482%_
                                                           _%hd4645147486%_
                                                           _%tl4645247489%_
                                                           _%e4661346767%_
                                                           _%hd4661446771%_
                                                           _%tl4661546774%_
                                                           _%__splice7857878579%_
                                                           _%target4661646777%_
                                                           _%tl4661846780%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4643746646%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4643746646%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4643746646%_))))
                                  (if (gx#identifier? _%hd4645447496%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g84127_|
                                           _%hd4645447496%_)
                                          (if (gx#stx-pair? _%tl4646147519%_)
                                              (let ((_%e4658846909%_
                                                     (gx#syntax-e
                                                      _%tl4646147519%_)))
                                                (let ((_%tl4659046916%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4658846909%_)))
                                                      (_%hd4658946913%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4658846909%_))))
                                                  (if (gx#stx-null?
                                                       _%tl4659046916%_)
                                                      (if (gx#stx-pair/null?
                                                           _%tl4644947479%_)
                                                          (let ((_%__splice7857478575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4644947479%_ '0)))
                    (let ((_%tl4659346922%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7857478575%_ '1)))
                          (_%target4659146919%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7857478575%_ '0))))
                      (if (gx#stx-null? _%tl4659346922%_)
                          (_%__match7883278833%_
                           _%e4644447462%_
                           _%hd4644547466%_
                           _%tl4644647469%_
                           _%e4644747472%_
                           _%hd4644847476%_
                           _%tl4644947479%_
                           _%e4645047482%_
                           _%hd4645147486%_
                           _%tl4645247489%_
                           _%e4645347492%_
                           _%hd4645447496%_
                           _%tl4645547499%_
                           _%e4645647502%_
                           _%hd4645747506%_
                           _%tl4645847509%_
                           _%e4645947512%_
                           _%hd4646047516%_
                           _%tl4646147519%_
                           _%e4658846909%_
                           _%hd4658946913%_
                           _%tl4659046916%_
                           _%__splice7857478575%_
                           _%target4659146919%_
                           _%tl4659346922%_)
                          (if (gx#stx-pair? _%hd4645147486%_)
                              (let ((_%e4661346767%_
                                     (gx#syntax-e _%hd4645147486%_)))
                                (let ((_%tl4661546774%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4661346767%_)))
                                      (_%hd4661446771%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4661346767%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4643746646%_))))
                              (let ()
                                (declare (not safe))
                                (_%g4643746646%_))))))
                  (if (gx#stx-pair? _%hd4645147486%_)
                      (let ((_%e4661346767%_ (gx#syntax-e _%hd4645147486%_)))
                        (let ((_%tl4661546774%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4661346767%_)))
                              (_%hd4661446771%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4661346767%_))))
                          (let () (declare (not safe)) (_%g4643746646%_))))
                      (let () (declare (not safe)) (_%g4643746646%_))))
              (if (gx#stx-pair? _%hd4645147486%_)
                  (let ((_%e4661346767%_ (gx#syntax-e _%hd4645147486%_)))
                    (let ((_%tl4661546774%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4661346767%_)))
                          (_%hd4661446771%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4661346767%_))))
                      (if (gx#stx-pair/null? _%tl4644947479%_)
                          (let ((_%__splice7857878579%_
                                 (gx#syntax-split-splice _%tl4644947479%_ '0)))
                            (let ((_%tl4661846780%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7857878579%_ '1)))
                                  (_%target4661646777%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7857878579%_
                                      '0))))
                              (if (gx#stx-null? _%tl4661846780%_)
                                  (_%__match7886478865%_
                                   _%e4644447462%_
                                   _%hd4644547466%_
                                   _%tl4644647469%_
                                   _%e4644747472%_
                                   _%hd4644847476%_
                                   _%tl4644947479%_
                                   _%e4645047482%_
                                   _%hd4645147486%_
                                   _%tl4645247489%_
                                   _%e4661346767%_
                                   _%hd4661446771%_
                                   _%tl4661546774%_
                                   _%__splice7857878579%_
                                   _%target4661646777%_
                                   _%tl4661846780%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4643746646%_)))))
                          (let () (declare (not safe)) (_%g4643746646%_)))))
                  (let () (declare (not safe)) (_%g4643746646%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair?
                                                   _%hd4645147486%_)
                                                  (let ((_%e4661346767%_
                                                         (gx#syntax-e
                                                          _%hd4645147486%_)))
                                                    (let ((_%tl4661546774%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4661346767%_)))
                                                          (_%hd4661446771%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4661346767%_))))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4644947479%_)
                                                          (let ((_%__splice7857878579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%tl4644947479%_ '0)))
                    (let ((_%tl4661846780%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7857878579%_ '1)))
                          (_%target4661646777%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7857878579%_ '0))))
                      (if (gx#stx-null? _%tl4661846780%_)
                          (_%__match7886478865%_
                           _%e4644447462%_
                           _%hd4644547466%_
                           _%tl4644647469%_
                           _%e4644747472%_
                           _%hd4644847476%_
                           _%tl4644947479%_
                           _%e4645047482%_
                           _%hd4645147486%_
                           _%tl4645247489%_
                           _%e4661346767%_
                           _%hd4661446771%_
                           _%tl4661546774%_
                           _%__splice7857878579%_
                           _%target4661646777%_
                           _%tl4661846780%_)
                          (let () (declare (not safe)) (_%g4643746646%_)))))
                  (let () (declare (not safe)) (_%g4643746646%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4643746646%_))))
                                          (if (gx#stx-pair? _%hd4645147486%_)
                                              (let ((_%e4661346767%_
                                                     (gx#syntax-e
                                                      _%hd4645147486%_)))
                                                (let ((_%tl4661546774%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4661346767%_)))
                                                      (_%hd4661446771%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4661346767%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4644947479%_)
                                                      (let ((_%__splice7857878579%_
                                                             (gx#syntax-split-splice
                                                              _%tl4644947479%_
                                                              '0)))
                                                        (let ((_%tl4661846780%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7857878579%_ '1)))
                      (_%target4661646777%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7857878579%_ '0))))
                  (if (gx#stx-null? _%tl4661846780%_)
                      (_%__match7886478865%_
                       _%e4644447462%_
                       _%hd4644547466%_
                       _%tl4644647469%_
                       _%e4644747472%_
                       _%hd4644847476%_
                       _%tl4644947479%_
                       _%e4645047482%_
                       _%hd4645147486%_
                       _%tl4645247489%_
                       _%e4661346767%_
                       _%hd4661446771%_
                       _%tl4661546774%_
                       _%__splice7857878579%_
                       _%target4661646777%_
                       _%tl4661846780%_)
                      (let () (declare (not safe)) (_%g4643746646%_)))))
              (let () (declare (not safe)) (_%g4643746646%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4643746646%_))))
                                      (if (gx#stx-pair? _%hd4645147486%_)
                                          (let ((_%e4661346767%_
                                                 (gx#syntax-e
                                                  _%hd4645147486%_)))
                                            (let ((_%tl4661546774%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4661346767%_)))
                                                  (_%hd4661446771%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4661346767%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4644947479%_)
                                                  (let ((_%__splice7857878579%_
                                                         (gx#syntax-split-splice
                                                          _%tl4644947479%_
                                                          '0)))
                                                    (let ((_%tl4661846780%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7857878579%_
                                                              '1)))
                                                          (_%target4661646777%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7857878579%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4661846780%_)
                                                          (_%__match7886478865%_
                                                           _%e4644447462%_
                                                           _%hd4644547466%_
                                                           _%tl4644647469%_
                                                           _%e4644747472%_
                                                           _%hd4644847476%_
                                                           _%tl4644947479%_
                                                           _%e4645047482%_
                                                           _%hd4645147486%_
                                                           _%tl4645247489%_
                                                           _%e4661346767%_
                                                           _%hd4661446771%_
                                                           _%tl4661546774%_
                                                           _%__splice7857878579%_
                                                           _%target4661646777%_
                                                           _%tl4661846780%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4643746646%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4643746646%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4643746646%_)))))
                              (if (gx#identifier? _%hd4645447496%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g84127_|
                                       _%hd4645447496%_)
                                      (if (gx#stx-pair? _%tl4646147519%_)
                                          (let ((_%e4658846909%_
                                                 (gx#syntax-e
                                                  _%tl4646147519%_)))
                                            (let ((_%tl4659046916%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4658846909%_)))
                                                  (_%hd4658946913%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4658846909%_))))
                                              (if (gx#stx-null?
                                                   _%tl4659046916%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl4644947479%_)
                                                      (let ((_%__splice7857478575%_
                                                             (gx#syntax-split-splice
                                                              _%tl4644947479%_
                                                              '0)))
                                                        (let ((_%tl4659346922%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7857478575%_ '1)))
                      (_%target4659146919%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7857478575%_ '0))))
                  (if (gx#stx-null? _%tl4659346922%_)
                      (_%__match7883278833%_
                       _%e4644447462%_
                       _%hd4644547466%_
                       _%tl4644647469%_
                       _%e4644747472%_
                       _%hd4644847476%_
                       _%tl4644947479%_
                       _%e4645047482%_
                       _%hd4645147486%_
                       _%tl4645247489%_
                       _%e4645347492%_
                       _%hd4645447496%_
                       _%tl4645547499%_
                       _%e4645647502%_
                       _%hd4645747506%_
                       _%tl4645847509%_
                       _%e4645947512%_
                       _%hd4646047516%_
                       _%tl4646147519%_
                       _%e4658846909%_
                       _%hd4658946913%_
                       _%tl4659046916%_
                       _%__splice7857478575%_
                       _%target4659146919%_
                       _%tl4659346922%_)
                      (if (gx#stx-pair? _%hd4645147486%_)
                          (let ((_%e4661346767%_
                                 (gx#syntax-e _%hd4645147486%_)))
                            (let ((_%tl4661546774%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4661346767%_)))
                                  (_%hd4661446771%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4661346767%_))))
                              (let () (declare (not safe)) (_%g4643746646%_))))
                          (let () (declare (not safe)) (_%g4643746646%_))))))
              (if (gx#stx-pair? _%hd4645147486%_)
                  (let ((_%e4661346767%_ (gx#syntax-e _%hd4645147486%_)))
                    (let ((_%tl4661546774%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4661346767%_)))
                          (_%hd4661446771%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4661346767%_))))
                      (let () (declare (not safe)) (_%g4643746646%_))))
                  (let () (declare (not safe)) (_%g4643746646%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4645147486%_)
                                                      (let ((_%e4661346767%_
                                                             (gx#syntax-e
                                                              _%hd4645147486%_)))
                                                        (let ((_%tl4661546774%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4661346767%_)))
                      (_%hd4661446771%_
                       (let () (declare (not safe)) (##car _%e4661346767%_))))
                  (if (gx#stx-pair/null? _%tl4644947479%_)
                      (let ((_%__splice7857878579%_
                             (gx#syntax-split-splice _%tl4644947479%_ '0)))
                        (let ((_%tl4661846780%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7857878579%_ '1)))
                              (_%target4661646777%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7857878579%_ '0))))
                          (if (gx#stx-null? _%tl4661846780%_)
                              (_%__match7886478865%_
                               _%e4644447462%_
                               _%hd4644547466%_
                               _%tl4644647469%_
                               _%e4644747472%_
                               _%hd4644847476%_
                               _%tl4644947479%_
                               _%e4645047482%_
                               _%hd4645147486%_
                               _%tl4645247489%_
                               _%e4661346767%_
                               _%hd4661446771%_
                               _%tl4661546774%_
                               _%__splice7857878579%_
                               _%target4661646777%_
                               _%tl4661846780%_)
                              (let ()
                                (declare (not safe))
                                (_%g4643746646%_)))))
                      (let () (declare (not safe)) (_%g4643746646%_)))))
              (let () (declare (not safe)) (_%g4643746646%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4645147486%_)
                                              (let ((_%e4661346767%_
                                                     (gx#syntax-e
                                                      _%hd4645147486%_)))
                                                (let ((_%tl4661546774%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4661346767%_)))
                                                      (_%hd4661446771%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4661346767%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4644947479%_)
                                                      (let ((_%__splice7857878579%_
                                                             (gx#syntax-split-splice
                                                              _%tl4644947479%_
                                                              '0)))
                                                        (let ((_%tl4661846780%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7857878579%_ '1)))
                      (_%target4661646777%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7857878579%_ '0))))
                  (if (gx#stx-null? _%tl4661846780%_)
                      (_%__match7886478865%_
                       _%e4644447462%_
                       _%hd4644547466%_
                       _%tl4644647469%_
                       _%e4644747472%_
                       _%hd4644847476%_
                       _%tl4644947479%_
                       _%e4645047482%_
                       _%hd4645147486%_
                       _%tl4645247489%_
                       _%e4661346767%_
                       _%hd4661446771%_
                       _%tl4661546774%_
                       _%__splice7857878579%_
                       _%target4661646777%_
                       _%tl4661846780%_)
                      (let () (declare (not safe)) (_%g4643746646%_)))))
              (let () (declare (not safe)) (_%g4643746646%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4643746646%_))))
                                      (if (gx#stx-pair? _%hd4645147486%_)
                                          (let ((_%e4661346767%_
                                                 (gx#syntax-e
                                                  _%hd4645147486%_)))
                                            (let ((_%tl4661546774%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4661346767%_)))
                                                  (_%hd4661446771%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4661346767%_))))
                                              (if (gx#stx-pair/null?
                                                   _%tl4644947479%_)
                                                  (let ((_%__splice7857878579%_
                                                         (gx#syntax-split-splice
                                                          _%tl4644947479%_
                                                          '0)))
                                                    (let ((_%tl4661846780%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7857878579%_
                                                              '1)))
                                                          (_%target4661646777%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7857878579%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl4661846780%_)
                                                          (_%__match7886478865%_
                                                           _%e4644447462%_
                                                           _%hd4644547466%_
                                                           _%tl4644647469%_
                                                           _%e4644747472%_
                                                           _%hd4644847476%_
                                                           _%tl4644947479%_
                                                           _%e4645047482%_
                                                           _%hd4645147486%_
                                                           _%tl4645247489%_
                                                           _%e4661346767%_
                                                           _%hd4661446771%_
                                                           _%tl4661546774%_
                                                           _%__splice7857878579%_
                                                           _%target4661646777%_
                                                           _%tl4661846780%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g4643746646%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4643746646%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4643746646%_))))
                                  (if (gx#stx-pair? _%hd4645147486%_)
                                      (let ((_%e4661346767%_
                                             (gx#syntax-e _%hd4645147486%_)))
                                        (let ((_%tl4661546774%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4661346767%_)))
                                              (_%hd4661446771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4661346767%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl4644947479%_)
                                              (let ((_%__splice7857878579%_
                                                     (gx#syntax-split-splice
                                                      _%tl4644947479%_
                                                      '0)))
                                                (let ((_%tl4661846780%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7857878579%_
                                                          '1)))
                                                      (_%target4661646777%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7857878579%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4661846780%_)
                                                      (_%__match7886478865%_
                                                       _%e4644447462%_
                                                       _%hd4644547466%_
                                                       _%tl4644647469%_
                                                       _%e4644747472%_
                                                       _%hd4644847476%_
                                                       _%tl4644947479%_
                                                       _%e4645047482%_
                                                       _%hd4645147486%_
                                                       _%tl4645247489%_
                                                       _%e4661346767%_
                                                       _%hd4661446771%_
                                                       _%tl4661546774%_
                                                       _%__splice7857878579%_
                                                       _%target4661646777%_
                                                       _%tl4661846780%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4643746646%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4643746646%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4643746646%_))))))))
                  (if (gx#stx-null? _%tl4645847509%_)
                      (if (gx#stx-pair/null? _%tl4644947479%_)
                          (let ((_%__splice7856678567%_
                                 (gx#syntax-split-splice _%tl4644947479%_ '0)))
                            (let ((_%tl4653147186%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7856678567%_ '1)))
                                  (_%target4652947183%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7856678567%_
                                      '0))))
                              (if (gx#stx-null? _%tl4653147186%_)
                                  (_%__match7873278733%_
                                   _%e4644447462%_
                                   _%hd4644547466%_
                                   _%tl4644647469%_
                                   _%e4644747472%_
                                   _%hd4644847476%_
                                   _%tl4644947479%_
                                   _%e4645047482%_
                                   _%hd4645147486%_
                                   _%tl4645247489%_
                                   _%e4645347492%_
                                   _%hd4645447496%_
                                   _%tl4645547499%_
                                   _%e4645647502%_
                                   _%hd4645747506%_
                                   _%tl4645847509%_
                                   _%__splice7856678567%_
                                   _%target4652947183%_
                                   _%tl4653147186%_)
                                  (if (gx#stx-pair? _%hd4645147486%_)
                                      (let ((_%e4661346767%_
                                             (gx#syntax-e _%hd4645147486%_)))
                                        (let ((_%tl4661546774%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4661346767%_)))
                                              (_%hd4661446771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4661346767%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4643746646%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4643746646%_))))))
                          (if (gx#stx-pair? _%hd4645147486%_)
                              (let ((_%e4661346767%_
                                     (gx#syntax-e _%hd4645147486%_)))
                                (let ((_%tl4661546774%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4661346767%_)))
                                      (_%hd4661446771%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4661346767%_))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4643746646%_))))
                              (let () (declare (not safe)) (_%g4643746646%_))))
                      (if (gx#stx-pair? _%hd4645147486%_)
                          (let ((_%e4661346767%_
                                 (gx#syntax-e _%hd4645147486%_)))
                            (let ((_%tl4661546774%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4661346767%_)))
                                  (_%hd4661446771%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4661346767%_))))
                              (if (gx#stx-pair/null? _%tl4644947479%_)
                                  (let ((_%__splice7857878579%_
                                         (gx#syntax-split-splice
                                          _%tl4644947479%_
                                          '0)))
                                    (let ((_%tl4661846780%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7857878579%_
                                              '1)))
                                          (_%target4661646777%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7857878579%_
                                              '0))))
                                      (if (gx#stx-null? _%tl4661846780%_)
                                          (_%__match7886478865%_
                                           _%e4644447462%_
                                           _%hd4644547466%_
                                           _%tl4644647469%_
                                           _%e4644747472%_
                                           _%hd4644847476%_
                                           _%tl4644947479%_
                                           _%e4645047482%_
                                           _%hd4645147486%_
                                           _%tl4645247489%_
                                           _%e4661346767%_
                                           _%hd4661446771%_
                                           _%tl4661546774%_
                                           _%__splice7857878579%_
                                           _%target4661646777%_
                                           _%tl4661846780%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4643746646%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4643746646%_)))))
                          (let () (declare (not safe)) (_%g4643746646%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _%hd4645147486%_)
                                                      (let ((_%e4661346767%_
                                                             (gx#syntax-e
                                                              _%hd4645147486%_)))
                                                        (let ((_%tl4661546774%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4661346767%_)))
                      (_%hd4661446771%_
                       (let () (declare (not safe)) (##car _%e4661346767%_))))
                  (if (gx#stx-pair/null? _%tl4644947479%_)
                      (let ((_%__splice7857878579%_
                             (gx#syntax-split-splice _%tl4644947479%_ '0)))
                        (let ((_%tl4661846780%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7857878579%_ '1)))
                              (_%target4661646777%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7857878579%_ '0))))
                          (if (gx#stx-null? _%tl4661846780%_)
                              (_%__match7886478865%_
                               _%e4644447462%_
                               _%hd4644547466%_
                               _%tl4644647469%_
                               _%e4644747472%_
                               _%hd4644847476%_
                               _%tl4644947479%_
                               _%e4645047482%_
                               _%hd4645147486%_
                               _%tl4645247489%_
                               _%e4661346767%_
                               _%hd4661446771%_
                               _%tl4661546774%_
                               _%__splice7857878579%_
                               _%target4661646777%_
                               _%tl4661846780%_)
                              (let ()
                                (declare (not safe))
                                (_%g4643746646%_)))))
                      (let () (declare (not safe)) (_%g4643746646%_)))))
              (let () (declare (not safe)) (_%g4643746646%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair? _%hd4645147486%_)
                                              (let ((_%e4661346767%_
                                                     (gx#syntax-e
                                                      _%hd4645147486%_)))
                                                (let ((_%tl4661546774%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4661346767%_)))
                                                      (_%hd4661446771%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4661346767%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl4644947479%_)
                                                      (let ((_%__splice7857878579%_
                                                             (gx#syntax-split-splice
                                                              _%tl4644947479%_
                                                              '0)))
                                                        (let ((_%tl4661846780%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7857878579%_ '1)))
                      (_%target4661646777%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7857878579%_ '0))))
                  (if (gx#stx-null? _%tl4661846780%_)
                      (_%__match7886478865%_
                       _%e4644447462%_
                       _%hd4644547466%_
                       _%tl4644647469%_
                       _%e4644747472%_
                       _%hd4644847476%_
                       _%tl4644947479%_
                       _%e4645047482%_
                       _%hd4645147486%_
                       _%tl4645247489%_
                       _%e4661346767%_
                       _%hd4661446771%_
                       _%tl4661546774%_
                       _%__splice7857878579%_
                       _%target4661646777%_
                       _%tl4661846780%_)
                      (let () (declare (not safe)) (_%g4643746646%_)))))
              (let () (declare (not safe)) (_%g4643746646%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g4643746646%_))))))
                                  (if (gx#stx-null? _%hd4644847476%_)
                                      (if (gx#stx-pair/null? _%tl4644947479%_)
                                          (let ((_%__splice7858278583%_
                                                 (gx#syntax-split-splice
                                                  _%tl4644947479%_
                                                  '0)))
                                            (let ((_%tl4663446676%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7858278583%_
                                                      '1)))
                                                  (_%target4663246673%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7858278583%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4663446676%_)
                                                  (_%__match7888678887%_
                                                   _%e4644447462%_
                                                   _%hd4644547466%_
                                                   _%tl4644647469%_
                                                   _%e4644747472%_
                                                   _%hd4644847476%_
                                                   _%tl4644947479%_
                                                   _%__splice7858278583%_
                                                   _%target4663246673%_
                                                   _%tl4663446676%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4643746646%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4643746646%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4643746646%_))))))
                          (let () (declare (not safe)) (_%g4643746646%_)))))
                  (let () (declare (not safe)) (_%g4643746646%_))))))))
    (define |gerbil/core/contract~Using[:0:]#with-contract|
      (lambda (_%$stx47620%_)
        (let* ((_%g4762447658%_
                (lambda (_%g4762547654%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4762547654%_)))
               (_%g4762347781%_
                (lambda (_%g4762547662%_)
                  (if (gx#stx-pair? _%g4762547662%_)
                      (let ((_%e4762947665%_ (gx#syntax-e _%g4762547662%_)))
                        (let ((_%hd4763047669%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4762947665%_)))
                              (_%tl4763147672%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4762947665%_))))
                          (if (gx#stx-pair? _%tl4763147672%_)
                              (let ((_%e4763247675%_
                                     (gx#syntax-e _%tl4763147672%_)))
                                (let ((_%hd4763347679%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4763247675%_)))
                                      (_%tl4763447682%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4763247675%_))))
                                  (if (gx#stx-pair? _%hd4763347679%_)
                                      (let ((_%e4763547685%_
                                             (gx#syntax-e _%hd4763347679%_)))
                                        (let ((_%hd4763647689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4763547685%_)))
                                              (_%tl4763747692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4763547685%_))))
                                          (if (gx#stx-pair? _%tl4763747692%_)
                                              (let ((_%e4763847695%_
                                                     (gx#syntax-e
                                                      _%tl4763747692%_)))
                                                (let ((_%hd4763947699%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e4763847695%_)))
                                                      (_%tl4764047702%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e4763847695%_))))
                                                  (if (gx#identifier?
                                                       _%hd4763947699%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g84129_|
                                                           _%hd4763947699%_)
                                                          (if (gx#stx-pair?
                                                               _%tl4764047702%_)
                                                              (let ((_%e4764147705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl4764047702%_)))
                        (let ((_%hd4764247709%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4764147705%_)))
                              (_%tl4764347712%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4764147705%_))))
                          (if (gx#stx-null? _%tl4764347712%_)
                              (if (gx#stx-pair/null? _%tl4763447682%_)
                                  (let ((_g84130_
                                         (gx#syntax-split-splice
                                          _%tl4763447682%_
                                          '0)))
                                    (begin
                                      (let ((_g84131_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g84130_)
                                                   (##values-length _g84130_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g84131_ 2)))
                                            (error "Context expects 2 values"
                                                   _g84131_)))
                                      (let ((_%target4764447715%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g84130_ 0)))
                                            (_%tl4764647718%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g84130_ 1))))
                                        (if (gx#stx-null? _%tl4764647718%_)
                                            (letrec ((_%loop4764747721%_
                                                      (lambda (_%hd4764547725%_
                                                               _%body4765147728%_)
                                                        (if (gx#stx-pair?
                                                             _%hd4764547725%_)
                                                            (let ((_%e4764847731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd4764547725%_)))
                      (let ((_%lp-hd4764947735%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4764847731%_)))
                            (_%lp-tl4765047738%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4764847731%_))))
                        (_%loop4764747721%_
                         _%lp-tl4765047738%_
                         (cons _%lp-hd4764947735%_ _%body4765147728%_))))
                    (let ((_%body4765247741%_ (reverse _%body4765147728%_)))
                      ((lambda (_%L47745%_ _%L47747%_ _%L47748%_)
                         (if (gx#identifier? _%L47748%_)
                             (cons (gx#datum->syntax '#f 'if)
                                   (cons (cons _%L47747%_
                                               (cons _%L47748%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons '()
                                                           (foldr (lambda (_%g4777247775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%g4777347778%_)
                            (cons _%g4777247775%_ _%g4777347778%_))
                          '()
                          _%L47745%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'contract-violation!)
                                                           (cons _%L47748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L47747%_ (cons _%L47748%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             (_%g4762447658%_ _%g4762547662%_)))
                       _%body4765247741%_
                       _%hd4764247709%_
                       _%hd4763647689%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop4764747721%_
                                               _%target4764447715%_
                                               '()))
                                            (_%g4762447658%_
                                             _%g4762547662%_)))))
                                  (_%g4762447658%_ _%g4762547662%_))
                              (_%g4762447658%_ _%g4762547662%_))))
                      (_%g4762447658%_ _%g4762547662%_))
                  (_%g4762447658%_ _%g4762547662%_))
              (_%g4762447658%_ _%g4762547662%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g4762447658%_
                                               _%g4762547662%_))))
                                      (_%g4762447658%_ _%g4762547662%_))))
                              (_%g4762447658%_ _%g4762547662%_))))
                      (_%g4762447658%_ _%g4762547662%_)))))
          (_%g4762347781%_ _%$stx47620%_))))
    (define |gerbil/core/contract~Using[1]#!class-slot-type|
      (lambda (_%klass48348%_ _%slot48350%_)
        (let ((_%$e48352%_
               (let ((__obj83967 _%klass48348%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj83967
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj83967 '19 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj83967
                      'slot-types)))))
          (if _%$e48352%_
              ((lambda (_%slot-types48356%_)
                 (agetq _%slot48350%_ _%slot-types48356%_))
               _%$e48352%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-default|
      (lambda (_%klass48329%_ _%slot48331%_)
        (let ((_%$e48333%_
               (let ((__obj83968 _%klass48329%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj83968
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj83968 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj83968
                      'slot-defaults)))))
          (if _%$e48333%_
              ((lambda (_%slot-defaults48337%_)
                 (let ((_%$e48340%_
                        (agetq _%slot48331%_ _%slot-defaults48337%_)))
                   (if _%$e48340%_
                       (gx#syntax-local-introduce _%$e48340%_)
                       '#f)))
               _%$e48333%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-contract|
      (lambda (_%klass48310%_ _%slot48312%_)
        (let ((_%$e48314%_
               (let ((__obj83969 _%klass48310%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj83969
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj83969 '20 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj83969
                      'slot-defaults)))))
          (if _%$e48314%_
              ((lambda (_%slot-defaults48318%_)
                 (let ((_%$e48321%_
                        (agetq _%slot48312%_ _%slot-defaults48318%_)))
                   (if _%$e48321%_
                       (gx#syntax-local-introduce _%$e48321%_)
                       '#f)))
               _%$e48314%_)
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
      (lambda (_%klass48078%_ _%slot48080%_)
        (let ((_%contract4808148083%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass48078%_
                _%slot48080%_)))
          (if _%contract4808148083%_
              (let* ((_%contract48087%_ _%contract4808148083%_)
                     (_%__stx7888978890%_ _%contract48087%_)
                     (_%g4809248129%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx7888978890%_))))
                (let ((_%__kont7889278893%_
                       (lambda (_%L48279%_ _%L48281%_)
                         (not (gx#free-identifier=?
                               _%L48281%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7889478895%_
                       (lambda (_%L48219%_ _%L48221%_ _%L48222%_)
                         (not (gx#free-identifier=?
                               _%L48221%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7889678897%_ (lambda (_%L48156%_) '#f)))
                  (let* ((_%__match7894278943%_
                          (lambda (_%e4810548179%_
                                   _%hd4810648183%_
                                   _%tl4810748186%_
                                   _%e4810848189%_
                                   _%hd4810948193%_
                                   _%tl4811048196%_
                                   _%e4811148199%_
                                   _%hd4811248203%_
                                   _%tl4811348206%_
                                   _%e4811448209%_
                                   _%hd4811548213%_
                                   _%tl4811648216%_)
                            (let ((_%L48219%_ _%hd4811548213%_)
                                  (_%L48221%_ _%hd4811248203%_)
                                  (_%L48222%_ _%hd4810948193%_))
                              (if (and (gx#identifier? _%L48221%_)
                                       (or (gx#free-identifier=?
                                            _%L48221%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48221%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48221%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48221%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7889478895%_
                                   _%L48219%_
                                   _%L48221%_
                                   _%L48222%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4809248129%_))))))
                         (_%__match7891278913%_
                          (lambda (_%e4809648259%_
                                   _%hd4809748263%_
                                   _%tl4809848266%_
                                   _%e4809948269%_
                                   _%hd4810048273%_
                                   _%tl4810148276%_)
                            (let ((_%L48279%_ _%hd4810048273%_)
                                  (_%L48281%_ _%hd4809748263%_))
                              (if (and (gx#identifier? _%L48281%_)
                                       (or (gx#free-identifier=?
                                            _%L48281%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48281%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48281%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48281%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7889278893%_ _%L48279%_ _%L48281%_)
                                  (if (gx#identifier? _%hd4809748263%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g84132_|
                                           _%hd4809748263%_)
                                          (_%__kont7889678897%_
                                           _%hd4810048273%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4809248129%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4809248129%_))))))))
                    (if (gx#stx-pair? _%__stx7888978890%_)
                        (let ((_%e4809648259%_
                               (gx#syntax-e _%__stx7888978890%_)))
                          (let ((_%tl4809848266%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4809648259%_)))
                                (_%hd4809748263%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4809648259%_))))
                            (if (gx#stx-pair? _%tl4809848266%_)
                                (let ((_%e4809948269%_
                                       (gx#syntax-e _%tl4809848266%_)))
                                  (let ((_%tl4810148276%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4809948269%_)))
                                        (_%hd4810048273%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4809948269%_))))
                                    (if (gx#stx-null? _%tl4810148276%_)
                                        (_%__match7891278913%_
                                         _%e4809648259%_
                                         _%hd4809748263%_
                                         _%tl4809848266%_
                                         _%e4809948269%_
                                         _%hd4810048273%_
                                         _%tl4810148276%_)
                                        (if (gx#identifier? _%hd4809748263%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g84132_|
                                                 _%hd4809748263%_)
                                                (if (gx#stx-pair?
                                                     _%tl4810148276%_)
                                                    (let ((_%e4811148199%_
                                                           (gx#syntax-e
                                                            _%tl4810148276%_)))
                                                      (let ((_%tl4811348206%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4811148199%_)))
                    (_%hd4811248203%_
                     (let () (declare (not safe)) (##car _%e4811148199%_))))
                (if (gx#stx-pair? _%tl4811348206%_)
                    (let ((_%e4811448209%_ (gx#syntax-e _%tl4811348206%_)))
                      (let ((_%tl4811648216%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4811448209%_)))
                            (_%hd4811548213%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4811448209%_))))
                        (if (gx#stx-null? _%tl4811648216%_)
                            (_%__match7894278943%_
                             _%e4809648259%_
                             _%hd4809748263%_
                             _%tl4809848266%_
                             _%e4809948269%_
                             _%hd4810048273%_
                             _%tl4810148276%_
                             _%e4811148199%_
                             _%hd4811248203%_
                             _%tl4811348206%_
                             _%e4811448209%_
                             _%hd4811548213%_
                             _%tl4811648216%_)
                            (let () (declare (not safe)) (_%g4809248129%_)))))
                    (let () (declare (not safe)) (_%g4809248129%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4809248129%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4809248129%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4809248129%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4809248129%_)))))
                        (let () (declare (not safe)) (_%g4809248129%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
      (lambda (_%klass47846%_ _%slot47848%_)
        (let ((_%contract4784947851%_
               (|gerbil/core/contract~Using[1]#!class-slot-contract|
                _%klass47846%_
                _%slot47848%_)))
          (if _%contract4784947851%_
              (let* ((_%contract47855%_ _%contract4784947851%_)
                     (_%__stx7896378964%_ _%contract47855%_)
                     (_%g4786047897%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%__stx7896378964%_))))
                (let ((_%__kont7896678967%_
                       (lambda (_%L48047%_ _%L48049%_)
                         (not (gx#free-identifier=?
                               _%L48049%_
                               (gx#datum->syntax '#f ':-)))))
                      (_%__kont7896878969%_
                       (lambda (_%L47987%_ _%L47989%_ _%L47990%_) '#t))
                      (_%__kont7897078971%_ (lambda (_%L47924%_) '#t)))
                  (let* ((_%__match7901679017%_
                          (lambda (_%e4787347947%_
                                   _%hd4787447951%_
                                   _%tl4787547954%_
                                   _%e4787647957%_
                                   _%hd4787747961%_
                                   _%tl4787847964%_
                                   _%e4787947967%_
                                   _%hd4788047971%_
                                   _%tl4788147974%_
                                   _%e4788247977%_
                                   _%hd4788347981%_
                                   _%tl4788447984%_)
                            (let ((_%L47987%_ _%hd4788347981%_)
                                  (_%L47989%_ _%hd4788047971%_)
                                  (_%L47990%_ _%hd4787747961%_))
                              (if (and (gx#identifier? _%L47989%_)
                                       (or (gx#free-identifier=?
                                            _%L47989%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L47989%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L47989%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L47989%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7896878969%_
                                   _%L47987%_
                                   _%L47989%_
                                   _%L47990%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4786047897%_))))))
                         (_%__match7898678987%_
                          (lambda (_%e4786448027%_
                                   _%hd4786548031%_
                                   _%tl4786648034%_
                                   _%e4786748037%_
                                   _%hd4786848041%_
                                   _%tl4786948044%_)
                            (let ((_%L48047%_ _%hd4786848041%_)
                                  (_%L48049%_ _%hd4786548031%_))
                              (if (and (gx#identifier? _%L48049%_)
                                       (or (gx#free-identifier=?
                                            _%L48049%_
                                            (gx#datum->syntax '#f ':))
                                           (gx#free-identifier=?
                                            _%L48049%_
                                            (gx#datum->syntax '#f ':-))
                                           (gx#free-identifier=?
                                            _%L48049%_
                                            (gx#datum->syntax '#f '::-))
                                           (gx#free-identifier=?
                                            _%L48049%_
                                            (gx#datum->syntax '#f ':?))))
                                  (_%__kont7896678967%_ _%L48047%_ _%L48049%_)
                                  (if (gx#identifier? _%hd4786548031%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~Using[1]#_g84133_|
                                           _%hd4786548031%_)
                                          (_%__kont7897078971%_
                                           _%hd4786848041%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4786047897%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4786047897%_))))))))
                    (if (gx#stx-pair? _%__stx7896378964%_)
                        (let ((_%e4786448027%_
                               (gx#syntax-e _%__stx7896378964%_)))
                          (let ((_%tl4786648034%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4786448027%_)))
                                (_%hd4786548031%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4786448027%_))))
                            (if (gx#stx-pair? _%tl4786648034%_)
                                (let ((_%e4786748037%_
                                       (gx#syntax-e _%tl4786648034%_)))
                                  (let ((_%tl4786948044%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4786748037%_)))
                                        (_%hd4786848041%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4786748037%_))))
                                    (if (gx#stx-null? _%tl4786948044%_)
                                        (_%__match7898678987%_
                                         _%e4786448027%_
                                         _%hd4786548031%_
                                         _%tl4786648034%_
                                         _%e4786748037%_
                                         _%hd4786848041%_
                                         _%tl4786948044%_)
                                        (if (gx#identifier? _%hd4786548031%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~Using[1]#_g84133_|
                                                 _%hd4786548031%_)
                                                (if (gx#stx-pair?
                                                     _%tl4786948044%_)
                                                    (let ((_%e4787947967%_
                                                           (gx#syntax-e
                                                            _%tl4786948044%_)))
                                                      (let ((_%tl4788147974%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4787947967%_)))
                    (_%hd4788047971%_
                     (let () (declare (not safe)) (##car _%e4787947967%_))))
                (if (gx#stx-pair? _%tl4788147974%_)
                    (let ((_%e4788247977%_ (gx#syntax-e _%tl4788147974%_)))
                      (let ((_%tl4788447984%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4788247977%_)))
                            (_%hd4788347981%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4788247977%_))))
                        (if (gx#stx-null? _%tl4788447984%_)
                            (_%__match7901679017%_
                             _%e4786448027%_
                             _%hd4786548031%_
                             _%tl4786648034%_
                             _%e4786748037%_
                             _%hd4786848041%_
                             _%tl4786948044%_
                             _%e4787947967%_
                             _%hd4788047971%_
                             _%tl4788147974%_
                             _%e4788247977%_
                             _%hd4788347981%_
                             _%tl4788447984%_)
                            (let () (declare (not safe)) (_%g4786047897%_)))))
                    (let () (declare (not safe)) (_%g4786047897%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4786047897%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4786047897%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4786047897%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4786047897%_)))))
                        (let () (declare (not safe)) (_%g4786047897%_))))))
              '#f))))
    (define |gerbil/core/contract~Using[1]#dotted-identifier?|
      (lambda (_%id47832%_)
        (if (gx#identifier? _%id47832%_)
            (let* ((_%str47835%_ (symbol->string (gx#stx-e _%id47832%_)))
                   (_%index4783747839%_ (string-index _%str47835%_ '#\.)))
              (if _%index4783747839%_
                  (let ((_%index47843%_ _%index4783747839%_))
                    (if (let () (declare (not safe)) (##fx> _%index47843%_ '0))
                        (not (ormap string-empty?
                                    (string-split _%str47835%_ '#\.)))
                        '#f))
                  '#f))
            '#f)))
    (define |gerbil/core/contract~Using[1]#split-dotted-identifier|
      (lambda (_%stx47825%_ _%id47827%_)
        (let ((_%parts47829%_
               (string-split (symbol->string (gx#stx-e _%id47827%_)) '#\.)))
          (if (find string-empty? _%parts47829%_)
              (gx#raise-syntax-error
               '#f
               '"bad dotted identifier"
               _%stx47825%_
               _%id47827%_)
              (cons (gx#stx-identifier _%id47827%_ (car _%parts47829%_))
                    (map string->symbol (cdr _%parts47829%_)))))))
    (define |gerbil/core/contract~Using[1]#get-slot-accessor|
      (lambda (_%stx47806%_ _%klass-or-id47808%_ _%slot47809%_)
        (let* ((_%klass47811%_
                (if (gx#identifier? _%klass-or-id47808%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47806%_
                       _%klass-or-id47808%_))
                    _%klass-or-id47808%_))
               (_%accessors47814%_
                (let ((__obj83970 _%klass47811%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj83970
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj83970 '17 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj83970
                       'unchecked-accessors))))
               (_%$e47819%_ (agetq _%slot47809%_ _%accessors47814%_)))
          (if _%$e47819%_
              _%$e47819%_
              (gx#raise-syntax-error
               '#f
               '"no accessor for slot"
               _%stx47806%_
               _%klass47811%_
               _%slot47809%_)))))
    (define |gerbil/core/contract~Using[1]#get-slot-mutator|
      (lambda (_%stx47786%_
               _%klass-or-id47788%_
               _%slot47789%_
               _%checked?47790%_)
        (let* ((_%klass47792%_
                (if (gx#identifier? _%klass-or-id47788%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~TypeReference[1]#resolve-type|
                       _%stx47786%_
                       _%klass-or-id47788%_))
                    _%klass-or-id47788%_))
               (_%mutators47795%_
                (if _%checked?47790%_
                    (let ((__obj83971 _%klass47792%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj83971
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj83971 '16 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj83971
                           'mutators)))
                    (let ((__obj83972 _%klass47792%_))
                      (if (let ()
                            (declare (not safe))
                            (##structure-direct-instance-of?
                             __obj83972
                             'gerbil.core#class-type-info::t))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref __obj83972 '18 '#f '#f))
                          (class-slot-ref
                           gerbil/core/mop~MOP-2#class-type-info::t
                           __obj83972
                           'unchecked-mutators)))))
               (_%$e47800%_ (agetq _%slot47789%_ _%mutators47795%_)))
          (if _%$e47800%_
              _%$e47800%_
              (gx#raise-syntax-error
               '#f
               '"no mutator for slot"
               _%stx47786%_
               _%klass47792%_
               _%slot47789%_)))))
    (define |gerbil/core/contract~Using[:0:]#with-class|
      (lambda (_%stx48361%_)
        (letrec ((_%expand-body48364%_
                  (lambda (_%klass49272%_
                           _%var49274%_
                           _%Type49275%_
                           _%body49276%_
                           _%checked?49277%_)
                    (let* ((_%g4927949323%_
                            (lambda (_%g4928049319%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g4928049319%_)))
                           (_%g4927849480%_
                            (lambda (_%g4928049327%_)
                              (if (gx#stx-pair? _%g4928049327%_)
                                  (let ((_%e4928849330%_
                                         (gx#syntax-e _%g4928049327%_)))
                                    (let ((_%hd4928949334%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4928849330%_)))
                                          (_%tl4929049337%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4928849330%_))))
                                      (if (gx#stx-pair? _%tl4929049337%_)
                                          (let ((_%e4929149340%_
                                                 (gx#syntax-e
                                                  _%tl4929049337%_)))
                                            (let ((_%hd4929249344%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4929149340%_)))
                                                  (_%tl4929349347%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4929149340%_))))
                                              (if (gx#stx-pair?
                                                   _%tl4929349347%_)
                                                  (let ((_%e4929449350%_
                                                         (gx#syntax-e
                                                          _%tl4929349347%_)))
                                                    (let ((_%hd4929549354%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4929449350%_)))
                                                          (_%tl4929649357%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4929449350%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4929649357%_)
                                                          (let ((_%e4929749360%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4929649357%_)))
                    (let ((_%hd4929849364%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4929749360%_)))
                          (_%tl4929949367%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4929749360%_))))
                      (if (gx#stx-pair? _%tl4929949367%_)
                          (let ((_%e4930049370%_
                                 (gx#syntax-e _%tl4929949367%_)))
                            (let ((_%hd4930149374%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4930049370%_)))
                                  (_%tl4930249377%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4930049370%_))))
                              (if (gx#stx-pair? _%tl4930249377%_)
                                  (let ((_%e4930349380%_
                                         (gx#syntax-e _%tl4930249377%_)))
                                    (let ((_%hd4930449384%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4930349380%_)))
                                          (_%tl4930549387%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4930349380%_))))
                                      (if (gx#stx-pair? _%tl4930549387%_)
                                          (let ((_%e4930649390%_
                                                 (gx#syntax-e
                                                  _%tl4930549387%_)))
                                            (let ((_%hd4930749394%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4930649390%_)))
                                                  (_%tl4930849397%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4930649390%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd4930749394%_)
                                                  (let ((_g84134_
                                                         (gx#syntax-split-splice
                                                          _%hd4930749394%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g84135_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g84134_)
                           (##values-length _g84134_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g84135_ 2)))
                    (error "Context expects 2 values" _g84135_)))
              (let ((_%target4930949400%_
                     (let () (declare (not safe)) (##values-ref _g84134_ 0)))
                    (_%tl4931149403%_
                     (let () (declare (not safe)) (##values-ref _g84134_ 1))))
                (if (gx#stx-null? _%tl4931149403%_)
                    (letrec ((_%loop4931249406%_
                              (lambda (_%hd4931049410%_ _%body4931649413%_)
                                (if (gx#stx-pair? _%hd4931049410%_)
                                    (let ((_%e4931349416%_
                                           (gx#syntax-e _%hd4931049410%_)))
                                      (let ((_%lp-hd4931449420%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4931349416%_)))
                                            (_%lp-tl4931549423%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4931349416%_))))
                                        (_%loop4931249406%_
                                         _%lp-tl4931549423%_
                                         (cons _%lp-hd4931449420%_
                                               _%body4931649413%_))))
                                    (let ((_%body4931749426%_
                                           (reverse _%body4931649413%_)))
                                      (if (gx#stx-null? _%tl4930849397%_)
                                          ((lambda (_%L49430%_
                                                    _%L49432%_
                                                    _%L49433%_
                                                    _%L49434%_
                                                    _%L49435%_
                                                    _%L49436%_
                                                    _%L49437%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L49435%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L49436%_ '()))
                                         (cons _%L49435%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L49437%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L49435%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L49434%_ '()))
                               (cons _%L49433%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L49432%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g4947149474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g4947249477%_)
                      (cons _%g4947149474%_ _%g4947249477%_))
                    '()
                    _%L49430%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body4931749426%_
                                           _%hd4930449384%_
                                           _%hd4930149374%_
                                           _%hd4929849364%_
                                           _%hd4929549354%_
                                           _%hd4929249344%_
                                           _%hd4928949334%_)
                                          (_%g4927949323%_
                                           _%g4928049327%_)))))))
                      (_%loop4931249406%_ _%target4930949400%_ '()))
                    (_%g4927949323%_ _%g4928049327%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4927949323%_
                                                   _%g4928049327%_))))
                                          (_%g4927949323%_ _%g4928049327%_))))
                                  (_%g4927949323%_ _%g4928049327%_))))
                          (_%g4927949323%_ _%g4928049327%_))))
                  (_%g4927949323%_ _%g4928049327%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g4927949323%_
                                                   _%g4928049327%_))))
                                          (_%g4927949323%_ _%g4928049327%_))))
                                  (_%g4927949323%_ _%g4928049327%_)))))
                      (_%g4927849480%_
                       (list (gx#syntax-local-introduce '@@type)
                             (let ((__obj83973 _%klass49272%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj83973
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj83973
                                      '12
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj83973
                                    'type-descriptor)))
                             _%var49274%_
                             _%klass49272%_
                             _%checked?49277%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body49276%_)))))
                 (_%expand48366%_
                  (lambda (_%var49164%_
                           _%Type49166%_
                           _%body49167%_
                           _%checked?49168%_
                           _%checked-mutators?49169%_
                           _%maybe?49170%_)
                    (let* ((_%klass49172%_
                            (gx#syntax-local-value _%Type49166%_ false))
                           (_%expr-body49179%_
                            (_%expand-body48364%_
                             _%klass49172%_
                             _%var49164%_
                             _%Type49166%_
                             _%body49167%_
                             (let ((_%$e49175%_ _%checked?49168%_))
                               (if _%$e49175%_
                                   _%$e49175%_
                                   _%checked-mutators?49169%_)))))
                      (if _%checked?49168%_
                          (let* ((_%g4918449203%_
                                  (lambda (_%g4918549199%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g4918549199%_)))
                                 (_%g4918349265%_
                                  (lambda (_%g4918549207%_)
                                    (if (gx#stx-pair? _%g4918549207%_)
                                        (let ((_%e4918949210%_
                                               (gx#syntax-e _%g4918549207%_)))
                                          (let ((_%hd4919049214%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4918949210%_)))
                                                (_%tl4919149217%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4918949210%_))))
                                            (if (gx#stx-pair? _%tl4919149217%_)
                                                (let ((_%e4919249220%_
                                                       (gx#syntax-e
                                                        _%tl4919149217%_)))
                                                  (let ((_%hd4919349224%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4919249220%_)))
                                                        (_%tl4919449227%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4919249220%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl4919449227%_)
                                                        (let ((_%e4919549230%_
                                                               (gx#syntax-e
                                                                _%tl4919449227%_)))
                                                          (let ((_%hd4919649234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e4919549230%_)))
                        (_%tl4919749237%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e4919549230%_))))
                    (if (gx#stx-null? _%tl4919749237%_)
                        ((lambda (_%L49240%_ _%L49242%_ _%L49243%_)
                           (cons (gx#datum->syntax '#f 'with-contract)
                                 (cons (cons _%L49242%_
                                             (cons (gx#datum->syntax '#f ':~)
                                                   (cons _%L49243%_ '())))
                                       (cons _%L49240%_ '()))))
                         _%hd4919649234%_
                         _%hd4919349224%_
                         _%hd4919049214%_)
                        (_%g4918449203%_ _%g4918549207%_))))
                (_%g4918449203%_ _%g4918549207%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g4918449203%_
                                                 _%g4918549207%_))))
                                        (_%g4918449203%_ _%g4918549207%_)))))
                            (_%g4918349265%_
                             (list (let ((_%instance?49269%_
                                          (let ((__obj83974 _%klass49172%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj83974
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj83974
                                                   '14
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj83974
                                                 'predicate)))))
                                     (if _%maybe?49170%_
                                         (cons '?
                                               (cons (cons 'or
                                                           (cons 'not
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%instance?49269%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         _%instance?49269%_))
                                   _%var49164%_
                                   _%expr-body49179%_)))
                          _%expr-body49179%_)))))
          (let* ((_%__stx7903779038%_ _%stx48361%_)
                 (_%g4837248515%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7903779038%_))))
            (let ((_%__kont7904079041%_
                   (lambda (_%L49092%_ _%L49094%_ _%L49095%_ _%L49096%_)
                     (let* ((_%g4912149129%_
                             (lambda (_%g4912249125%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g4912249125%_)))
                            (_%g4912049156%_
                             (lambda (_%g4912249133%_)
                               ((lambda (_%L49136%_)
                                  (cons (gx#datum->syntax '#f 'with-class)
                                        (cons (cons _%L49096%_
                                                    (cons _%L49095%_
                                                          (cons _%L49136%_
                                                                '())))
                                              (foldr (lambda (_%g4914749150%_
                                                              _%g4914849153%_)
                                                       (cons _%g4914749150%_
                                                             _%g4914849153%_))
                                                     '()
                                                     _%L49092%_))))
                                _%g4912249133%_))))
                       (_%g4912049156%_
                        (let ((__obj83975 (gx#syntax-local-value _%L49094%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj83975
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj83975
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj83975
                               'identifier)))))))
                  (_%__kont7904479045%_
                   (lambda (_%L48970%_ _%L48972%_ _%L48973%_)
                     (_%expand48366%_
                      _%L48973%_
                      _%L48972%_
                      (foldr (lambda (_%g4899648999%_ _%g4899749002%_)
                               (cons _%g4899648999%_ _%g4899749002%_))
                             '()
                             _%L48970%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7904879049%_
                   (lambda (_%L48848%_ _%L48850%_ _%L48851%_)
                     (_%expand48366%_
                      _%L48851%_
                      _%L48850%_
                      (foldr (lambda (_%g4887448877%_ _%g4887548880%_)
                               (cons _%g4887448877%_ _%g4887548880%_))
                             '()
                             _%L48848%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7905279053%_
                   (lambda (_%L48726%_ _%L48728%_ _%L48729%_)
                     (_%expand48366%_
                      _%L48729%_
                      _%L48728%_
                      (foldr (lambda (_%g4875248755%_ _%g4875348758%_)
                               (cons _%g4875248755%_ _%g4875348758%_))
                             '()
                             _%L48726%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7905679057%_
                   (lambda (_%L48602%_ _%L48604%_ _%L48605%_)
                     (_%expand48366%_
                      _%L48605%_
                      _%L48604%_
                      (foldr (lambda (_%g4863048633%_ _%g4863148636%_)
                               (cons _%g4863048633%_ _%g4863148636%_))
                             '()
                             _%L48602%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match7927679277%_
                      (lambda (_%e4848648522%_
                               _%hd4848748526%_
                               _%tl4848848529%_
                               _%e4848948532%_
                               _%hd4849048536%_
                               _%tl4849148539%_
                               _%e4849248542%_
                               _%hd4849348546%_
                               _%tl4849448549%_
                               _%e4849548552%_
                               _%hd4849648556%_
                               _%tl4849748559%_
                               _%e4849848562%_
                               _%hd4849948566%_
                               _%tl4850048569%_
                               _%__splice7905879059%_
                               _%target4850148572%_
                               _%tl4850348575%_)
                        (letrec ((_%loop4850448578%_
                                  (lambda (_%hd4850248582%_ _%body4850848585%_)
                                    (if (gx#stx-pair? _%hd4850248582%_)
                                        (let ((_%e4850548588%_
                                               (gx#syntax-e _%hd4850248582%_)))
                                          (let ((_%lp-tl4850748595%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4850548588%_)))
                                                (_%lp-hd4850648592%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4850548588%_))))
                                            (_%loop4850448578%_
                                             _%lp-tl4850748595%_
                                             (cons _%lp-hd4850648592%_
                                                   _%body4850848585%_))))
                                        (let ((_%body4850948598%_
                                               (reverse _%body4850848585%_)))
                                          (let ((_%L48602%_ _%body4850948598%_)
                                                (_%L48604%_ _%hd4849948566%_)
                                                (_%L48605%_ _%hd4849348546%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48604%_))
                                                (_%__kont7905679057%_
                                                 _%L48602%_
                                                 _%L48604%_
                                                 _%L48605%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4837248515%_)))))))))
                          (_%loop4850448578%_ _%target4850148572%_ '()))))
                     (_%__match7923279233%_
                      (lambda (_%e4845948646%_
                               _%hd4846048650%_
                               _%tl4846148653%_
                               _%e4846248656%_
                               _%hd4846348660%_
                               _%tl4846448663%_
                               _%e4846548666%_
                               _%hd4846648670%_
                               _%tl4846748673%_
                               _%e4846848676%_
                               _%hd4846948680%_
                               _%tl4847048683%_
                               _%e4847148686%_
                               _%hd4847248690%_
                               _%tl4847348693%_
                               _%__splice7905479055%_
                               _%target4847448696%_
                               _%tl4847648699%_)
                        (letrec ((_%loop4847748702%_
                                  (lambda (_%hd4847548706%_ _%body4848148709%_)
                                    (if (gx#stx-pair? _%hd4847548706%_)
                                        (let ((_%e4847848712%_
                                               (gx#syntax-e _%hd4847548706%_)))
                                          (let ((_%lp-tl4848048719%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4847848712%_)))
                                                (_%lp-hd4847948716%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4847848712%_))))
                                            (_%loop4847748702%_
                                             _%lp-tl4848048719%_
                                             (cons _%lp-hd4847948716%_
                                                   _%body4848148709%_))))
                                        (let ((_%body4848248722%_
                                               (reverse _%body4848148709%_)))
                                          (let ((_%L48726%_ _%body4848248722%_)
                                                (_%L48728%_ _%hd4847248690%_)
                                                (_%L48729%_ _%hd4846648670%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48728%_))
                                                (_%__kont7905279053%_
                                                 _%L48726%_
                                                 _%L48728%_
                                                 _%L48729%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4837248515%_)))))))))
                          (_%loop4847748702%_ _%target4847448696%_ '()))))
                     (_%__match7918879189%_
                      (lambda (_%e4843248768%_
                               _%hd4843348772%_
                               _%tl4843448775%_
                               _%e4843548778%_
                               _%hd4843648782%_
                               _%tl4843748785%_
                               _%e4843848788%_
                               _%hd4843948792%_
                               _%tl4844048795%_
                               _%e4844148798%_
                               _%hd4844248802%_
                               _%tl4844348805%_
                               _%e4844448808%_
                               _%hd4844548812%_
                               _%tl4844648815%_
                               _%__splice7905079051%_
                               _%target4844748818%_
                               _%tl4844948821%_)
                        (letrec ((_%loop4845048824%_
                                  (lambda (_%hd4844848828%_ _%body4845448831%_)
                                    (if (gx#stx-pair? _%hd4844848828%_)
                                        (let ((_%e4845148834%_
                                               (gx#syntax-e _%hd4844848828%_)))
                                          (let ((_%lp-tl4845348841%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4845148834%_)))
                                                (_%lp-hd4845248838%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4845148834%_))))
                                            (_%loop4845048824%_
                                             _%lp-tl4845348841%_
                                             (cons _%lp-hd4845248838%_
                                                   _%body4845448831%_))))
                                        (let ((_%body4845548844%_
                                               (reverse _%body4845448831%_)))
                                          (let ((_%L48848%_ _%body4845548844%_)
                                                (_%L48850%_ _%hd4844548812%_)
                                                (_%L48851%_ _%hd4843948792%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48850%_))
                                                (_%__kont7904879049%_
                                                 _%L48848%_
                                                 _%L48850%_
                                                 _%L48851%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4837248515%_)))))))))
                          (_%loop4845048824%_ _%target4844748818%_ '()))))
                     (_%__match7914479145%_
                      (lambda (_%e4840548890%_
                               _%hd4840648894%_
                               _%tl4840748897%_
                               _%e4840848900%_
                               _%hd4840948904%_
                               _%tl4841048907%_
                               _%e4841148910%_
                               _%hd4841248914%_
                               _%tl4841348917%_
                               _%e4841448920%_
                               _%hd4841548924%_
                               _%tl4841648927%_
                               _%e4841748930%_
                               _%hd4841848934%_
                               _%tl4841948937%_
                               _%__splice7904679047%_
                               _%target4842048940%_
                               _%tl4842248943%_)
                        (letrec ((_%loop4842348946%_
                                  (lambda (_%hd4842148950%_ _%body4842748953%_)
                                    (if (gx#stx-pair? _%hd4842148950%_)
                                        (let ((_%e4842448956%_
                                               (gx#syntax-e _%hd4842148950%_)))
                                          (let ((_%lp-tl4842648963%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4842448956%_)))
                                                (_%lp-hd4842548960%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4842448956%_))))
                                            (_%loop4842348946%_
                                             _%lp-tl4842648963%_
                                             (cons _%lp-hd4842548960%_
                                                   _%body4842748953%_))))
                                        (let ((_%body4842848966%_
                                               (reverse _%body4842748953%_)))
                                          (let ((_%L48970%_ _%body4842848966%_)
                                                (_%L48972%_ _%hd4841848934%_)
                                                (_%L48973%_ _%hd4841248914%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gerbil/core/mop~MOP-2#syntax-local-class-type-info?__0
                                                   _%L48972%_))
                                                (_%__kont7904479045%_
                                                 _%L48970%_
                                                 _%L48972%_
                                                 _%L48973%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4837248515%_)))))))))
                          (_%loop4842348946%_ _%target4842048940%_ '()))))
                     (_%__match7912479125%_
                      (lambda (_%e4840548890%_
                               _%hd4840648894%_
                               _%tl4840748897%_
                               _%e4840848900%_
                               _%hd4840948904%_
                               _%tl4841048907%_
                               _%e4841148910%_
                               _%hd4841248914%_
                               _%tl4841348917%_
                               _%e4841448920%_
                               _%hd4841548924%_
                               _%tl4841648927%_)
                        (if (gx#identifier? _%hd4841548924%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g84136_|
                                 _%hd4841548924%_)
                                (if (gx#stx-pair? _%tl4841648927%_)
                                    (let ((_%e4841748930%_
                                           (gx#syntax-e _%tl4841648927%_)))
                                      (let ((_%tl4841948937%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4841748930%_)))
                                            (_%hd4841848934%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4841748930%_))))
                                        (if (gx#stx-null? _%tl4841948937%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl4841048907%_)
                                                (let ((_%__splice7904679047%_
                                                       (gx#syntax-split-splice
                                                        _%tl4841048907%_
                                                        '0)))
                                                  (let ((_%tl4842248943%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7904679047%_
                                                            '1)))
                                                        (_%target4842048940%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7904679047%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4842248943%_)
                                                        (_%__match7914479145%_
                                                         _%e4840548890%_
                                                         _%hd4840648894%_
                                                         _%tl4840748897%_
                                                         _%e4840848900%_
                                                         _%hd4840948904%_
                                                         _%tl4841048907%_
                                                         _%e4841148910%_
                                                         _%hd4841248914%_
                                                         _%tl4841348917%_
                                                         _%e4841448920%_
                                                         _%hd4841548924%_
                                                         _%tl4841648927%_
                                                         _%e4841748930%_
                                                         _%hd4841848934%_
                                                         _%tl4841948937%_
                                                         _%__splice7904679047%_
                                                         _%target4842048940%_
                                                         _%tl4842248943%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4837248515%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4837248515%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4837248515%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4837248515%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g84137_|
                                     _%hd4841548924%_)
                                    (if (gx#stx-pair? _%tl4841648927%_)
                                        (let ((_%e4844448808%_
                                               (gx#syntax-e _%tl4841648927%_)))
                                          (let ((_%tl4844648815%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4844448808%_)))
                                                (_%hd4844548812%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4844448808%_))))
                                            (if (gx#stx-null? _%tl4844648815%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl4841048907%_)
                                                    (let ((_%__splice7905079051%_
                                                           (gx#syntax-split-splice
                                                            _%tl4841048907%_
                                                            '0)))
                                                      (let ((_%tl4844948821%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice7905079051%_ '1)))
                    (_%target4844748818%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice7905079051%_ '0))))
                (if (gx#stx-null? _%tl4844948821%_)
                    (_%__match7918879189%_
                     _%e4840548890%_
                     _%hd4840648894%_
                     _%tl4840748897%_
                     _%e4840848900%_
                     _%hd4840948904%_
                     _%tl4841048907%_
                     _%e4841148910%_
                     _%hd4841248914%_
                     _%tl4841348917%_
                     _%e4841448920%_
                     _%hd4841548924%_
                     _%tl4841648927%_
                     _%e4844448808%_
                     _%hd4844548812%_
                     _%tl4844648815%_
                     _%__splice7905079051%_
                     _%target4844748818%_
                     _%tl4844948821%_)
                    (let () (declare (not safe)) (_%g4837248515%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4837248515%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4837248515%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4837248515%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g84138_|
                                         _%hd4841548924%_)
                                        (if (gx#stx-pair? _%tl4841648927%_)
                                            (let ((_%e4847148686%_
                                                   (gx#syntax-e
                                                    _%tl4841648927%_)))
                                              (let ((_%tl4847348693%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4847148686%_)))
                                                    (_%hd4847248690%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4847148686%_))))
                                                (if (gx#stx-null?
                                                     _%tl4847348693%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl4841048907%_)
                                                        (let ((_%__splice7905479055%_
                                                               (gx#syntax-split-splice
                                                                _%tl4841048907%_
                                                                '0)))
                                                          (let ((_%tl4847648699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7905479055%_ '1)))
                        (_%target4847448696%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7905479055%_ '0))))
                    (if (gx#stx-null? _%tl4847648699%_)
                        (_%__match7923279233%_
                         _%e4840548890%_
                         _%hd4840648894%_
                         _%tl4840748897%_
                         _%e4840848900%_
                         _%hd4840948904%_
                         _%tl4841048907%_
                         _%e4841148910%_
                         _%hd4841248914%_
                         _%tl4841348917%_
                         _%e4841448920%_
                         _%hd4841548924%_
                         _%tl4841648927%_
                         _%e4847148686%_
                         _%hd4847248690%_
                         _%tl4847348693%_
                         _%__splice7905479055%_
                         _%target4847448696%_
                         _%tl4847648699%_)
                        (let () (declare (not safe)) (_%g4837248515%_)))))
                (let () (declare (not safe)) (_%g4837248515%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4837248515%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4837248515%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g84139_|
                                             _%hd4841548924%_)
                                            (if (gx#stx-pair? _%tl4841648927%_)
                                                (let ((_%e4849848562%_
                                                       (gx#syntax-e
                                                        _%tl4841648927%_)))
                                                  (let ((_%tl4850048569%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4849848562%_)))
                                                        (_%hd4849948566%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4849848562%_))))
                                                    (if (gx#stx-null?
                                                         _%tl4850048569%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl4841048907%_)
                                                            (let ((_%__splice7905879059%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%tl4841048907%_ '0)))
                      (let ((_%tl4850348575%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7905879059%_ '1)))
                            (_%target4850148572%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7905879059%_ '0))))
                        (if (gx#stx-null? _%tl4850348575%_)
                            (_%__match7927679277%_
                             _%e4840548890%_
                             _%hd4840648894%_
                             _%tl4840748897%_
                             _%e4840848900%_
                             _%hd4840948904%_
                             _%tl4841048907%_
                             _%e4841148910%_
                             _%hd4841248914%_
                             _%tl4841348917%_
                             _%e4841448920%_
                             _%hd4841548924%_
                             _%tl4841648927%_
                             _%e4849848562%_
                             _%hd4849948566%_
                             _%tl4850048569%_
                             _%__splice7905879059%_
                             _%target4850148572%_
                             _%tl4850348575%_)
                            (let () (declare (not safe)) (_%g4837248515%_)))))
                    (let () (declare (not safe)) (_%g4837248515%_)))
                (let () (declare (not safe)) (_%g4837248515%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4837248515%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4837248515%_))))))
                            (let () (declare (not safe)) (_%g4837248515%_)))))
                     (_%__match7910079101%_
                      (lambda (_%e4837849012%_
                               _%hd4837949016%_
                               _%tl4838049019%_
                               _%e4838149022%_
                               _%hd4838249026%_
                               _%tl4838349029%_
                               _%e4838449032%_
                               _%hd4838549036%_
                               _%tl4838649039%_
                               _%e4838749042%_
                               _%hd4838849046%_
                               _%tl4838949049%_
                               _%e4839049052%_
                               _%hd4839149056%_
                               _%tl4839249059%_
                               _%__splice7904279043%_
                               _%target4839349062%_
                               _%tl4839549065%_)
                        (letrec ((_%loop4839649068%_
                                  (lambda (_%hd4839449072%_ _%body4840049075%_)
                                    (if (gx#stx-pair? _%hd4839449072%_)
                                        (let ((_%e4839749078%_
                                               (gx#syntax-e _%hd4839449072%_)))
                                          (let ((_%lp-tl4839949085%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4839749078%_)))
                                                (_%lp-hd4839849082%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4839749078%_))))
                                            (_%loop4839649068%_
                                             _%lp-tl4839949085%_
                                             (cons _%lp-hd4839849082%_
                                                   _%body4840049075%_))))
                                        (let ((_%body4840149088%_
                                               (reverse _%body4840049075%_)))
                                          (let ((_%L49092%_ _%body4840149088%_)
                                                (_%L49094%_ _%hd4839149056%_)
                                                (_%L49095%_ _%hd4838849046%_)
                                                (_%L49096%_ _%hd4838549036%_))
                                            (if (let ((__tmp84140
                                                       (gx#syntax-local-value
                                                        _%L49094%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp84140))
                                                (_%__kont7904079041%_
                                                 _%L49092%_
                                                 _%L49094%_
                                                 _%L49095%_
                                                 _%L49096%_)
                                                (_%__match7912479125%_
                                                 _%e4837849012%_
                                                 _%hd4837949016%_
                                                 _%tl4838049019%_
                                                 _%e4838149022%_
                                                 _%hd4838249026%_
                                                 _%tl4838349029%_
                                                 _%e4838449032%_
                                                 _%hd4838549036%_
                                                 _%tl4838649039%_
                                                 _%e4838749042%_
                                                 _%hd4838849046%_
                                                 _%tl4838949049%_))))))))
                          (_%loop4839649068%_ _%target4839349062%_ '())))))
                (if (gx#stx-pair? _%__stx7903779038%_)
                    (let ((_%e4837849012%_ (gx#syntax-e _%__stx7903779038%_)))
                      (let ((_%tl4838049019%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4837849012%_)))
                            (_%hd4837949016%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4837849012%_))))
                        (if (gx#stx-pair? _%tl4838049019%_)
                            (let ((_%e4838149022%_
                                   (gx#syntax-e _%tl4838049019%_)))
                              (let ((_%tl4838349029%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4838149022%_)))
                                    (_%hd4838249026%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4838149022%_))))
                                (if (gx#stx-pair? _%hd4838249026%_)
                                    (let ((_%e4838449032%_
                                           (gx#syntax-e _%hd4838249026%_)))
                                      (let ((_%tl4838649039%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4838449032%_)))
                                            (_%hd4838549036%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4838449032%_))))
                                        (if (gx#stx-pair? _%tl4838649039%_)
                                            (let ((_%e4838749042%_
                                                   (gx#syntax-e
                                                    _%tl4838649039%_)))
                                              (let ((_%tl4838949049%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4838749042%_)))
                                                    (_%hd4838849046%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4838749042%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4838949049%_)
                                                    (let ((_%e4839049052%_
                                                           (gx#syntax-e
                                                            _%tl4838949049%_)))
                                                      (let ((_%tl4839249059%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4839049052%_)))
                    (_%hd4839149056%_
                     (let () (declare (not safe)) (##car _%e4839049052%_))))
                (if (gx#stx-null? _%tl4839249059%_)
                    (if (gx#stx-pair/null? _%tl4838349029%_)
                        (let ((_%__splice7904279043%_
                               (gx#syntax-split-splice _%tl4838349029%_ '0)))
                          (let ((_%tl4839549065%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7904279043%_ '1)))
                                (_%target4839349062%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7904279043%_ '0))))
                            (if (gx#stx-null? _%tl4839549065%_)
                                (_%__match7910079101%_
                                 _%e4837849012%_
                                 _%hd4837949016%_
                                 _%tl4838049019%_
                                 _%e4838149022%_
                                 _%hd4838249026%_
                                 _%tl4838349029%_
                                 _%e4838449032%_
                                 _%hd4838549036%_
                                 _%tl4838649039%_
                                 _%e4838749042%_
                                 _%hd4838849046%_
                                 _%tl4838949049%_
                                 _%e4839049052%_
                                 _%hd4839149056%_
                                 _%tl4839249059%_
                                 _%__splice7904279043%_
                                 _%target4839349062%_
                                 _%tl4839549065%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g4837248515%_)))))
                        (let () (declare (not safe)) (_%g4837248515%_)))
                    (let () (declare (not safe)) (_%g4837248515%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4837248515%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4837248515%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4837248515%_)))))
                            (let () (declare (not safe)) (_%g4837248515%_)))))
                    (let () (declare (not safe)) (_%g4837248515%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#with-interface|
      (lambda (_%stx49490%_)
        (letrec ((_%expand-body49493%_
                  (lambda (_%var50494%_
                           _%Interface50496%_
                           _%body50497%_
                           _%checked?50498%_)
                    (let* ((_%type50500%_
                            (let ()
                              (declare (not safe))
                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                               _%stx49490%_
                               _%Interface50496%_)))
                           (_%g5050350547%_
                            (lambda (_%g5050450543%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5050450543%_)))
                           (_%g5050250705%_
                            (lambda (_%g5050450551%_)
                              (if (gx#stx-pair? _%g5050450551%_)
                                  (let ((_%e5051250554%_
                                         (gx#syntax-e _%g5050450551%_)))
                                    (let ((_%hd5051350558%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5051250554%_)))
                                          (_%tl5051450561%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5051250554%_))))
                                      (if (gx#stx-pair? _%tl5051450561%_)
                                          (let ((_%e5051550564%_
                                                 (gx#syntax-e
                                                  _%tl5051450561%_)))
                                            (let ((_%hd5051650568%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5051550564%_)))
                                                  (_%tl5051750571%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5051550564%_))))
                                              (if (gx#stx-pair?
                                                   _%tl5051750571%_)
                                                  (let ((_%e5051850574%_
                                                         (gx#syntax-e
                                                          _%tl5051750571%_)))
                                                    (let ((_%hd5051950578%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5051850574%_)))
                                                          (_%tl5052050581%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5051850574%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5052050581%_)
                                                          (let ((_%e5052150584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5052050581%_)))
                    (let ((_%hd5052250588%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5052150584%_)))
                          (_%tl5052350591%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5052150584%_))))
                      (if (gx#stx-pair? _%tl5052350591%_)
                          (let ((_%e5052450594%_
                                 (gx#syntax-e _%tl5052350591%_)))
                            (let ((_%hd5052550598%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5052450594%_)))
                                  (_%tl5052650601%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5052450594%_))))
                              (if (gx#stx-pair? _%tl5052650601%_)
                                  (let ((_%e5052750604%_
                                         (gx#syntax-e _%tl5052650601%_)))
                                    (let ((_%hd5052850608%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5052750604%_)))
                                          (_%tl5052950611%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5052750604%_))))
                                      (if (gx#stx-pair? _%tl5052950611%_)
                                          (let ((_%e5053050614%_
                                                 (gx#syntax-e
                                                  _%tl5052950611%_)))
                                            (let ((_%hd5053150618%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5053050614%_)))
                                                  (_%tl5053250621%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5053050614%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5053150618%_)
                                                  (let ((_g84141_
                                                         (gx#syntax-split-splice
                                                          _%hd5053150618%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g84142_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g84141_)
                           (##values-length _g84141_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g84142_ 2)))
                    (error "Context expects 2 values" _g84142_)))
              (let ((_%target5053350624%_
                     (let () (declare (not safe)) (##values-ref _g84141_ 0)))
                    (_%tl5053550627%_
                     (let () (declare (not safe)) (##values-ref _g84141_ 1))))
                (if (gx#stx-null? _%tl5053550627%_)
                    (letrec ((_%loop5053650630%_
                              (lambda (_%hd5053450634%_ _%body5054050637%_)
                                (if (gx#stx-pair? _%hd5053450634%_)
                                    (let ((_%e5053750640%_
                                           (gx#syntax-e _%hd5053450634%_)))
                                      (let ((_%lp-hd5053850644%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5053750640%_)))
                                            (_%lp-tl5053950647%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5053750640%_))))
                                        (_%loop5053650630%_
                                         _%lp-tl5053950647%_
                                         (cons _%lp-hd5053850644%_
                                               _%body5054050637%_))))
                                    (let ((_%body5054150650%_
                                           (reverse _%body5054050637%_)))
                                      (if (gx#stx-null? _%tl5053250621%_)
                                          ((lambda (_%L50654%_
                                                    _%L50656%_
                                                    _%L50657%_
                                                    _%L50658%_
                                                    _%L50659%_
                                                    _%L50660%_
                                                    _%L50661%_)
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (cons _%L50658%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'begin-annotation)
                                   (cons (cons (gx#datum->syntax '#f '@type)
                                               (cons _%L50659%_ '()))
                                         (cons _%L50658%_ '())))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'let-syntax)
                             (cons (cons (cons _%L50661%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'make-type-env)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%L50658%_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _%L50660%_ '()))
                               (cons _%L50657%_
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%L50656%_ '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '())
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5069650699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5069750702%_)
                      (cons _%g5069650699%_ _%g5069750702%_))
                    '()
                    _%L50654%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body5054150650%_
                                           _%hd5052850608%_
                                           _%hd5052550598%_
                                           _%hd5052250588%_
                                           _%hd5051950578%_
                                           _%hd5051650568%_
                                           _%hd5051350558%_)
                                          (_%g5050350547%_
                                           _%g5050450551%_)))))))
                      (_%loop5053650630%_ _%target5053350624%_ '()))
                    (_%g5050350547%_ _%g5050450551%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5050350547%_
                                                   _%g5050450551%_))))
                                          (_%g5050350547%_ _%g5050450551%_))))
                                  (_%g5050350547%_ _%g5050450551%_))))
                          (_%g5050350547%_ _%g5050450551%_))))
                  (_%g5050350547%_ _%g5050450551%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5050350547%_
                                                   _%g5050450551%_))))
                                          (_%g5050350547%_ _%g5050450551%_))))
                                  (_%g5050350547%_ _%g5050450551%_)))))
                      (_%g5050250705%_
                       (list (gx#syntax-local-introduce '@@type)
                             _%type50500%_
                             (let ((__obj83976 _%type50500%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj83976
                                      'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj83976
                                      '4
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/contract~InterfaceInfo#interface-info::t
                                    __obj83976
                                    'instance-type)))
                             _%var50494%_
                             _%checked?50498%_
                             (let ()
                               (declare (not safe))
                               (gerbil/core/contract~TypeEnv#current-type-env))
                             _%body50497%_)))))
                 (_%expand49495%_
                  (lambda (_%var50293%_
                           _%Interface50295%_
                           _%body50296%_
                           _%checked?50297%_
                           _%checked-methods?50298%_
                           _%maybe?50299%_)
                    (let* ((_%g5030150309%_
                            (lambda (_%g5030250305%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5030250305%_)))
                           (_%g5030050486%_
                            (lambda (_%g5030250313%_)
                              ((lambda (_%L50316%_)
                                 (if _%checked?50297%_
                                     (if _%maybe?50299%_
                                         (let* ((_%g5032850343%_
                                                 (lambda (_%g5032950339%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5032950339%_)))
                                                (_%g5032750389%_
                                                 (lambda (_%g5032950347%_)
                                                   (if (gx#stx-pair?
                                                        _%g5032950347%_)
                                                       (let ((_%e5033250350%_
                                                              (gx#syntax-e
                                                               _%g5032950347%_)))
                                                         (let ((_%hd5033350354%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5033250350%_)))
                       (_%tl5033450357%_
                        (let () (declare (not safe)) (##cdr _%e5033250350%_))))
                   (if (gx#stx-pair? _%tl5033450357%_)
                       (let ((_%e5033550360%_ (gx#syntax-e _%tl5033450357%_)))
                         (let ((_%hd5033650364%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5033550360%_)))
                               (_%tl5033750367%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5033550360%_))))
                           (if (gx#stx-null? _%tl5033750367%_)
                               ((lambda (_%L50370%_ _%L50372%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L50372%_
                                                    (cons (cons _%L50370%_
                                                                (cons _%L50372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons _%L50372%_
                                                                (cons _%L50316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'nil-dereference!)
                                          (cons _%L50372%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))
                                _%hd5033650364%_
                                _%hd5033350354%_)
                               (_%g5032850343%_ _%g5032950347%_))))
                       (_%g5032850343%_ _%g5032950347%_))))
               (_%g5032850343%_ _%g5032950347%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5032750389%_
                                            (list _%var50293%_
                                                  _%Interface50295%_)))
                                         (let* ((_%g5039350408%_
                                                 (lambda (_%g5039450404%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5039450404%_)))
                                                (_%g5039250452%_
                                                 (lambda (_%g5039450412%_)
                                                   (if (gx#stx-pair?
                                                        _%g5039450412%_)
                                                       (let ((_%e5039750415%_
                                                              (gx#syntax-e
                                                               _%g5039450412%_)))
                                                         (let ((_%hd5039850419%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e5039750415%_)))
                       (_%tl5039950422%_
                        (let () (declare (not safe)) (##cdr _%e5039750415%_))))
                   (if (gx#stx-pair? _%tl5039950422%_)
                       (let ((_%e5040050425%_ (gx#syntax-e _%tl5039950422%_)))
                         (let ((_%hd5040150429%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5040050425%_)))
                               (_%tl5040250432%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5040050425%_))))
                           (if (gx#stx-null? _%tl5040250432%_)
                               ((lambda (_%L50435%_ _%L50437%_)
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _%L50437%_
                                                    (cons (cons _%L50435%_
                                                                (cons _%L50437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _%L50316%_ '()))))
                                _%hd5040150429%_
                                _%hd5039850419%_)
                               (_%g5039350408%_ _%g5039450412%_))))
                       (_%g5039350408%_ _%g5039450412%_))))
               (_%g5039350408%_ _%g5039450412%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g5039250452%_
                                            (list _%var50293%_
                                                  _%Interface50295%_))))
                                     (if _%maybe?50299%_
                                         (let* ((_%g5045650464%_
                                                 (lambda (_%g5045750460%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5045750460%_)))
                                                (_%g5045550482%_
                                                 (lambda (_%g5045750468%_)
                                                   ((lambda (_%L50471%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%L50471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L50316%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'nil-dereference!)
                                            (cons _%L50471%_ '()))
                                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5045750468%_))))
                                           (_%g5045550482%_ _%var50293%_))
                                         _%L50316%_)))
                               _%g5030250313%_))))
                      (_%g5030050486%_
                       (_%expand-body49493%_
                        _%var50293%_
                        _%Interface50295%_
                        _%body50296%_
                        (let ((_%$e50490%_ _%checked?50297%_))
                          (if _%$e50490%_
                              _%$e50490%_
                              _%checked-methods?50298%_))))))))
          (let* ((_%__stx7927979280%_ _%stx49490%_)
                 (_%g4950149644%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx7927979280%_))))
            (let ((_%__kont7928279283%_
                   (lambda (_%L50221%_ _%L50223%_ _%L50224%_ _%L50225%_)
                     (let* ((_%g5025050258%_
                             (lambda (_%g5025150254%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g5025150254%_)))
                            (_%g5024950285%_
                             (lambda (_%g5025150262%_)
                               ((lambda (_%L50265%_)
                                  (cons (gx#datum->syntax '#f 'with-interface)
                                        (cons (cons _%L50225%_
                                                    (cons _%L50224%_
                                                          (cons _%L50265%_
                                                                '())))
                                              (foldr (lambda (_%g5027650279%_
                                                              _%g5027750282%_)
                                                       (cons _%g5027650279%_
                                                             _%g5027750282%_))
                                                     '()
                                                     _%L50221%_))))
                                _%g5025150262%_))))
                       (_%g5024950285%_
                        (let ((__obj83977 (gx#syntax-local-value _%L50223%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj83977
                                 'gerbil/core/contract~TypeReference#type-reference::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj83977
                                 '1
                                 '#f
                                 '#f))
                              (class-slot-ref
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               __obj83977
                               'identifier)))))))
                  (_%__kont7928679287%_
                   (lambda (_%L50099%_ _%L50101%_ _%L50102%_)
                     (_%expand49495%_
                      _%L50102%_
                      _%L50101%_
                      (foldr (lambda (_%g5012550128%_ _%g5012650131%_)
                               (cons _%g5012550128%_ _%g5012650131%_))
                             '()
                             _%L50099%_)
                      '#t
                      '#t
                      '#f)))
                  (_%__kont7929079291%_
                   (lambda (_%L49977%_ _%L49979%_ _%L49980%_)
                     (_%expand49495%_
                      _%L49980%_
                      _%L49979%_
                      (foldr (lambda (_%g5000350006%_ _%g5000450009%_)
                               (cons _%g5000350006%_ _%g5000450009%_))
                             '()
                             _%L49977%_)
                      '#t
                      '#t
                      '#t)))
                  (_%__kont7929479295%_
                   (lambda (_%L49855%_ _%L49857%_ _%L49858%_)
                     (_%expand49495%_
                      _%L49858%_
                      _%L49857%_
                      (foldr (lambda (_%g4988149884%_ _%g4988249887%_)
                               (cons _%g4988149884%_ _%g4988249887%_))
                             '()
                             _%L49855%_)
                      '#f
                      '#f
                      '#f)))
                  (_%__kont7929879299%_
                   (lambda (_%L49731%_ _%L49733%_ _%L49734%_)
                     (_%expand49495%_
                      _%L49734%_
                      _%L49733%_
                      (foldr (lambda (_%g4975949762%_ _%g4976049765%_)
                               (cons _%g4975949762%_ _%g4976049765%_))
                             '()
                             _%L49731%_)
                      '#f
                      '#t
                      '#f))))
              (let* ((_%__match7951879519%_
                      (lambda (_%e4961549651%_
                               _%hd4961649655%_
                               _%tl4961749658%_
                               _%e4961849661%_
                               _%hd4961949665%_
                               _%tl4962049668%_
                               _%e4962149671%_
                               _%hd4962249675%_
                               _%tl4962349678%_
                               _%e4962449681%_
                               _%hd4962549685%_
                               _%tl4962649688%_
                               _%e4962749691%_
                               _%hd4962849695%_
                               _%tl4962949698%_
                               _%__splice7930079301%_
                               _%target4963049701%_
                               _%tl4963249704%_)
                        (letrec ((_%loop4963349707%_
                                  (lambda (_%hd4963149711%_ _%body4963749714%_)
                                    (if (gx#stx-pair? _%hd4963149711%_)
                                        (let ((_%e4963449717%_
                                               (gx#syntax-e _%hd4963149711%_)))
                                          (let ((_%lp-tl4963649724%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4963449717%_)))
                                                (_%lp-hd4963549721%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4963449717%_))))
                                            (_%loop4963349707%_
                                             _%lp-tl4963649724%_
                                             (cons _%lp-hd4963549721%_
                                                   _%body4963749714%_))))
                                        (let ((_%body4963849727%_
                                               (reverse _%body4963749714%_)))
                                          (let ((_%L49731%_ _%body4963849727%_)
                                                (_%L49733%_ _%hd4962849695%_)
                                                (_%L49734%_ _%hd4962249675%_))
                                            (if (and (gx#identifier?
                                                      _%L49734%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49733%_)))
                                                (_%__kont7929879299%_
                                                 _%L49731%_
                                                 _%L49733%_
                                                 _%L49734%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4950149644%_)))))))))
                          (_%loop4963349707%_ _%target4963049701%_ '()))))
                     (_%__match7947479475%_
                      (lambda (_%e4958849775%_
                               _%hd4958949779%_
                               _%tl4959049782%_
                               _%e4959149785%_
                               _%hd4959249789%_
                               _%tl4959349792%_
                               _%e4959449795%_
                               _%hd4959549799%_
                               _%tl4959649802%_
                               _%e4959749805%_
                               _%hd4959849809%_
                               _%tl4959949812%_
                               _%e4960049815%_
                               _%hd4960149819%_
                               _%tl4960249822%_
                               _%__splice7929679297%_
                               _%target4960349825%_
                               _%tl4960549828%_)
                        (letrec ((_%loop4960649831%_
                                  (lambda (_%hd4960449835%_ _%body4961049838%_)
                                    (if (gx#stx-pair? _%hd4960449835%_)
                                        (let ((_%e4960749841%_
                                               (gx#syntax-e _%hd4960449835%_)))
                                          (let ((_%lp-tl4960949848%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4960749841%_)))
                                                (_%lp-hd4960849845%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4960749841%_))))
                                            (_%loop4960649831%_
                                             _%lp-tl4960949848%_
                                             (cons _%lp-hd4960849845%_
                                                   _%body4961049838%_))))
                                        (let ((_%body4961149851%_
                                               (reverse _%body4961049838%_)))
                                          (let ((_%L49855%_ _%body4961149851%_)
                                                (_%L49857%_ _%hd4960149819%_)
                                                (_%L49858%_ _%hd4959549799%_))
                                            (if (and (gx#identifier?
                                                      _%L49858%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49857%_)))
                                                (_%__kont7929479295%_
                                                 _%L49855%_
                                                 _%L49857%_
                                                 _%L49858%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4950149644%_)))))))))
                          (_%loop4960649831%_ _%target4960349825%_ '()))))
                     (_%__match7943079431%_
                      (lambda (_%e4956149897%_
                               _%hd4956249901%_
                               _%tl4956349904%_
                               _%e4956449907%_
                               _%hd4956549911%_
                               _%tl4956649914%_
                               _%e4956749917%_
                               _%hd4956849921%_
                               _%tl4956949924%_
                               _%e4957049927%_
                               _%hd4957149931%_
                               _%tl4957249934%_
                               _%e4957349937%_
                               _%hd4957449941%_
                               _%tl4957549944%_
                               _%__splice7929279293%_
                               _%target4957649947%_
                               _%tl4957849950%_)
                        (letrec ((_%loop4957949953%_
                                  (lambda (_%hd4957749957%_ _%body4958349960%_)
                                    (if (gx#stx-pair? _%hd4957749957%_)
                                        (let ((_%e4958049963%_
                                               (gx#syntax-e _%hd4957749957%_)))
                                          (let ((_%lp-tl4958249970%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4958049963%_)))
                                                (_%lp-hd4958149967%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4958049963%_))))
                                            (_%loop4957949953%_
                                             _%lp-tl4958249970%_
                                             (cons _%lp-hd4958149967%_
                                                   _%body4958349960%_))))
                                        (let ((_%body4958449973%_
                                               (reverse _%body4958349960%_)))
                                          (let ((_%L49977%_ _%body4958449973%_)
                                                (_%L49979%_ _%hd4957449941%_)
                                                (_%L49980%_ _%hd4956849921%_))
                                            (if (and (gx#identifier?
                                                      _%L49980%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L49979%_)))
                                                (_%__kont7929079291%_
                                                 _%L49977%_
                                                 _%L49979%_
                                                 _%L49980%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4950149644%_)))))))))
                          (_%loop4957949953%_ _%target4957649947%_ '()))))
                     (_%__match7938679387%_
                      (lambda (_%e4953450019%_
                               _%hd4953550023%_
                               _%tl4953650026%_
                               _%e4953750029%_
                               _%hd4953850033%_
                               _%tl4953950036%_
                               _%e4954050039%_
                               _%hd4954150043%_
                               _%tl4954250046%_
                               _%e4954350049%_
                               _%hd4954450053%_
                               _%tl4954550056%_
                               _%e4954650059%_
                               _%hd4954750063%_
                               _%tl4954850066%_
                               _%__splice7928879289%_
                               _%target4954950069%_
                               _%tl4955150072%_)
                        (letrec ((_%loop4955250075%_
                                  (lambda (_%hd4955050079%_ _%body4955650082%_)
                                    (if (gx#stx-pair? _%hd4955050079%_)
                                        (let ((_%e4955350085%_
                                               (gx#syntax-e _%hd4955050079%_)))
                                          (let ((_%lp-tl4955550092%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4955350085%_)))
                                                (_%lp-hd4955450089%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4955350085%_))))
                                            (_%loop4955250075%_
                                             _%lp-tl4955550092%_
                                             (cons _%lp-hd4955450089%_
                                                   _%body4955650082%_))))
                                        (let ((_%body4955750095%_
                                               (reverse _%body4955650082%_)))
                                          (let ((_%L50099%_ _%body4955750095%_)
                                                (_%L50101%_ _%hd4954750063%_)
                                                (_%L50102%_ _%hd4954150043%_))
                                            (if (and (gx#identifier?
                                                      _%L50102%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gerbil/core/contract~InterfaceInfo#syntax-local-interface-info?__0
                                                        _%L50101%_)))
                                                (_%__kont7928679287%_
                                                 _%L50099%_
                                                 _%L50101%_
                                                 _%L50102%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4950149644%_)))))))))
                          (_%loop4955250075%_ _%target4954950069%_ '()))))
                     (_%__match7936679367%_
                      (lambda (_%e4953450019%_
                               _%hd4953550023%_
                               _%tl4953650026%_
                               _%e4953750029%_
                               _%hd4953850033%_
                               _%tl4953950036%_
                               _%e4954050039%_
                               _%hd4954150043%_
                               _%tl4954250046%_
                               _%e4954350049%_
                               _%hd4954450053%_
                               _%tl4954550056%_)
                        (if (gx#identifier? _%hd4954450053%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/contract~Using[1]#_g84143_|
                                 _%hd4954450053%_)
                                (if (gx#stx-pair? _%tl4954550056%_)
                                    (let ((_%e4954650059%_
                                           (gx#syntax-e _%tl4954550056%_)))
                                      (let ((_%tl4954850066%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4954650059%_)))
                                            (_%hd4954750063%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4954650059%_))))
                                        (if (gx#stx-null? _%tl4954850066%_)
                                            (if (gx#stx-pair/null?
                                                 _%tl4953950036%_)
                                                (let ((_%__splice7928879289%_
                                                       (gx#syntax-split-splice
                                                        _%tl4953950036%_
                                                        '0)))
                                                  (let ((_%tl4955150072%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7928879289%_
                                                            '1)))
                                                        (_%target4954950069%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice7928879289%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4955150072%_)
                                                        (_%__match7938679387%_
                                                         _%e4953450019%_
                                                         _%hd4953550023%_
                                                         _%tl4953650026%_
                                                         _%e4953750029%_
                                                         _%hd4953850033%_
                                                         _%tl4953950036%_
                                                         _%e4954050039%_
                                                         _%hd4954150043%_
                                                         _%tl4954250046%_
                                                         _%e4954350049%_
                                                         _%hd4954450053%_
                                                         _%tl4954550056%_
                                                         _%e4954650059%_
                                                         _%hd4954750063%_
                                                         _%tl4954850066%_
                                                         _%__splice7928879289%_
                                                         _%target4954950069%_
                                                         _%tl4955150072%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4950149644%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4950149644%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4950149644%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4950149644%_)))
                                (if (gx#free-identifier=?
                                     |gerbil/core/contract~Using[1]#_g84144_|
                                     _%hd4954450053%_)
                                    (if (gx#stx-pair? _%tl4954550056%_)
                                        (let ((_%e4957349937%_
                                               (gx#syntax-e _%tl4954550056%_)))
                                          (let ((_%tl4957549944%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4957349937%_)))
                                                (_%hd4957449941%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4957349937%_))))
                                            (if (gx#stx-null? _%tl4957549944%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl4953950036%_)
                                                    (let ((_%__splice7929279293%_
                                                           (gx#syntax-split-splice
                                                            _%tl4953950036%_
                                                            '0)))
                                                      (let ((_%tl4957849950%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice7929279293%_ '1)))
                    (_%target4957649947%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice7929279293%_ '0))))
                (if (gx#stx-null? _%tl4957849950%_)
                    (_%__match7943079431%_
                     _%e4953450019%_
                     _%hd4953550023%_
                     _%tl4953650026%_
                     _%e4953750029%_
                     _%hd4953850033%_
                     _%tl4953950036%_
                     _%e4954050039%_
                     _%hd4954150043%_
                     _%tl4954250046%_
                     _%e4954350049%_
                     _%hd4954450053%_
                     _%tl4954550056%_
                     _%e4957349937%_
                     _%hd4957449941%_
                     _%tl4957549944%_
                     _%__splice7929279293%_
                     _%target4957649947%_
                     _%tl4957849950%_)
                    (let () (declare (not safe)) (_%g4950149644%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4950149644%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4950149644%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4950149644%_)))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~Using[1]#_g84145_|
                                         _%hd4954450053%_)
                                        (if (gx#stx-pair? _%tl4954550056%_)
                                            (let ((_%e4960049815%_
                                                   (gx#syntax-e
                                                    _%tl4954550056%_)))
                                              (let ((_%tl4960249822%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4960049815%_)))
                                                    (_%hd4960149819%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4960049815%_))))
                                                (if (gx#stx-null?
                                                     _%tl4960249822%_)
                                                    (if (gx#stx-pair/null?
                                                         _%tl4953950036%_)
                                                        (let ((_%__splice7929679297%_
                                                               (gx#syntax-split-splice
                                                                _%tl4953950036%_
                                                                '0)))
                                                          (let ((_%tl4960549828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7929679297%_ '1)))
                        (_%target4960349825%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice7929679297%_ '0))))
                    (if (gx#stx-null? _%tl4960549828%_)
                        (_%__match7947479475%_
                         _%e4953450019%_
                         _%hd4953550023%_
                         _%tl4953650026%_
                         _%e4953750029%_
                         _%hd4953850033%_
                         _%tl4953950036%_
                         _%e4954050039%_
                         _%hd4954150043%_
                         _%tl4954250046%_
                         _%e4954350049%_
                         _%hd4954450053%_
                         _%tl4954550056%_
                         _%e4960049815%_
                         _%hd4960149819%_
                         _%tl4960249822%_
                         _%__splice7929679297%_
                         _%target4960349825%_
                         _%tl4960549828%_)
                        (let () (declare (not safe)) (_%g4950149644%_)))))
                (let () (declare (not safe)) (_%g4950149644%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4950149644%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4950149644%_)))
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~Using[1]#_g84146_|
                                             _%hd4954450053%_)
                                            (if (gx#stx-pair? _%tl4954550056%_)
                                                (let ((_%e4962749691%_
                                                       (gx#syntax-e
                                                        _%tl4954550056%_)))
                                                  (let ((_%tl4962949698%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e4962749691%_)))
                                                        (_%hd4962849695%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e4962749691%_))))
                                                    (if (gx#stx-null?
                                                         _%tl4962949698%_)
                                                        (if (gx#stx-pair/null?
                                                             _%tl4953950036%_)
                                                            (let ((_%__splice7930079301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _%tl4953950036%_ '0)))
                      (let ((_%tl4963249704%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7930079301%_ '1)))
                            (_%target4963049701%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice7930079301%_ '0))))
                        (if (gx#stx-null? _%tl4963249704%_)
                            (_%__match7951879519%_
                             _%e4953450019%_
                             _%hd4953550023%_
                             _%tl4953650026%_
                             _%e4953750029%_
                             _%hd4953850033%_
                             _%tl4953950036%_
                             _%e4954050039%_
                             _%hd4954150043%_
                             _%tl4954250046%_
                             _%e4954350049%_
                             _%hd4954450053%_
                             _%tl4954550056%_
                             _%e4962749691%_
                             _%hd4962849695%_
                             _%tl4962949698%_
                             _%__splice7930079301%_
                             _%target4963049701%_
                             _%tl4963249704%_)
                            (let () (declare (not safe)) (_%g4950149644%_)))))
                    (let () (declare (not safe)) (_%g4950149644%_)))
                (let () (declare (not safe)) (_%g4950149644%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4950149644%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4950149644%_))))))
                            (let () (declare (not safe)) (_%g4950149644%_)))))
                     (_%__match7934279343%_
                      (lambda (_%e4950750141%_
                               _%hd4950850145%_
                               _%tl4950950148%_
                               _%e4951050151%_
                               _%hd4951150155%_
                               _%tl4951250158%_
                               _%e4951350161%_
                               _%hd4951450165%_
                               _%tl4951550168%_
                               _%e4951650171%_
                               _%hd4951750175%_
                               _%tl4951850178%_
                               _%e4951950181%_
                               _%hd4952050185%_
                               _%tl4952150188%_
                               _%__splice7928479285%_
                               _%target4952250191%_
                               _%tl4952450194%_)
                        (letrec ((_%loop4952550197%_
                                  (lambda (_%hd4952350201%_ _%body4952950204%_)
                                    (if (gx#stx-pair? _%hd4952350201%_)
                                        (let ((_%e4952650207%_
                                               (gx#syntax-e _%hd4952350201%_)))
                                          (let ((_%lp-tl4952850214%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4952650207%_)))
                                                (_%lp-hd4952750211%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4952650207%_))))
                                            (_%loop4952550197%_
                                             _%lp-tl4952850214%_
                                             (cons _%lp-hd4952750211%_
                                                   _%body4952950204%_))))
                                        (let ((_%body4953050217%_
                                               (reverse _%body4952950204%_)))
                                          (let ((_%L50221%_ _%body4953050217%_)
                                                (_%L50223%_ _%hd4952050185%_)
                                                (_%L50224%_ _%hd4951750175%_)
                                                (_%L50225%_ _%hd4951450165%_))
                                            (if (let ((__tmp84147
                                                       (gx#syntax-local-value
                                                        _%L50223%_
                                                        false)))
                                                  (declare (not safe))
                                                  (class-instance?
                                                   |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                   __tmp84147))
                                                (_%__kont7928279283%_
                                                 _%L50221%_
                                                 _%L50223%_
                                                 _%L50224%_
                                                 _%L50225%_)
                                                (_%__match7936679367%_
                                                 _%e4950750141%_
                                                 _%hd4950850145%_
                                                 _%tl4950950148%_
                                                 _%e4951050151%_
                                                 _%hd4951150155%_
                                                 _%tl4951250158%_
                                                 _%e4951350161%_
                                                 _%hd4951450165%_
                                                 _%tl4951550168%_
                                                 _%e4951650171%_
                                                 _%hd4951750175%_
                                                 _%tl4951850178%_))))))))
                          (_%loop4952550197%_ _%target4952250191%_ '())))))
                (if (gx#stx-pair? _%__stx7927979280%_)
                    (let ((_%e4950750141%_ (gx#syntax-e _%__stx7927979280%_)))
                      (let ((_%tl4950950148%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4950750141%_)))
                            (_%hd4950850145%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4950750141%_))))
                        (if (gx#stx-pair? _%tl4950950148%_)
                            (let ((_%e4951050151%_
                                   (gx#syntax-e _%tl4950950148%_)))
                              (let ((_%tl4951250158%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4951050151%_)))
                                    (_%hd4951150155%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4951050151%_))))
                                (if (gx#stx-pair? _%hd4951150155%_)
                                    (let ((_%e4951350161%_
                                           (gx#syntax-e _%hd4951150155%_)))
                                      (let ((_%tl4951550168%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4951350161%_)))
                                            (_%hd4951450165%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4951350161%_))))
                                        (if (gx#stx-pair? _%tl4951550168%_)
                                            (let ((_%e4951650171%_
                                                   (gx#syntax-e
                                                    _%tl4951550168%_)))
                                              (let ((_%tl4951850178%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4951650171%_)))
                                                    (_%hd4951750175%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4951650171%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4951850178%_)
                                                    (let ((_%e4951950181%_
                                                           (gx#syntax-e
                                                            _%tl4951850178%_)))
                                                      (let ((_%tl4952150188%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4951950181%_)))
                    (_%hd4952050185%_
                     (let () (declare (not safe)) (##car _%e4951950181%_))))
                (if (gx#stx-null? _%tl4952150188%_)
                    (if (gx#stx-pair/null? _%tl4951250158%_)
                        (let ((_%__splice7928479285%_
                               (gx#syntax-split-splice _%tl4951250158%_ '0)))
                          (let ((_%tl4952450194%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7928479285%_ '1)))
                                (_%target4952250191%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice7928479285%_ '0))))
                            (if (gx#stx-null? _%tl4952450194%_)
                                (_%__match7934279343%_
                                 _%e4950750141%_
                                 _%hd4950850145%_
                                 _%tl4950950148%_
                                 _%e4951050151%_
                                 _%hd4951150155%_
                                 _%tl4951250158%_
                                 _%e4951350161%_
                                 _%hd4951450165%_
                                 _%tl4951550168%_
                                 _%e4951650171%_
                                 _%hd4951750175%_
                                 _%tl4951850178%_
                                 _%e4951950181%_
                                 _%hd4952050185%_
                                 _%tl4952150188%_
                                 _%__splice7928479285%_
                                 _%target4952250191%_
                                 _%tl4952450194%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g4950149644%_)))))
                        (let () (declare (not safe)) (_%g4950149644%_)))
                    (let () (declare (not safe)) (_%g4950149644%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4950149644%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4950149644%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4950149644%_)))))
                            (let () (declare (not safe)) (_%g4950149644%_)))))
                    (let () (declare (not safe)) (_%g4950149644%_)))))))))
    (define |gerbil/core/contract~Using[:0:]#%%app-dotted|
      (lambda (_%stx50715%_)
        (let* ((_%__stx7952179522%_ _%stx50715%_)
               (_%g5072050780%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7952179522%_))))
          (let ((_%__kont7952479525%_
                 (lambda (_%L51342%_ _%L51344%_)
                   (cons (gx#datum->syntax '#f '%%app-dotted)
                         (cons (cons (gx#datum->syntax '#f '%%ref-dotted)
                                     (cons _%L51344%_ '()))
                               (foldr (lambda (_%g5136051363%_ _%g5136151366%_)
                                        (cons _%g5136051363%_ _%g5136151366%_))
                                      '()
                                      _%L51342%_)))))
                (_%__kont7952879529%_
                 (lambda (_%L50928%_ _%L50930%_)
                   (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                        _%L50930%_)
                       (let* ((_%g5095050957%_
                               (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                                _%stx50715%_
                                _%L50930%_))
                              (_%E5095250963%_
                               (lambda ()
                                 (error '"No clause matching"
                                        _%g5095050957%_
                                        '([var . parts]))
                                 (void)))
                              (_%K5095351261%_
                               (lambda (_%parts50967%_ _%var50969%_)
                                 (let ((_%$e50971%_
                                        (let ()
                                          (declare (not safe))
                                          (gerbil/core/contract~TypeEnv#type-env-lookup
                                           _%var50969%_))))
                                   (if _%$e50971%_
                                       ((lambda (_%te50975%_)
                                          (let _%loop50978%_ ((_%parts50981%_
                                                               _%parts50967%_)
                                                              (_%type50983%_
                                                               (##direct-structure-ref
                                                                _%te50975%_
                                                                '2
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%object50984%_
                                                               _%var50969%_)
                                                              (_%checked-method?50985%_
                                                               (##direct-structure-ref
                                                                _%te50975%_
                                                                '3
                                                                gerbil/core/contract~TypeEnv#type-env::t
                                                                '#f))
                                                              (_%nil-check?50986%_
                                                               '#f))
                                            (let* ((_%parts5098750995%_
                                                    _%parts50981%_)
                                                   (_%else5098951056%_
                                                    (lambda ()
                                                      (let* ((_%g5100751015%_
                                                              (lambda (_%g5100851011%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g5100851011%_)))
                     (_%g5100651052%_
                      (lambda (_%g5100851019%_)
                        ((lambda (_%L51022%_)
                           (cons (gx#datum->syntax '#f '%%app)
                                 (cons _%L51022%_
                                       (foldr (lambda (_%g5104351046%_
                                                       _%g5104451049%_)
                                                (cons _%g5104351046%_
                                                      _%g5104451049%_))
                                              '()
                                              _%L50928%_))))
                         _%g5100851019%_))))
                (_%g5100651052%_ _%object50984%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K5099151235%_
                                                    (lambda (_%rest51060%_
                                                             _%part51062%_)
                                                      (if (and (not _%nil-check?50986%_)
                                                               (let ((__tmp84148
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (symbol->string _%part51062%_)))
                         (declare (not safe))
                         (##string-prefix? '"?" __tmp84148)))
                  (let ((_%str51066%_ (symbol->string _%part51062%_)))
                    (_%loop50978%_
                     (cons (let ((__tmp84149
                                  (substring
                                   _%str51066%_
                                   '1
                                   (string-length _%str51066%_))))
                             (declare (not safe))
                             (##string->symbol __tmp84149))
                           _%rest51060%_)
                     _%type50983%_
                     _%object50984%_
                     _%checked-method?50985%_
                     '#t))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/mop~MOP-2#class-type-info::t
                         _%type50983%_))
                      (let* ((_%g5107151086%_
                              (lambda (_%g5107251082%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5107251082%_)))
                             (_%g5107051155%_
                              (lambda (_%g5107251090%_)
                                (if (gx#stx-pair? _%g5107251090%_)
                                    (let ((_%e5107551093%_
                                           (gx#syntax-e _%g5107251090%_)))
                                      (let ((_%hd5107651097%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5107551093%_)))
                                            (_%tl5107751100%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5107551093%_))))
                                        (if (gx#stx-pair? _%tl5107751100%_)
                                            (let ((_%e5107851103%_
                                                   (gx#syntax-e
                                                    _%tl5107751100%_)))
                                              (let ((_%hd5107951107%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5107851103%_)))
                                                    (_%tl5108051110%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5107851103%_))))
                                                (if (gx#stx-null?
                                                     _%tl5108051110%_)
                                                    ((lambda (_%L51113%_
                                                              _%L51115%_)
                                                       (if (null? _%rest51060%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%%app)
                         (cons (cons _%L51113%_ (cons _%L51115%_ '()))
                               (foldr (lambda (_%g5113451137%_ _%g5113551140%_)
                                        (cons _%g5113451137%_ _%g5113551140%_))
                                      '()
                                      _%L50928%_)))
                   (let ((_%$e51143%_
                          (|gerbil/core/contract~Using[1]#!class-slot-type|
                           _%type50983%_
                           _%part51062%_)))
                     (if _%$e51143%_
                         ((lambda (_%slot-type51147%_)
                            (let ((_%slot-type51150%_
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                      _%stx50715%_
                                      _%slot-type51147%_))))
                              (_%loop50978%_
                               _%rest51060%_
                               _%slot-type51150%_
                               (cons _%L51113%_ (cons _%L51115%_ '()))
                               (|gerbil/core/contract~Using[1]#!class-slot-checked-method-contract?|
                                _%type50983%_
                                _%part51062%_)
                               '#f)))
                          _%$e51143%_)
                         (gx#raise-syntax-error
                          '#f
                          '"unresolved dotted reference; unknown type for slot"
                          _%stx50715%_
                          _%L50930%_
                          _%part51062%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5107951107%_
                                                     _%hd5107651097%_)
                                                    (_%g5107151086%_
                                                     _%g5107251090%_))))
                                            (_%g5107151086%_
                                             _%g5107251090%_))))
                                    (_%g5107151086%_ _%g5107251090%_)))))
                        (_%g5107051155%_
                         (list (if _%nil-check?50986%_
                                   (cons 'check-nil!
                                         (cons _%object50984%_ '()))
                                   _%object50984%_)
                               (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                _%stx50715%_
                                _%type50983%_
                                _%part51062%_))))
                      (if (let ()
                            (declare (not safe))
                            (class-instance?
                             gerbil/core/contract~InterfaceInfo#interface-info::t
                             _%type50983%_))
                          (if (null? _%rest51060%_)
                              (let* ((_%g5116151176%_
                                      (lambda (_%g5116251172%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g5116251172%_)))
                                     (_%g5116051229%_
                                      (lambda (_%g5116251180%_)
                                        (if (gx#stx-pair? _%g5116251180%_)
                                            (let ((_%e5116551183%_
                                                   (gx#syntax-e
                                                    _%g5116251180%_)))
                                              (let ((_%hd5116651187%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5116551183%_)))
                                                    (_%tl5116751190%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5116551183%_))))
                                                (if (gx#stx-pair?
                                                     _%tl5116751190%_)
                                                    (let ((_%e5116851193%_
                                                           (gx#syntax-e
                                                            _%tl5116751190%_)))
                                                      (let ((_%hd5116951197%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e5116851193%_)))
                    (_%tl5117051200%_
                     (let () (declare (not safe)) (##cdr _%e5116851193%_))))
                (if (gx#stx-null? _%tl5117051200%_)
                    ((lambda (_%L51203%_ _%L51205%_)
                       (cons _%L51203%_
                             (cons _%L51205%_
                                   (foldr (lambda (_%g5122051223%_
                                                   _%g5122151226%_)
                                            (cons _%g5122051223%_
                                                  _%g5122151226%_))
                                          '()
                                          _%L50928%_))))
                     _%hd5116951197%_
                     _%hd5116651187%_)
                    (_%g5116151176%_ _%g5116251180%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5116151176%_
                                                     _%g5116251180%_))))
                                            (_%g5116151176%_
                                             _%g5116251180%_)))))
                                (_%g5116051229%_
                                 (list (if _%nil-check?50986%_
                                           (cons 'check-nil!
                                                 (cons _%object50984%_ '()))
                                           _%object50984%_)
                                       (gx#stx-identifier
                                        _%L50930%_
                                        (if _%checked-method?50985%_ '"" '"&")
                                        (let ((__obj83978 _%type50983%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 __obj83978
                                                 'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 __obj83978
                                                 '1
                                                 '#f
                                                 '#f))
                                              (unchecked-slot-ref
                                               __obj83978
                                               'name)))
                                        '"-"
                                        _%part51062%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"illegal dotted reference; interface has no slots"
                               _%stx50715%_
                               _%L50930%_
                               _%part51062%_))
                          (gx#raise-syntax-error
                           '#f
                           '"unexpected type"
                           _%stx50715%_
                           _%type50983%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (pair? _%parts5098750995%_)
                                                  (let ((_%hd5099251239%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%parts5098750995%_)))
                                                        (_%tl5099351242%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%parts5098750995%_))))
                                                    (let* ((_%part51245%_
                                                            _%hd5099251239%_)
                                                           (_%rest51248%_
                                                            _%tl5099351242%_))
                                                      (_%K5099151235%_
                                                       _%rest51248%_
                                                       _%part51245%_)))
                                                  (_%else5098951056%_)))))
                                        _%$e50971%_)
                                       (cons (gx#datum->syntax '#f '%%app)
                                             (cons _%L50930%_
                                                   (foldr (lambda (_%g5125251255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5125351258%_)
                    (cons _%g5125251255%_ _%g5125351258%_))
                  '()
                  _%L50928%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (if (pair? _%g5095050957%_)
                             (let ((_%hd5095451265%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%g5095050957%_)))
                                   (_%tl5095551268%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%g5095050957%_))))
                               (let* ((_%var51271%_ _%hd5095451265%_)
                                      (_%parts51274%_ _%tl5095551268%_))
                                 (_%K5095351261%_
                                  _%parts51274%_
                                  _%var51271%_)))
                             (_%E5095250963%_)))
                       (cons (gx#datum->syntax '#f '%%app)
                             (cons _%L50930%_
                                   (foldr (lambda (_%g5127651279%_
                                                   _%g5127751282%_)
                                            (cons _%g5127651279%_
                                                  _%g5127751282%_))
                                          '()
                                          _%L50928%_))))))
                (_%__kont7953279533%_
                 (lambda (_%L50827%_)
                   (cons (gx#datum->syntax '#f '%%app)
                         (foldr (lambda (_%g5084250845%_ _%g5084350848%_)
                                  (cons _%g5084250845%_ _%g5084350848%_))
                                '()
                                _%L50827%_)))))
            (let* ((_%__match7960879609%_
                    (lambda (_%e5076350787%_
                             _%hd5076450791%_
                             _%tl5076550794%_
                             _%__splice7953479535%_
                             _%target5076650797%_
                             _%tl5076850800%_)
                      (letrec ((_%loop5076950803%_
                                (lambda (_%hd5076750807%_ _%arg5077350810%_)
                                  (if (gx#stx-pair? _%hd5076750807%_)
                                      (let ((_%e5077050813%_
                                             (gx#syntax-e _%hd5076750807%_)))
                                        (let ((_%lp-tl5077250820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5077050813%_)))
                                              (_%lp-hd5077150817%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5077050813%_))))
                                          (_%loop5076950803%_
                                           _%lp-tl5077250820%_
                                           (cons _%lp-hd5077150817%_
                                                 _%arg5077350810%_))))
                                      (let ((_%arg5077450823%_
                                             (reverse _%arg5077350810%_)))
                                        (_%__kont7953279533%_
                                         _%arg5077450823%_))))))
                        (_%loop5076950803%_ _%target5076650797%_ '()))))
                   (_%__match7959479595%_
                    (lambda (_%e5074150858%_
                             _%hd5074250862%_
                             _%tl5074350865%_
                             _%e5074450868%_
                             _%hd5074550872%_
                             _%tl5074650875%_
                             _%e5074750878%_
                             _%hd5074850882%_
                             _%tl5074950885%_
                             _%e5075050888%_
                             _%hd5075150892%_
                             _%tl5075250895%_
                             _%__splice7953079531%_
                             _%target5075350898%_
                             _%tl5075550901%_)
                      (letrec ((_%loop5075650904%_
                                (lambda (_%hd5075450908%_ _%rand5076050911%_)
                                  (if (gx#stx-pair? _%hd5075450908%_)
                                      (let ((_%e5075750914%_
                                             (gx#syntax-e _%hd5075450908%_)))
                                        (let ((_%lp-tl5075950921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5075750914%_)))
                                              (_%lp-hd5075850918%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5075750914%_))))
                                          (_%loop5075650904%_
                                           _%lp-tl5075950921%_
                                           (cons _%lp-hd5075850918%_
                                                 _%rand5076050911%_))))
                                      (let ((_%rand5076150924%_
                                             (reverse _%rand5076050911%_)))
                                        (_%__kont7952879529%_
                                         _%rand5076150924%_
                                         _%hd5075150892%_))))))
                        (_%loop5075650904%_ _%target5075350898%_ '()))))
                   (_%__match7956879569%_
                    (lambda (_%e5074150858%_
                             _%hd5074250862%_
                             _%tl5074350865%_
                             _%e5074450868%_
                             _%hd5074550872%_
                             _%tl5074650875%_)
                      (if (gx#stx-pair? _%hd5074550872%_)
                          (let ((_%e5074750878%_
                                 (gx#syntax-e _%hd5074550872%_)))
                            (let ((_%tl5074950885%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5074750878%_)))
                                  (_%hd5074850882%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5074750878%_))))
                              (if (gx#identifier? _%hd5074850882%_)
                                  (if (gx#free-identifier=?
                                       |gerbil/core/contract~Using[1]#_g84150_|
                                       _%hd5074850882%_)
                                      (if (gx#stx-pair? _%tl5074950885%_)
                                          (let ((_%e5075050888%_
                                                 (gx#syntax-e
                                                  _%tl5074950885%_)))
                                            (let ((_%tl5075250895%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5075050888%_)))
                                                  (_%hd5075150892%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5075050888%_))))
                                              (if (gx#stx-null?
                                                   _%tl5075250895%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl5074650875%_)
                                                      (let ((_%__splice7953079531%_
                                                             (gx#syntax-split-splice
                                                              _%tl5074650875%_
                                                              '0)))
                                                        (let ((_%tl5075550901%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7953079531%_ '1)))
                      (_%target5075350898%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7953079531%_ '0))))
                  (if (gx#stx-null? _%tl5075550901%_)
                      (_%__match7959479595%_
                       _%e5074150858%_
                       _%hd5074250862%_
                       _%tl5074350865%_
                       _%e5074450868%_
                       _%hd5074550872%_
                       _%tl5074650875%_
                       _%e5074750878%_
                       _%hd5074850882%_
                       _%tl5074950885%_
                       _%e5075050888%_
                       _%hd5075150892%_
                       _%tl5075250895%_
                       _%__splice7953079531%_
                       _%target5075350898%_
                       _%tl5075550901%_)
                      (if (gx#stx-pair/null? _%tl5074350865%_)
                          (let ((_%__splice7953479535%_
                                 (gx#syntax-split-splice _%tl5074350865%_ '0)))
                            (let ((_%tl5076850800%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7953479535%_ '1)))
                                  (_%target5076650797%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7953479535%_
                                      '0))))
                              (if (gx#stx-null? _%tl5076850800%_)
                                  (_%__match7960879609%_
                                   _%e5074150858%_
                                   _%hd5074250862%_
                                   _%tl5074350865%_
                                   _%__splice7953479535%_
                                   _%target5076650797%_
                                   _%tl5076850800%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5072050780%_)))))
                          (let () (declare (not safe)) (_%g5072050780%_))))))
              (if (gx#stx-pair/null? _%tl5074350865%_)
                  (let ((_%__splice7953479535%_
                         (gx#syntax-split-splice _%tl5074350865%_ '0)))
                    (let ((_%tl5076850800%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7953479535%_ '1)))
                          (_%target5076650797%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7953479535%_ '0))))
                      (if (gx#stx-null? _%tl5076850800%_)
                          (_%__match7960879609%_
                           _%e5074150858%_
                           _%hd5074250862%_
                           _%tl5074350865%_
                           _%__splice7953479535%_
                           _%target5076650797%_
                           _%tl5076850800%_)
                          (let () (declare (not safe)) (_%g5072050780%_)))))
                  (let () (declare (not safe)) (_%g5072050780%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5074350865%_)
                                                      (let ((_%__splice7953479535%_
                                                             (gx#syntax-split-splice
                                                              _%tl5074350865%_
                                                              '0)))
                                                        (let ((_%tl5076850800%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7953479535%_ '1)))
                      (_%target5076650797%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7953479535%_ '0))))
                  (if (gx#stx-null? _%tl5076850800%_)
                      (_%__match7960879609%_
                       _%e5074150858%_
                       _%hd5074250862%_
                       _%tl5074350865%_
                       _%__splice7953479535%_
                       _%target5076650797%_
                       _%tl5076850800%_)
                      (let () (declare (not safe)) (_%g5072050780%_)))))
              (let () (declare (not safe)) (_%g5072050780%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl5074350865%_)
                                              (let ((_%__splice7953479535%_
                                                     (gx#syntax-split-splice
                                                      _%tl5074350865%_
                                                      '0)))
                                                (let ((_%tl5076850800%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7953479535%_
                                                          '1)))
                                                      (_%target5076650797%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice7953479535%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5076850800%_)
                                                      (_%__match7960879609%_
                                                       _%e5074150858%_
                                                       _%hd5074250862%_
                                                       _%tl5074350865%_
                                                       _%__splice7953479535%_
                                                       _%target5076650797%_
                                                       _%tl5076850800%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g5072050780%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g5072050780%_))))
                                      (if (gx#stx-pair/null? _%tl5074350865%_)
                                          (let ((_%__splice7953479535%_
                                                 (gx#syntax-split-splice
                                                  _%tl5074350865%_
                                                  '0)))
                                            (let ((_%tl5076850800%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7953479535%_
                                                      '1)))
                                                  (_%target5076650797%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7953479535%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5076850800%_)
                                                  (_%__match7960879609%_
                                                   _%e5074150858%_
                                                   _%hd5074250862%_
                                                   _%tl5074350865%_
                                                   _%__splice7953479535%_
                                                   _%target5076650797%_
                                                   _%tl5076850800%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5072050780%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5072050780%_))))
                                  (if (gx#stx-pair/null? _%tl5074350865%_)
                                      (let ((_%__splice7953479535%_
                                             (gx#syntax-split-splice
                                              _%tl5074350865%_
                                              '0)))
                                        (let ((_%tl5076850800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7953479535%_
                                                  '1)))
                                              (_%target5076650797%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice7953479535%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5076850800%_)
                                              (_%__match7960879609%_
                                               _%e5074150858%_
                                               _%hd5074250862%_
                                               _%tl5074350865%_
                                               _%__splice7953479535%_
                                               _%target5076650797%_
                                               _%tl5076850800%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5072050780%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5072050780%_))))))
                          (if (gx#stx-pair/null? _%tl5074350865%_)
                              (let ((_%__splice7953479535%_
                                     (gx#syntax-split-splice
                                      _%tl5074350865%_
                                      '0)))
                                (let ((_%tl5076850800%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7953479535%_
                                          '1)))
                                      (_%target5076650797%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7953479535%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5076850800%_)
                                      (_%__match7960879609%_
                                       _%e5074150858%_
                                       _%hd5074250862%_
                                       _%tl5074350865%_
                                       _%__splice7953479535%_
                                       _%target5076650797%_
                                       _%tl5076850800%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5072050780%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5072050780%_))))))
                   (_%__match7955679557%_
                    (lambda (_%e5072451292%_
                             _%hd5072551296%_
                             _%tl5072651299%_
                             _%e5072751302%_
                             _%hd5072851306%_
                             _%tl5072951309%_
                             _%__splice7952679527%_
                             _%target5073051312%_
                             _%tl5073251315%_)
                      (letrec ((_%loop5073351318%_
                                (lambda (_%hd5073151322%_ _%rand5073751325%_)
                                  (if (gx#stx-pair? _%hd5073151322%_)
                                      (let ((_%e5073451328%_
                                             (gx#syntax-e _%hd5073151322%_)))
                                        (let ((_%lp-tl5073651335%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5073451328%_)))
                                              (_%lp-hd5073551332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5073451328%_))))
                                          (_%loop5073351318%_
                                           _%lp-tl5073651335%_
                                           (cons _%lp-hd5073551332%_
                                                 _%rand5073751325%_))))
                                      (let ((_%rand5073851338%_
                                             (reverse _%rand5073751325%_)))
                                        (let ((_%L51342%_ _%rand5073851338%_)
                                              (_%L51344%_ _%hd5072851306%_))
                                          (if (gx#identifier? _%L51344%_)
                                              (_%__kont7952479525%_
                                               _%L51342%_
                                               _%L51344%_)
                                              (_%__match7956879569%_
                                               _%e5072451292%_
                                               _%hd5072551296%_
                                               _%tl5072651299%_
                                               _%e5072751302%_
                                               _%hd5072851306%_
                                               _%tl5072951309%_))))))))
                        (_%loop5073351318%_ _%target5073051312%_ '())))))
              (if (gx#stx-pair? _%__stx7952179522%_)
                  (let ((_%e5072451292%_ (gx#syntax-e _%__stx7952179522%_)))
                    (let ((_%tl5072651299%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5072451292%_)))
                          (_%hd5072551296%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5072451292%_))))
                      (if (gx#stx-pair? _%tl5072651299%_)
                          (let ((_%e5072751302%_
                                 (gx#syntax-e _%tl5072651299%_)))
                            (let ((_%tl5072951309%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5072751302%_)))
                                  (_%hd5072851306%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5072751302%_))))
                              (if (gx#stx-pair/null? _%tl5072951309%_)
                                  (let ((_%__splice7952679527%_
                                         (gx#syntax-split-splice
                                          _%tl5072951309%_
                                          '0)))
                                    (let ((_%tl5073251315%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7952679527%_
                                              '1)))
                                          (_%target5073051312%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice7952679527%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5073251315%_)
                                          (_%__match7955679557%_
                                           _%e5072451292%_
                                           _%hd5072551296%_
                                           _%tl5072651299%_
                                           _%e5072751302%_
                                           _%hd5072851306%_
                                           _%tl5072951309%_
                                           _%__splice7952679527%_
                                           _%target5073051312%_
                                           _%tl5073251315%_)
                                          (if (gx#stx-pair? _%hd5072851306%_)
                                              (let ((_%e5074750878%_
                                                     (gx#syntax-e
                                                      _%hd5072851306%_)))
                                                (let ((_%tl5074950885%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5074750878%_)))
                                                      (_%hd5074850882%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5074750878%_))))
                                                  (if (gx#identifier?
                                                       _%hd5074850882%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~Using[1]#_g84150_|
                                                           _%hd5074850882%_)
                                                          (if (gx#stx-pair?
                                                               _%tl5074950885%_)
                                                              (let ((_%e5075050888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl5074950885%_)))
                        (let ((_%tl5075250895%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5075050888%_)))
                              (_%hd5075150892%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5075050888%_))))
                          (if (gx#stx-pair/null? _%tl5072651299%_)
                              (let ((_%__splice7953479535%_
                                     (gx#syntax-split-splice
                                      _%tl5072651299%_
                                      '0)))
                                (let ((_%tl5076850800%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7953479535%_
                                          '1)))
                                      (_%target5076650797%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7953479535%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5076850800%_)
                                      (_%__match7960879609%_
                                       _%e5072451292%_
                                       _%hd5072551296%_
                                       _%tl5072651299%_
                                       _%__splice7953479535%_
                                       _%target5076650797%_
                                       _%tl5076850800%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5072050780%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5072050780%_)))))
                      (if (gx#stx-pair/null? _%tl5072651299%_)
                          (let ((_%__splice7953479535%_
                                 (gx#syntax-split-splice _%tl5072651299%_ '0)))
                            (let ((_%tl5076850800%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice7953479535%_ '1)))
                                  (_%target5076650797%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice7953479535%_
                                      '0))))
                              (if (gx#stx-null? _%tl5076850800%_)
                                  (_%__match7960879609%_
                                   _%e5072451292%_
                                   _%hd5072551296%_
                                   _%tl5072651299%_
                                   _%__splice7953479535%_
                                   _%target5076650797%_
                                   _%tl5076850800%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5072050780%_)))))
                          (let () (declare (not safe)) (_%g5072050780%_))))
                  (if (gx#stx-pair/null? _%tl5072651299%_)
                      (let ((_%__splice7953479535%_
                             (gx#syntax-split-splice _%tl5072651299%_ '0)))
                        (let ((_%tl5076850800%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7953479535%_ '1)))
                              (_%target5076650797%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7953479535%_ '0))))
                          (if (gx#stx-null? _%tl5076850800%_)
                              (_%__match7960879609%_
                               _%e5072451292%_
                               _%hd5072551296%_
                               _%tl5072651299%_
                               _%__splice7953479535%_
                               _%target5076650797%_
                               _%tl5076850800%_)
                              (let ()
                                (declare (not safe))
                                (_%g5072050780%_)))))
                      (let () (declare (not safe)) (_%g5072050780%_))))
              (if (gx#stx-pair/null? _%tl5072651299%_)
                  (let ((_%__splice7953479535%_
                         (gx#syntax-split-splice _%tl5072651299%_ '0)))
                    (let ((_%tl5076850800%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7953479535%_ '1)))
                          (_%target5076650797%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7953479535%_ '0))))
                      (if (gx#stx-null? _%tl5076850800%_)
                          (_%__match7960879609%_
                           _%e5072451292%_
                           _%hd5072551296%_
                           _%tl5072651299%_
                           _%__splice7953479535%_
                           _%target5076650797%_
                           _%tl5076850800%_)
                          (let () (declare (not safe)) (_%g5072050780%_)))))
                  (let () (declare (not safe)) (_%g5072050780%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5072651299%_)
                                                  (let ((_%__splice7953479535%_
                                                         (gx#syntax-split-splice
                                                          _%tl5072651299%_
                                                          '0)))
                                                    (let ((_%tl5076850800%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7953479535%_
                                                              '1)))
                                                          (_%target5076650797%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7953479535%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5076850800%_)
                                                          (_%__match7960879609%_
                                                           _%e5072451292%_
                                                           _%hd5072551296%_
                                                           _%tl5072651299%_
                                                           _%__splice7953479535%_
                                                           _%target5076650797%_
                                                           _%tl5076850800%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5072050780%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5072050780%_)))))))
                                  (if (gx#stx-pair? _%hd5072851306%_)
                                      (let ((_%e5074750878%_
                                             (gx#syntax-e _%hd5072851306%_)))
                                        (let ((_%tl5074950885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5074750878%_)))
                                              (_%hd5074850882%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5074750878%_))))
                                          (if (gx#identifier? _%hd5074850882%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~Using[1]#_g84150_|
                                                   _%hd5074850882%_)
                                                  (if (gx#stx-pair?
                                                       _%tl5074950885%_)
                                                      (let ((_%e5075050888%_
                                                             (gx#syntax-e
                                                              _%tl5074950885%_)))
                                                        (let ((_%tl5075250895%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5075050888%_)))
                      (_%hd5075150892%_
                       (let () (declare (not safe)) (##car _%e5075050888%_))))
                  (if (gx#stx-pair/null? _%tl5072651299%_)
                      (let ((_%__splice7953479535%_
                             (gx#syntax-split-splice _%tl5072651299%_ '0)))
                        (let ((_%tl5076850800%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7953479535%_ '1)))
                              (_%target5076650797%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice7953479535%_ '0))))
                          (if (gx#stx-null? _%tl5076850800%_)
                              (_%__match7960879609%_
                               _%e5072451292%_
                               _%hd5072551296%_
                               _%tl5072651299%_
                               _%__splice7953479535%_
                               _%target5076650797%_
                               _%tl5076850800%_)
                              (let ()
                                (declare (not safe))
                                (_%g5072050780%_)))))
                      (let () (declare (not safe)) (_%g5072050780%_)))))
              (if (gx#stx-pair/null? _%tl5072651299%_)
                  (let ((_%__splice7953479535%_
                         (gx#syntax-split-splice _%tl5072651299%_ '0)))
                    (let ((_%tl5076850800%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7953479535%_ '1)))
                          (_%target5076650797%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice7953479535%_ '0))))
                      (if (gx#stx-null? _%tl5076850800%_)
                          (_%__match7960879609%_
                           _%e5072451292%_
                           _%hd5072551296%_
                           _%tl5072651299%_
                           _%__splice7953479535%_
                           _%target5076650797%_
                           _%tl5076850800%_)
                          (let () (declare (not safe)) (_%g5072050780%_)))))
                  (let () (declare (not safe)) (_%g5072050780%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl5072651299%_)
                                                      (let ((_%__splice7953479535%_
                                                             (gx#syntax-split-splice
                                                              _%tl5072651299%_
                                                              '0)))
                                                        (let ((_%tl5076850800%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice7953479535%_ '1)))
                      (_%target5076650797%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice7953479535%_ '0))))
                  (if (gx#stx-null? _%tl5076850800%_)
                      (_%__match7960879609%_
                       _%e5072451292%_
                       _%hd5072551296%_
                       _%tl5072651299%_
                       _%__splice7953479535%_
                       _%target5076650797%_
                       _%tl5076850800%_)
                      (let () (declare (not safe)) (_%g5072050780%_)))))
              (let () (declare (not safe)) (_%g5072050780%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl5072651299%_)
                                                  (let ((_%__splice7953479535%_
                                                         (gx#syntax-split-splice
                                                          _%tl5072651299%_
                                                          '0)))
                                                    (let ((_%tl5076850800%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7953479535%_
                                                              '1)))
                                                          (_%target5076650797%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice7953479535%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl5076850800%_)
                                                          (_%__match7960879609%_
                                                           _%e5072451292%_
                                                           _%hd5072551296%_
                                                           _%tl5072651299%_
                                                           _%__splice7953479535%_
                                                           _%target5076650797%_
                                                           _%tl5076850800%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g5072050780%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5072050780%_))))))
                                      (if (gx#stx-pair/null? _%tl5072651299%_)
                                          (let ((_%__splice7953479535%_
                                                 (gx#syntax-split-splice
                                                  _%tl5072651299%_
                                                  '0)))
                                            (let ((_%tl5076850800%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7953479535%_
                                                      '1)))
                                                  (_%target5076650797%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice7953479535%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5076850800%_)
                                                  (_%__match7960879609%_
                                                   _%e5072451292%_
                                                   _%hd5072551296%_
                                                   _%tl5072651299%_
                                                   _%__splice7953479535%_
                                                   _%target5076650797%_
                                                   _%tl5076850800%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5072050780%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5072050780%_)))))))
                          (if (gx#stx-pair/null? _%tl5072651299%_)
                              (let ((_%__splice7953479535%_
                                     (gx#syntax-split-splice
                                      _%tl5072651299%_
                                      '0)))
                                (let ((_%tl5076850800%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7953479535%_
                                          '1)))
                                      (_%target5076650797%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice7953479535%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5076850800%_)
                                      (_%__match7960879609%_
                                       _%e5072451292%_
                                       _%hd5072551296%_
                                       _%tl5072651299%_
                                       _%__splice7953479535%_
                                       _%target5076650797%_
                                       _%tl5076850800%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5072050780%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g5072050780%_))))))
                  (let () (declare (not safe)) (_%g5072050780%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%ref-dotted|
      (lambda (_%stx51376%_)
        (let* ((_%__stx7961179612%_ _%stx51376%_)
               (_%g5138051401%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7961179612%_))))
          (let ((_%__kont7961479615%_
                 (lambda (_%L51469%_)
                   (let* ((_%g5148151488%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx51376%_
                            _%L51469%_))
                          (_%E5148351494%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5148151488%_
                                    '([var . parts]))
                             (void)))
                          (_%K5148451710%_
                           (lambda (_%parts51498%_ _%var51500%_)
                             (let ((_%$e51502%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51500%_))))
                               (if _%$e51502%_
                                   ((lambda (_%te51506%_)
                                      (let _%loop51509%_ ((_%parts51512%_
                                                           _%parts51498%_)
                                                          (_%type51514%_
                                                           (##direct-structure-ref
                                                            _%te51506%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51515%_
                                                           _%var51500%_)
                                                          (_%nil-check?51516%_
                                                           '#f))
                                        (let* ((_%parts5151751525%_
                                                _%parts51512%_)
                                               (_%else5151951537%_
                                                (lambda () _%object51515%_))
                                               (_%K5152151692%_
                                                (lambda (_%rest51541%_
                                                         _%part51543%_)
                                                  (if (and (not _%nil-check?51516%_)
                                                           (let ((__tmp84151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51543%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp84151)))
              (let ((_%str51547%_ (symbol->string _%part51543%_)))
                (_%loop51509%_
                 (cons (let ((__tmp84152
                              (substring
                               _%str51547%_
                               '1
                               (string-length _%str51547%_))))
                         (declare (not safe))
                         (##string->symbol __tmp84152))
                       _%rest51541%_)
                 _%type51514%_
                 _%object51515%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51514%_))
                  (let* ((_%g5155251567%_
                          (lambda (_%g5155351563%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g5155351563%_)))
                         (_%g5155151684%_
                          (lambda (_%g5155351571%_)
                            (if (gx#stx-pair? _%g5155351571%_)
                                (let ((_%e5155651574%_
                                       (gx#syntax-e _%g5155351571%_)))
                                  (let ((_%hd5155751578%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5155651574%_)))
                                        (_%tl5155851581%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5155651574%_))))
                                    (if (gx#stx-pair? _%tl5155851581%_)
                                        (let ((_%e5155951584%_
                                               (gx#syntax-e _%tl5155851581%_)))
                                          (let ((_%hd5156051588%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5155951584%_)))
                                                (_%tl5156151591%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5155951584%_))))
                                            (if (gx#stx-null? _%tl5156151591%_)
                                                ((lambda (_%L51594%_
                                                          _%L51596%_)
                                                   (if (null? _%rest51541%_)
                                                       (let ((_%$e51626%_
                                                              (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                               _%type51514%_
                                                               _%part51543%_)))
                                                         (if _%$e51626%_
                                                             ((lambda (_%slot-type51630%_)
                                                                (let* ((_%g5163351641%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g5163451637%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5163451637%_)))
                               (_%g5163251664%_
                                (lambda (_%g5163451645%_)
                                  ((lambda (_%L51648%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'begin-annotation)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@type)
                                                       (cons _%L51648%_ '()))
                                                 (cons (cons _%L51594%_
                                                             (cons _%L51596%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%g5163451645%_))))
                          (_%g5163251664%_
                           (let ()
                             (declare (not safe))
                             (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                              _%stx51376%_
                              _%slot-type51630%_)))))
                      _%$e51626%_)
                     (if _%nil-check?51516%_
                         (cons _%L51594%_
                               (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                           (cons _%L51596%_ '()))
                                     '()))
                         (cons _%L51594%_ (cons _%L51596%_ '())))))
               (let ((_%$e51672%_
                      (|gerbil/core/contract~Using[1]#!class-slot-type|
                       _%type51514%_
                       _%part51543%_)))
                 (if _%$e51672%_
                     ((lambda (_%type51676%_)
                        (let ((_%type51679%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                  _%stx51376%_
                                  _%type51676%_))))
                          (if _%nil-check?51516%_
                              (_%loop51509%_
                               _%rest51541%_
                               _%type51679%_
                               (cons _%L51594%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'check-nil!)
                                                 (cons _%L51596%_ '()))
                                           '()))
                               '#f)
                              (_%loop51509%_
                               _%rest51541%_
                               _%type51679%_
                               (cons _%L51594%_ (cons _%L51596%_ '()))
                               '#f))))
                      _%$e51672%_)
                     (gx#raise-syntax-error
                      '#f
                      '"unresolved dotted reference; unknown type for slot"
                      _%stx51376%_
                      _%L51469%_
                      _%part51543%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd5156051588%_
                                                 _%hd5155751578%_)
                                                (_%g5155251567%_
                                                 _%g5155351571%_))))
                                        (_%g5155251567%_ _%g5155351571%_))))
                                (_%g5155251567%_ _%g5155351571%_)))))
                    (_%g5155151684%_
                     (list (if _%nil-check?51516%_
                               (cons 'check-nil! (cons _%object51515%_ '()))
                               _%object51515%_)
                           (|gerbil/core/contract~Using[1]#get-slot-accessor|
                            _%stx51376%_
                            _%type51514%_
                            _%part51543%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51514%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx51376%_
                       _%type51514%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5151751525%_)
                                              (let ((_%hd5152251696%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5151751525%_)))
                                                    (_%tl5152351699%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5151751525%_))))
                                                (let* ((_%part51702%_
                                                        _%hd5152251696%_)
                                                       (_%rest51705%_
                                                        _%tl5152351699%_))
                                                  (_%K5152151692%_
                                                   _%rest51705%_
                                                   _%part51702%_)))
                                              (_%else5151951537%_)))))
                                    _%$e51502%_)
                                   (cons (gx#datum->syntax '#f '%%ref)
                                         (cons _%L51469%_ '())))))))
                     (if (pair? _%g5148151488%_)
                         (let ((_%hd5148551714%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5148151488%_)))
                               (_%tl5148651717%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5148151488%_))))
                           (let* ((_%var51720%_ _%hd5148551714%_)
                                  (_%parts51723%_ _%tl5148651717%_))
                             (_%K5148451710%_ _%parts51723%_ _%var51720%_)))
                         (_%E5148351494%_)))))
                (_%__kont7961679617%_
                 (lambda (_%L51428%_)
                   (cons (gx#datum->syntax '#f '%%ref)
                         (cons _%L51428%_ '())))))
            (let ((_%__match7963279633%_
                   (lambda (_%e5138351449%_
                            _%hd5138451453%_
                            _%tl5138551456%_
                            _%e5138651459%_
                            _%hd5138751463%_
                            _%tl5138851466%_)
                     (let ((_%L51469%_ _%hd5138751463%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L51469%_)
                           (_%__kont7961479615%_ _%L51469%_)
                           (_%__kont7961679617%_ _%hd5138751463%_))))))
              (if (gx#stx-pair? _%__stx7961179612%_)
                  (let ((_%e5138351449%_ (gx#syntax-e _%__stx7961179612%_)))
                    (let ((_%tl5138551456%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5138351449%_)))
                          (_%hd5138451453%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5138351449%_))))
                      (if (gx#stx-pair? _%tl5138551456%_)
                          (let ((_%e5138651459%_
                                 (gx#syntax-e _%tl5138551456%_)))
                            (let ((_%tl5138851466%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5138651459%_)))
                                  (_%hd5138751463%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5138651459%_))))
                              (if (gx#stx-null? _%tl5138851466%_)
                                  (_%__match7963279633%_
                                   _%e5138351449%_
                                   _%hd5138451453%_
                                   _%tl5138551456%_
                                   _%e5138651459%_
                                   _%hd5138751463%_
                                   _%tl5138851466%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g5138051401%_)))))
                          (let () (declare (not safe)) (_%g5138051401%_)))))
                  (let () (declare (not safe)) (_%g5138051401%_))))))))
    (define |gerbil/core/contract~Using[:0:]#%%set-dotted!|
      (lambda (_%stx51730%_)
        (let* ((_%__stx7964979650%_ _%stx51730%_)
               (_%g5173451763%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx7964979650%_))))
          (let ((_%__kont7965279653%_
                 (lambda (_%L51855%_ _%L51857%_)
                   (let* ((_%g5187151878%_
                           (|gerbil/core/contract~Using[1]#split-dotted-identifier|
                            _%stx51730%_
                            _%L51857%_))
                          (_%E5187351884%_
                           (lambda ()
                             (error '"No clause matching"
                                    _%g5187151878%_
                                    '([var . parts]))
                             (void)))
                          (_%K5187452114%_
                           (lambda (_%parts51888%_ _%var51890%_)
                             (let ((_%$e51892%_
                                    (let ()
                                      (declare (not safe))
                                      (gerbil/core/contract~TypeEnv#type-env-lookup
                                       _%var51890%_))))
                               (if _%$e51892%_
                                   ((lambda (_%te51896%_)
                                      (let _%loop51899%_ ((_%parts51902%_
                                                           _%parts51888%_)
                                                          (_%type51904%_
                                                           (##direct-structure-ref
                                                            _%te51896%_
                                                            '2
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%object51905%_
                                                           _%var51890%_)
                                                          (_%checked-mutator?51906%_
                                                           (##direct-structure-ref
                                                            _%te51896%_
                                                            '3
                                                            gerbil/core/contract~TypeEnv#type-env::t
                                                            '#f))
                                                          (_%nil-check?51907%_
                                                           '#f))
                                        (let* ((_%parts5190851915%_
                                                _%parts51902%_)
                                               (_%E5191051921%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%parts5190851915%_
                                                         '([part . rest]))
                                                  (void)))
                                               (_%K5191152096%_
                                                (lambda (_%rest51925%_
                                                         _%part51927%_)
                                                  (if (and (not _%nil-check?51907%_)
                                                           (let ((__tmp84153
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (symbol->string _%part51927%_)))
                     (declare (not safe))
                     (##string-prefix? '"?" __tmp84153)))
              (let ((_%str51931%_ (symbol->string _%part51927%_)))
                (_%loop51899%_
                 (cons (let ((__tmp84154
                              (substring
                               _%str51931%_
                               '1
                               (string-length _%str51931%_))))
                         (declare (not safe))
                         (##string->symbol __tmp84154))
                       _%rest51925%_)
                 _%type51904%_
                 _%object51905%_
                 _%checked-mutator?51906%_
                 '#t))
              (if (let ()
                    (declare (not safe))
                    (class-instance?
                     gerbil/core/mop~MOP-2#class-type-info::t
                     _%type51904%_))
                  (if (null? _%rest51925%_)
                      (let* ((_%g5193851953%_
                              (lambda (_%g5193951949%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g5193951949%_)))
                             (_%g5193752010%_
                              (lambda (_%g5193951957%_)
                                (if (gx#stx-pair? _%g5193951957%_)
                                    (let ((_%e5194251960%_
                                           (gx#syntax-e _%g5193951957%_)))
                                      (let ((_%hd5194351964%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5194251960%_)))
                                            (_%tl5194451967%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5194251960%_))))
                                        (if (gx#stx-pair? _%tl5194451967%_)
                                            (let ((_%e5194551970%_
                                                   (gx#syntax-e
                                                    _%tl5194451967%_)))
                                              (let ((_%hd5194651974%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5194551970%_)))
                                                    (_%tl5194751977%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5194551970%_))))
                                                (if (gx#stx-null?
                                                     _%tl5194751977%_)
                                                    ((lambda (_%L51980%_
                                                              _%L51982%_)
                                                       (if _%nil-check?51907%_
                                                           (cons _%L51980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                     (cons _%L51982%_ '()))
                               (cons _%L51855%_ '())))
                   (cons _%L51980%_ (cons _%L51982%_ (cons _%L51855%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd5194651974%_
                                                     _%hd5194351964%_)
                                                    (_%g5193851953%_
                                                     _%g5193951957%_))))
                                            (_%g5193851953%_
                                             _%g5193951957%_))))
                                    (_%g5193851953%_ _%g5193951957%_)))))
                        (_%g5193752010%_
                         (list _%object51905%_
                               (|gerbil/core/contract~Using[1]#get-slot-mutator|
                                _%stx51730%_
                                _%type51904%_
                                _%part51927%_
                                (if _%checked-mutator?51906%_
                                    (|gerbil/core/contract~Using[1]#!class-slot-contract|
                                     _%type51904%_
                                     _%part51927%_)
                                    '#f)))))
                      (let ((_%$e52014%_
                             (|gerbil/core/contract~Using[1]#!class-slot-type|
                              _%type51904%_
                              _%part51927%_)))
                        (if _%$e52014%_
                            ((lambda (_%type52018%_)
                               (let* ((_%type52021%_
                                       (let ()
                                         (declare (not safe))
                                         (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                          _%stx51730%_
                                          _%type52018%_)))
                                      (_%g5202452039%_
                                       (lambda (_%g5202552035%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g5202552035%_)))
                                      (_%g5202352086%_
                                       (lambda (_%g5202552043%_)
                                         (if (gx#stx-pair? _%g5202552043%_)
                                             (let ((_%e5202852046%_
                                                    (gx#syntax-e
                                                     _%g5202552043%_)))
                                               (let ((_%hd5202952050%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e5202852046%_)))
                                                     (_%tl5203052053%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e5202852046%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl5203052053%_)
                                                     (let ((_%e5203152056%_
                                                            (gx#syntax-e
                                                             _%tl5203052053%_)))
                                                       (let ((_%hd5203252060%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5203152056%_)))
                     (_%tl5203352063%_
                      (let () (declare (not safe)) (##cdr _%e5203152056%_))))
                 (if (gx#stx-null? _%tl5203352063%_)
                     ((lambda (_%L52066%_ _%L52068%_)
                        (_%loop51899%_
                         _%rest51925%_
                         _%type52021%_
                         (cons _%L52066%_ (cons _%L52068%_ '()))
                         (|gerbil/core/contract~Using[1]#!class-slot-checked-mutator-contract?|
                          _%type52021%_
                          _%part51927%_)
                         '#f))
                      _%hd5203252060%_
                      _%hd5202952050%_)
                     (_%g5202452039%_ _%g5202552043%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g5202452039%_
                                                      _%g5202552043%_))))
                                             (_%g5202452039%_
                                              _%g5202552043%_)))))
                                 (_%g5202352086%_
                                  (list (if _%nil-check?51907%_
                                            (cons 'check-nil!
                                                  (cons _%object51905%_ '()))
                                            _%object51905%_)
                                        (|gerbil/core/contract~Using[1]#get-slot-accessor|
                                         _%stx51730%_
                                         _%type52021%_
                                         _%part51927%_)))))
                             _%$e52014%_)
                            (gx#raise-syntax-error
                             '#f
                             '"unresolved dotted reference; unknown type for slot"
                             _%stx51730%_
                             _%L51857%_
                             _%part51927%_))))
                  (if (let ()
                        (declare (not safe))
                        (class-instance?
                         gerbil/core/contract~InterfaceInfo#interface-info::t
                         _%type51904%_))
                      (gx#raise-syntax-error
                       '#f
                       '"illegal dotted reference; interface has no slots")
                      (gx#raise-syntax-error
                       '#f
                       '"unexpected type"
                       _%stx51730%_
                       _%type51904%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (pair? _%parts5190851915%_)
                                              (let ((_%hd5191252100%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%parts5190851915%_)))
                                                    (_%tl5191352103%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%parts5190851915%_))))
                                                (let* ((_%part52106%_
                                                        _%hd5191252100%_)
                                                       (_%rest52109%_
                                                        _%tl5191352103%_))
                                                  (_%K5191152096%_
                                                   _%rest52109%_
                                                   _%part52106%_)))
                                              (_%E5191051921%_)))))
                                    _%$e51892%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/more-sugar[1]#expand-set!|
                                      _%stx51730%_)))))))
                     (if (pair? _%g5187151878%_)
                         (let ((_%hd5187552118%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%g5187151878%_)))
                               (_%tl5187652121%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%g5187151878%_))))
                           (let* ((_%var52124%_ _%hd5187552118%_)
                                  (_%parts52127%_ _%tl5187652121%_))
                             (_%K5187452114%_ _%parts52127%_ _%var52124%_)))
                         (_%E5187351884%_)))))
                (_%__kont7965479655%_
                 (lambda (_%L51800%_ _%L51802%_)
                   (let ()
                     (declare (not safe))
                     (|gerbil/core/more-sugar[1]#expand-set!| _%stx51730%_)))))
            (let ((_%__match7967679677%_
                   (lambda (_%e5173851825%_
                            _%hd5173951829%_
                            _%tl5174051832%_
                            _%e5174151835%_
                            _%hd5174251839%_
                            _%tl5174351842%_
                            _%e5174451845%_
                            _%hd5174551849%_
                            _%tl5174651852%_)
                     (let ((_%L51855%_ _%hd5174551849%_)
                           (_%L51857%_ _%hd5174251839%_))
                       (if (|gerbil/core/contract~Using[1]#dotted-identifier?|
                            _%L51857%_)
                           (_%__kont7965279653%_ _%L51855%_ _%L51857%_)
                           (_%__kont7965479655%_
                            _%hd5174551849%_
                            _%hd5174251839%_))))))
              (if (gx#stx-pair? _%__stx7964979650%_)
                  (let ((_%e5173851825%_ (gx#syntax-e _%__stx7964979650%_)))
                    (let ((_%tl5174051832%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5173851825%_)))
                          (_%hd5173951829%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5173851825%_))))
                      (if (gx#stx-pair? _%tl5174051832%_)
                          (let ((_%e5174151835%_
                                 (gx#syntax-e _%tl5174051832%_)))
                            (let ((_%tl5174351842%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5174151835%_)))
                                  (_%hd5174251839%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5174151835%_))))
                              (if (gx#stx-pair? _%tl5174351842%_)
                                  (let ((_%e5174451845%_
                                         (gx#syntax-e _%tl5174351842%_)))
                                    (let ((_%tl5174651852%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5174451845%_)))
                                          (_%hd5174551849%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5174451845%_))))
                                      (if (gx#stx-null? _%tl5174651852%_)
                                          (_%__match7967679677%_
                                           _%e5173851825%_
                                           _%hd5173951829%_
                                           _%tl5174051832%_
                                           _%e5174151835%_
                                           _%hd5174251839%_
                                           _%tl5174351842%_
                                           _%e5174451845%_
                                           _%hd5174551849%_
                                           _%tl5174651852%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5173451763%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5173451763%_)))))
                          (let () (declare (not safe)) (_%g5173451763%_)))))
                  (let () (declare (not safe)) (_%g5173451763%_))))))))))
