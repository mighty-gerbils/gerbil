(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/gambit/exact[1]#_g585_|
    (gx#core-deserialize-mark
     '(0 (ref . _ref524_) (_obj484_ . _%565_))
     (gx#import-module '(:gerbil/core <sugar> <sugar:3>))))
  (define |gerbil/gambit/exact[1]#_g586_|
    (gx#make-syntax-quote
     'syntax
     #f
     (gx#current-expander-context)
     (list |gerbil/gambit/exact[1]#_g585_|)))
  (define |gerbil/gambit/exact[1]#_g587_|
    (gx#make-syntax-quote
     'lambda
     #f
     (gx#current-expander-context)
     (list |gerbil/gambit/exact[1]#_g585_|)))
  (define |gerbil/gambit/exact[:0:]#exact-integer?|
    (lambda (_$stx487_)
      (let* ((_g492507_
              (lambda (_g493503_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g493503_)))
             (_g491526_
              (lambda (_g493511_)
                ((lambda (_L514_)
                   (if (gx#identifier? _L514_)
                       (cons (gx#datum->syntax
                              |gerbil/gambit/exact[1]#_g586_|
                              'syntax
                              '#f
                              '#f)
                             (cons (gx#datum->syntax '#f 'exact-integer?__impl)
                                   '()))
                       (_g492507_ _g493511_)))
                 _g493511_)))
             (_g490567_
              (lambda (_g493530_)
                (if (gx#stx-pair? _g493530_)
                    (let ((_e495533_ (gx#syntax-e _g493530_)))
                      (let ((_hd496537_ (##car _e495533_))
                            (_tl497540_ (##cdr _e495533_)))
                        (if (gx#stx-pair? _tl497540_)
                            (let ((_e498543_ (gx#syntax-e _tl497540_)))
                              (let ((_hd499547_ (##car _e498543_))
                                    (_tl500550_ (##cdr _e498543_)))
                                (if (gx#stx-null? _tl500550_)
                                    ((lambda (_L553_)
                                       (cons (cons (gx#datum->syntax
                                                    |gerbil/gambit/exact[1]#_g587_|
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
                                             (cons _L553_ '())))
                                     _hd499547_)
                                    (_g491526_ _g493530_))))
                            (_g491526_ _g493530_))))
                    (_g491526_ _g493530_)))))
        (_g490567_ _$stx487_)))))
