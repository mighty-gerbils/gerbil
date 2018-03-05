(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/gambit/exact[1]#_g551_|
    (gx#core-deserialize-mark
     '(0 (ref . _ref490_) (_obj450_ . _%531_))
     (gx#import-module '(:gerbil/core <sugar> <sugar:3>))))
  (define |gerbil/gambit/exact[1]#_g552_|
    (gx#make-syntax-quote
     'syntax
     #f
     (gx#current-expander-context)
     (list |gerbil/gambit/exact[1]#_g551_|)))
  (define |gerbil/gambit/exact[1]#_g553_|
    (gx#make-syntax-quote
     'lambda
     #f
     (gx#current-expander-context)
     (list |gerbil/gambit/exact[1]#_g551_|)))
  (define |gerbil/gambit/exact[:0:]#exact-integer?|
    (lambda (_$stx453_)
      (let* ((_g458473_
              (lambda (_g459469_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g459469_)))
             (_g457492_
              (lambda (_g459477_)
                ((lambda (_L480_)
                   (if (gx#identifier? _L480_)
                       (cons (gx#datum->syntax
                              |gerbil/gambit/exact[1]#_g552_|
                              'syntax
                              '#f
                              '#f)
                             (cons (gx#datum->syntax '#f 'exact-integer?__impl)
                                   '()))
                       (_g458473_ _g459477_)))
                 _g459477_)))
             (_g456533_
              (lambda (_g459496_)
                (if (gx#stx-pair? _g459496_)
                    (let ((_e461499_ (gx#syntax-e _g459496_)))
                      (let ((_hd462503_ (##car _e461499_))
                            (_tl463506_ (##cdr _e461499_)))
                        (if (gx#stx-pair? _tl463506_)
                            (let ((_e464509_ (gx#syntax-e _tl463506_)))
                              (let ((_hd465513_ (##car _e464509_))
                                    (_tl466516_ (##cdr _e464509_)))
                                (if (gx#stx-null? _tl466516_)
                                    ((lambda (_L519_)
                                       (cons (cons (gx#datum->syntax
                                                    |gerbil/gambit/exact[1]#_g553_|
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
                                             (cons _L519_ '())))
                                     _hd465513_)
                                    (_g457492_ _g459496_))))
                            (_g457492_ _g459496_))))
                    (_g457492_ _g459496_)))))
        (_g456533_ _$stx453_)))))
