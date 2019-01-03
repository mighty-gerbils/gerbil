(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/gambit/exact[1]#_g583_|
    (gx#core-deserialize-mark
     '(0 (ref . _ref522_) (_obj482_ . _%563_))
     (gx#import-module '(:gerbil/core <sugar> <sugar:3>))))
  (define |gerbil/gambit/exact[1]#_g584_|
    (##structure
     gx#syntax-quote::t
     'lambda
     #f
     (gx#current-expander-context)
     (list |gerbil/gambit/exact[1]#_g583_|)))
  (define |gerbil/gambit/exact[:0:]#exact-integer?|
    (lambda (_$stx485_)
      (let* ((_g490505_
              (lambda (_g491501_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g491501_)))
             (_g489524_
              (lambda (_g491509_)
                ((lambda (_L512_)
                   (if (gx#identifier? _L512_)
                       (gx#datum->syntax '#f 'exact-integer?__impl)
                       (_g490505_ _g491509_)))
                 _g491509_)))
             (_g488565_
              (lambda (_g491528_)
                (if (gx#stx-pair? _g491528_)
                    (let ((_e493531_ (gx#syntax-e _g491528_)))
                      (let ((_hd494535_ (##car _e493531_))
                            (_tl495538_ (##cdr _e493531_)))
                        (if (gx#stx-pair? _tl495538_)
                            (let ((_e496541_ (gx#syntax-e _tl495538_)))
                              (let ((_hd497545_ (##car _e496541_))
                                    (_tl498548_ (##cdr _e496541_)))
                                (if (gx#stx-null? _tl498548_)
                                    ((lambda (_L551_)
                                       (cons (cons (gx#datum->syntax
                                                    |gerbil/gambit/exact[1]#_g584_|
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
                                             (cons _L551_ '())))
                                     _hd497545_)
                                    (_g489524_ _g491528_))))
                            (_g489524_ _g491528_))))
                    (_g489524_ _g491528_)))))
        (_g488565_ _$stx485_)))))
