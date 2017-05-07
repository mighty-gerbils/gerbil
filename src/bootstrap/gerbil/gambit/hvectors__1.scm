(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/gambit/hvectors[:0:]#@bytes|
    (lambda (_stx28544_)
      (let ((_g2854728561_
             (lambda (_g2854828557_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2854828557_))))
        (let ((_g2854628636_
               (lambda (_g2854828565_)
                 (if (gx#stx-pair? _g2854828565_)
                     (let ((_e2855028568_ (gx#syntax-e _g2854828565_)))
                       (let ((_hd2855128572_ (##car _e2855028568_))
                             (_tl2855228575_ (##cdr _e2855028568_)))
                         (if (gx#stx-pair? _tl2855228575_)
                             (let ((_e2855328578_
                                    (gx#syntax-e _tl2855228575_)))
                               (let ((_hd2855428582_ (##car _e2855328578_))
                                     (_tl2855528585_ (##cdr _e2855328578_)))
                                 (if (gx#stx-null? _tl2855528585_)
                                     ((lambda (_L28588_)
                                        (if (gx#stx-string? _L28588_)
                                            (let ((_g2860528613_
                                                   (lambda (_g2860628609_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g2860628609_))))
                                              (let ((_g2860428632_
                                                     (lambda (_g2860628617_)
                                                       ((lambda (_L28620_)
                                                          (let ()
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _L28620_ '()))))
                _g2860628617_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2860428632_
                                                 (string->bytes
                                                  (gx#stx-e _L28588_)))))
                                            (_g2854728561_ _g2854828565_)))
                                      _hd2855428582_)
                                     (_g2854728561_ _g2854828565_))))
                             (_g2854728561_ _g2854828565_))))
                     (_g2854728561_ _g2854828565_)))))
          (_g2854628636_ _stx28544_))))))
