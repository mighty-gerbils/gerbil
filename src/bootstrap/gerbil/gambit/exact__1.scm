(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/gambit/exact[1]#_g528_|
    (gx#core-deserialize-mark
     '(0 (_obj427_ . _%508_) (ref . _ref467_))
     (gx#import-module '(:gerbil/core <sugar> <sugar:3>))))
  (define |gerbil/gambit/exact[1]#_g529_|
    (gx#make-syntax-quote
     'syntax
     #f
     (gx#current-expander-context)
     (list |gerbil/gambit/exact[1]#_g528_|)))
  (define |gerbil/gambit/exact[1]#_g530_|
    (gx#make-syntax-quote
     'lambda
     #f
     (gx#current-expander-context)
     (list |gerbil/gambit/exact[1]#_g528_|)))
  (define |gerbil/gambit/exact[:0:]#exact-integer?|
    (lambda (_$stx430_)
      (let* ((_g435450_
              (lambda (_g436446_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g436446_)))
             (_g434469_
              (lambda (_g436454_)
                ((lambda (_L457_)
                   (if (gx#identifier? _L457_)
                       (cons (gx#datum->syntax
                              |gerbil/gambit/exact[1]#_g529_|
                              'syntax
                              '#f
                              '#f)
                             (cons (gx#datum->syntax '#f 'exact-integer?__impl)
                                   '()))
                       (_g435450_ _g436454_)))
                 _g436454_)))
             (_g433510_
              (lambda (_g436473_)
                (if (gx#stx-pair? _g436473_)
                    (let ((_e438476_ (gx#syntax-e _g436473_)))
                      (let ((_hd439480_ (##car _e438476_))
                            (_tl440483_ (##cdr _e438476_)))
                        (if (gx#stx-pair? _tl440483_)
                            (let ((_e441486_ (gx#syntax-e _tl440483_)))
                              (let ((_hd442490_ (##car _e441486_))
                                    (_tl443493_ (##cdr _e441486_)))
                                (if (gx#stx-null? _tl443493_)
                                    ((lambda (_L496_)
                                       (cons (cons (gx#datum->syntax
                                                    |gerbil/gambit/exact[1]#_g530_|
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
                                             (cons _L496_ '())))
                                     _hd442490_)
                                    (_g434469_ _g436473_))))
                            (_g434469_ _g436473_))))
                    (_g434469_ _g436473_)))))
        (_g433510_ _$stx430_)))))
