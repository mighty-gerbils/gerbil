(declare (block) (standard-bindings) (extended-bindings))
(define |gerbil/gambit/bytes[:0:]#@bytes|
  (lambda (_stx397_)
    (let ((_g400414_
           (lambda (_g401410_)
             (gx#raise-syntax-error '#f '"Bad syntax" _g401410_))))
      (let ((_g399489_
             (lambda (_g401418_)
               (if (gx#stx-pair? _g401418_)
                   (let ((_e403421_ (gx#syntax-e _g401418_)))
                     (let ((_hd404425_ (##car _e403421_))
                           (_tl405428_ (##cdr _e403421_)))
                       (if (gx#stx-pair? _tl405428_)
                           (let ((_e406431_ (gx#syntax-e _tl405428_)))
                             (let ((_hd407435_ (##car _e406431_))
                                   (_tl408438_ (##cdr _e406431_)))
                               (if (gx#stx-null? _tl408438_)
                                   ((lambda (_L441_)
                                      (if (gx#stx-string? _L441_)
                                          (let ((_g458466_
                                                 (lambda (_g459462_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g459462_))))
                                            (let ((_g457485_
                                                   (lambda (_g459470_)
                                                     ((lambda (_L473_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _L473_ '()))))
              _g459470_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g457485_
                                               (string->bytes
                                                (gx#stx-e _L441_)))))
                                          (_g400414_ _g401418_)))
                                    _hd407435_)
                                   (_g400414_ _g401418_))))
                           (_g400414_ _g401418_))))
                   (_g400414_ _g401418_)))))
        (_g399489_ _stx397_)))))
