(declare (block) (standard-bindings) (extended-bindings))
(define |gerbil/gambit/bytes[:0:]#@bytes|
  (lambda (_stx335_)
    (let* ((_g338352_
            (lambda (_g339348_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g339348_)))
           (_g337426_
            (lambda (_g339356_)
              (if (gx#stx-pair? _g339356_)
                  (let ((_e341359_ (gx#syntax-e _g339356_)))
                    (let ((_hd342363_ (##car _e341359_))
                          (_tl343366_ (##cdr _e341359_)))
                      (if (gx#stx-pair? _tl343366_)
                          (let ((_e344369_ (gx#syntax-e _tl343366_)))
                            (let ((_hd345373_ (##car _e344369_))
                                  (_tl346376_ (##cdr _e344369_)))
                              (if (gx#stx-null? _tl346376_)
                                  ((lambda (_L379_)
                                     (if (gx#stx-string? _L379_)
                                         (let* ((_g395403_
                                                 (lambda (_g396399_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g396399_)))
                                                (_g394422_
                                                 (lambda (_g396407_)
                                                   ((lambda (_L410_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L410_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g396407_))))
                                           (_g394422_
                                            (string->bytes (gx#stx-e _L379_))))
                                         (_g338352_ _g339356_)))
                                   _hd345373_)
                                  (_g338352_ _g339356_))))
                          (_g338352_ _g339356_))))
                  (_g338352_ _g339356_)))))
      (_g337426_ _stx335_))))
