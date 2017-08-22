(declare (block) (standard-bindings) (extended-bindings))
(define |gerbil/gambit/bytes[:0:]#@bytes|
  (lambda (_stx412_)
    (let ((_g415429_
           (lambda (_g416425_)
             (gx#raise-syntax-error '#f '"Bad syntax" _g416425_))))
      (let ((_g414504_
             (lambda (_g416433_)
               (if (gx#stx-pair? _g416433_)
                   (let ((_e418436_ (gx#syntax-e _g416433_)))
                     (let ((_hd419440_ (##car _e418436_))
                           (_tl420443_ (##cdr _e418436_)))
                       (if (gx#stx-pair? _tl420443_)
                           (let ((_e421446_ (gx#syntax-e _tl420443_)))
                             (let ((_hd422450_ (##car _e421446_))
                                   (_tl423453_ (##cdr _e421446_)))
                               (if (gx#stx-null? _tl423453_)
                                   ((lambda (_L456_)
                                      (if (gx#stx-string? _L456_)
                                          (let ((_g473481_
                                                 (lambda (_g474477_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g474477_))))
                                            (let ((_g472500_
                                                   (lambda (_g474485_)
                                                     ((lambda (_L488_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _L488_ '()))))
              _g474485_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g472500_
                                               (string->bytes
                                                (gx#stx-e _L456_)))))
                                          (_g415429_ _g416433_)))
                                    _hd422450_)
                                   (_g415429_ _g416433_))))
                           (_g415429_ _g416433_))))
                   (_g415429_ _g416433_)))))
        (_g414504_ _stx412_)))))
