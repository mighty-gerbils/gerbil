(declare (block) (standard-bindings) (extended-bindings))
(define |gerbil/gambit/hvectors[:0:]#@bytes|
  (lambda (_stx326_)
    (let ((_g329343_
           (lambda (_g330339_)
             (gx#raise-syntax-error '#f '"Bad syntax" _g330339_))))
      (let ((_g328418_
             (lambda (_g330347_)
               (if (gx#stx-pair? _g330347_)
                   (let ((_e332350_ (gx#syntax-e _g330347_)))
                     (let ((_hd333354_ (##car _e332350_))
                           (_tl334357_ (##cdr _e332350_)))
                       (if (gx#stx-pair? _tl334357_)
                           (let ((_e335360_ (gx#syntax-e _tl334357_)))
                             (let ((_hd336364_ (##car _e335360_))
                                   (_tl337367_ (##cdr _e335360_)))
                               (if (gx#stx-null? _tl337367_)
                                   ((lambda (_L370_)
                                      (if (gx#stx-string? _L370_)
                                          (let ((_g387395_
                                                 (lambda (_g388391_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g388391_))))
                                            (let ((_g386414_
                                                   (lambda (_g388399_)
                                                     ((lambda (_L402_)
                                                        (let ()
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _L402_ '()))))
              _g388399_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g386414_
                                               (string->bytes
                                                (gx#stx-e _L370_)))))
                                          (_g329343_ _g330347_)))
                                    _hd336364_)
                                   (_g329343_ _g330347_))))
                           (_g329343_ _g330347_))))
                   (_g329343_ _g330347_)))))
        (_g328418_ _stx326_)))))
