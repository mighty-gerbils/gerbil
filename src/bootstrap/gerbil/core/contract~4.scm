(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g97474_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g97475_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g97476_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx49391%_)
        (let* ((_%g4939449412%_
                (lambda (_%g4939549408%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4939549408%_)))
               (_%g4939349607%_
                (lambda (_%g4939549416%_)
                  (if (gx#stx-pair? _%g4939549416%_)
                      (let ((_%e4939849419%_ (gx#syntax-e _%g4939549416%_)))
                        (let ((_%hd4939949423%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4939849419%_)))
                              (_%tl4940049426%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4939849419%_))))
                          (if (gx#stx-pair? _%tl4940049426%_)
                              (let ((_%e4940149429%_
                                     (gx#syntax-e _%tl4940049426%_)))
                                (let ((_%hd4940249433%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4940149429%_)))
                                      (_%tl4940349436%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4940149429%_))))
                                  (if (gx#stx-pair? _%tl4940349436%_)
                                      (let ((_%e4940449439%_
                                             (gx#syntax-e _%tl4940349436%_)))
                                        (let ((_%hd4940549443%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4940449439%_)))
                                              (_%tl4940649446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4940449439%_))))
                                          (if (gx#stx-null? _%tl4940649446%_)
                                              ((lambda (_%g4939649449%_
                                                        _%g4939749451%_)
                                                 (if (gx#identifier?
                                                      _%g4939649449%_)
                                                     (let ((_%meta49468%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx49391%_
                                                               _%g4939649449%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta49468%_))
                                                           (let* ((_%g4947349488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4947449484%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4947449484%_)))
                          (_%g4947249535%_
                           (lambda (_%g4947449492%_)
                             (if (gx#stx-pair? _%g4947449492%_)
                                 (let ((_%e4947749495%_
                                        (gx#syntax-e _%g4947449492%_)))
                                   (let ((_%hd4947849499%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4947749495%_)))
                                         (_%tl4947949502%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4947749495%_))))
                                     (if (gx#stx-pair? _%tl4947949502%_)
                                         (let ((_%e4948049505%_
                                                (gx#syntax-e
                                                 _%tl4947949502%_)))
                                           (let ((_%hd4948149509%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4948049505%_)))
                                                 (_%tl4948249512%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4948049505%_))))
                                             (if (gx#stx-null?
                                                  _%tl4948249512%_)
                                                 ((lambda (_%g4947549515%_
                                                           _%g4947649517%_)
                                                    (if (let ((__tmp97472
                                                               (let ((__obj97301
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta49468%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj97301
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj97301
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj97301 'id)))))
                  (declare (not safe))
                  (##memq __tmp97472 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4947649517%_ '()))
                            (cons _%g4939749451%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4947649517%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g4939749451%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons _%g4947549515%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons _%g4939749451%_
                                                (cons (cons _%g4947549515%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'val)
                          '()))
              (cons (gx#datum->syntax '#f 'val) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4948149509%_
                                                  _%hd4947849499%_)
                                                 (_%g4947349488%_
                                                  _%g4947449492%_))))
                                         (_%g4947349488%_ _%g4947449492%_))))
                                 (_%g4947349488%_ _%g4947449492%_)))))
                     (_%g4947249535%_
                      (list (let ((__obj97302 _%meta49468%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj97302
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj97302
                                     '3
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj97302
                                   'type-descriptor)))
                            (let ((__obj97303 _%meta49468%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj97303
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj97303
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj97303
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta49468%_))
                       (let* ((_%g4954149556%_
                               (lambda (_%g4954249552%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4954249552%_)))
                              (_%g4954049601%_
                               (lambda (_%g4954249560%_)
                                 (if (gx#stx-pair? _%g4954249560%_)
                                     (let ((_%e4954549563%_
                                            (gx#syntax-e _%g4954249560%_)))
                                       (let ((_%hd4954649567%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4954549563%_)))
                                             (_%tl4954749570%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4954549563%_))))
                                         (if (gx#stx-pair? _%tl4954749570%_)
                                             (let ((_%e4954849573%_
                                                    (gx#syntax-e
                                                     _%tl4954749570%_)))
                                               (let ((_%hd4954949577%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4954849573%_)))
                                                     (_%tl4955049580%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4954849573%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4955049580%_)
                                                     ((lambda (_%g4954349583%_
                                                               _%g4954449585%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%g4954449585%_ '()))
                            (cons (cons _%g4954349583%_
                                        (cons _%g4939749451%_ '()))
                                  '()))))
              _%hd4954949577%_
              _%hd4954649567%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4954149556%_
                                                      _%g4954249560%_))))
                                             (_%g4954149556%_
                                              _%g4954249560%_))))
                                     (_%g4954149556%_ _%g4954249560%_)))))
                         (_%g4954049601%_
                          (list (let ((__obj97300 _%meta49468%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj97300
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj97300
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj97300
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx49391%_
                                   _%g4939649449%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx49391%_
                        _%g4939649449%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4939449412%_
                                                      _%g4939549416%_)))
                                               _%hd4940549443%_
                                               _%hd4940249433%_)
                                              (_%g4939449412%_
                                               _%g4939549416%_))))
                                      (_%g4939449412%_ _%g4939549416%_))))
                              (_%g4939449412%_ _%g4939549416%_))))
                      (_%g4939449412%_ _%g4939549416%_)))))
          (_%g4939349607%_ _%stx49391%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx49611%_)
        (let* ((_%g4961449632%_
                (lambda (_%g4961549628%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4961549628%_)))
               (_%g4961349826%_
                (lambda (_%g4961549636%_)
                  (if (gx#stx-pair? _%g4961549636%_)
                      (let ((_%e4961849639%_ (gx#syntax-e _%g4961549636%_)))
                        (let ((_%hd4961949643%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4961849639%_)))
                              (_%tl4962049646%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4961849639%_))))
                          (if (gx#stx-pair? _%tl4962049646%_)
                              (let ((_%e4962149649%_
                                     (gx#syntax-e _%tl4962049646%_)))
                                (let ((_%hd4962249653%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4962149649%_)))
                                      (_%tl4962349656%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4962149649%_))))
                                  (if (gx#stx-pair? _%tl4962349656%_)
                                      (let ((_%e4962449659%_
                                             (gx#syntax-e _%tl4962349656%_)))
                                        (let ((_%hd4962549663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4962449659%_)))
                                              (_%tl4962649666%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4962449659%_))))
                                          (if (gx#stx-null? _%tl4962649666%_)
                                              ((lambda (_%g4961649669%_
                                                        _%g4961749671%_)
                                                 (if (gx#identifier?
                                                      _%g4961649669%_)
                                                     (let ((_%meta49687%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                               _%stx49611%_
                                                               _%g4961649669%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (class-instance?
                                                              gerbil/core/mop~MOP-2#class-type-info::t
                                                              _%meta49687%_))
                                                           (let* ((_%g4969249707%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g4969349703%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4969349703%_)))
                          (_%g4969149754%_
                           (lambda (_%g4969349711%_)
                             (if (gx#stx-pair? _%g4969349711%_)
                                 (let ((_%e4969649714%_
                                        (gx#syntax-e _%g4969349711%_)))
                                   (let ((_%hd4969749718%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e4969649714%_)))
                                         (_%tl4969849721%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e4969649714%_))))
                                     (if (gx#stx-pair? _%tl4969849721%_)
                                         (let ((_%e4969949724%_
                                                (gx#syntax-e
                                                 _%tl4969849721%_)))
                                           (let ((_%hd4970049728%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e4969949724%_)))
                                                 (_%tl4970149731%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e4969949724%_))))
                                             (if (gx#stx-null?
                                                  _%tl4970149731%_)
                                                 ((lambda (_%g4969449734%_
                                                           _%g4969549736%_)
                                                    (if (let ((__tmp97473
                                                               (let ((__obj97305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%meta49687%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-direct-instance-of?
                                __obj97305
                                'gerbil.core#class-type-info::t))
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                __obj97305
                                '1
                                '#f
                                '#f))
                             (unchecked-slot-ref __obj97305 'id)))))
                  (declare (not safe))
                  (##memq __tmp97473 '(t void)))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4969549736%_ '()))
                            (cons _%g4961749671%_ '())))
                (cons (gx#datum->syntax '#f 'begin-annotation)
                      (cons (cons (gx#datum->syntax '#f '@type)
                                  (cons _%g4969549736%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g4961749671%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'or)
                              (cons (cons (gx#datum->syntax '#f 'not)
                                          (cons (gx#datum->syntax '#f 'val)
                                                '()))
                                    (cons (cons _%g4969449734%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))
                                          '())))
                        (cons (gx#datum->syntax '#f 'val)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'contract-violation!)
                                          (cons _%g4961749671%_
                                                (cons (cons _%g4969449734%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'val)
                          '()))
              (cons (gx#datum->syntax '#f 'val) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd4970049728%_
                                                  _%hd4969749718%_)
                                                 (_%g4969249707%_
                                                  _%g4969349711%_))))
                                         (_%g4969249707%_ _%g4969349711%_))))
                                 (_%g4969249707%_ _%g4969349711%_)))))
                     (_%g4969149754%_
                      (list (let ((__obj97306 _%meta49687%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj97306
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj97306
                                     '3
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj97306
                                   'type-descriptor)))
                            (let ((__obj97307 _%meta49687%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj97307
                                     'gerbil.core#class-type-info::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj97307
                                     '14
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref
                                   __obj97307
                                   'predicate))))))
                   (if (let ()
                         (declare (not safe))
                         (class-instance?
                          gerbil/core/contract~InterfaceInfo#interface-info::t
                          _%meta49687%_))
                       (let* ((_%g4976049775%_
                               (lambda (_%g4976149771%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g4976149771%_)))
                              (_%g4975949820%_
                               (lambda (_%g4976149779%_)
                                 (if (gx#stx-pair? _%g4976149779%_)
                                     (let ((_%e4976449782%_
                                            (gx#syntax-e _%g4976149779%_)))
                                       (let ((_%hd4976549786%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e4976449782%_)))
                                             (_%tl4976649789%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e4976449782%_))))
                                         (if (gx#stx-pair? _%tl4976649789%_)
                                             (let ((_%e4976749792%_
                                                    (gx#syntax-e
                                                     _%tl4976649789%_)))
                                               (let ((_%hd4976849796%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e4976749792%_)))
                                                     (_%tl4976949799%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e4976749792%_))))
                                                 (if (gx#stx-null?
                                                      _%tl4976949799%_)
                                                     ((lambda (_%g4976249802%_
                                                               _%g4976349804%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'begin-annotation)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   '@type)
                                  (cons _%g4976349804%_ '()))
                            (cons (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons (gx#datum->syntax '#f 'val)
                                                    (cons _%g4961749671%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'and)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'val)
                        (cons (cons _%g4976249802%_
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '()))))
              _%hd4976849796%_
              _%hd4976549786%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4976049775%_
                                                      _%g4976149779%_))))
                                             (_%g4976049775%_
                                              _%g4976149779%_))))
                                     (_%g4976049775%_ _%g4976149779%_)))))
                         (_%g4975949820%_
                          (list (let ((__obj97304 _%meta49687%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         __obj97304
                                         'gerbil.core#runtime-type-info::t))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         __obj97304
                                         '3
                                         '#f
                                         '#f))
                                      (unchecked-slot-ref
                                       __obj97304
                                       'type-descriptor)))
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                   _%stx49611%_
                                   _%g4961649669%_)))))
                       (gx#raise-syntax-error
                        '#f
                        '"not a class type or interface"
                        _%stx49611%_
                        _%g4961649669%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4961449632%_
                                                      _%g4961549636%_)))
                                               _%hd4962549663%_
                                               _%hd4962249653%_)
                                              (_%g4961449632%_
                                               _%g4961549636%_))))
                                      (_%g4961449632%_ _%g4961549636%_))))
                              (_%g4961449632%_ _%g4961549636%_))))
                      (_%g4961449632%_ _%g4961549636%_)))))
          (_%g4961349826%_ _%stx49611%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx49830%_)
        (let* ((_%g4983349851%_
                (lambda (_%g4983449847%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g4983449847%_)))
               (_%g4983249937%_
                (lambda (_%g4983449855%_)
                  (if (gx#stx-pair? _%g4983449855%_)
                      (let ((_%e4983749858%_ (gx#syntax-e _%g4983449855%_)))
                        (let ((_%hd4983849862%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4983749858%_)))
                              (_%tl4983949865%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4983749858%_))))
                          (if (gx#stx-pair? _%tl4983949865%_)
                              (let ((_%e4984049868%_
                                     (gx#syntax-e _%tl4983949865%_)))
                                (let ((_%hd4984149872%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4984049868%_)))
                                      (_%tl4984249875%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4984049868%_))))
                                  (if (gx#stx-pair? _%tl4984249875%_)
                                      (let ((_%e4984349878%_
                                             (gx#syntax-e _%tl4984249875%_)))
                                        (let ((_%hd4984449882%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4984349878%_)))
                                              (_%tl4984549885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4984349878%_))))
                                          (if (gx#stx-null? _%tl4984549885%_)
                                              ((lambda (_%g4983549888%_
                                                        _%g4983649890%_)
                                                 (if (gx#identifier?
                                                      _%g4983549888%_)
                                                     (let* ((_%g4990649914%_
                                                             (lambda (_%g4990749910%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g4990749910%_)))
                                                            (_%g4990549933%_
                                                             (lambda (_%g4990749918%_)
                                                               ((lambda (_%g4990849921%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'begin-annotation)
                                (cons (cons (gx#datum->syntax '#f '@type)
                                            (cons _%g4990849921%_ '()))
                                      (cons _%g4983649890%_ '()))))
                        _%g4990749918%_))))
               (_%g4990549933%_
                (let ()
                  (declare (not safe))
                  (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                   _%stx49830%_
                   _%g4983549888%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g4983349851%_
                                                      _%g4983449855%_)))
                                               _%hd4984449882%_
                                               _%hd4984149872%_)
                                              (_%g4983349851%_
                                               _%g4983449855%_))))
                                      (_%g4983349851%_ _%g4983449855%_))))
                              (_%g4983349851%_ _%g4983449855%_))))
                      (_%g4983349851%_ _%g4983449855%_)))))
          (_%g4983249937%_ _%stx49830%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#do-with-lock|
      (lambda (_%$stx49941%_)
        (let* ((_%__stx9102591026%_ _%$stx49941%_)
               (_%g4994750031%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9102591026%_))))
          (let ((_%__kont9102891029%_
                 (lambda (_%g4994950335%_
                          _%g4995050337%_
                          _%g4995150338%_
                          _%g4995250339%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g4995250339%_
                                           (cons _%g4995050337%_
                                                 (foldr (lambda (_%g5036350366%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5036450369%_)
                  (cons _%g5036350366%_ _%g5036450369%_))
                '()
                _%g4994950335%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g4995150338%_ '())))))
                (_%__kont9103291033%_
                 (lambda (_%g4997750213%_
                          _%g4997850215%_
                          _%g4997950216%_
                          _%g4998050217%_)
                   (cons (gx#datum->syntax '#f ':)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%g4998050217%_
                                           (cons _%g4997850215%_
                                                 (foldr (lambda (_%g5024150244%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g5024250247%_)
                  (cons _%g5024150244%_ _%g5024250247%_))
                '()
                _%g4997750213%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%g4997950216%_ '())))))
                (_%__kont9103691037%_
                 (lambda (_%g5000550096%_ _%g5000650098%_ _%g5000750099%_)
                   (cons (gx#datum->syntax '#f 'with-lock)
                         (cons _%g5000750099%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons _%g5000650098%_
                                                       (foldr (lambda (_%g5011950122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g5012050125%_)
                        (cons _%g5011950122%_ _%g5012050125%_))
                      '()
                      _%g5000550096%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9115091151%_
                    (lambda (_%e5000850038%_
                             _%hd5000950042%_
                             _%tl5001050045%_
                             _%e5001150048%_
                             _%hd5001250052%_
                             _%tl5001350055%_
                             _%e5001450058%_
                             _%hd5001550062%_
                             _%tl5001650065%_
                             _%__splice9103891039%_
                             _%target5001750068%_
                             _%tl5001950071%_)
                      (letrec ((_%loop5002050074%_
                                (lambda (_%hd5001850078%_ _%rest5002450081%_)
                                  (if (gx#stx-pair? _%hd5001850078%_)
                                      (let ((_%e5002150083%_
                                             (gx#syntax-e _%hd5001850078%_)))
                                        (let ((_%lp-tl5002350090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5002150083%_)))
                                              (_%lp-hd5002250087%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5002150083%_))))
                                          (_%loop5002050074%_
                                           _%lp-tl5002350090%_
                                           (cons _%lp-hd5002250087%_
                                                 _%rest5002450081%_))))
                                      (let ((_%rest5002550093%_
                                             (reverse _%rest5002450081%_)))
                                        (_%__kont9103691037%_
                                         _%rest5002550093%_
                                         _%hd5001550062%_
                                         _%hd5001250052%_))))))
                        (_%loop5002050074%_ _%target5001750068%_ '()))))
                   (_%__match9112491125%_
                    (lambda (_%e4998150135%_
                             _%hd4998250139%_
                             _%tl4998350142%_
                             _%e4998450145%_
                             _%hd4998550149%_
                             _%tl4998650152%_
                             _%e4998750155%_
                             _%hd4998850159%_
                             _%tl4998950162%_
                             _%e4999050165%_
                             _%hd4999150169%_
                             _%tl4999250172%_
                             _%e4999350175%_
                             _%hd4999450179%_
                             _%tl4999550182%_
                             _%__splice9103491035%_
                             _%target4999650185%_
                             _%tl4999850188%_)
                      (letrec ((_%loop4999950191%_
                                (lambda (_%hd4999750195%_ _%rest5000350198%_)
                                  (if (gx#stx-pair? _%hd4999750195%_)
                                      (let ((_%e5000050200%_
                                             (gx#syntax-e _%hd4999750195%_)))
                                        (let ((_%lp-tl5000250207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5000050200%_)))
                                              (_%lp-hd5000150204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5000050200%_))))
                                          (_%loop4999950191%_
                                           _%lp-tl5000250207%_
                                           (cons _%lp-hd5000150204%_
                                                 _%rest5000350198%_))))
                                      (let ((_%rest5000450210%_
                                             (reverse _%rest5000350198%_)))
                                        (_%__kont9103291033%_
                                         _%rest5000450210%_
                                         _%hd4999450179%_
                                         _%hd4999150169%_
                                         _%hd4998550149%_))))))
                        (_%loop4999950191%_ _%target4999650185%_ '()))))
                   (_%__match9108291083%_
                    (lambda (_%e4995350257%_
                             _%hd4995450261%_
                             _%tl4995550264%_
                             _%e4995650267%_
                             _%hd4995750271%_
                             _%tl4995850274%_
                             _%e4995950277%_
                             _%hd4996050281%_
                             _%tl4996150284%_
                             _%e4996250287%_
                             _%hd4996350291%_
                             _%tl4996450294%_
                             _%e4996550297%_
                             _%hd4996650301%_
                             _%tl4996750304%_
                             _%__splice9103091031%_
                             _%target4996850307%_
                             _%tl4997050310%_)
                      (letrec ((_%loop4997150313%_
                                (lambda (_%hd4996950317%_ _%rest4997550320%_)
                                  (if (gx#stx-pair? _%hd4996950317%_)
                                      (let ((_%e4997250322%_
                                             (gx#syntax-e _%hd4996950317%_)))
                                        (let ((_%lp-tl4997450329%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4997250322%_)))
                                              (_%lp-hd4997350326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4997250322%_))))
                                          (_%loop4997150313%_
                                           _%lp-tl4997450329%_
                                           (cons _%lp-hd4997350326%_
                                                 _%rest4997550320%_))))
                                      (let ((_%rest4997650332%_
                                             (reverse _%rest4997550320%_)))
                                        (_%__kont9102891029%_
                                         _%rest4997650332%_
                                         _%hd4996650301%_
                                         _%hd4996350291%_
                                         _%hd4995750271%_))))))
                        (_%loop4997150313%_ _%target4996850307%_ '())))))
              (if (gx#stx-pair? _%__stx9102591026%_)
                  (let ((_%e4995350257%_ (gx#syntax-e _%__stx9102591026%_)))
                    (let ((_%tl4995550264%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4995350257%_)))
                          (_%hd4995450261%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4995350257%_))))
                      (if (gx#stx-pair? _%tl4995550264%_)
                          (let ((_%e4995650267%_
                                 (gx#syntax-e _%tl4995550264%_)))
                            (let ((_%tl4995850274%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4995650267%_)))
                                  (_%hd4995750271%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4995650267%_))))
                              (if (gx#stx-pair? _%tl4995850274%_)
                                  (let ((_%e4995950277%_
                                         (gx#syntax-e _%tl4995850274%_)))
                                    (let ((_%tl4996150284%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4995950277%_)))
                                          (_%hd4996050281%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4995950277%_))))
                                      (if (gx#identifier? _%hd4996050281%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~TypeCast[1]#_g97474_|
                                               _%hd4996050281%_)
                                              (if (gx#stx-pair?
                                                   _%tl4996150284%_)
                                                  (let ((_%e4996250287%_
                                                         (gx#syntax-e
                                                          _%tl4996150284%_)))
                                                    (let ((_%tl4996450294%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e4996250287%_)))
                                                          (_%hd4996350291%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e4996250287%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl4996450294%_)
                                                          (let ((_%e4996550297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl4996450294%_)))
                    (let ((_%tl4996750304%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4996550297%_)))
                          (_%hd4996650301%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4996550297%_))))
                      (if (gx#stx-pair/null? _%tl4996750304%_)
                          (let ((_%__splice9103091031%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4996750304%_
                                  '0)))
                            (let ((_%tl4997050310%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9103091031%_ '1)))
                                  (_%target4996850307%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9103091031%_
                                      '0))))
                              (if (gx#stx-null? _%tl4997050310%_)
                                  (_%__match9108291083%_
                                   _%e4995350257%_
                                   _%hd4995450261%_
                                   _%tl4995550264%_
                                   _%e4995650267%_
                                   _%hd4995750271%_
                                   _%tl4995850274%_
                                   _%e4995950277%_
                                   _%hd4996050281%_
                                   _%tl4996150284%_
                                   _%e4996250287%_
                                   _%hd4996350291%_
                                   _%tl4996450294%_
                                   _%e4996550297%_
                                   _%hd4996650301%_
                                   _%tl4996750304%_
                                   _%__splice9103091031%_
                                   _%target4996850307%_
                                   _%tl4997050310%_)
                                  (if (gx#stx-pair/null? _%tl4996150284%_)
                                      (let ((_%__splice9103891039%_
                                             (gx#syntax-split-splice->vector
                                              _%tl4996150284%_
                                              '0)))
                                        (let ((_%tl5001950071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9103891039%_
                                                  '1)))
                                              (_%target5001750068%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9103891039%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5001950071%_)
                                              (_%__match9115091151%_
                                               _%e4995350257%_
                                               _%hd4995450261%_
                                               _%tl4995550264%_
                                               _%e4995650267%_
                                               _%hd4995750271%_
                                               _%tl4995850274%_
                                               _%e4995950277%_
                                               _%hd4996050281%_
                                               _%tl4996150284%_
                                               _%__splice9103891039%_
                                               _%target5001750068%_
                                               _%tl5001950071%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g4994750031%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g4994750031%_))))))
                          (if (gx#stx-pair/null? _%tl4996150284%_)
                              (let ((_%__splice9103891039%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4996150284%_
                                      '0)))
                                (let ((_%tl5001950071%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9103891039%_
                                          '1)))
                                      (_%target5001750068%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9103891039%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5001950071%_)
                                      (_%__match9115091151%_
                                       _%e4995350257%_
                                       _%hd4995450261%_
                                       _%tl4995550264%_
                                       _%e4995650267%_
                                       _%hd4995750271%_
                                       _%tl4995850274%_
                                       _%e4995950277%_
                                       _%hd4996050281%_
                                       _%tl4996150284%_
                                       _%__splice9103891039%_
                                       _%target5001750068%_
                                       _%tl5001950071%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4994750031%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4994750031%_))))))
                  (if (gx#stx-pair/null? _%tl4996150284%_)
                      (let ((_%__splice9103891039%_
                             (gx#syntax-split-splice->vector
                              _%tl4996150284%_
                              '0)))
                        (let ((_%tl5001950071%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9103891039%_ '1)))
                              (_%target5001750068%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9103891039%_ '0))))
                          (if (gx#stx-null? _%tl5001950071%_)
                              (_%__match9115091151%_
                               _%e4995350257%_
                               _%hd4995450261%_
                               _%tl4995550264%_
                               _%e4995650267%_
                               _%hd4995750271%_
                               _%tl4995850274%_
                               _%e4995950277%_
                               _%hd4996050281%_
                               _%tl4996150284%_
                               _%__splice9103891039%_
                               _%target5001750068%_
                               _%tl5001950071%_)
                              (let ()
                                (declare (not safe))
                                (_%g4994750031%_)))))
                      (let () (declare (not safe)) (_%g4994750031%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4996150284%_)
                                                      (let ((_%__splice9103891039%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4996150284%_
                                                              '0)))
                                                        (let ((_%tl5001950071%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9103891039%_ '1)))
                      (_%target5001750068%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9103891039%_ '0))))
                  (if (gx#stx-null? _%tl5001950071%_)
                      (_%__match9115091151%_
                       _%e4995350257%_
                       _%hd4995450261%_
                       _%tl4995550264%_
                       _%e4995650267%_
                       _%hd4995750271%_
                       _%tl4995850274%_
                       _%e4995950277%_
                       _%hd4996050281%_
                       _%tl4996150284%_
                       _%__splice9103891039%_
                       _%target5001750068%_
                       _%tl5001950071%_)
                      (let () (declare (not safe)) (_%g4994750031%_)))))
              (let () (declare (not safe)) (_%g4994750031%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypeCast[1]#_g97475_|
                                                   _%hd4996050281%_)
                                                  (if (gx#stx-pair?
                                                       _%tl4996150284%_)
                                                      (let ((_%e4999050165%_
                                                             (gx#syntax-e
                                                              _%tl4996150284%_)))
                                                        (let ((_%tl4999250172%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e4999050165%_)))
                      (_%hd4999150169%_
                       (let () (declare (not safe)) (##car _%e4999050165%_))))
                  (if (gx#stx-pair? _%tl4999250172%_)
                      (let ((_%e4999350175%_ (gx#syntax-e _%tl4999250172%_)))
                        (let ((_%tl4999550182%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4999350175%_)))
                              (_%hd4999450179%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4999350175%_))))
                          (if (gx#stx-pair/null? _%tl4999550182%_)
                              (let ((_%__splice9103491035%_
                                     (gx#syntax-split-splice->vector
                                      _%tl4999550182%_
                                      '0)))
                                (let ((_%tl4999850188%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9103491035%_
                                          '1)))
                                      (_%target4999650185%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9103491035%_
                                          '0))))
                                  (if (gx#stx-null? _%tl4999850188%_)
                                      (_%__match9112491125%_
                                       _%e4995350257%_
                                       _%hd4995450261%_
                                       _%tl4995550264%_
                                       _%e4995650267%_
                                       _%hd4995750271%_
                                       _%tl4995850274%_
                                       _%e4995950277%_
                                       _%hd4996050281%_
                                       _%tl4996150284%_
                                       _%e4999050165%_
                                       _%hd4999150169%_
                                       _%tl4999250172%_
                                       _%e4999350175%_
                                       _%hd4999450179%_
                                       _%tl4999550182%_
                                       _%__splice9103491035%_
                                       _%target4999650185%_
                                       _%tl4999850188%_)
                                      (if (gx#stx-pair/null? _%tl4996150284%_)
                                          (let ((_%__splice9103891039%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4996150284%_
                                                  '0)))
                                            (let ((_%tl5001950071%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9103891039%_
                                                      '1)))
                                                  (_%target5001750068%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9103891039%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5001950071%_)
                                                  (_%__match9115091151%_
                                                   _%e4995350257%_
                                                   _%hd4995450261%_
                                                   _%tl4995550264%_
                                                   _%e4995650267%_
                                                   _%hd4995750271%_
                                                   _%tl4995850274%_
                                                   _%e4995950277%_
                                                   _%hd4996050281%_
                                                   _%tl4996150284%_
                                                   _%__splice9103891039%_
                                                   _%target5001750068%_
                                                   _%tl5001950071%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4994750031%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4994750031%_))))))
                              (if (gx#stx-pair/null? _%tl4996150284%_)
                                  (let ((_%__splice9103891039%_
                                         (gx#syntax-split-splice->vector
                                          _%tl4996150284%_
                                          '0)))
                                    (let ((_%tl5001950071%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9103891039%_
                                              '1)))
                                          (_%target5001750068%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9103891039%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5001950071%_)
                                          (_%__match9115091151%_
                                           _%e4995350257%_
                                           _%hd4995450261%_
                                           _%tl4995550264%_
                                           _%e4995650267%_
                                           _%hd4995750271%_
                                           _%tl4995850274%_
                                           _%e4995950277%_
                                           _%hd4996050281%_
                                           _%tl4996150284%_
                                           _%__splice9103891039%_
                                           _%target5001750068%_
                                           _%tl5001950071%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g4994750031%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4994750031%_))))))
                      (if (gx#stx-pair/null? _%tl4996150284%_)
                          (let ((_%__splice9103891039%_
                                 (gx#syntax-split-splice->vector
                                  _%tl4996150284%_
                                  '0)))
                            (let ((_%tl5001950071%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9103891039%_ '1)))
                                  (_%target5001750068%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9103891039%_
                                      '0))))
                              (if (gx#stx-null? _%tl5001950071%_)
                                  (_%__match9115091151%_
                                   _%e4995350257%_
                                   _%hd4995450261%_
                                   _%tl4995550264%_
                                   _%e4995650267%_
                                   _%hd4995750271%_
                                   _%tl4995850274%_
                                   _%e4995950277%_
                                   _%hd4996050281%_
                                   _%tl4996150284%_
                                   _%__splice9103891039%_
                                   _%target5001750068%_
                                   _%tl5001950071%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g4994750031%_)))))
                          (let () (declare (not safe)) (_%g4994750031%_))))))
              (if (gx#stx-pair/null? _%tl4996150284%_)
                  (let ((_%__splice9103891039%_
                         (gx#syntax-split-splice->vector _%tl4996150284%_ '0)))
                    (let ((_%tl5001950071%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9103891039%_ '1)))
                          (_%target5001750068%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9103891039%_ '0))))
                      (if (gx#stx-null? _%tl5001950071%_)
                          (_%__match9115091151%_
                           _%e4995350257%_
                           _%hd4995450261%_
                           _%tl4995550264%_
                           _%e4995650267%_
                           _%hd4995750271%_
                           _%tl4995850274%_
                           _%e4995950277%_
                           _%hd4996050281%_
                           _%tl4996150284%_
                           _%__splice9103891039%_
                           _%target5001750068%_
                           _%tl5001950071%_)
                          (let () (declare (not safe)) (_%g4994750031%_)))))
                  (let () (declare (not safe)) (_%g4994750031%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4996150284%_)
                                                      (let ((_%__splice9103891039%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4996150284%_
                                                              '0)))
                                                        (let ((_%tl5001950071%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9103891039%_ '1)))
                      (_%target5001750068%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9103891039%_ '0))))
                  (if (gx#stx-null? _%tl5001950071%_)
                      (_%__match9115091151%_
                       _%e4995350257%_
                       _%hd4995450261%_
                       _%tl4995550264%_
                       _%e4995650267%_
                       _%hd4995750271%_
                       _%tl4995850274%_
                       _%e4995950277%_
                       _%hd4996050281%_
                       _%tl4996150284%_
                       _%__splice9103891039%_
                       _%target5001750068%_
                       _%tl5001950071%_)
                      (let () (declare (not safe)) (_%g4994750031%_)))))
              (let () (declare (not safe)) (_%g4994750031%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4996150284%_)
                                              (let ((_%__splice9103891039%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4996150284%_
                                                      '0)))
                                                (let ((_%tl5001950071%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9103891039%_
                                                          '1)))
                                                      (_%target5001750068%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9103891039%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl5001950071%_)
                                                      (_%__match9115091151%_
                                                       _%e4995350257%_
                                                       _%hd4995450261%_
                                                       _%tl4995550264%_
                                                       _%e4995650267%_
                                                       _%hd4995750271%_
                                                       _%tl4995850274%_
                                                       _%e4995950277%_
                                                       _%hd4996050281%_
                                                       _%tl4996150284%_
                                                       _%__splice9103891039%_
                                                       _%target5001750068%_
                                                       _%tl5001950071%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g4994750031%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g4994750031%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g4994750031%_)))))
                          (let () (declare (not safe)) (_%g4994750031%_)))))
                  (let () (declare (not safe)) (_%g4994750031%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx50379%_)
        (let* ((_%__stx9115391154%_ _%$stx50379%_)
               (_%g5038450420%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9115391154%_))))
          (let ((_%__kont9115691157%_
                 (lambda (_%g5038650538%_ _%g5038750540%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%g5038750540%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%g5038650538%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'val)
                                                             '()))
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'val)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'contract-violation!)
                           (cons _%g5038750540%_
                                 (cons _%g5038650538%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9115891159%_
                 (lambda (_%g5039750477%_ _%g5039850479%_ _%g5039950480%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%g5039950480%_
                                           (cons _%g5039850479%_ '())))
                               (cons _%g5039750477%_ '()))))))
            (if (gx#stx-pair? _%__stx9115391154%_)
                (let ((_%e5038850508%_ (gx#syntax-e _%__stx9115391154%_)))
                  (let ((_%tl5039050515%_
                         (let () (declare (not safe)) (##cdr _%e5038850508%_)))
                        (_%hd5038950512%_
                         (let ()
                           (declare (not safe))
                           (##car _%e5038850508%_))))
                    (if (gx#stx-pair? _%tl5039050515%_)
                        (let ((_%e5039150518%_ (gx#syntax-e _%tl5039050515%_)))
                          (let ((_%tl5039350525%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5039150518%_)))
                                (_%hd5039250522%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5039150518%_))))
                            (if (gx#stx-pair? _%tl5039350525%_)
                                (let ((_%e5039450528%_
                                       (gx#syntax-e _%tl5039350525%_)))
                                  (let ((_%tl5039650535%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5039450528%_)))
                                        (_%hd5039550532%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5039450528%_))))
                                    (if (gx#stx-null? _%tl5039650535%_)
                                        (_%__kont9115691157%_
                                         _%hd5039550532%_
                                         _%hd5039250522%_)
                                        (if (gx#stx-pair? _%tl5039650535%_)
                                            (let ((_%e5040950457%_
                                                   (gx#syntax-e
                                                    _%tl5039650535%_)))
                                              (let ((_%tl5041150464%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5040950457%_)))
                                                    (_%hd5041050461%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5040950457%_))))
                                                (if (gx#identifier?
                                                     _%hd5041050461%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g97476_|
                                                         _%hd5041050461%_)
                                                        (if (gx#stx-pair?
                                                             _%tl5041150464%_)
                                                            (let ((_%e5041250467%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl5041150464%_)))
                      (let ((_%tl5041450474%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5041250467%_)))
                            (_%hd5041350471%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5041250467%_))))
                        (if (gx#stx-null? _%tl5041450474%_)
                            (_%__kont9115891159%_
                             _%hd5041350471%_
                             _%hd5039550532%_
                             _%hd5039250522%_)
                            (let () (declare (not safe)) (_%g5038450420%_)))))
                    (let () (declare (not safe)) (_%g5038450420%_)))
                (let () (declare (not safe)) (_%g5038450420%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5038450420%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5038450420%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g5038450420%_)))))
                        (let () (declare (not safe)) (_%g5038450420%_)))))
                (let () (declare (not safe)) (_%g5038450420%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx50559%_)
        (let ((_%g5056250569%_
               (lambda (_%g5056350565%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5056350565%_))))
          (_%g5056250569%_ _%$stx50559%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx50573%_)
        (let ((_%g5057650583%_
               (lambda (_%g5057750579%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5057750579%_))))
          (_%g5057650583%_ _%$stx50573%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx50587%_)
        (let* ((_%g5059150605%_
                (lambda (_%g5059250601%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5059250601%_)))
               (_%g5059050646%_
                (lambda (_%g5059250609%_)
                  (if (gx#stx-pair? _%g5059250609%_)
                      (let ((_%e5059450612%_ (gx#syntax-e _%g5059250609%_)))
                        (let ((_%hd5059550616%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5059450612%_)))
                              (_%tl5059650619%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5059450612%_))))
                          (if (gx#stx-pair? _%tl5059650619%_)
                              (let ((_%e5059750622%_
                                     (gx#syntax-e _%tl5059650619%_)))
                                (let ((_%hd5059850626%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5059750622%_)))
                                      (_%tl5059950629%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5059750622%_))))
                                  (if (gx#stx-null? _%tl5059950629%_)
                                      ((lambda (_%g5059350632%_)
                                         (cons (gx#datum->syntax '#f 'or)
                                               (cons _%g5059350632%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'nil-dereference!)
                         (cons _%g5059350632%_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd5059850626%_)
                                      (_%g5059150605%_ _%g5059250609%_))))
                              (_%g5059150605%_ _%g5059250609%_))))
                      (_%g5059150605%_ _%g5059250609%_)))))
          (_%g5059050646%_ _%$stx50587%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx50650%_)
        (let* ((_%g5065350676%_
                (lambda (_%g5065450672%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5065450672%_)))
               (_%g5065250800%_
                (lambda (_%g5065450680%_)
                  (if (gx#stx-pair? _%g5065450680%_)
                      (let ((_%e5065950683%_ (gx#syntax-e _%g5065450680%_)))
                        (let ((_%hd5066050687%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5065950683%_)))
                              (_%tl5066150690%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5065950683%_))))
                          (if (gx#stx-pair? _%tl5066150690%_)
                              (let ((_%e5066250693%_
                                     (gx#syntax-e _%tl5066150690%_)))
                                (let ((_%hd5066350697%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5066250693%_)))
                                      (_%tl5066450700%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5066250693%_))))
                                  (if (gx#stx-pair? _%tl5066450700%_)
                                      (let ((_%e5066550703%_
                                             (gx#syntax-e _%tl5066450700%_)))
                                        (let ((_%hd5066650707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5066550703%_)))
                                              (_%tl5066750710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5066550703%_))))
                                          (if (gx#stx-pair? _%tl5066750710%_)
                                              (let ((_%e5066850713%_
                                                     (gx#syntax-e
                                                      _%tl5066750710%_)))
                                                (let ((_%hd5066950717%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5066850713%_)))
                                                      (_%tl5067050720%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5066850713%_))))
                                                  (if (gx#stx-null?
                                                       _%tl5067050720%_)
                                                      ((lambda (_%g5065550723%_
                                                                _%g5065650725%_
                                                                _%g5065750726%_
                                                                _%g5065850727%_)
                                                         (let* ((_%g5074750755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g5074850751%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g5074850751%_)))
                        (_%g5074650774%_
                         (lambda (_%g5074850759%_)
                           ((lambda (_%g5074950762%_)
                              (cons (gx#datum->syntax '#f 'abort!)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'raise-contract-violation-error)
                                                (cons '"contract violation"
                                                      (cons 'context:
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g5074950762%_ '()))
                          (cons 'contract:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%g5065650725%_ '()))
                                      (cons 'value:
                                            (cons _%g5065550723%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                            _%g5074850759%_))))
                   (_%g5074650774%_
                    (let ((_%$e50786%_
                           (let ((_%$e50778%_ (gx#stx-source _%g5065750726%_)))
                             (if _%$e50778%_
                                 _%$e50778%_
                                 (let ((_%$e50782%_
                                        (gx#stx-source _%stx50650%_)))
                                   (if _%$e50782%_
                                       _%$e50782%_
                                       (gx#stx-source _%g5065850727%_)))))))
                      (if _%$e50786%_
                          ((lambda (_%locat50790%_)
                             (call-with-output-string
                              '""
                              (lambda (_%g5079250794%_)
                                (let ()
                                  (declare (not safe))
                                  (##display-locat
                                   _%locat50790%_
                                   '#t
                                   _%g5079250794%_)))))
                           _%$e50786%_)
                          (gx#expander-context-id (gx#core-context-top)))))))
               _%hd5066950717%_
               _%hd5066650707%_
               _%hd5066350697%_
               _%hd5066050687%_)
              (_%g5065350676%_ _%g5065450680%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5065350676%_
                                               _%g5065450680%_))))
                                      (_%g5065350676%_ _%g5065450680%_))))
                              (_%g5065350676%_ _%g5065450680%_))))
                      (_%g5065350676%_ _%g5065450680%_)))))
          (_%g5065250800%_ _%stx50650%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx50804%_)
        (let* ((_%g5080750822%_
                (lambda (_%g5080850818%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5080850818%_)))
               (_%g5080650918%_
                (lambda (_%g5080850826%_)
                  (if (gx#stx-pair? _%g5080850826%_)
                      (let ((_%e5081150829%_ (gx#syntax-e _%g5080850826%_)))
                        (let ((_%hd5081250833%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5081150829%_)))
                              (_%tl5081350836%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5081150829%_))))
                          (if (gx#stx-pair? _%tl5081350836%_)
                              (let ((_%e5081450839%_
                                     (gx#syntax-e _%tl5081350836%_)))
                                (let ((_%hd5081550843%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5081450839%_)))
                                      (_%tl5081650846%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5081450839%_))))
                                  (if (gx#stx-null? _%tl5081650846%_)
                                      ((lambda (_%g5080950849%_
                                                _%g5081050851%_)
                                         (let* ((_%g5086550873%_
                                                 (lambda (_%g5086650869%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g5086650869%_)))
                                                (_%g5086450892%_
                                                 (lambda (_%g5086650877%_)
                                                   ((lambda (_%g5086750880%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'abort!)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'raise-contract-violation-error)
                                (cons '"nil (#f) derefence"
                                      (cons 'context:
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _%g5086750880%_
                                                              '()))
                                                  (cons 'contract:
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (cons (gx#datum->syntax '#f 'check-nil!)
                                        (cons _%g5080950849%_ '()))
                                  '()))
                      (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g5086650877%_))))
                                           (_%g5086450892%_
                                            (let ((_%$e50904%_
                                                   (let ((_%$e50896%_
                                                          (gx#stx-source
                                                           _%g5080950849%_)))
                                                     (if _%$e50896%_
                                                         _%$e50896%_
                                                         (let ((_%$e50900%_
                                                                (gx#stx-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx50804%_)))
                   (if _%$e50900%_
                       _%$e50900%_
                       (gx#stx-source _%g5081050851%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if _%$e50904%_
                                                  ((lambda (_%locat50908%_)
                                                     (call-with-output-string
                                                      '""
                                                      (lambda (_%g5091050912%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (##display-locat
                                                           _%locat50908%_
                                                           '#t
                                                           _%g5091050912%_)))))
                                                   _%$e50904%_)
                                                  (gx#expander-context-id
                                                   (gx#core-context-top)))))))
                                       _%hd5081550843%_
                                       _%hd5081250833%_)
                                      (_%g5080750822%_ _%g5080850826%_))))
                              (_%g5080750822%_ _%g5080850826%_))))
                      (_%g5080750822%_ _%g5080850826%_)))))
          (_%g5080650918%_ _%stx50804%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx50922%_)
        (let* ((_%g5092650940%_
                (lambda (_%g5092750936%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5092750936%_)))
               (_%g5092550981%_
                (lambda (_%g5092750944%_)
                  (if (gx#stx-pair? _%g5092750944%_)
                      (let ((_%e5092950947%_ (gx#syntax-e _%g5092750944%_)))
                        (let ((_%hd5093050951%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5092950947%_)))
                              (_%tl5093150954%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5092950947%_))))
                          (if (gx#stx-pair? _%tl5093150954%_)
                              (let ((_%e5093250957%_
                                     (gx#syntax-e _%tl5093150954%_)))
                                (let ((_%hd5093350961%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5093250957%_)))
                                      (_%tl5093450964%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5093250957%_))))
                                  (if (gx#stx-null? _%tl5093450964%_)
                                      ((lambda (_%g5092850967%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'begin-annotation)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@abort)
                                                           '())
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (cons _%g5092850967%_
                               (cons (cons (gx#datum->syntax '#f 'void) '())
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd5093350961%_)
                                      (_%g5092650940%_ _%g5092750944%_))))
                              (_%g5092650940%_ _%g5092750944%_))))
                      (_%g5092650940%_ _%g5092750944%_)))))
          (_%g5092550981%_ _%$stx50922%_))))))
