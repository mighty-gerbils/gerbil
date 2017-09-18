(declare (block) (standard-bindings) (extended-bindings))
(define |gerbil/gambit/bytes[:0:]#@bytes|
  (lambda (_stx332_)
    (let* ((_g335349_
            (lambda (_g336345_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g336345_)))
           (_g334424_
            (lambda (_g336353_)
              (if (gx#stx-pair? _g336353_)
                  (let ((_e338356_ (gx#syntax-e _g336353_)))
                    (let ((_hd339360_ (##car _e338356_))
                          (_tl340363_ (##cdr _e338356_)))
                      (if (gx#stx-pair? _tl340363_)
                          (let ((_e341366_ (gx#syntax-e _tl340363_)))
                            (let ((_hd342370_ (##car _e341366_))
                                  (_tl343373_ (##cdr _e341366_)))
                              (if (gx#stx-null? _tl343373_)
                                  ((lambda (_L376_)
                                     (if (gx#stx-string? _L376_)
                                         (let* ((_g393401_
                                                 (lambda (_g394397_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g394397_)))
                                                (_g392420_
                                                 (lambda (_g394405_)
                                                   ((lambda (_L408_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g394405_))))
                                           (_g392420_
                                            (string->bytes (gx#stx-e _L376_))))
                                         (_g335349_ _g336353_)))
                                   _hd342370_)
                                  (_g335349_ _g336353_))))
                          (_g335349_ _g336353_))))
                  (_g335349_ _g336353_)))))
      (_g334424_ _stx332_))))
