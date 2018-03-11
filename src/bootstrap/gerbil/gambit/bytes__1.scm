(declare (block) (standard-bindings) (extended-bindings))
(define |gerbil/gambit/bytes[:0:]#@bytes|
  (lambda (_stx389_)
    (let* ((_g392406_
            (lambda (_g393402_)
              (gx#raise-syntax-error '#f '"Bad syntax" _g393402_)))
           (_g391480_
            (lambda (_g393410_)
              (if (gx#stx-pair? _g393410_)
                  (let ((_e395413_ (gx#syntax-e _g393410_)))
                    (let ((_hd396417_ (##car _e395413_))
                          (_tl397420_ (##cdr _e395413_)))
                      (if (gx#stx-pair? _tl397420_)
                          (let ((_e398423_ (gx#syntax-e _tl397420_)))
                            (let ((_hd399427_ (##car _e398423_))
                                  (_tl400430_ (##cdr _e398423_)))
                              (if (gx#stx-null? _tl400430_)
                                  ((lambda (_L433_)
                                     (if (gx#stx-string? _L433_)
                                         (let* ((_g449457_
                                                 (lambda (_g450453_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g450453_)))
                                                (_g448476_
                                                 (lambda (_g450461_)
                                                   ((lambda (_L464_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g450461_))))
                                           (_g448476_
                                            (string->bytes (gx#stx-e _L433_))))
                                         (_g392406_ _g393410_)))
                                   _hd399427_)
                                  (_g392406_ _g393410_))))
                          (_g392406_ _g393410_))))
                  (_g392406_ _g393410_)))))
      (_g391480_ _stx389_))))
