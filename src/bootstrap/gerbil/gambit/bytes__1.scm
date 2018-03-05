(declare (block) (standard-bindings) (extended-bindings))
(define |gerbil/gambit/bytes[:0:]#@bytes|
  (lambda (_stx356_)
    (let* ((_g359373_
            (lambda (_g360369_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g360369_)))
           (_g358447_
            (lambda (_g360377_)
              (if (gx#stx-pair? _g360377_)
                  (let ((_e362380_ (gx#syntax-e _g360377_)))
                    (let ((_hd363384_ (##car _e362380_))
                          (_tl364387_ (##cdr _e362380_)))
                      (if (gx#stx-pair? _tl364387_)
                          (let ((_e365390_ (gx#syntax-e _tl364387_)))
                            (let ((_hd366394_ (##car _e365390_))
                                  (_tl367397_ (##cdr _e365390_)))
                              (if (gx#stx-null? _tl367397_)
                                  ((lambda (_L400_)
                                     (if (gx#stx-string? _L400_)
                                         (let* ((_g416424_
                                                 (lambda (_g417420_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g417420_)))
                                                (_g415443_
                                                 (lambda (_g417428_)
                                                   ((lambda (_L431_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g417428_))))
                                           (_g415443_
                                            (string->bytes (gx#stx-e _L400_))))
                                         (_g359373_ _g360377_)))
                                   _hd366394_)
                                  (_g359373_ _g360377_))))
                          (_g359373_ _g360377_))))
                  (_g359373_ _g360377_)))))
      (_g358447_ _stx356_))))
