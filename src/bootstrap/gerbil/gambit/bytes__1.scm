(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gerbil/gambit/bytes[:0:]#@bytes|
  (lambda (_stx388_)
    (let* ((_g391405_
            (lambda (_g392401_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g392401_)))
           (_g390479_
            (lambda (_g392409_)
              (if (gx#stx-pair? _g392409_)
                  (let ((_e394412_ (gx#syntax-e _g392409_)))
                    (let ((_hd395416_ (##car _e394412_))
                          (_tl396419_ (##cdr _e394412_)))
                      (if (gx#stx-pair? _tl396419_)
                          (let ((_e397422_ (gx#syntax-e _tl396419_)))
                            (let ((_hd398426_ (##car _e397422_))
                                  (_tl399429_ (##cdr _e397422_)))
                              (if (gx#stx-null? _tl399429_)
                                  ((lambda (_L432_)
                                     (if (gx#stx-string? _L432_)
                                         (let* ((_g448456_
                                                 (lambda (_g449452_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g449452_)))
                                                (_g447475_
                                                 (lambda (_g449460_)
                                                   ((lambda (_L463_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g449460_))))
                                           (_g447475_
                                            (string->bytes (gx#stx-e _L432_))))
                                         (_g391405_ _g392409_)))
                                   _hd398426_)
                                  (_g391405_ _g392409_))))
                          (_g391405_ _g392409_))))
                  (_g391405_ _g392409_)))))
      (_g390479_ _stx388_))))
