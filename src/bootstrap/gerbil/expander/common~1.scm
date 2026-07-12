(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g178190_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g178192_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g178194_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g178196_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g178197_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g178199_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g178200_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g178202_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g178203_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g178205_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g178206_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g178208_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj178186
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj178186 'gerbil#AST::t '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj178186 'syntax '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj178186 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj178186 '(e source) '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj178186 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj178186 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj178186 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj178186 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj178186 '#f '13 '#f '#f))
        (let ((__tmp178189 |gx[1]#_g178190_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj178186 __tmp178189 '4 '#f '#f))
        (let ((__tmp178191 |gx[1]#_g178192_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj178186 __tmp178191 '14 '#f '#f))
        (let ((__tmp178193 |gx[1]#_g178194_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj178186 __tmp178193 '15 '#f '#f))
        (let ((__tmp178195
               (cons (cons 'e |gx[1]#_g178196_|)
                     (cons (cons 'source |gx[1]#_g178197_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj178186 __tmp178195 '16 '#f '#f))
        (let ((__tmp178198
               (cons (cons 'e |gx[1]#_g178199_|)
                     (cons (cons 'source |gx[1]#_g178200_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj178186 __tmp178198 '17 '#f '#f))
        (let ((__tmp178201
               (cons (cons 'e |gx[1]#_g178202_|)
                     (cons (cons 'source |gx[1]#_g178203_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj178186 __tmp178201 '18 '#f '#f))
        (let ((__tmp178204
               (cons (cons 'e |gx[1]#_g178205_|)
                     (cons (cons 'source |gx[1]#_g178206_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj178186 __tmp178204 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj178186 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj178186 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj178186 '() '21 '#f '#f))
        __obj178186))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx176783%_)
        (let* ((_%$%g176787176801%_
                (lambda (_%$%g176788176797%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g176788176797%_)))
               (_%$%g176786176843%_
                (lambda (_%$%g176788176805%_)
                  (if (gx#stx-pair? _%$%g176788176805%_)
                      (let ((_%$%e176790176808%_
                             (gx#syntax-e _%$%g176788176805%_)))
                        (let ((_%$%hd176791176812%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e176790176808%_)))
                              (_%$%tl176792176815%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e176790176808%_))))
                          (if (gx#stx-pair? _%$%tl176792176815%_)
                              (let ((_%$%e176793176818%_
                                     (gx#syntax-e _%$%tl176792176815%_)))
                                (let ((_%$%hd176794176822%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e176793176818%_)))
                                      (_%$%tl176795176825%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e176793176818%_))))
                                  (if (gx#stx-null? _%$%tl176795176825%_)
                                      (cons (gx#datum->syntax '#f 'unless)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'procedure?)
                                                        (cons _%$%hd176794176822%_
                                                              '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'error)
                                                              (cons '"expected procedure"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd176794176822%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g176787176801%_
                                       _%$%g176788176805%_))))
                              (_%$%g176787176801%_ _%$%g176788176805%_))))
                      (_%$%g176787176801%_ _%$%g176788176805%_)))))
          (_%$%g176786176843%_ _%$stx176783%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx176847%_)
        (letrec ((_%generate176850%_
                  (lambda (_%tgt176999%_ _%kws177001%_ _%clauses177002%_)
                    (letrec ((_%generate-clause177004%_
                              (lambda (_%hd177937%_ _%E177939%_)
                                (let* ((_%__stx178089178090%_ _%hd177937%_)
                                       (_%$%g177943177970%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx178089178090%_))))
                                  (let ((_%__kont178092178093%_
                                         (lambda (_%$%g177945178066%_
                                                  _%$%g177946178068%_)
                                           (_%generate1177006%_
                                            _%hd177937%_
                                            _%$%g177946178068%_
                                            '#t
                                            _%$%g177945178066%_
                                            _%E177939%_)))
                                        (_%__kont178094178095%_
                                         (lambda (_%$%g177953178018%_
                                                  _%$%g177954178020%_
                                                  _%$%g177955178021%_)
                                           (_%generate1177006%_
                                            _%hd177937%_
                                            _%$%g177955178021%_
                                            _%$%g177954178020%_
                                            _%$%g177953178018%_
                                            _%E177939%_)))
                                        (_%__kont178096178097%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx176847%_
                                            _%hd177937%_))))
                                    (if (gx#stx-pair? _%__stx178089178090%_)
                                        (let ((_%$%e177947178046%_
                                               (gx#syntax-e
                                                _%__stx178089178090%_)))
                                          (let ((_%$%tl177949178053%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e177947178046%_)))
                                                (_%$%hd177948178050%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e177947178046%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl177949178053%_)
                                                (let ((_%$%e177950178056%_
                                                       (gx#syntax-e
                                                        _%$%tl177949178053%_)))
                                                  (let ((_%$%tl177952178063%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e177950178056%_)))
                                                        (_%$%hd177951178060%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e177950178056%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl177952178063%_)
                                                        (_%__kont178092178093%_
                                                         _%$%hd177951178060%_
                                                         _%$%hd177948178050%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl177952178063%_)
                                                            (let ((_%$%e177962178008%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl177952178063%_)))
                      (let ((_%$%tl177964178015%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e177962178008%_)))
                            (_%$%hd177963178012%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e177962178008%_))))
                        (if (gx#stx-null? _%$%tl177964178015%_)
                            (_%__kont178094178095%_
                             _%$%hd177963178012%_
                             _%$%hd177951178060%_
                             _%$%hd177948178050%_)
                            (_%__kont178096178097%_))))
                    (_%__kont178096178097%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont178096178097%_))))
                                        (_%__kont178096178097%_))))))
                             (_%generate1177006%_
                              (lambda (_%where177390%_
                                       _%hd177392%_
                                       _%fender177393%_
                                       _%body177394%_
                                       _%E177395%_)
                                (letrec ((_%recur177397%_
                                          (lambda (_%hd177400%_
                                                   _%tgt177402%_
                                                   _%K177403%_)
                                            (let* ((_%__stx178135178136%_
                                                    _%hd177400%_)
                                                   (_%$%g177406177418%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx178135178136%_))))
                                              (let ((_%__kont178138178139%_
                                                     (lambda (_%$%g177408177727%_
                                                              _%$%g177409177729%_)
                                                       (let* ((_%$%g177740177748%_
                                                               (lambda (_%$%g177741177744%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g177741177744%_)))
                      (_%$%g177739177929%_
                       (lambda (_%$%g177741177752%_)
                         (let* ((_%$%g177767177775%_
                                 (lambda (_%$%g177768177771%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g177768177771%_)))
                                (_%$%g177766177925%_
                                 (lambda (_%$%g177768177779%_)
                                   (let* ((_%$%g177795177803%_
                                           (lambda (_%$%g177796177799%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g177796177799%_)))
                                          (_%$%g177794177921%_
                                           (lambda (_%$%g177796177807%_)
                                             (let* ((_%$%g177823177831%_
                                                     (lambda (_%$%g177824177827%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g177824177827%_)))
                                                    (_%$%g177822177917%_
                                                     (lambda (_%$%g177824177835%_)
                                                       (let* ((_%$%g177851177859%_
                                                               (lambda (_%$%g177852177855%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g177852177855%_)))
                      (_%$%g177850177913%_
                       (lambda (_%$%g177852177863%_)
                         (let* ((_%$%g177879177887%_
                                 (lambda (_%$%g177880177883%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g177880177883%_)))
                                (_%$%g177878177909%_
                                 (lambda (_%$%g177880177891%_)
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'stx-pair?)
                                                     (cons _%$%g177741177752%_
                                                           '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _%$%g177768177779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'syntax-e)
                                                 (cons _%$%g177741177752%_
                                                       '()))
                                           '()))
                               '())
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%$%g177796177807%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##car)
                           (cons _%$%g177768177779%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g177824177835%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##cdr)
                                 (cons _%$%g177768177779%_ '()))
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%$%g177852177863%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%$%g177880177891%_
                                                           '())))))))
                           (_%$%g177878177909%_ _%E177395%_)))))
                 (_%$%g177850177913%_
                  (_%recur177397%_
                   _%$%g177409177729%_
                   _%$%g177796177807%_
                   (_%recur177397%_
                    _%$%g177408177727%_
                    _%$%g177824177835%_
                    _%K177403%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g177822177917%_
                                                (gx#genident 'tl))))))
                                     (_%$%g177794177921%_
                                      (gx#genident 'hd))))))
                           (_%$%g177766177925%_ (gx#genident 'e))))))
                 (_%$%g177739177929%_ _%tgt177402%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont178140178141%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd177400%_)
                                                           (if (gx#underscore?
                                                                _%hd177400%_)
                                                               _%K177403%_
                                                               (if (let ((__tmp178207
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%$%g177432177434%_)
                                    (gx#bound-identifier=?
                                     _%$%g177432177434%_
                                     _%hd177400%_))))
                             (declare (not safe))
                             (__find __tmp178207 _%kws177001%_))
                           (let* ((_%$%g177440177455%_
                                   (lambda (_%$%g177441177451%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g177441177451%_)))
                                  (_%$%g177439177508%_
                                   (lambda (_%$%g177441177459%_)
                                     (if (gx#stx-pair? _%$%g177441177459%_)
                                         (let ((_%$%e177444177462%_
                                                (gx#syntax-e
                                                 _%$%g177441177459%_)))
                                           (let ((_%$%hd177445177466%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e177444177462%_)))
                                                 (_%$%tl177446177469%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e177444177462%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl177446177469%_)
                                                 (let ((_%$%e177447177472%_
                                                        (gx#syntax-e
                                                         _%$%tl177446177469%_)))
                                                   (let ((_%$%hd177448177476%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e177447177472%_)))
                                                         (_%$%tl177449177479%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e177447177472%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl177449177479%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'and)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'identifier?)
                                               (cons _%$%hd177445177466%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'core-identifier=?)
                                                     (cons _%$%hd177445177466%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _%$%hd177448177476%_ '()))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons _%K177403%_ (cons _%E177395%_ '()))))
                 (_%$%g177440177455%_ _%$%g177441177459%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g177440177455%_
                                                  _%$%g177441177459%_))))
                                         (_%$%g177440177455%_
                                          _%$%g177441177459%_)))))
                             (_%$%g177439177508%_
                              (list _%tgt177402%_ _%hd177400%_)))
                           (let* ((_%$%g177514177529%_
                                   (lambda (_%$%g177515177525%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g177515177525%_)))
                                  (_%$%g177513177574%_
                                   (lambda (_%$%g177515177533%_)
                                     (if (gx#stx-pair? _%$%g177515177533%_)
                                         (let ((_%$%e177518177536%_
                                                (gx#syntax-e
                                                 _%$%g177515177533%_)))
                                           (let ((_%$%hd177519177540%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e177518177536%_)))
                                                 (_%$%tl177520177543%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e177518177536%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl177520177543%_)
                                                 (let ((_%$%e177521177546%_
                                                        (gx#syntax-e
                                                         _%$%tl177520177543%_)))
                                                   (let ((_%$%hd177522177550%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e177521177546%_)))
                                                         (_%$%tl177523177553%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e177521177546%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl177523177553%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _%$%hd177522177550%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _%$%hd177519177540%_ '()))
                                   '())
                             (cons _%K177403%_ '())))
                 (_%$%g177514177529%_ _%$%g177515177533%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g177514177529%_
                                                  _%$%g177515177533%_))))
                                         (_%$%g177514177529%_
                                          _%$%g177515177533%_)))))
                             (_%$%g177513177574%_
                              (list _%tgt177402%_ _%hd177400%_)))))
                   (if (gx#stx-null? _%hd177400%_)
                       (let* ((_%$%g177580177588%_
                               (lambda (_%$%g177581177584%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%$%g177581177584%_)))
                              (_%$%g177579177607%_
                               (lambda (_%$%g177581177592%_)
                                 (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'stx-null?)
                                                   (cons _%$%g177581177592%_
                                                         '()))
                                             (cons _%K177403%_
                                                   (cons _%E177395%_ '())))))))
                         (_%$%g177579177607%_ _%tgt177402%_))
                       (if (gx#stx-datum? _%hd177400%_)
                           (let* ((_%$%g177613177632%_
                                   (lambda (_%$%g177614177628%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g177614177628%_)))
                                  (_%$%g177612177691%_
                                   (lambda (_%$%g177614177636%_)
                                     (if (gx#stx-pair? _%$%g177614177636%_)
                                         (let ((_%$%e177618177639%_
                                                (gx#syntax-e
                                                 _%$%g177614177636%_)))
                                           (let ((_%$%hd177619177643%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e177618177639%_)))
                                                 (_%$%tl177620177646%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e177618177639%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl177620177646%_)
                                                 (let ((_%$%e177621177649%_
                                                        (gx#syntax-e
                                                         _%$%tl177620177646%_)))
                                                   (let ((_%$%hd177622177653%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e177621177649%_)))
                                                         (_%$%tl177623177656%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e177621177649%_))))
                                                     (if (gx#stx-pair?
                                                          _%$%tl177623177656%_)
                                                         (let ((_%$%e177624177659%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl177623177656%_)))
                   (let ((_%$%hd177625177663%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e177624177659%_)))
                         (_%$%tl177626177666%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e177624177659%_))))
                     (if (gx#stx-null? _%$%tl177626177666%_)
                         (cons (gx#datum->syntax '#f 'if)
                               (cons (cons _%$%hd177625177663%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-e)
                                                       (cons _%$%hd177619177643%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%$%hd177622177653%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons _%K177403%_
                                           (cons _%E177395%_ '()))))
                         (_%$%g177613177632%_ _%$%g177614177636%_))))
                 (_%$%g177613177632%_ _%$%g177614177636%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g177613177632%_
                                                  _%$%g177614177636%_))))
                                         (_%$%g177613177632%_
                                          _%$%g177614177636%_)))))
                             (_%$%g177612177691%_
                              (list _%tgt177402%_
                                    _%hd177400%_
                                    (let ((_%e177695%_
                                           (gx#stx-e _%hd177400%_)))
                                      (if (or (keyword? _%e177695%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e177695%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e177695%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx176847%_
                            _%where177390%_
                            _%hd177400%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx178135178136%_)
                                                    (let ((_%$%e177410177717%_
                                                           (gx#syntax-e
                                                            _%__stx178135178136%_)))
                                                      (let ((_%$%tl177412177724%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e177410177717%_)))
                    (_%$%hd177411177721%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e177410177717%_))))
                (_%__kont178138178139%_
                 _%$%tl177412177724%_
                 _%$%hd177411177721%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont178140178141%_)))))))
                                  (_%recur177397%_
                                   _%hd177392%_
                                   _%tgt176999%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender177393%_
                                               (cons _%body177394%_
                                                     (cons _%E177395%_
                                                           '()))))))))
                             (_%generate-clauses177007%_
                              (lambda (_%clauses177128%_)
                                (let _%lp177131%_ ((_%rest177134%_
                                                    _%clauses177128%_)
                                                   (_%E177136%_
                                                    (gx#genident 'E))
                                                   (_%r177137%_ '()))
                                  (let* ((_%__stx178171178172%_ _%rest177134%_)
                                         (_%$%g177140177152%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx178171178172%_))))
                                    (let ((_%__kont178174178175%_
                                           (lambda (_%$%g177142177217%_
                                                    _%$%g177143177219%_)
                                             (let* ((_%__stx178151178152%_
                                                     _%$%g177143177219%_)
                                                    (_%$%g177231177242%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx178151178152%_))))
                                               (let ((_%__kont178154178155%_
                                                      (lambda (_%$%g177233177371%_)
                                                        (if (gx#stx-null?
                                                             _%$%g177142177217%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g177233177371%_)
                             (not (gx#stx-null? _%$%g177233177371%_)))
                        (cons (cons _%E177136%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%$%g177233177371%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%$%g177143177219%_))
                                          '()))
                              _%r177137%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx176847%_
                         _%$%g177143177219%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx176847%_
                     _%$%g177143177219%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont178156178157%_
                                                      (lambda ()
                                                        (let* ((_%$%g177253177261%_
                                                                (lambda (_%$%g177254177257%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g177254177257%_)))
                       (_%$%g177252177350%_
                        (lambda (_%$%g177254177265%_)
                          (let* ((_%$%g177284177292%_
                                  (lambda (_%$%g177285177288%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g177285177288%_)))
                                 (_%$%g177283177346%_
                                  (lambda (_%$%g177285177296%_)
                                    (let* ((_%$%g177312177320%_
                                            (lambda (_%$%g177313177316%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g177313177316%_)))
                                           (_%$%g177311177342%_
                                            (lambda (_%$%g177313177324%_)
                                              (_%lp177131%_
                                               _%$%g177142177217%_
                                               _%$%g177254177265%_
                                               (cons (cons _%E177136%_
                                                           (cons _%$%g177313177324%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r177137%_)))))
                                      (_%$%g177311177342%_
                                       (gx#stx-wrap-source
                                        (cons (gx#datum->syntax '#f 'lambda)
                                              (cons '()
                                                    (cons _%$%g177285177296%_
                                                          '())))
                                        (gx#stx-source
                                         _%$%g177143177219%_)))))))
                            (_%$%g177283177346%_
                             (_%generate-clause177004%_
                              _%$%g177143177219%_
                              (cons _%$%g177254177265%_ '())))))))
                  (_%$%g177252177350%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx178151178152%_)
                                                     (let ((_%$%e177234177361%_
                                                            (gx#syntax-e
                                                             _%__stx178151178152%_)))
                                                       (let ((_%$%tl177236177368%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e177234177361%_)))
                     (_%$%hd177235177365%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e177234177361%_))))
                 (if (gx#identifier? _%$%hd177235177365%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g178208_|
                          _%$%hd177235177365%_)
                         (_%__kont178154178155%_ _%$%tl177236177368%_)
                         (_%__kont178156178157%_))
                     (_%__kont178156178157%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont178156178157%_))))))
                                          (_%__kont178176178177%_
                                           (lambda ()
                                             (let* ((_%$%g177163177171%_
                                                     (lambda (_%$%g177164177167%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g177164177167%_)))
                                                    (_%$%g177162177196%_
                                                     (lambda (_%$%g177164177175%_)
                                                       (cons (cons _%E177136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'raise-syntax-error)
                                                          (cons '#f
                                                                (cons '"Bad syntax; invalid syntax-case clause"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%g177164177175%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (gx#stx-source _%stx176847%_))
                                 '()))
                     _%r177137%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g177162177196%_
                                                _%tgt176999%_)))))
                                      (if (gx#stx-pair? _%__stx178171178172%_)
                                          (let ((_%$%e177144177207%_
                                                 (gx#syntax-e
                                                  _%__stx178171178172%_)))
                                            (let ((_%$%tl177146177214%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e177144177207%_)))
                                                  (_%$%hd177145177211%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e177144177207%_))))
                                              (_%__kont178174178175%_
                                               _%$%tl177146177214%_
                                               _%$%hd177145177211%_)))
                                          (_%__kont178176178177%_))))))))
                      (let* ((_%bind177009%_
                              (_%generate-clauses177007%_ _%clauses177002%_))
                             (_%$%g177012177029%_
                              (lambda (_%$%g177013177025%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g177013177025%_)))
                             (_%$%g177011177124%_
                              (lambda (_%$%g177013177033%_)
                                (if (gx#stx-pair/null? _%$%g177013177033%_)
                                    (let ((_g178209_
                                           (gx#syntax-split-splice
                                            _%$%g177013177033%_
                                            '0)))
                                      (begin
                                        (let ((_g178210_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g178209_)
                                                     (##values-length
                                                      _g178209_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g178210_ 2)))
                                              (error "Context expects 2 values"
                                                     _g178210_)))
                                        (let ((_%$%target177015177036%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g178209_ 0)))
                                              (_%$%tl177017177039%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g178209_ 1))))
                                          (if (gx#stx-null?
                                               _%$%tl177017177039%_)
                                              (letrec ((_%$%loop177018177042%_
                                                        (lambda (_%$%hd177016177046%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%bind-try177022177049%_)
                  (if (gx#stx-pair? _%$%hd177016177046%_)
                      (let ((_%$%e177019177051%_
                             (gx#syntax-e _%$%hd177016177046%_)))
                        (let ((_%$%lp-hd177020177055%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e177019177051%_)))
                              (_%$%lp-tl177021177058%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e177019177051%_))))
                          (_%$%loop177018177042%_
                           _%$%lp-tl177021177058%_
                           (cons _%$%lp-hd177020177055%_
                                 _%$%bind-try177022177049%_))))
                      (let* ((_%$%bind-try177023177061%_
                              (reverse _%$%bind-try177022177049%_))
                             (_%$%g177082177090%_
                              (lambda (_%$%g177083177086%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g177083177086%_)))
                             (_%$%g177081177120%_
                              (lambda (_%$%g177083177094%_)
                                (cons (gx#datum->syntax '#f 'let*)
                                      (cons (let ((__tmp178211
                                                   (lambda (_%$%g177111177114%_
                                                            _%$%g177112177117%_)
                                                     (cons _%$%g177111177114%_
                                                           _%$%g177112177117%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp178211
                                               '()
                                               _%$%bind-try177023177061%_))
                                            (cons (cons _%$%g177083177094%_
                                                        '())
                                                  '()))))))
                        (_%$%g177081177120%_ (car (last _%bind177009%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop177018177042%_
                                                 _%$%target177015177036%_
                                                 '()))
                                              (_%$%g177012177029%_
                                               _%$%g177013177033%_)))))
                                    (_%$%g177012177029%_
                                     _%$%g177013177033%_)))))
                        (_%$%g177011177124%_ _%bind177009%_))))))
          (let* ((_%$%g176853176872%_
                  (lambda (_%$%g176854176868%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g176854176868%_)))
                 (_%$%g176852176995%_
                  (lambda (_%$%g176854176876%_)
                    (if (gx#stx-pair? _%$%g176854176876%_)
                        (let ((_%$%e176858176879%_
                               (gx#syntax-e _%$%g176854176876%_)))
                          (let ((_%$%hd176859176883%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e176858176879%_)))
                                (_%$%tl176860176886%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e176858176879%_))))
                            (if (gx#stx-pair? _%$%tl176860176886%_)
                                (let ((_%$%e176861176889%_
                                       (gx#syntax-e _%$%tl176860176886%_)))
                                  (let ((_%$%hd176862176893%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e176861176889%_)))
                                        (_%$%tl176863176896%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e176861176889%_))))
                                    (if (gx#stx-pair? _%$%tl176863176896%_)
                                        (let ((_%$%e176864176899%_
                                               (gx#syntax-e
                                                _%$%tl176863176896%_)))
                                          (let ((_%$%hd176865176903%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e176864176899%_)))
                                                (_%$%tl176866176906%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e176864176899%_))))
                                            (if (and (gx#identifier-list?
                                                      _%$%hd176865176903%_)
                                                     (gx#stx-list?
                                                      _%$%tl176866176906%_))
                                                (let* ((_%$%g176930176938%_
                                                        (lambda (_%$%g176931176934%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%$%g176931176934%_)))
                                                       (_%$%g176929176991%_
                                                        (lambda (_%$%g176931176942%_)
                                                          (let* ((_%$%g176957176965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%g176958176961%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%$%g176958176961%_)))
                         (_%$%g176956176987%_
                          (lambda (_%$%g176958176969%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (cons _%$%g176931176942%_
                                                    (cons _%$%hd176862176893%_
                                                          '()))
                                              '())
                                        (cons _%$%g176958176969%_ '()))))))
                    (_%$%g176956176987%_
                     (_%generate176850%_
                      _%$%g176931176942%_
                      (gx#syntax->list _%$%hd176865176903%_)
                      _%$%tl176866176906%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g176929176991%_
                                                   (gx#genident 'e)))
                                                (_%$%g176853176872%_
                                                 _%$%g176854176876%_))))
                                        (_%$%g176853176872%_
                                         _%$%g176854176876%_))))
                                (_%$%g176853176872%_ _%$%g176854176876%_))))
                        (_%$%g176853176872%_ _%$%g176854176876%_)))))
            (_%$%g176852176995%_ _%stx176847%_)))))))
