(declare (block) (standard-bindings) (extended-bindings))
(define |gerbil/gambit/bytes[:0:]#@bytes|
  (lambda (_stx407_)
    (let ((_g410424_
           (lambda (_g411420_)
             (gx#raise-syntax-error '#f '"Bad syntax" _g411420_))))
      (let ((_g409499_
             (lambda (_g411428_)
               (if (gx#stx-pair? _g411428_)
                   (let ((_e413431_ (gx#syntax-e _g411428_)))
                     (let ((_hd414435_ (##car _e413431_))
                           (_tl415438_ (##cdr _e413431_)))
                       (if (gx#stx-pair? _tl415438_)
                           (let ((_e416441_ (gx#syntax-e _tl415438_)))
                             (let ((_hd417445_ (##car _e416441_))
                                   (_tl418448_ (##cdr _e416441_)))
                               (if (gx#stx-null? _tl418448_)
                                   ((lambda (_L451_)
                                      (if (gx#stx-string? _L451_)
                                          (let ((_g468476_
                                                 (lambda (_g469472_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g469472_))))
                                            (let ((_g467495_
                                                   (lambda (_g469480_)
                                                     ((lambda (_L483_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _L483_ '()))))
              _g469480_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g467495_
                                               (string->bytes
                                                (gx#stx-e _L451_)))))
                                          (_g410424_ _g411428_)))
                                    _hd417445_)
                                   (_g410424_ _g411428_))))
                           (_g410424_ _g411428_))))
                   (_g410424_ _g411428_)))))
        (_g409499_ _stx407_)))))
