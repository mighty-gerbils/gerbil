(declare (block) (standard-bindings) (extended-bindings))
(define |gerbil/gambit/bytes[:0:]#@bytes|
  (lambda (_stx415_)
    (let ((_g418432_
           (lambda (_g419428_)
             (gx#raise-syntax-error '#f '"Bad syntax" _g419428_))))
      (let ((_g417507_
             (lambda (_g419436_)
               (if (gx#stx-pair? _g419436_)
                   (let ((_e421439_ (gx#syntax-e _g419436_)))
                     (let ((_hd422443_ (##car _e421439_))
                           (_tl423446_ (##cdr _e421439_)))
                       (if (gx#stx-pair? _tl423446_)
                           (let ((_e424449_ (gx#syntax-e _tl423446_)))
                             (let ((_hd425453_ (##car _e424449_))
                                   (_tl426456_ (##cdr _e424449_)))
                               (if (gx#stx-null? _tl426456_)
                                   ((lambda (_L459_)
                                      (if (gx#stx-string? _L459_)
                                          (let ((_g476484_
                                                 (lambda (_g477480_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g477480_))))
                                            (let ((_g475503_
                                                   (lambda (_g477488_)
                                                     ((lambda (_L491_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _L491_ '()))))
              _g477488_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g475503_
                                               (string->bytes
                                                (gx#stx-e _L459_)))))
                                          (_g418432_ _g419436_)))
                                    _hd425453_)
                                   (_g418432_ _g419436_))))
                           (_g418432_ _g419436_))))
                   (_g418432_ _g419436_)))))
        (_g417507_ _stx415_)))))
