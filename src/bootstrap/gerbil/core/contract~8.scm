(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ClassMeta[1]#meta-object-methods!|
    (lambda (_%meta58253%_)
      (let ((_%$e58256%_
             (let ((__obj101168 _%meta58253%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj101168
                      'gerbil/core#meta-object::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj101168 '1 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#meta-object::t
                    __obj101168
                    'methods)))))
        (if _%$e58256%_
            _%$e58256%_
            (let ((_%tab58262%_ (make-hash-table-eq)))
              (let ((__obj101169 _%meta58253%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       __obj101169
                       'gerbil/core#meta-object::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj101169
                       _%tab58262%_
                       '1
                       '#f
                       '#f))
                    (class-slot-set!
                     gerbil/core/mop~MOP-2#meta-object::t
                     __obj101169
                     'methods
                     _%tab58262%_)))
              _%tab58262%_)))))
  (define |gerbil/core/contract~ClassMeta[:0:]#@call-meta-object|
    (lambda (_%stx58265%_)
      (let* ((_%g5826858299%_
              (lambda (_%g5826958295%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5826958295%_)))
             (_%g5826758411%_
              (lambda (_%g5826958303%_)
                (if (gx#stx-pair? _%g5826958303%_)
                    (let ((_%e5827358306%_ (gx#syntax-e _%g5826958303%_)))
                      (let ((_%hd5827458310%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5827358306%_)))
                            (_%tl5827558313%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5827358306%_))))
                        (if (gx#stx-pair? _%tl5827558313%_)
                            (let ((_%e5827658316%_
                                   (gx#syntax-e _%tl5827558313%_)))
                              (let ((_%hd5827758320%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5827658316%_)))
                                    (_%tl5827858323%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5827658316%_))))
                                (if (gx#stx-pair? _%tl5827858323%_)
                                    (let ((_%e5827958326%_
                                           (gx#syntax-e _%tl5827858323%_)))
                                      (let ((_%hd5828058330%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5827958326%_)))
                                            (_%tl5828158333%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5827958326%_))))
                                        (if (gx#stx-pair? _%hd5828058330%_)
                                            (let ((_%e5828258336%_
                                                   (gx#syntax-e
                                                    _%hd5828058330%_)))
                                              (let ((_%hd5828358340%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5828258336%_)))
                                                    (_%tl5828458343%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5828258336%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl5828458343%_)
                                                    (let ((_g101378_
                                                           (gx#syntax-split-splice
                                                            _%tl5828458343%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g101379_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g101378_)
                             (##values-length _g101378_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g101379_ 2)))
                      (error "Context expects 2 values" _g101379_)))
                (let ((_%target5828558346%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g101378_ 0)))
                      (_%tl5828758349%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g101378_ 1))))
                  (if (gx#stx-null? _%tl5828758349%_)
                      (letrec ((_%loop5828858352%_
                                (lambda (_%hd5828658356%_ _%arg5829258359%_)
                                  (if (gx#stx-pair? _%hd5828658356%_)
                                      (let ((_%e5828958361%_
                                             (gx#syntax-e _%hd5828658356%_)))
                                        (let ((_%lp-hd5829058365%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5828958361%_)))
                                              (_%lp-tl5829158368%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5828958361%_))))
                                          (_%loop5828858352%_
                                           _%lp-tl5829158368%_
                                           (cons _%lp-hd5829058365%_
                                                 _%arg5829258359%_))))
                                      (let ((_%arg5829358371%_
                                             (reverse _%arg5829258359%_)))
                                        (if (gx#stx-null? _%tl5828158333%_)
                                            (if (gx#identifier?
                                                 _%hd5828358340%_)
                                                (let ((_%meta58400%_
                                                       (gx#syntax-local-value
                                                        _%hd5827758320%_
                                                        false)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (class-instance?
                                                         gerbil/core/mop~MOP-2#meta-object::t
                                                         _%meta58400%_))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"not a meta-object"
                                                       _%stx58265%_
                                                       _%hd5827758320%_
                                                       _%meta58400%_))
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
                                                    (cons _%hd5827758320%_
                                                          '()))
                                              '()))
                                  '()))
                      (cons (cons (gx#datum->syntax '#f 'call-meta-object)
                                  (cons (gx#datum->syntax '#f 'meta)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%hd5828358340%_
                                                          '()))
                                              (foldr (lambda (_%g5840258405%_
                                                              _%g5840358408%_)
                                                       (cons _%g5840258405%_
                                                             _%g5840358408%_))
                                                     '()
                                                     _%arg5829358371%_))))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5826858299%_
                                                 _%g5826958303%_))
                                            (_%g5826858299%_
                                             _%g5826958303%_)))))))
                        (_%loop5828858352%_ _%target5828558346%_ '()))
                      (_%g5826858299%_ _%g5826958303%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5826858299%_
                                                     _%g5826958303%_))))
                                            (_%g5826858299%_
                                             _%g5826958303%_))))
                                    (_%g5826858299%_ _%g5826958303%_))))
                            (_%g5826858299%_ _%g5826958303%_))))
                    (_%g5826858299%_ _%g5826958303%_)))))
        (_%g5826758411%_ _%stx58265%_))))
  (define |gerbil/core/contract~ClassMeta[:0:]#defmethod-for-meta|
    (lambda (_%stx58416%_)
      (let* ((_%g5841958464%_
              (lambda (_%g5842058460%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g5842058460%_)))
             (_%g5841858632%_
              (lambda (_%g5842058468%_)
                (if (gx#stx-pair? _%g5842058468%_)
                    (let ((_%e5842658471%_ (gx#syntax-e _%g5842058468%_)))
                      (let ((_%hd5842758475%_
                             (let ()
                               (declare (not safe))
                               (##car _%e5842658471%_)))
                            (_%tl5842858478%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e5842658471%_))))
                        (if (gx#stx-pair? _%tl5842858478%_)
                            (let ((_%e5842958481%_
                                   (gx#syntax-e _%tl5842858478%_)))
                              (let ((_%hd5843058485%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5842958481%_)))
                                    (_%tl5843158488%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5842958481%_))))
                                (if (gx#stx-pair? _%tl5843158488%_)
                                    (let ((_%e5843258491%_
                                           (gx#syntax-e _%tl5843158488%_)))
                                      (let ((_%hd5843358495%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5843258491%_)))
                                            (_%tl5843458498%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5843258491%_))))
                                        (if (gx#stx-pair? _%hd5843358495%_)
                                            (let ((_%e5843558501%_
                                                   (gx#syntax-e
                                                    _%hd5843358495%_)))
                                              (let ((_%hd5843658505%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5843558501%_)))
                                                    (_%tl5843758508%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5843558501%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl5843758508%_)
                                                    (let ((_g101380_
                                                           (gx#syntax-split-splice
                                                            _%tl5843758508%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g101381_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g101380_)
                             (##values-length _g101380_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g101381_ 2)))
                      (error "Context expects 2 values" _g101381_)))
                (let ((_%target5843858511%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g101380_ 0)))
                      (_%tl5844058514%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g101380_ 1))))
                  (if (gx#stx-null? _%tl5844058514%_)
                      (letrec ((_%loop5844158517%_
                                (lambda (_%hd5843958521%_ _%arg5844558524%_)
                                  (if (gx#stx-pair? _%hd5843958521%_)
                                      (let ((_%e5844258526%_
                                             (gx#syntax-e _%hd5843958521%_)))
                                        (let ((_%lp-hd5844358530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5844258526%_)))
                                              (_%lp-tl5844458533%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5844258526%_))))
                                          (_%loop5844158517%_
                                           _%lp-tl5844458533%_
                                           (cons _%lp-hd5844358530%_
                                                 _%arg5844558524%_))))
                                      (let ((_%arg5844658536%_
                                             (reverse _%arg5844558524%_)))
                                        (if (gx#stx-pair? _%tl5843458498%_)
                                            (let ((_%e5844758539%_
                                                   (gx#syntax-e
                                                    _%tl5843458498%_)))
                                              (let ((_%hd5844858543%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5844758539%_)))
                                                    (_%tl5844958546%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5844758539%_))))
                                                (if (gx#stx-pair/null?
                                                     _%tl5844958546%_)
                                                    (let ((_g101382_
                                                           (gx#syntax-split-splice
                                                            _%tl5844958546%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g101383_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g101382_)
                             (##values-length _g101382_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g101383_ 2)))
                      (error "Context expects 2 values" _g101383_)))
                (let ((_%target5845058549%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g101382_ 0)))
                      (_%tl5845258552%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g101382_ 1))))
                  (if (gx#stx-null? _%tl5845258552%_)
                      (letrec ((_%loop5845358555%_
                                (lambda (_%hd5845158559%_ _%rest5845758562%_)
                                  (if (gx#stx-pair? _%hd5845158559%_)
                                      (let ((_%e5845458564%_
                                             (gx#syntax-e _%hd5845158559%_)))
                                        (let ((_%lp-hd5845558568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5845458564%_)))
                                              (_%lp-tl5845658571%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5845458564%_))))
                                          (_%loop5845358555%_
                                           _%lp-tl5845658571%_
                                           (cons _%lp-hd5845558568%_
                                                 _%rest5845758562%_))))
                                      (let ((_%rest5845858574%_
                                             (reverse _%rest5845758562%_)))
                                        (if (gx#identifier? _%hd5843658505%_)
                                            (let ((_%meta58613%_
                                                   (gx#syntax-local-value
                                                    _%hd5843058485%_
                                                    false)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (class-instance?
                                                     gerbil/core/mop~MOP-2#meta-object::t
                                                     _%meta58613%_))
                                                  '#!void
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"not a meta-object"
                                                   _%stx58416%_
                                                   _%hd5843058485%_
                                                   _%meta58613%_))
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
                                (cons _%hd5843058485%_ '()))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              (cons (cons (gx#datum->syntax '#f 'hash-put!)
                                          (cons (gx#datum->syntax '#f 'tab)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%hd5843658505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'lambda)
                          (cons (foldr (lambda (_%g5861558620%_
                                                _%g5861658623%_)
                                         (cons _%g5861558620%_
                                               _%g5861658623%_))
                                       '()
                                       _%arg5844658536%_)
                                (cons _%hd5844858543%_
                                      (foldr (lambda (_%g5861758626%_
                                                      _%g5861858629%_)
                                               (cons _%g5861758626%_
                                                     _%g5861858629%_))
                                             '()
                                             _%rest5845858574%_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g5841958464%_
                                             _%g5842058468%_)))))))
                        (_%loop5845358555%_ _%target5845058549%_ '()))
                      (_%g5841958464%_ _%g5842058468%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5841958464%_
                                                     _%g5842058468%_))))
                                            (_%g5841958464%_
                                             _%g5842058468%_)))))))
                        (_%loop5844158517%_ _%target5843858511%_ '()))
                      (_%g5841958464%_ _%g5842058468%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5841958464%_
                                                     _%g5842058468%_))))
                                            (_%g5841958464%_
                                             _%g5842058468%_))))
                                    (_%g5841958464%_ _%g5842058468%_))))
                            (_%g5841958464%_ _%g5842058468%_))))
                    (_%g5841958464%_ _%g5842058468%_)))))
        (_%g5841858632%_ _%stx58416%_)))))
