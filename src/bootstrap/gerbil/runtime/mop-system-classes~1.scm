(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g140525_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |[:0:]#defpred|
      (lambda (_%stx140008%_)
        (let* ((_%g140011140049%_
                (lambda (_%g140012140045%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g140012140045%_)))
               (_%g140010140216%_
                (lambda (_%g140012140053%_)
                  (if (gx#stx-pair? _%g140012140053%_)
                      (let ((_%e140017140056%_
                             (gx#syntax-e _%g140012140053%_)))
                        (let ((_%hd140018140060%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140017140056%_)))
                              (_%tl140019140063%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140017140056%_))))
                          (if (gx#stx-pair? _%tl140019140063%_)
                              (let ((_%e140020140066%_
                                     (gx#syntax-e _%tl140019140063%_)))
                                (let ((_%hd140021140070%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140020140066%_)))
                                      (_%tl140022140073%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140020140066%_))))
                                  (if (gx#stx-pair? _%hd140021140070%_)
                                      (let ((_%e140023140076%_
                                             (gx#syntax-e _%hd140021140070%_)))
                                        (let ((_%hd140024140080%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140023140076%_)))
                                              (_%tl140025140083%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140023140076%_))))
                                          (if (gx#stx-pair? _%tl140025140083%_)
                                              (let ((_%e140026140086%_
                                                     (gx#syntax-e
                                                      _%tl140025140083%_)))
                                                (let ((_%hd140027140090%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140026140086%_)))
                                                      (_%tl140028140093%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140026140086%_))))
                                                  (if (gx#stx-null?
                                                       _%tl140028140093%_)
                                                      (if (gx#stx-pair?
                                                           _%tl140022140073%_)
                                                          (let ((_%e140029140096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl140022140073%_)))
                    (let ((_%hd140030140100%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140029140096%_)))
                          (_%tl140031140103%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140029140096%_))))
                      (if (gx#identifier? _%hd140030140100%_)
                          (if (gx#free-identifier=?
                               |[1]#_g140525_|
                               _%hd140030140100%_)
                              (if (gx#stx-pair? _%tl140031140103%_)
                                  (let ((_%e140032140106%_
                                         (gx#syntax-e _%tl140031140103%_)))
                                    (let ((_%hd140033140110%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140032140106%_)))
                                          (_%tl140034140113%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140032140106%_))))
                                      (if (gx#stx-pair/null?
                                           _%tl140034140113%_)
                                          (let ((_g140526_
                                                 (gx#syntax-split-splice
                                                  _%tl140034140113%_
                                                  '0)))
                                            (begin
                                              (let ((_g140527_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g140526_)
                                                           (##values-length
                                                            _g140526_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g140527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g140527_)))
                                              (let ((_%target140035140116%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g140526_
                                                        0)))
                                                    (_%tl140037140119%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g140526_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl140037140119%_)
                                                    (letrec ((_%loop140038140122%_
                                                              (lambda (_%hd140036140126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body140042140129%_)
                        (if (gx#stx-pair? _%hd140036140126%_)
                            (let ((_%e140039140131%_
                                   (gx#syntax-e _%hd140036140126%_)))
                              (let ((_%lp-hd140040140135%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e140039140131%_)))
                                    (_%lp-tl140041140138%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e140039140131%_))))
                                (_%loop140038140122%_
                                 _%lp-tl140041140138%_
                                 (cons _%lp-hd140040140135%_
                                       _%body140042140129%_))))
                            (let ((_%body140043140141%_
                                   (reverse _%body140042140129%_)))
                              ((lambda (_%g140013140144%_
                                        _%g140014140146%_
                                        _%g140015140147%_
                                        _%g140016140148%_)
                                 (let* ((_%g140177140185%_
                                         (lambda (_%g140178140181%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g140178140181%_)))
                                        (_%g140176140212%_
                                         (lambda (_%g140178140189%_)
                                           ((lambda (_%g140179140192%_)
                                              (cons (gx#datum->syntax '#f 'def)
                                                    (cons _%g140016140148%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin-annotation)
                              (cons (cons (gx#datum->syntax '#f '@predicate)
                                          (cons _%g140179140192%_ '()))
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%g140015140147%_
                                                            '())
                                                      (let ((__tmp140528
                                                             (lambda (_%g140203140206%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g140204140209%_)
                       (cons _%g140203140206%_ _%g140204140209%_))))
                (declare (not safe))
                (foldr__0 __tmp140528 '() _%g140013140144%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g140178140189%_))))
                                   (_%g140176140212%_
                                    (let ()
                                      (declare (not safe))
                                      (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                       _%stx140008%_
                                       _%g140014140146%_)))))
                               _%body140043140141%_
                               _%hd140033140110%_
                               _%hd140027140090%_
                               _%hd140024140080%_))))))
              (_%loop140038140122%_ _%target140035140116%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g140011140049%_
                                                     _%g140012140053%_)))))
                                          (_%g140011140049%_
                                           _%g140012140053%_))))
                                  (_%g140011140049%_ _%g140012140053%_))
                              (_%g140011140049%_ _%g140012140053%_))
                          (_%g140011140049%_ _%g140012140053%_))))
                  (_%g140011140049%_ _%g140012140053%_))
              (_%g140011140049%_ _%g140012140053%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g140011140049%_
                                               _%g140012140053%_))))
                                      (_%g140011140049%_ _%g140012140053%_))))
                              (_%g140011140049%_ _%g140012140053%_))))
                      (_%g140011140049%_ _%g140012140053%_)))))
          (_%g140010140216%_ _%stx140008%_))))
    (define |[:0:]#subtype-property-vector|
      (lambda (_%$stx140221%_)
        (let* ((_%g140225140245%_
                (lambda (_%g140226140241%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g140226140241%_)))
               (_%g140224140314%_
                (lambda (_%g140226140249%_)
                  (if (gx#stx-pair? _%g140226140249%_)
                      (let ((_%e140228140252%_
                             (gx#syntax-e _%g140226140249%_)))
                        (let ((_%hd140229140256%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140228140252%_)))
                              (_%tl140230140259%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140228140252%_))))
                          (if (gx#stx-pair/null? _%tl140230140259%_)
                              (let ((_g140529_
                                     (gx#syntax-split-splice
                                      _%tl140230140259%_
                                      '0)))
                                (begin
                                  (let ((_g140530_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g140529_)
                                               (##values-length _g140529_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g140530_ 2)))
                                        (error "Context expects 2 values"
                                               _g140530_)))
                                  (let ((_%target140231140262%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g140529_ 0)))
                                        (_%tl140233140265%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g140529_ 1))))
                                    (if (gx#stx-null? _%tl140233140265%_)
                                        (letrec ((_%loop140234140268%_
                                                  (lambda (_%hd140232140272%_
                                                           _%t140238140275%_)
                                                    (if (gx#stx-pair?
                                                         _%hd140232140272%_)
                                                        (let ((_%e140235140277%_
                                                               (gx#syntax-e
                                                                _%hd140232140272%_)))
                                                          (let ((_%lp-hd140236140281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e140235140277%_)))
                        (_%lp-tl140237140284%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140235140277%_))))
                    (_%loop140234140268%_
                     _%lp-tl140237140284%_
                     (cons _%lp-hd140236140281%_ _%t140238140275%_))))
                (let ((_%t140239140287%_ (reverse _%t140238140275%_)))
                  ((lambda (_%g140227140290%_)
                     (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (gx#datum->syntax '#f 'vec)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'make-vector)
                                                   (cons '32 (cons '#f '())))
                                             '()))
                                 (let ((__tmp140532
                                        (lambda (_%g140305140308%_
                                                 _%g140306140311%_)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'vector-set!)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'vec)
                                                            (cons _%g140305140308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '#t '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%g140306140311%_)))
                                       (__tmp140531
                                        (cons (gx#datum->syntax '#f 'vec)
                                              '())))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp140532
                                    __tmp140531
                                    _%g140227140290%_)))))
                   _%t140239140287%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop140234140268%_
                                           _%target140231140262%_
                                           '()))
                                        (_%g140225140245%_
                                         _%g140226140249%_)))))
                              (_%g140225140245%_ _%g140226140249%_))))
                      (_%g140225140245%_ _%g140226140249%_)))))
          (_%g140224140314%_ _%$stx140221%_))))))
