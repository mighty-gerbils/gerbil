(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/gambit/hvectors[:0:]#@bytes|
    (lambda (_stx47161_)
      (let ((_g4716447178_
             (lambda (_g4716547174_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4716547174_))))
        (let ((_g4716347251_
               (lambda (_g4716547182_)
                 (if (gx#stx-pair? _g4716547182_)
                     (let ((_e4716747185_ (gx#syntax-e _g4716547182_)))
                       (let ((_hd4716847189_ (##car _e4716747185_))
                             (_tl4716947192_ (##cdr _e4716747185_)))
                         (if (gx#stx-pair? _tl4716947192_)
                             (let ((_e4717047195_
                                    (gx#syntax-e _tl4716947192_)))
                               (let ((_hd4717147199_ (##car _e4717047195_))
                                     (_tl4717247202_ (##cdr _e4717047195_)))
                                 (if (gx#stx-null? _tl4717247202_)
                                     ((lambda (_L47205_)
                                        (if (gx#stx-string? _L47205_)
                                            (let ((_g4722047228_
                                                   (lambda (_g4722147224_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g4722147224_))))
                                              (let ((_g4721947247_
                                                     (lambda (_g4722147232_)
                                                       ((lambda (_L47235_)
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _L47235_ '()))))
                _g4722147232_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g4721947247_
                                                 (string->bytes
                                                  (gx#stx-e _L47205_)))))
                                            (_g4716447178_ _g4716547182_)))
                                      _hd4717147199_)
                                     (_g4716447178_ _g4716547182_))))
                             (_g4716447178_ _g4716547182_))))
                     (_g4716447178_ _g4716547182_)))))
          (_g4716347251_ _stx47161_))))))
