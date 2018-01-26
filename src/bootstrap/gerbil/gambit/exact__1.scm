(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/gambit/exact[1]#_g530_|
    (gx#core-deserialize-mark
     '(0 (ref . _ref469_) (_obj429_ . _%510_))
     (gx#import-module '(:gerbil/core <sugar> <sugar:3>))))
  (define |gerbil/gambit/exact[1]#_g531_|
    (gx#make-syntax-quote
     'syntax
     #f
     (gx#current-expander-context)
     (list |gerbil/gambit/exact[1]#_g530_|)))
  (define |gerbil/gambit/exact[1]#_g532_|
    (gx#make-syntax-quote
     'lambda
     #f
     (gx#current-expander-context)
     (list |gerbil/gambit/exact[1]#_g530_|)))
  (define |gerbil/gambit/exact[:0:]#exact-integer?|
    (lambda (_$stx432_)
      (let* ((_g437452_
              (lambda (_g438448_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g438448_)))
             (_g436471_
              (lambda (_g438456_)
                ((lambda (_L459_)
                   (if (gx#identifier? _L459_)
                       (cons (gx#datum->syntax
                              |gerbil/gambit/exact[1]#_g531_|
                              'syntax
                              '#f
                              '#f)
                             (cons (gx#datum->syntax '#f 'exact-integer?__impl)
                                   '()))
                       (_g437452_ _g438456_)))
                 _g438456_)))
             (_g435512_
              (lambda (_g438475_)
                (if (gx#stx-pair? _g438475_)
                    (let ((_e440478_ (gx#syntax-e _g438475_)))
                      (let ((_hd441482_ (##car _e440478_))
                            (_tl442485_ (##cdr _e440478_)))
                        (if (gx#stx-pair? _tl442485_)
                            (let ((_e443488_ (gx#syntax-e _tl442485_)))
                              (let ((_hd444492_ (##car _e443488_))
                                    (_tl445495_ (##cdr _e443488_)))
                                (if (gx#stx-null? _tl445495_)
                                    ((lambda (_L498_)
                                       (cons (cons (gx#datum->syntax
                                                    |gerbil/gambit/exact[1]#_g532_|
                                                    'lambda
                                                    '#f
                                                    '#f)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'obj)
                                                               '())
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'or)
                             (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                         (cons (gx#datum->syntax '#f 'obj)
                                               '()))
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '##bignum?)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'obj)
                                                     '()))
                                         '())))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons _L498_ '())))
                                     _hd444492_)
                                    (_g436471_ _g438475_))))
                            (_g436471_ _g438475_))))
                    (_g436471_ _g438475_)))))
        (_g435512_ _$stx432_)))))
