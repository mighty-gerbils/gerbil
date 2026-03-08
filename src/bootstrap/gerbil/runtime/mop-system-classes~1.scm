(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g140535_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |[:0:]#defpred|
      (lambda (_%stx140018%_)
        (let* ((_%g140021140059%_
                (lambda (_%g140022140055%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g140022140055%_)))
               (_%g140020140226%_
                (lambda (_%g140022140063%_)
                  (if (gx#stx-pair? _%g140022140063%_)
                      (let ((_%e140027140066%_
                             (gx#syntax-e _%g140022140063%_)))
                        (let ((_%hd140028140070%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140027140066%_)))
                              (_%tl140029140073%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140027140066%_))))
                          (if (gx#stx-pair? _%tl140029140073%_)
                              (let ((_%e140030140076%_
                                     (gx#syntax-e _%tl140029140073%_)))
                                (let ((_%hd140031140080%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140030140076%_)))
                                      (_%tl140032140083%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140030140076%_))))
                                  (if (gx#stx-pair? _%hd140031140080%_)
                                      (let ((_%e140033140086%_
                                             (gx#syntax-e _%hd140031140080%_)))
                                        (let ((_%hd140034140090%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140033140086%_)))
                                              (_%tl140035140093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140033140086%_))))
                                          (if (gx#stx-pair? _%tl140035140093%_)
                                              (let ((_%e140036140096%_
                                                     (gx#syntax-e
                                                      _%tl140035140093%_)))
                                                (let ((_%hd140037140100%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140036140096%_)))
                                                      (_%tl140038140103%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140036140096%_))))
                                                  (if (gx#stx-null?
                                                       _%tl140038140103%_)
                                                      (if (gx#stx-pair?
                                                           _%tl140032140083%_)
                                                          (let ((_%e140039140106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl140032140083%_)))
                    (let ((_%hd140040140110%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140039140106%_)))
                          (_%tl140041140113%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140039140106%_))))
                      (if (gx#identifier? _%hd140040140110%_)
                          (if (gx#free-identifier=?
                               |[1]#_g140535_|
                               _%hd140040140110%_)
                              (if (gx#stx-pair? _%tl140041140113%_)
                                  (let ((_%e140042140116%_
                                         (gx#syntax-e _%tl140041140113%_)))
                                    (let ((_%hd140043140120%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140042140116%_)))
                                          (_%tl140044140123%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140042140116%_))))
                                      (if (gx#stx-pair/null?
                                           _%tl140044140123%_)
                                          (let ((_g140536_
                                                 (gx#syntax-split-splice
                                                  _%tl140044140123%_
                                                  '0)))
                                            (begin
                                              (let ((_g140537_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g140536_)
                                                           (##values-length
                                                            _g140536_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g140537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g140537_)))
                                              (let ((_%target140045140126%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g140536_
                                                        0)))
                                                    (_%tl140047140129%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g140536_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl140047140129%_)
                                                    (letrec ((_%loop140048140132%_
                                                              (lambda (_%hd140046140136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body140052140139%_)
                        (if (gx#stx-pair? _%hd140046140136%_)
                            (let ((_%e140049140141%_
                                   (gx#syntax-e _%hd140046140136%_)))
                              (let ((_%lp-hd140050140145%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e140049140141%_)))
                                    (_%lp-tl140051140148%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e140049140141%_))))
                                (_%loop140048140132%_
                                 _%lp-tl140051140148%_
                                 (cons _%lp-hd140050140145%_
                                       _%body140052140139%_))))
                            (let ((_%body140053140151%_
                                   (reverse _%body140052140139%_)))
                              ((lambda (_%g140023140154%_
                                        _%g140024140156%_
                                        _%g140025140157%_
                                        _%g140026140158%_)
                                 (let* ((_%g140187140195%_
                                         (lambda (_%g140188140191%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g140188140191%_)))
                                        (_%g140186140222%_
                                         (lambda (_%g140188140199%_)
                                           ((lambda (_%g140189140202%_)
                                              (cons (gx#datum->syntax '#f 'def)
                                                    (cons _%g140026140158%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin-annotation)
                              (cons (cons (gx#datum->syntax '#f '@predicate)
                                          (cons _%g140189140202%_ '()))
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%g140025140157%_
                                                            '())
                                                      (let ((__tmp140538
                                                             (lambda (_%g140213140216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g140214140219%_)
                       (cons _%g140213140216%_ _%g140214140219%_))))
                (declare (not safe))
                (foldr__0 __tmp140538 '() _%g140023140154%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g140188140199%_))))
                                   (_%g140186140222%_
                                    (let ()
                                      (declare (not safe))
                                      (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                       _%stx140018%_
                                       _%g140024140156%_)))))
                               _%body140053140151%_
                               _%hd140043140120%_
                               _%hd140037140100%_
                               _%hd140034140090%_))))))
              (_%loop140048140132%_ _%target140045140126%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g140021140059%_
                                                     _%g140022140063%_)))))
                                          (_%g140021140059%_
                                           _%g140022140063%_))))
                                  (_%g140021140059%_ _%g140022140063%_))
                              (_%g140021140059%_ _%g140022140063%_))
                          (_%g140021140059%_ _%g140022140063%_))))
                  (_%g140021140059%_ _%g140022140063%_))
              (_%g140021140059%_ _%g140022140063%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g140021140059%_
                                               _%g140022140063%_))))
                                      (_%g140021140059%_ _%g140022140063%_))))
                              (_%g140021140059%_ _%g140022140063%_))))
                      (_%g140021140059%_ _%g140022140063%_)))))
          (_%g140020140226%_ _%stx140018%_))))
    (define |[:0:]#subtype-property-vector|
      (lambda (_%$stx140231%_)
        (let* ((_%g140235140255%_
                (lambda (_%g140236140251%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g140236140251%_)))
               (_%g140234140324%_
                (lambda (_%g140236140259%_)
                  (if (gx#stx-pair? _%g140236140259%_)
                      (let ((_%e140238140262%_
                             (gx#syntax-e _%g140236140259%_)))
                        (let ((_%hd140239140266%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140238140262%_)))
                              (_%tl140240140269%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140238140262%_))))
                          (if (gx#stx-pair/null? _%tl140240140269%_)
                              (let ((_g140539_
                                     (gx#syntax-split-splice
                                      _%tl140240140269%_
                                      '0)))
                                (begin
                                  (let ((_g140540_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g140539_)
                                               (##values-length _g140539_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g140540_ 2)))
                                        (error "Context expects 2 values"
                                               _g140540_)))
                                  (let ((_%target140241140272%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g140539_ 0)))
                                        (_%tl140243140275%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g140539_ 1))))
                                    (if (gx#stx-null? _%tl140243140275%_)
                                        (letrec ((_%loop140244140278%_
                                                  (lambda (_%hd140242140282%_
                                                           _%t140248140285%_)
                                                    (if (gx#stx-pair?
                                                         _%hd140242140282%_)
                                                        (let ((_%e140245140287%_
                                                               (gx#syntax-e
                                                                _%hd140242140282%_)))
                                                          (let ((_%lp-hd140246140291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%e140245140287%_)))
                        (_%lp-tl140247140294%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140245140287%_))))
                    (_%loop140244140278%_
                     _%lp-tl140247140294%_
                     (cons _%lp-hd140246140291%_ _%t140248140285%_))))
                (let ((_%t140249140297%_ (reverse _%t140248140285%_)))
                  ((lambda (_%g140237140300%_)
                     (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (gx#datum->syntax '#f 'vec)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'make-vector)
                                                   (cons '32 (cons '#f '())))
                                             '()))
                                 (let ((__tmp140542
                                        (lambda (_%g140315140318%_
                                                 _%g140316140321%_)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'vector-set!)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'vec)
                                                            (cons _%g140315140318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '#t '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%g140316140321%_)))
                                       (__tmp140541
                                        (cons (gx#datum->syntax '#f 'vec)
                                              '())))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp140542
                                    __tmp140541
                                    _%g140237140300%_)))))
                   _%t140249140297%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop140244140278%_
                                           _%target140241140272%_
                                           '()))
                                        (_%g140235140255%_
                                         _%g140236140259%_)))))
                              (_%g140235140255%_ _%g140236140259%_))))
                      (_%g140235140255%_ _%g140236140259%_)))))
          (_%g140234140324%_ _%$stx140231%_))))))
