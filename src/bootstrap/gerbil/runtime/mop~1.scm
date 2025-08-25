(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[:0:]#fxflag-set?|
    (lambda (_%$stx101563%_)
      (let* ((_%__stx108121108122%_ _%$stx101563%_)
             (_%g101568101597%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx108121108122%_))))
        (let ((_%__kont108124108125%_
               (lambda (_%L101690%_ _%L101692%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L101692%_ (cons _%L101690%_ '())))
                             (cons _%L101690%_ '())))))
              (_%__kont108126108127%_
               (lambda (_%L101634%_ _%L101636%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L101634%_ (cons _%L101634%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L101636%_
                                                           (cons _%L101634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%L101634%_ '())))
                                   '()))))))
          (let ((_%__match108148108149%_
                 (lambda (_%e101572101660%_
                          _%hd101573101664%_
                          _%tl101574101667%_
                          _%e101575101670%_
                          _%hd101576101674%_
                          _%tl101577101677%_
                          _%e101578101680%_
                          _%hd101579101684%_
                          _%tl101580101687%_)
                   (let ((_%L101690%_ _%hd101579101684%_)
                         (_%L101692%_ _%hd101576101674%_))
                     (if (or (gx#identifier? _%L101690%_)
                             (gx#stx-fixnum? _%L101690%_))
                         (_%__kont108124108125%_ _%L101690%_ _%L101692%_)
                         (_%__kont108126108127%_
                          _%hd101579101684%_
                          _%hd101576101674%_))))))
            (if (gx#stx-pair? _%__stx108121108122%_)
                (let ((_%e101572101660%_ (gx#syntax-e _%__stx108121108122%_)))
                  (let ((_%tl101574101667%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e101572101660%_)))
                        (_%hd101573101664%_
                         (let ()
                           (declare (not safe))
                           (##car _%e101572101660%_))))
                    (if (gx#stx-pair? _%tl101574101667%_)
                        (let ((_%e101575101670%_
                               (gx#syntax-e _%tl101574101667%_)))
                          (let ((_%tl101577101677%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e101575101670%_)))
                                (_%hd101576101674%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e101575101670%_))))
                            (if (gx#stx-pair? _%tl101577101677%_)
                                (let ((_%e101578101680%_
                                       (gx#syntax-e _%tl101577101677%_)))
                                  (let ((_%tl101580101687%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e101578101680%_)))
                                        (_%hd101579101684%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e101578101680%_))))
                                    (if (gx#stx-null? _%tl101580101687%_)
                                        (_%__match108148108149%_
                                         _%e101572101660%_
                                         _%hd101573101664%_
                                         _%tl101574101667%_
                                         _%e101575101670%_
                                         _%hd101576101674%_
                                         _%tl101577101677%_
                                         _%e101578101680%_
                                         _%hd101579101684%_
                                         _%tl101580101687%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g101568101597%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g101568101597%_)))))
                        (let () (declare (not safe)) (_%g101568101597%_)))))
                (let () (declare (not safe)) (_%g101568101597%_))))))))
  (define |[:0:]#fxflag-unset?|
    (lambda (_%$stx101715%_)
      (let* ((_%__stx108171108172%_ _%$stx101715%_)
             (_%g101720101749%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx108171108172%_))))
        (let ((_%__kont108174108175%_
               (lambda (_%L101841%_ _%L101843%_)
                 (cons (gx#datum->syntax '#f '##fx=)
                       (cons (cons (gx#datum->syntax '#f '##fxand)
                                   (cons _%L101843%_ (cons _%L101841%_ '())))
                             (cons '0 '())))))
              (_%__kont108176108177%_
               (lambda (_%L101786%_ _%L101788%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons (cons _%L101786%_ (cons _%L101786%_ '()))
                             (cons (cons (gx#datum->syntax '#f '##fx=)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fxand)
                                                     (cons _%L101788%_
                                                           (cons _%L101786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons '0 '())))
                                   '()))))))
          (let ((_%__match108198108199%_
                 (lambda (_%e101724101811%_
                          _%hd101725101815%_
                          _%tl101726101818%_
                          _%e101727101821%_
                          _%hd101728101825%_
                          _%tl101729101828%_
                          _%e101730101831%_
                          _%hd101731101835%_
                          _%tl101732101838%_)
                   (let ((_%L101841%_ _%hd101731101835%_)
                         (_%L101843%_ _%hd101728101825%_))
                     (if (or (gx#identifier? _%L101841%_)
                             (gx#stx-fixnum? _%L101841%_))
                         (_%__kont108174108175%_ _%L101841%_ _%L101843%_)
                         (_%__kont108176108177%_
                          _%hd101731101835%_
                          _%hd101728101825%_))))))
            (if (gx#stx-pair? _%__stx108171108172%_)
                (let ((_%e101724101811%_ (gx#syntax-e _%__stx108171108172%_)))
                  (let ((_%tl101726101818%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e101724101811%_)))
                        (_%hd101725101815%_
                         (let ()
                           (declare (not safe))
                           (##car _%e101724101811%_))))
                    (if (gx#stx-pair? _%tl101726101818%_)
                        (let ((_%e101727101821%_
                               (gx#syntax-e _%tl101726101818%_)))
                          (let ((_%tl101729101828%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e101727101821%_)))
                                (_%hd101728101825%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e101727101821%_))))
                            (if (gx#stx-pair? _%tl101729101828%_)
                                (let ((_%e101730101831%_
                                       (gx#syntax-e _%tl101729101828%_)))
                                  (let ((_%tl101732101838%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e101730101831%_)))
                                        (_%hd101731101835%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e101730101831%_))))
                                    (if (gx#stx-null? _%tl101732101838%_)
                                        (_%__match108198108199%_
                                         _%e101724101811%_
                                         _%hd101725101815%_
                                         _%tl101726101818%_
                                         _%e101727101821%_
                                         _%hd101728101825%_
                                         _%tl101729101828%_
                                         _%e101730101831%_
                                         _%hd101731101835%_
                                         _%tl101732101838%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g101720101749%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g101720101749%_)))))
                        (let () (declare (not safe)) (_%g101720101749%_)))))
                (let () (declare (not safe)) (_%g101720101749%_))))))))
  (define |[:0:]#defrefset|
    (lambda (_%stx101866%_)
      (let* ((_%g101869101890%_
              (lambda (_%g101870101886%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g101870101886%_)))
             (_%g101868102118%_
              (lambda (_%g101870101894%_)
                (if (gx#stx-pair? _%g101870101894%_)
                    (let ((_%e101873101897%_ (gx#syntax-e _%g101870101894%_)))
                      (let ((_%hd101874101901%_
                             (let ()
                               (declare (not safe))
                               (##car _%e101873101897%_)))
                            (_%tl101875101904%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e101873101897%_))))
                        (if (gx#stx-pair? _%tl101875101904%_)
                            (let ((_%e101876101907%_
                                   (gx#syntax-e _%tl101875101904%_)))
                              (let ((_%hd101877101911%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e101876101907%_)))
                                    (_%tl101878101914%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e101876101907%_))))
                                (if (gx#stx-pair? _%hd101877101911%_)
                                    (let ((_%e101879101917%_
                                           (gx#syntax-e _%hd101877101911%_)))
                                      (let ((_%hd101880101921%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e101879101917%_)))
                                            (_%tl101881101924%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e101879101917%_))))
                                        (if (gx#stx-pair? _%tl101881101924%_)
                                            (let ((_%e101882101927%_
                                                   (gx#syntax-e
                                                    _%tl101881101924%_)))
                                              (let ((_%hd101883101931%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e101882101927%_)))
                                                    (_%tl101884101934%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e101882101927%_))))
                                                (if (gx#stx-null?
                                                     _%tl101884101934%_)
                                                    (if (gx#stx-null?
                                                         _%tl101878101914%_)
                                                        ((lambda (_%L101937%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L101939%_)
                   (let* ((_%g101957101965%_
                           (lambda (_%g101958101961%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g101958101961%_)))
                          (_%g101956102114%_
                           (lambda (_%g101958101969%_)
                             ((lambda (_%L101972%_)
                                (let* ((_%g101984101992%_
                                        (lambda (_%g101985101988%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g101985101988%_)))
                                       (_%g101983102110%_
                                        (lambda (_%g101985101996%_)
                                          ((lambda (_%L101999%_)
                                             (let* ((_%g102012102020%_
                                                     (lambda (_%g102013102016%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g102013102016%_)))
                                                    (_%g102011102106%_
                                                     (lambda (_%g102013102024%_)
                                                       ((lambda (_%L102027%_)
                                                          (let* ((_%g102040102048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g102041102044%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g102041102044%_)))
                         (_%g102039102102%_
                          (lambda (_%g102041102052%_)
                            ((lambda (_%L102055%_)
                               (let* ((_%g102068102076%_
                                       (lambda (_%g102069102072%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g102069102072%_)))
                                      (_%g102067102098%_
                                       (lambda (_%g102069102080%_)
                                         ((lambda (_%L102083%_)
                                            (cons (gx#datum->syntax '#f 'begin)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'def)
                                                              (cons _%L101999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@mop.accessor)
                                                    (cons _%L101972%_
                                                          (cons _%L101939%_
                                                                (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'klass)
                              '())
                        (cons (cons (gx#datum->syntax '#f '##structure-ref)
                                    (cons (gx#datum->syntax '#f 'klass)
                                          (cons _%L101937%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'class::t)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L101939%_ '()))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                (cons (cons (gx#datum->syntax '#f 'def)
                            (cons _%L102027%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'begin-annotation)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@mop.accessor)
                                                          (cons _%L101972%_
                                                                (cons _%L101939%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '#f '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda)
                        (cons (cons (gx#datum->syntax '#f 'klass) '())
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           '##unchecked-structure-ref)
                                          (cons (gx#datum->syntax '#f 'klass)
                                                (cons _%L101937%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'class::t)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%L101939%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (cons (cons (gx#datum->syntax '#f 'def)
                                  (cons _%L102055%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@mop.mutator)
                        (cons _%L101972%_ (cons _%L101939%_ (cons '#t '()))))
                  (cons (cons (gx#datum->syntax '#f 'lambda)
                              (cons (cons (gx#datum->syntax '#f 'klass)
                                          (cons (gx#datum->syntax '#f 'val)
                                                '()))
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 '##structure-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'klass)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            (cons _%L101937%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'class::t)
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L101939%_ '()))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            (cons (cons (gx#datum->syntax '#f 'def)
                                        (cons _%L102083%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'begin-annotation)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '@mop.mutator)
                              (cons _%L101972%_
                                    (cons _%L101939%_ (cons '#f '()))))
                        (cons (cons (gx#datum->syntax '#f 'lambda)
                                    (cons (cons (gx#datum->syntax '#f 'klass)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##unchecked-structure-set!)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'klass)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'val)
                          (cons _%L101937%_
                                (cons (gx#datum->syntax '#f 'class::t)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L101939%_ '()))
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g102069102080%_))))
                                 (_%g102067102098%_
                                  (gx#stx-identifier
                                   _%L101939%_
                                   '"&"
                                   _%L102055%_))))
                             _%g102041102052%_))))
                    (_%g102039102102%_
                     (gx#stx-identifier _%L101939%_ _%L101999%_ '"-set!"))))
                _%g102013102024%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g102011102106%_
                                                (gx#stx-identifier
                                                 _%L101939%_
                                                 '"&"
                                                 _%L101999%_))))
                                           _%g101985101996%_))))
                                  (_%g101983102110%_
                                   (gx#stx-identifier
                                    _%L101939%_
                                    '"class-type-"
                                    _%L101939%_))))
                              _%g101958101969%_))))
                     (_%g101956102114%_ (gx#core-quote-syntax 'class::t))))
                 _%hd101883101931%_
                 _%hd101880101921%_)
                (_%g101869101890%_ _%g101870101894%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g101869101890%_
                                                     _%g101870101894%_))))
                                            (_%g101869101890%_
                                             _%g101870101894%_))))
                                    (_%g101869101890%_ _%g101870101894%_))))
                            (_%g101869101890%_ _%g101870101894%_))))
                    (_%g101869101890%_ _%g101870101894%_)))))
        (_%g101868102118%_ _%stx101866%_))))
  (define |[:0:]#defrefset*|
    (lambda (_%$stx102122%_)
      (let* ((_%g102126102155%_
              (lambda (_%g102127102151%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g102127102151%_)))
             (_%g102125102255%_
              (lambda (_%g102127102159%_)
                (if (gx#stx-pair? _%g102127102159%_)
                    (let ((_%e102130102162%_ (gx#syntax-e _%g102127102159%_)))
                      (let ((_%hd102131102166%_
                             (let ()
                               (declare (not safe))
                               (##car _%e102130102162%_)))
                            (_%tl102132102169%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e102130102162%_))))
                        (if (gx#stx-pair/null? _%tl102132102169%_)
                            (let ((_g108408_
                                   (gx#syntax-split-splice
                                    _%tl102132102169%_
                                    '0)))
                              (begin
                                (let ((_g108409_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g108408_)
                                             (##values-length _g108408_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g108409_ 2)))
                                      (error "Context expects 2 values"
                                             _g108409_)))
                                (let ((_%target102133102172%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g108408_ 0)))
                                      (_%tl102135102175%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g108408_ 1))))
                                  (if (gx#stx-null? _%tl102135102175%_)
                                      (letrec ((_%loop102136102178%_
                                                (lambda (_%hd102134102182%_
                                                         _%field102140102185%_
                                                         _%slot102141102187%_)
                                                  (if (gx#stx-pair?
                                                       _%hd102134102182%_)
                                                      (let ((_%e102137102190%_
                                                             (gx#syntax-e
                                                              _%hd102134102182%_)))
                                                        (let ((_%lp-hd102138102194%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e102137102190%_)))
                      (_%lp-tl102139102197%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e102137102190%_))))
                  (if (gx#stx-pair? _%lp-hd102138102194%_)
                      (let ((_%e102144102200%_
                             (gx#syntax-e _%lp-hd102138102194%_)))
                        (let ((_%hd102145102204%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e102144102200%_)))
                              (_%tl102146102207%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e102144102200%_))))
                          (if (gx#stx-pair? _%tl102146102207%_)
                              (let ((_%e102147102210%_
                                     (gx#syntax-e _%tl102146102207%_)))
                                (let ((_%hd102148102214%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e102147102210%_)))
                                      (_%tl102149102217%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e102147102210%_))))
                                  (if (gx#stx-null? _%tl102149102217%_)
                                      (_%loop102136102178%_
                                       _%lp-tl102139102197%_
                                       (cons _%hd102148102214%_
                                             _%field102140102185%_)
                                       (cons _%hd102145102204%_
                                             _%slot102141102187%_))
                                      (_%g102126102155%_ _%g102127102159%_))))
                              (_%g102126102155%_ _%g102127102159%_))))
                      (_%g102126102155%_ _%g102127102159%_))))
              (let ((_%field102142102220%_ (reverse _%field102140102185%_))
                    (_%slot102143102223%_ (reverse _%slot102141102187%_)))
                ((lambda (_%L102226%_ _%L102228%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L102226%_
                            _%L102228%_)
                           (let ((__tmp108410
                                  (lambda (_%g102243102247%_
                                           _%g102244102250%_
                                           _%g102245102252%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'defrefset)
                                                (cons (cons _%g102244102250%_
                                                            (cons _%g102243102247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g102245102252%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp108410
                              '()
                              _%L102226%_
                              _%L102228%_)))))
                 _%field102142102220%_
                 _%slot102143102223%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop102136102178%_
                                         _%target102133102172%_
                                         '()
                                         '()))
                                      (_%g102126102155%_ _%g102127102159%_)))))
                            (_%g102126102155%_ _%g102127102159%_))))
                    (_%g102126102155%_ _%g102127102159%_)))))
        (_%g102125102255%_ _%$stx102122%_))))
  (define |[:0:]#if-class-slot-field|
    (lambda (_%$stx102260%_)
      (let* ((_%g102264102298%_
              (lambda (_%g102265102294%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g102265102294%_)))
             (_%g102263102409%_
              (lambda (_%g102265102302%_)
                (if (gx#stx-pair? _%g102265102302%_)
                    (let ((_%e102272102305%_ (gx#syntax-e _%g102265102302%_)))
                      (let ((_%hd102273102309%_
                             (let ()
                               (declare (not safe))
                               (##car _%e102272102305%_)))
                            (_%tl102274102312%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e102272102305%_))))
                        (if (gx#stx-pair? _%tl102274102312%_)
                            (let ((_%e102275102315%_
                                   (gx#syntax-e _%tl102274102312%_)))
                              (let ((_%hd102276102319%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e102275102315%_)))
                                    (_%tl102277102322%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e102275102315%_))))
                                (if (gx#stx-pair? _%tl102277102322%_)
                                    (let ((_%e102278102325%_
                                           (gx#syntax-e _%tl102277102322%_)))
                                      (let ((_%hd102279102329%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e102278102325%_)))
                                            (_%tl102280102332%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e102278102325%_))))
                                        (if (gx#stx-pair? _%tl102280102332%_)
                                            (let ((_%e102281102335%_
                                                   (gx#syntax-e
                                                    _%tl102280102332%_)))
                                              (let ((_%hd102282102339%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e102281102335%_)))
                                                    (_%tl102283102342%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e102281102335%_))))
                                                (if (gx#stx-pair?
                                                     _%tl102283102342%_)
                                                    (let ((_%e102284102345%_
                                                           (gx#syntax-e
                                                            _%tl102283102342%_)))
                                                      (let ((_%hd102285102349%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e102284102345%_)))
                    (_%tl102286102352%_
                     (let () (declare (not safe)) (##cdr _%e102284102345%_))))
                (if (gx#stx-pair? _%tl102286102352%_)
                    (let ((_%e102287102355%_ (gx#syntax-e _%tl102286102352%_)))
                      (let ((_%hd102288102359%_
                             (let ()
                               (declare (not safe))
                               (##car _%e102287102355%_)))
                            (_%tl102289102362%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e102287102355%_))))
                        (if (gx#stx-pair? _%tl102289102362%_)
                            (let ((_%e102290102365%_
                                   (gx#syntax-e _%tl102289102362%_)))
                              (let ((_%hd102291102369%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e102290102365%_)))
                                    (_%tl102292102372%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e102290102365%_))))
                                (if (gx#stx-null? _%tl102292102372%_)
                                    ((lambda (_%L102375%_
                                              _%L102377%_
                                              _%L102378%_
                                              _%L102379%_
                                              _%L102380%_
                                              _%L102381%_)
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
                                         (cons _%L102381%_ '()))
                                   (cons _%L102380%_ (cons '#f '()))))
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
                               (cons _%L102381%_
                                     (cons 'slot: (cons _%L102380%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         '()))
                             (cons (cons (cons (gx#datum->syntax
                                                '#f
                                                'class-type-final?)
                                               (cons _%L102381%_ '()))
                                         (cons (cons _%L102379%_
                                                     (cons _%L102381%_
                                                           (cons _%L102380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'field) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-type-struct?)
                                                     (cons _%L102381%_ '()))
                                               (cons (cons _%L102378%_
                                                           (cons _%L102381%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L102380%_
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
                                           (cons _%L102381%_ '()))
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
                                                     (cons (cons _%L102377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L102381%_
                               (cons _%L102380%_
                                     (cons (gx#datum->syntax '#f 'field)
                                           '()))))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'else)
                                                           (cons (cons _%L102375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%L102381%_
                                     (cons _%L102380%_
                                           (cons (gx#datum->syntax '#f 'field)
                                                 '()))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd102291102369%_
                                     _%hd102288102359%_
                                     _%hd102285102349%_
                                     _%hd102282102339%_
                                     _%hd102279102329%_
                                     _%hd102276102319%_)
                                    (_%g102264102298%_ _%g102265102302%_))))
                            (_%g102264102298%_ _%g102265102302%_))))
                    (_%g102264102298%_ _%g102265102302%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g102264102298%_
                                                     _%g102265102302%_))))
                                            (_%g102264102298%_
                                             _%g102265102302%_))))
                                    (_%g102264102298%_ _%g102265102302%_))))
                            (_%g102264102298%_ _%g102265102302%_))))
                    (_%g102264102298%_ _%g102265102302%_)))))
        (_%g102263102409%_ _%$stx102260%_))))
  (define |[:0:]#__slot-e|
    (lambda (_%$stx102413%_)
      (let* ((_%g102417102443%_
              (lambda (_%g102418102439%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g102418102439%_)))
             (_%g102416102526%_
              (lambda (_%g102418102447%_)
                (if (gx#stx-pair? _%g102418102447%_)
                    (let ((_%e102423102450%_ (gx#syntax-e _%g102418102447%_)))
                      (let ((_%hd102424102454%_
                             (let ()
                               (declare (not safe))
                               (##car _%e102423102450%_)))
                            (_%tl102425102457%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e102423102450%_))))
                        (if (gx#stx-pair? _%tl102425102457%_)
                            (let ((_%e102426102460%_
                                   (gx#syntax-e _%tl102425102457%_)))
                              (let ((_%hd102427102464%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e102426102460%_)))
                                    (_%tl102428102467%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e102426102460%_))))
                                (if (gx#stx-pair? _%tl102428102467%_)
                                    (let ((_%e102429102470%_
                                           (gx#syntax-e _%tl102428102467%_)))
                                      (let ((_%hd102430102474%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e102429102470%_)))
                                            (_%tl102431102477%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e102429102470%_))))
                                        (if (gx#stx-pair? _%tl102431102477%_)
                                            (let ((_%e102432102480%_
                                                   (gx#syntax-e
                                                    _%tl102431102477%_)))
                                              (let ((_%hd102433102484%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e102432102480%_)))
                                                    (_%tl102434102487%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e102432102480%_))))
                                                (if (gx#stx-pair?
                                                     _%tl102434102487%_)
                                                    (let ((_%e102435102490%_
                                                           (gx#syntax-e
                                                            _%tl102434102487%_)))
                                                      (let ((_%hd102436102494%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e102435102490%_)))
                    (_%tl102437102497%_
                     (let () (declare (not safe)) (##cdr _%e102435102490%_))))
                (if (gx#stx-null? _%tl102437102497%_)
                    ((lambda (_%L102500%_ _%L102502%_ _%L102503%_ _%L102504%_)
                       (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'klass)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'class-of)
                                                     (cons _%L102504%_ '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax '#f 'cond)
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'class-slot-offset)
                         (cons (gx#datum->syntax '#f 'klass)
                               (cons _%L102503%_ '())))
                   (cons (gx#datum->syntax '#f '=>) (cons _%L102502%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'else)
                         (cons (cons _%L102500%_
                                     (cons _%L102504%_ (cons _%L102503%_ '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                     _%hd102436102494%_
                     _%hd102433102484%_
                     _%hd102430102474%_
                     _%hd102427102464%_)
                    (_%g102417102443%_ _%g102418102447%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g102417102443%_
                                                     _%g102418102447%_))))
                                            (_%g102417102443%_
                                             _%g102418102447%_))))
                                    (_%g102417102443%_ _%g102418102447%_))))
                            (_%g102417102443%_ _%g102418102447%_))))
                    (_%g102417102443%_ _%g102418102447%_)))))
        (_%g102416102526%_ _%$stx102413%_))))
  (define |[:0:]#defsubtype|
    (lambda (_%$stx102530%_)
      (let* ((_%g102534102563%_
              (lambda (_%g102535102559%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g102535102559%_)))
             (_%g102533102663%_
              (lambda (_%g102535102567%_)
                (if (gx#stx-pair? _%g102535102567%_)
                    (let ((_%e102538102570%_ (gx#syntax-e _%g102535102567%_)))
                      (let ((_%hd102539102574%_
                             (let ()
                               (declare (not safe))
                               (##car _%e102538102570%_)))
                            (_%tl102540102577%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e102538102570%_))))
                        (if (gx#stx-pair/null? _%tl102540102577%_)
                            (let ((_g108411_
                                   (gx#syntax-split-splice
                                    _%tl102540102577%_
                                    '0)))
                              (begin
                                (let ((_g108412_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g108411_)
                                             (##values-length _g108411_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g108412_ 2)))
                                      (error "Context expects 2 values"
                                             _g108412_)))
                                (let ((_%target102541102580%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g108411_ 0)))
                                      (_%tl102543102583%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g108411_ 1))))
                                  (if (gx#stx-null? _%tl102543102583%_)
                                      (letrec ((_%loop102544102586%_
                                                (lambda (_%hd102542102590%_
                                                         _%name102548102593%_
                                                         _%t102549102595%_)
                                                  (if (gx#stx-pair?
                                                       _%hd102542102590%_)
                                                      (let ((_%e102545102598%_
                                                             (gx#syntax-e
                                                              _%hd102542102590%_)))
                                                        (let ((_%lp-hd102546102602%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%e102545102598%_)))
                      (_%lp-tl102547102605%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e102545102598%_))))
                  (if (gx#stx-pair? _%lp-hd102546102602%_)
                      (let ((_%e102552102608%_
                             (gx#syntax-e _%lp-hd102546102602%_)))
                        (let ((_%hd102553102612%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e102552102608%_)))
                              (_%tl102554102615%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e102552102608%_))))
                          (if (gx#stx-pair? _%tl102554102615%_)
                              (let ((_%e102555102618%_
                                     (gx#syntax-e _%tl102554102615%_)))
                                (let ((_%hd102556102622%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e102555102618%_)))
                                      (_%tl102557102625%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e102555102618%_))))
                                  (if (gx#stx-null? _%tl102557102625%_)
                                      (_%loop102544102586%_
                                       _%lp-tl102547102605%_
                                       (cons _%hd102556102622%_
                                             _%name102548102593%_)
                                       (cons _%hd102553102612%_
                                             _%t102549102595%_))
                                      (_%g102534102563%_ _%g102535102567%_))))
                              (_%g102534102563%_ _%g102535102567%_))))
                      (_%g102534102563%_ _%g102535102567%_))))
              (let ((_%name102550102628%_ (reverse _%name102548102593%_))
                    (_%t102551102631%_ (reverse _%t102549102595%_)))
                ((lambda (_%L102634%_ _%L102636%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _%L102634%_
                            _%L102636%_)
                           (let ((__tmp108413
                                  (lambda (_%g102651102655%_
                                           _%g102652102658%_
                                           _%g102653102660%_)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'vector-set!)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '__subtype-id)
                                                      (cons _%g102652102658%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g102651102655%_ '()))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _%g102653102660%_))))
                             (declare (not safe))
                             (__foldr2
                              __tmp108413
                              '()
                              _%L102634%_
                              _%L102636%_)))))
                 _%name102550102628%_
                 _%t102551102631%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%loop102544102586%_
                                         _%target102541102580%_
                                         '()
                                         '()))
                                      (_%g102534102563%_ _%g102535102567%_)))))
                            (_%g102534102563%_ _%g102535102567%_))))
                    (_%g102534102563%_ _%g102535102567%_)))))
        (_%g102533102663%_ _%$stx102530%_))))
  (define |[:0:]#defsystem-class|
    (lambda (_%$stx102668%_)
      (let* ((_%g102672102703%_
              (lambda (_%g102673102699%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g102673102699%_)))
             (_%g102671102822%_
              (lambda (_%g102673102707%_)
                (if (gx#stx-pair? _%g102673102707%_)
                    (let ((_%e102677102710%_ (gx#syntax-e _%g102673102707%_)))
                      (let ((_%hd102678102714%_
                             (let ()
                               (declare (not safe))
                               (##car _%e102677102710%_)))
                            (_%tl102679102717%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e102677102710%_))))
                        (if (gx#stx-pair? _%tl102679102717%_)
                            (let ((_%e102680102720%_
                                   (gx#syntax-e _%tl102679102717%_)))
                              (let ((_%hd102681102724%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e102680102720%_)))
                                    (_%tl102682102727%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e102680102720%_))))
                                (if (gx#stx-pair? _%tl102682102727%_)
                                    (let ((_%e102683102730%_
                                           (gx#syntax-e _%tl102682102727%_)))
                                      (let ((_%hd102684102734%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e102683102730%_)))
                                            (_%tl102685102737%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e102683102730%_))))
                                        (if (gx#stx-pair? _%tl102685102737%_)
                                            (let ((_%e102686102740%_
                                                   (gx#syntax-e
                                                    _%tl102685102737%_)))
                                              (let ((_%hd102687102744%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e102686102740%_)))
                                                    (_%tl102688102747%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e102686102740%_))))
                                                (if (gx#stx-pair/null?
                                                     _%hd102687102744%_)
                                                    (let ((_g108414_
                                                           (gx#syntax-split-splice
                                                            _%hd102687102744%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g108415_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g108414_)
                             (##values-length _g108414_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g108415_ 2)))
                      (error "Context expects 2 values" _g108415_)))
                (let ((_%target102689102750%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g108414_ 0)))
                      (_%tl102691102753%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g108414_ 1))))
                  (if (gx#stx-null? _%tl102691102753%_)
                      (letrec ((_%loop102692102756%_
                                (lambda (_%hd102690102760%_
                                         _%super102696102763%_)
                                  (if (gx#stx-pair? _%hd102690102760%_)
                                      (let ((_%e102693102766%_
                                             (gx#syntax-e _%hd102690102760%_)))
                                        (let ((_%lp-hd102694102770%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e102693102766%_)))
                                              (_%lp-tl102695102773%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e102693102766%_))))
                                          (_%loop102692102756%_
                                           _%lp-tl102695102773%_
                                           (cons _%lp-hd102694102770%_
                                                 _%super102696102763%_))))
                                      (let ((_%super102697102776%_
                                             (reverse _%super102696102763%_)))
                                        (if (gx#stx-null? _%tl102688102747%_)
                                            ((lambda (_%L102780%_
                                                      _%L102782%_
                                                      _%L102783%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L102783%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L102782%_
                                                 (cons (let ((__tmp108416
                                                              (lambda (_%g102805102810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g102806102813%_)
                        (cons _%g102805102810%_ _%g102806102813%_))))
                 (declare (not safe))
                 (__foldr1 __tmp108416 '() _%L102780%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__make-system-class)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%L102782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f '@list)
                           (let ((__tmp108417
                                  (lambda (_%g102807102816%_ _%g102808102819%_)
                                    (cons _%g102807102816%_
                                          _%g102808102819%_))))
                             (declare (not safe))
                             (__foldr1 __tmp108417 '() _%L102780%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%super102697102776%_
                                             _%hd102684102734%_
                                             _%hd102681102724%_)
                                            (_%g102672102703%_
                                             _%g102673102707%_)))))))
                        (_%loop102692102756%_ _%target102689102750%_ '()))
                      (_%g102672102703%_ _%g102673102707%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g102672102703%_
                                                     _%g102673102707%_))))
                                            (_%g102672102703%_
                                             _%g102673102707%_))))
                                    (_%g102672102703%_ _%g102673102707%_))))
                            (_%g102672102703%_ _%g102673102707%_))))
                    (_%g102672102703%_ _%g102673102707%_)))))
        (_%g102671102822%_ _%$stx102668%_))))
  (define |[:0:]#defshadow-class|
    (lambda (_%$stx102827%_)
      (let* ((_%g102831102862%_
              (lambda (_%g102832102858%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g102832102858%_)))
             (_%g102830102973%_
              (lambda (_%g102832102866%_)
                (if (gx#stx-pair? _%g102832102866%_)
                    (let ((_%e102836102869%_ (gx#syntax-e _%g102832102866%_)))
                      (let ((_%hd102837102873%_
                             (let ()
                               (declare (not safe))
                               (##car _%e102836102869%_)))
                            (_%tl102838102876%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e102836102869%_))))
                        (if (gx#stx-pair? _%tl102838102876%_)
                            (let ((_%e102839102879%_
                                   (gx#syntax-e _%tl102838102876%_)))
                              (let ((_%hd102840102883%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e102839102879%_)))
                                    (_%tl102841102886%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e102839102879%_))))
                                (if (gx#stx-pair? _%tl102841102886%_)
                                    (let ((_%e102842102889%_
                                           (gx#syntax-e _%tl102841102886%_)))
                                      (let ((_%hd102843102893%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e102842102889%_)))
                                            (_%tl102844102896%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e102842102889%_))))
                                        (if (gx#stx-pair/null?
                                             _%hd102843102893%_)
                                            (let ((_g108418_
                                                   (gx#syntax-split-splice
                                                    _%hd102843102893%_
                                                    '0)))
                                              (begin
                                                (let ((_g108419_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g108418_)
                                                             (##values-length
                                                              _g108418_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g108419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g108419_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target102845102899%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g108418_
                                                          0)))
                                                      (_%tl102847102902%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g108418_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl102847102902%_)
                                                      (letrec ((_%loop102848102905%_
                                                                (lambda (_%hd102846102909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%super102852102912%_)
                          (if (gx#stx-pair? _%hd102846102909%_)
                              (let ((_%e102849102915%_
                                     (gx#syntax-e _%hd102846102909%_)))
                                (let ((_%lp-hd102850102919%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e102849102915%_)))
                                      (_%lp-tl102851102922%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e102849102915%_))))
                                  (_%loop102848102905%_
                                   _%lp-tl102851102922%_
                                   (cons _%lp-hd102850102919%_
                                         _%super102852102912%_))))
                              (let ((_%super102853102925%_
                                     (reverse _%super102852102912%_)))
                                (if (gx#stx-pair? _%tl102844102896%_)
                                    (let ((_%e102854102929%_
                                           (gx#syntax-e _%tl102844102896%_)))
                                      (let ((_%hd102855102933%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e102854102929%_)))
                                            (_%tl102856102936%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e102854102929%_))))
                                        (if (gx#stx-null? _%tl102856102936%_)
                                            ((lambda (_%L102939%_
                                                      _%L102941%_
                                                      _%L102942%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'def)
                                                     (cons _%L102942%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'begin-annotation)
                               (cons (cons (gx#datum->syntax '#f '@mop.system)
                                           (cons _%L102942%_
                                                 (cons (let ((__tmp108420
                                                              (lambda (_%g102964102967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g102965102970%_)
                        (cons _%g102964102967%_ _%g102965102970%_))))
                 (declare (not safe))
                 (__foldr1 __tmp108420 '() _%L102941%_))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  '__shadow-class)
                                                 (cons _%L102939%_ '()))
                                           '())))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%hd102855102933%_
                                             _%super102853102925%_
                                             _%hd102840102883%_)
                                            (_%g102831102862%_
                                             _%g102832102866%_))))
                                    (_%g102831102862%_ _%g102832102866%_)))))))
                (_%loop102848102905%_ _%target102845102899%_ '()))
              (_%g102831102862%_ _%g102832102866%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g102831102862%_
                                             _%g102832102866%_))))
                                    (_%g102831102862%_ _%g102832102866%_))))
                            (_%g102831102862%_ _%g102832102866%_))))
                    (_%g102831102862%_ _%g102832102866%_)))))
        (_%g102830102973%_ _%$stx102827%_)))))
