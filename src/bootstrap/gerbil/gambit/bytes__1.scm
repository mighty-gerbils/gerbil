(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gerbil/gambit/bytes[:0:]#@bytes|
  (lambda (_stx41_)
    (let* ((_g4458_ (lambda (_g4554_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g4554_)))
           (_g43132_
            (lambda (_g4562_)
              (if (gx#stx-pair? _g4562_)
                  (let ((_e4765_ (gx#syntax-e _g4562_)))
                    (let ((_hd4869_
                           (let () (declare (not safe)) (##car _e4765_)))
                          (_tl4972_
                           (let () (declare (not safe)) (##cdr _e4765_))))
                      (if (gx#stx-pair? _tl4972_)
                          (let ((_e5075_ (gx#syntax-e _tl4972_)))
                            (let ((_hd5179_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e5075_)))
                                  (_tl5282_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e5075_))))
                              (if (gx#stx-null? _tl5282_)
                                  ((lambda (_L85_)
                                     (if (gx#stx-string? _L85_)
                                         (let* ((_g101109_
                                                 (lambda (_g102105_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g102105_)))
                                                (_g100128_
                                                 (lambda (_g102113_)
                                                   ((lambda (_L116_)
                                                      (let ()
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _L116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g102113_))))
                                           (_g100128_
                                            (string->bytes (gx#stx-e _L85_))))
                                         (_g4458_ _g4562_)))
                                   _hd5179_)
                                  (_g4458_ _g4562_))))
                          (_g4458_ _g4562_))))
                  (_g4458_ _g4562_)))))
      (_g43132_ _stx41_))))
