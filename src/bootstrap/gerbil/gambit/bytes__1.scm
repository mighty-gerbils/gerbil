(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gerbil/gambit/bytes[:0:]#@bytes|
  (lambda (_stx390_)
    (let* ((_g393407_
            (lambda (_g394403_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g394403_)))
           (_g392481_
            (lambda (_g394411_)
              (if (gx#stx-pair? _g394411_)
                  (let ((_e396414_ (gx#syntax-e _g394411_)))
                    (let ((_hd397418_ (##car _e396414_))
                          (_tl398421_ (##cdr _e396414_)))
                      (if (gx#stx-pair? _tl398421_)
                          (let ((_e399424_ (gx#syntax-e _tl398421_)))
                            (let ((_hd400428_ (##car _e399424_))
                                  (_tl401431_ (##cdr _e399424_)))
                              (if (gx#stx-null? _tl401431_)
                                  ((lambda (_L434_)
                                     (if (gx#stx-string? _L434_)
                                         (let* ((_g450458_
                                                 (lambda (_g451454_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g451454_)))
                                                (_g449477_
                                                 (lambda (_g451462_)
                                                   ((lambda (_L465_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g451462_))))
                                           (_g449477_
                                            (string->bytes (gx#stx-e _L434_))))
                                         (_g393407_ _g394411_)))
                                   _hd400428_)
                                  (_g393407_ _g394411_))))
                          (_g393407_ _g394411_))))
                  (_g393407_ _g394411_)))))
      (_g392481_ _stx390_))))
