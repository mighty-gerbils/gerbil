(declare (block) (standard-bindings) (extended-bindings))
(define |gerbil/gambit/bytes[:0:]#@bytes|
  (lambda (_stx419_)
    (let* ((_g422436_
            (lambda (_g423432_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g423432_)))
           (_g421511_
            (lambda (_g423440_)
              (if (gx#stx-pair? _g423440_)
                  (let ((_e425443_ (gx#syntax-e _g423440_)))
                    (let ((_hd426447_ (##car _e425443_))
                          (_tl427450_ (##cdr _e425443_)))
                      (if (gx#stx-pair? _tl427450_)
                          (let ((_e428453_ (gx#syntax-e _tl427450_)))
                            (let ((_hd429457_ (##car _e428453_))
                                  (_tl430460_ (##cdr _e428453_)))
                              (if (gx#stx-null? _tl430460_)
                                  ((lambda (_L463_)
                                     (if (gx#stx-string? _L463_)
                                         (let* ((_g480488_
                                                 (lambda (_g481484_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g481484_)))
                                                (_g479507_
                                                 (lambda (_g481492_)
                                                   ((lambda (_L495_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g481492_))))
                                           (_g479507_
                                            (string->bytes (gx#stx-e _L463_))))
                                         (_g422436_ _g423440_)))
                                   _hd429457_)
                                  (_g422436_ _g423440_))))
                          (_g422436_ _g423440_))))
                  (_g422436_ _g423440_)))))
      (_g421511_ _stx419_))))
