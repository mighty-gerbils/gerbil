(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ClassMeta[1]#meta-object-methods!|
    (lambda (_%meta57867%_)
      (let ((_%$e57870%_
             (let ((__obj100665 _%meta57867%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj100665
                      'gerbil.core#meta-object::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj100665 '1 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#meta-object::t
                    __obj100665
                    'methods)))))
        (if _%$e57870%_
            _%$e57870%_
            (let ((_%tab57876%_ (make-hash-table-eq)))
              (let ((__obj100666 _%meta57867%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       __obj100666
                       'gerbil.core#meta-object::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj100666
                       _%tab57876%_
                       '1
                       '#f
                       '#f))
                    (class-slot-set!
                     gerbil/core/mop~MOP-2#meta-object::t
                     __obj100666
                     'methods
                     _%tab57876%_)))
              _%tab57876%_)))))
  (define |gerbil/core/contract~ClassMeta[:0:]#@call-meta-object|
    (lambda (_%stx57879%_)
      (let* ((_%g5788257913%_
              (lambda (_%g5788357909%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5788357909%_)))
             (_%g5788158025%_
              (lambda (_%g5788357917%_)
                (if (gx#stx-pair? _%g5788357917%_)
                    (let ((_%e5788757920%_ (gx#syntax-e _%g5788357917%_)))
                      (let ((_%hd5788857924%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5788757920%_)))
                            (_%tl5788957927%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5788757920%_))))
                        (if (gx#stx-pair? _%tl5788957927%_)
                            (let ((_%e5789057930%_
                                   (gx#syntax-e _%tl5788957927%_)))
                              (let ((_%hd5789157934%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5789057930%_)))
                                    (_%tl5789257937%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5789057930%_))))
                                (if (gx#stx-pair? _%tl5789257937%_)
                                    (let ((_%e5789357940%_
                                           (gx#syntax-e _%tl5789257937%_)))
                                      (let ((_%hd5789457944%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5789357940%_)))
                                            (_%tl5789557947%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5789357940%_))))
                                        (if (gx#stx-pair? _%hd5789457944%_)
                                            (let ((_%e5789657950%_
                                                   (gx#syntax-e
                                                    _%hd5789457944%_)))
                                              (let ((_%hd5789757954%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5789657950%_)))
                                                    (_%tl5789857957%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5789657950%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl5789857957%_)
                                                    (let ((_g100874_
                                                           (gx#syntax-split-splice
                                                            _%tl5789857957%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g100875_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g100874_)
                             (##values-length _g100874_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g100875_ 2)))
                      (error "Context expects 2 values" _g100875_)))
                (let ((_%target5789957960%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g100874_ 0)))
                      (_%tl5790157963%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g100874_ 1))))
                  (if (gx#stx-null? _%tl5790157963%_)
                      (letrec ((_%loop5790257966%_
                                (lambda (_%hd5790057970%_ _%arg5790657973%_)
                                  (if (gx#stx-pair? _%hd5790057970%_)
                                      (let ((_%e5790357975%_
                                             (gx#syntax-e _%hd5790057970%_)))
                                        (let ((_%lp-hd5790457979%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5790357975%_)))
                                              (_%lp-tl5790557982%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5790357975%_))))
                                          (_%loop5790257966%_
                                           _%lp-tl5790557982%_
                                           (cons _%lp-hd5790457979%_
                                                 _%arg5790657973%_))))
                                      (let ((_%arg5790757985%_
                                             (reverse _%arg5790657973%_)))
                                        (if (gx#stx-null? _%tl5789557947%_)
                                            ((lambda (_%g5788457988%_
                                                      _%g5788557990%_
                                                      _%g5788657991%_)
                                               (if (gx#identifier?
                                                    _%g5788557990%_)
                                                   (let ((_%meta58014%_
                                                          (gx#syntax-local-value
                                                           _%g5788657991%_
                                                           false)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (class-instance?
                                                            gerbil/core/mop~MOP-2#meta-object::t
                                                            _%meta58014%_))
                                                         '#!void
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"not a meta-object"
                                                          _%stx57879%_
                                                          _%g5788657991%_
                                                          _%meta58014%_))
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'meta)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'syntax-local-value)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'syntax)
                                                       (cons _%g5788657991%_
                                                             '()))
                                                 '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'cond)
                                     (cons (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'get-meta-object-method)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'meta)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _%g5788557990%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '=>)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons (cons (gx#datum->syntax '#f 'proc) '())
                                 (cons (cons (gx#datum->syntax '#f 'proc)
                                             (cons (gx#datum->syntax '#f 'meta)
                                                   (foldr (lambda (_%g5801658019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5801758022%_)
                    (cons _%g5801658019%_ _%g5801758022%_))
                  '()
                  _%g5788457988%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'else)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'error)
                           (cons '"missing meta object method"
                                 (cons 'meta-object:
                                       (cons (gx#datum->syntax '#f 'meta)
                                             (cons 'method:
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g5788557990%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g5788257913%_
                                                    _%g5788357917%_)))
                                             _%arg5790757985%_
                                             _%hd5789757954%_
                                             _%hd5789157934%_)
                                            (_%g5788257913%_
                                             _%g5788357917%_)))))))
                        (_%loop5790257966%_ _%target5789957960%_ '()))
                      (_%g5788257913%_ _%g5788357917%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5788257913%_
                                                     _%g5788357917%_))))
                                            (_%g5788257913%_
                                             _%g5788357917%_))))
                                    (_%g5788257913%_ _%g5788357917%_))))
                            (_%g5788257913%_ _%g5788357917%_))))
                    (_%g5788257913%_ _%g5788357917%_)))))
        (_%g5788158025%_ _%stx57879%_))))
  (define |gerbil/core/contract~ClassMeta[:0:]#defmethod-for-meta|
    (lambda (_%stx58030%_)
      (let* ((_%g5803358078%_
              (lambda (_%g5803458074%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5803458074%_)))
             (_%g5803258246%_
              (lambda (_%g5803458082%_)
                (if (gx#stx-pair? _%g5803458082%_)
                    (let ((_%e5804058085%_ (gx#syntax-e _%g5803458082%_)))
                      (let ((_%hd5804158089%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5804058085%_)))
                            (_%tl5804258092%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5804058085%_))))
                        (if (gx#stx-pair? _%tl5804258092%_)
                            (let ((_%e5804358095%_
                                   (gx#syntax-e _%tl5804258092%_)))
                              (let ((_%hd5804458099%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5804358095%_)))
                                    (_%tl5804558102%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5804358095%_))))
                                (if (gx#stx-pair? _%tl5804558102%_)
                                    (let ((_%e5804658105%_
                                           (gx#syntax-e _%tl5804558102%_)))
                                      (let ((_%hd5804758109%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5804658105%_)))
                                            (_%tl5804858112%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5804658105%_))))
                                        (if (gx#stx-pair? _%hd5804758109%_)
                                            (let ((_%e5804958115%_
                                                   (gx#syntax-e
                                                    _%hd5804758109%_)))
                                              (let ((_%hd5805058119%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5804958115%_)))
                                                    (_%tl5805158122%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5804958115%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl5805158122%_)
                                                    (let ((_g100876_
                                                           (gx#syntax-split-splice
                                                            _%tl5805158122%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g100877_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g100876_)
                             (##values-length _g100876_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g100877_ 2)))
                      (error "Context expects 2 values" _g100877_)))
                (let ((_%target5805258125%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g100876_ 0)))
                      (_%tl5805458128%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g100876_ 1))))
                  (if (gx#stx-null? _%tl5805458128%_)
                      (letrec ((_%loop5805558131%_
                                (lambda (_%hd5805358135%_ _%arg5805958138%_)
                                  (if (gx#stx-pair? _%hd5805358135%_)
                                      (let ((_%e5805658140%_
                                             (gx#syntax-e _%hd5805358135%_)))
                                        (let ((_%lp-hd5805758144%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5805658140%_)))
                                              (_%lp-tl5805858147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5805658140%_))))
                                          (_%loop5805558131%_
                                           _%lp-tl5805858147%_
                                           (cons _%lp-hd5805758144%_
                                                 _%arg5805958138%_))))
                                      (let ((_%arg5806058150%_
                                             (reverse _%arg5805958138%_)))
                                        (if (gx#stx-pair? _%tl5804858112%_)
                                            (let ((_%e5806158153%_
                                                   (gx#syntax-e
                                                    _%tl5804858112%_)))
                                              (let ((_%hd5806258157%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5806158153%_)))
                                                    (_%tl5806358160%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5806158153%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl5806358160%_)
                                                    (let ((_g100878_
                                                           (gx#syntax-split-splice
                                                            _%tl5806358160%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g100879_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g100878_)
                             (##values-length _g100878_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g100879_ 2)))
                      (error "Context expects 2 values" _g100879_)))
                (let ((_%target5806458163%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g100878_ 0)))
                      (_%tl5806658166%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g100878_ 1))))
                  (if (gx#stx-null? _%tl5806658166%_)
                      (letrec ((_%loop5806758169%_
                                (lambda (_%hd5806558173%_ _%rest5807158176%_)
                                  (if (gx#stx-pair? _%hd5806558173%_)
                                      (let ((_%e5806858178%_
                                             (gx#syntax-e _%hd5806558173%_)))
                                        (let ((_%lp-hd5806958182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5806858178%_)))
                                              (_%lp-tl5807058185%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5806858178%_))))
                                          (_%loop5806758169%_
                                           _%lp-tl5807058185%_
                                           (cons _%lp-hd5806958182%_
                                                 _%rest5807158176%_))))
                                      (let ((_%rest5807258188%_
                                             (reverse _%rest5807158176%_)))
                                        ((lambda (_%g5803558191%_
                                                  _%g5803658193%_
                                                  _%g5803758194%_
                                                  _%g5803858195%_
                                                  _%g5803958196%_)
                                           (if (gx#identifier? _%g5803858195%_)
                                               (let ((_%meta58227%_
                                                      (gx#syntax-local-value
                                                       _%g5803958196%_
                                                       false)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (class-instance?
                                                        gerbil/core/mop~MOP-2#meta-object::t
                                                        _%meta58227%_))
                                                     '#!void
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"not a meta-object"
                                                      _%stx58030%_
                                                      _%g5803958196%_
                                                      _%meta58227%_))
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-syntax)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let)
                           (cons (cons (gx#datum->syntax '#f 'tab)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'meta-object-methods!)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'syntax-local-value)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'syntax)
                                   (cons _%g5803958196%_ '()))
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'hash-put!)
                                             (cons (gx#datum->syntax '#f 'tab)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g5803858195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'lambda)
                             (cons (foldr (lambda (_%g5822958234%_
                                                   _%g5823058237%_)
                                            (cons _%g5822958234%_
                                                  _%g5823058237%_))
                                          '()
                                          _%g5803758194%_)
                                   (cons _%g5803658193%_
                                         (foldr (lambda (_%g5823158240%_
                                                         _%g5823258243%_)
                                                  (cons _%g5823158240%_
                                                        _%g5823258243%_))
                                                '()
                                                _%g5803558191%_))))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g5803358078%_
                                                _%g5803458082%_)))
                                         _%rest5807258188%_
                                         _%hd5806258157%_
                                         _%arg5806058150%_
                                         _%hd5805058119%_
                                         _%hd5804458099%_))))))
                        (_%loop5806758169%_ _%target5806458163%_ '()))
                      (_%g5803358078%_ _%g5803458082%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5803358078%_
                                                     _%g5803458082%_))))
                                            (_%g5803358078%_
                                             _%g5803458082%_)))))))
                        (_%loop5805558131%_ _%target5805258125%_ '()))
                      (_%g5803358078%_ _%g5803458082%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5803358078%_
                                                     _%g5803458082%_))))
                                            (_%g5803358078%_
                                             _%g5803458082%_))))
                                    (_%g5803358078%_ _%g5803458082%_))))
                            (_%g5803358078%_ _%g5803458082%_))))
                    (_%g5803358078%_ _%g5803458082%_)))))
        (_%g5803258246%_ _%stx58030%_)))))
