(declare (block) (standard-bindings) (extended-bindings))
(define |gerbil/gambit/bytes[:0:]#@bytes|
  (lambda (_stx418_)
    (let ((_g421435_
           (lambda (_g422431_)
             (gx#raise-syntax-error '#f '"Bad syntax" _g422431_))))
      (let ((_g420510_
             (lambda (_g422439_)
               (if (gx#stx-pair? _g422439_)
                   (let ((_e424442_ (gx#syntax-e _g422439_)))
                     (let ((_hd425446_ (##car _e424442_))
                           (_tl426449_ (##cdr _e424442_)))
                       (if (gx#stx-pair? _tl426449_)
                           (let ((_e427452_ (gx#syntax-e _tl426449_)))
                             (let ((_hd428456_ (##car _e427452_))
                                   (_tl429459_ (##cdr _e427452_)))
                               (if (gx#stx-null? _tl429459_)
                                   ((lambda (_L462_)
                                      (if (gx#stx-string? _L462_)
                                          (let ((_g479487_
                                                 (lambda (_g480483_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g480483_))))
                                            (let ((_g478506_
                                                   (lambda (_g480491_)
                                                     ((lambda (_L494_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _L494_ '()))))
              _g480491_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g478506_
                                               (string->bytes
                                                (gx#stx-e _L462_)))))
                                          (_g421435_ _g422439_)))
                                    _hd428456_)
                                   (_g421435_ _g422439_))))
                           (_g421435_ _g422439_))))
                   (_g421435_ _g422439_)))))
        (_g420510_ _stx418_)))))
