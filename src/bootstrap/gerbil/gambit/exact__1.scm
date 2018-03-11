(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/gambit/exact[1]#_g584_|
    (gx#core-deserialize-mark
     '(0 (_obj483_ . _%564_) (ref . _ref523_))
     (gx#import-module '(:gerbil/core <sugar> <sugar:3>))))
  (define |gerbil/gambit/exact[1]#_g585_|
    (gx#make-syntax-quote
     'syntax
     #f
     (gx#current-expander-context)
     (list |gerbil/gambit/exact[1]#_g584_|)))
  (define |gerbil/gambit/exact[1]#_g586_|
    (gx#make-syntax-quote
     'lambda
     #f
     (gx#current-expander-context)
     (list |gerbil/gambit/exact[1]#_g584_|)))
  (define |gerbil/gambit/exact[:0:]#exact-integer?|
    (lambda (_$stx486_)
      (let* ((_g491506_
              (lambda (_g492502_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g492502_)))
             (_g490525_
              (lambda (_g492510_)
                ((lambda (_L513_)
                   (if (gx#identifier? _L513_)
                       (cons (gx#datum->syntax
                              |gerbil/gambit/exact[1]#_g585_|
                              'syntax
                              '#f
                              '#f)
                             (cons (gx#datum->syntax '#f 'exact-integer?__impl)
                                   '()))
                       (_g491506_ _g492510_)))
                 _g492510_)))
             (_g489566_
              (lambda (_g492529_)
                (if (gx#stx-pair? _g492529_)
                    (let ((_e494532_ (gx#syntax-e _g492529_)))
                      (let ((_hd495536_ (##car _e494532_))
                            (_tl496539_ (##cdr _e494532_)))
                        (if (gx#stx-pair? _tl496539_)
                            (let ((_e497542_ (gx#syntax-e _tl496539_)))
                              (let ((_hd498546_ (##car _e497542_))
                                    (_tl499549_ (##cdr _e497542_)))
                                (if (gx#stx-null? _tl499549_)
                                    ((lambda (_L552_)
                                       (cons (cons (gx#datum->syntax
                                                    |gerbil/gambit/exact[1]#_g586_|
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
                                             (cons _L552_ '())))
                                     _hd498546_)
                                    (_g490525_ _g492529_))))
                            (_g490525_ _g492529_))))
                    (_g490525_ _g492529_)))))
        (_g489566_ _$stx486_)))))
