(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41264_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41265_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41266_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41302_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41303_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41304_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41309_|
    (gx#make-syntax-quote 'unquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41310_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41311_|
    (gx#make-syntax-quote 'quasiquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41312_|
    (gx#make-syntax-quote 'unquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41313_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41314_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41315_|
    (gx#make-syntax-quote '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41316_|
    (gx#make-syntax-quote '<...> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#lambda|
      (lambda (_stx4926_)
        (letrec ((_simple-lambda?4929_
                  (lambda (_hd8326_) (gx#stx-andmap gx#identifier? _hd8326_)))
                 (_opt-lambda?4931_
                  (lambda (_hd8178_)
                    (let _lp8181_ ((_rest8184_ _hd8178_) (_opt?8186_ '#f))
                      (let* ((___stx3668136682_ _rest8184_)
                             (_g81898201_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3668136682_))))
                        (let ((___kont3668436685_
                               (lambda (_L8233_ _L8235_)
                                 (let* ((___stx3665736658_ _L8235_)
                                        (_g82518265_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3665736658_))))
                                   (let ((___kont3666036661_
                                          (lambda (_L8303_)
                                            (_lp8181_ _L8233_ '#t)))
                                         (___kont3666236663_
                                          (lambda ()
                                            (if (gx#identifier? _L8235_)
                                                (if (not _opt?8186_)
                                                    (_lp8181_ _L8233_ '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((___match3667836679_
                                            (lambda (_e82548283_
                                                     _hd82558287_
                                                     _tl82568290_
                                                     _e82578293_
                                                     _hd82588297_
                                                     _tl82598300_)
                                              (let ((_L8303_ _hd82558287_))
                                                (if (gx#identifier? _L8303_)
                                                    (___kont3666036661_
                                                     _L8303_)
                                                    (___kont3666236663_))))))
                                       (if (gx#stx-pair? ___stx3665736658_)
                                           (let ((_e82548283_
                                                  (gx#syntax-e
                                                   ___stx3665736658_)))
                                             (let ((_tl82568290_
                                                    (##cdr _e82548283_))
                                                   (_hd82558287_
                                                    (##car _e82548283_)))
                                               (if (gx#stx-pair? _tl82568290_)
                                                   (let ((_e82578293_
                                                          (gx#syntax-e
                                                           _tl82568290_)))
                                                     (let ((_tl82598300_
                                                            (##cdr _e82578293_))
                                                           (_hd82588297_
                                                            (##car _e82578293_)))
                                                       (if (gx#stx-null?
                                                            _tl82598300_)
                                                           (___match3667836679_
                                                            _e82548283_
                                                            _hd82558287_
                                                            _tl82568290_
                                                            _e82578293_
                                                            _hd82588297_
                                                            _tl82598300_)
                                                           (___kont3666236663_))))
                                                   (___kont3666236663_))))
                                           (___kont3666236663_)))))))
                              (___kont3668636687_
                               (lambda ()
                                 (if _opt?8186_
                                     (let ((_$e8212_
                                            (gx#stx-null? _rest8184_)))
                                       (if _$e8212_
                                           _$e8212_
                                           (gx#identifier? _rest8184_)))
                                     '#f))))
                          (if (gx#stx-pair? ___stx3668136682_)
                              (let ((_e81938223_
                                     (gx#syntax-e ___stx3668136682_)))
                                (let ((_tl81958230_ (##cdr _e81938223_))
                                      (_hd81948227_ (##car _e81938223_)))
                                  (___kont3668436685_
                                   _tl81958230_
                                   _hd81948227_)))
                              (___kont3668636687_)))))))
                 (_opt-lambda-split4932_
                  (lambda (_hd8030_)
                    (let _lp8033_ ((_rest8036_ _hd8030_)
                                   (_pre8038_ '())
                                   (_opt8039_ '()))
                      (let* ((___stx3672136722_ _rest8036_)
                             (_g80428054_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3672136722_))))
                        (let ((___kont3672436725_
                               (lambda (_L8082_ _L8084_)
                                 (let* ((___stx3669736698_ _L8084_)
                                        (_g81008115_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3669736698_))))
                                   (let ((___kont3670036701_
                                          (lambda (_L8153_ _L8155_)
                                            (_lp8033_
                                             _L8082_
                                             _pre8038_
                                             (cons (cons (_generate-bind4935_
                                                          _L8155_)
                                                         _L8153_)
                                                   _opt8039_))))
                                         (___kont3670236703_
                                          (lambda ()
                                            (_lp8033_
                                             _L8082_
                                             (cons (_generate-bind4935_
                                                    _L8084_)
                                                   _pre8038_)
                                             _opt8039_))))
                                     (if (gx#stx-pair? ___stx3669736698_)
                                         (let ((_e81048133_
                                                (gx#syntax-e
                                                 ___stx3669736698_)))
                                           (let ((_tl81068140_
                                                  (##cdr _e81048133_))
                                                 (_hd81058137_
                                                  (##car _e81048133_)))
                                             (if (gx#stx-pair? _tl81068140_)
                                                 (let ((_e81078143_
                                                        (gx#syntax-e
                                                         _tl81068140_)))
                                                   (let ((_tl81098150_
                                                          (##cdr _e81078143_))
                                                         (_hd81088147_
                                                          (##car _e81078143_)))
                                                     (if (gx#stx-null?
                                                          _tl81098150_)
                                                         (___kont3670036701_
                                                          _hd81088147_
                                                          _hd81058137_)
                                                         (___kont3670236703_))))
                                                 (___kont3670236703_))))
                                         (___kont3670236703_))))))
                              (___kont3672636727_
                               (lambda ()
                                 (values (reverse _pre8038_)
                                         (reverse _opt8039_)
                                         (if (gx#identifier? _rest8036_)
                                             (_generate-bind4935_ _rest8036_)
                                             _rest8036_)))))
                          (if (gx#stx-pair? ___stx3672136722_)
                              (let ((_e80468072_
                                     (gx#syntax-e ___stx3672136722_)))
                                (let ((_tl80488079_ (##cdr _e80468072_))
                                      (_hd80478076_ (##car _e80468072_)))
                                  (___kont3672436725_
                                   _tl80488079_
                                   _hd80478076_)))
                              (___kont3672636727_)))))))
                 (_kw-lambda?4933_
                  (lambda (_hd7698_)
                    (let _lp7701_ ((_rest7704_ _hd7698_)
                                   (_opt?7706_ '#f)
                                   (_key?7707_ '#f))
                      (let* ((___stx3678536786_ _rest7704_)
                             (_g77127742_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3678536786_))))
                        (let ((___kont3678836789_
                               (lambda (_L7937_ _L7939_ _L7940_)
                                 (let* ((___stx3676136762_ _L7939_)
                                        (_g79557969_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3676136762_))))
                                   (let ((___kont3676436765_
                                          (lambda (_L8007_)
                                            (if (gx#identifier? _L8007_)
                                                (_lp7701_
                                                 _L7937_
                                                 _opt?7706_
                                                 '#t)
                                                '#f)))
                                         (___kont3676636767_
                                          (lambda ()
                                            (if (gx#identifier? _L7939_)
                                                (_lp7701_
                                                 _L7937_
                                                 _opt?7706_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx3676136762_)
                                         (let ((_e79587987_
                                                (gx#syntax-e
                                                 ___stx3676136762_)))
                                           (let ((_tl79607994_
                                                  (##cdr _e79587987_))
                                                 (_hd79597991_
                                                  (##car _e79587987_)))
                                             (if (gx#stx-pair? _tl79607994_)
                                                 (let ((_e79617997_
                                                        (gx#syntax-e
                                                         _tl79607994_)))
                                                   (let ((_tl79638004_
                                                          (##cdr _e79617997_))
                                                         (_hd79628001_
                                                          (##car _e79617997_)))
                                                     (if (gx#stx-null?
                                                          _tl79638004_)
                                                         (___kont3676436765_
                                                          _hd79597991_)
                                                         (___kont3676636767_))))
                                                 (___kont3676636767_))))
                                         (___kont3676636767_))))))
                              (___kont3679036791_
                               (lambda (_L7894_ _L7896_)
                                 (if (gx#identifier? _L7896_)
                                     (_lp7701_ _L7894_ _opt?7706_ '#t)
                                     '#f)))
                              (___kont3679236793_
                               (lambda (_L7774_ _L7776_)
                                 (let* ((___stx3673736738_ _L7776_)
                                        (_g77927806_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3673736738_))))
                                   (let ((___kont3674036741_
                                          (lambda (_L7844_)
                                            (if (gx#identifier? _L7844_)
                                                (_lp7701_
                                                 _L7774_
                                                 '#t
                                                 _key?7707_)
                                                '#f)))
                                         (___kont3674236743_
                                          (lambda ()
                                            (if (gx#identifier? _L7776_)
                                                (if (not _opt?7706_)
                                                    (_lp7701_
                                                     _L7774_
                                                     '#f
                                                     _key?7707_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx3673736738_)
                                         (let ((_e77957824_
                                                (gx#syntax-e
                                                 ___stx3673736738_)))
                                           (let ((_tl77977831_
                                                  (##cdr _e77957824_))
                                                 (_hd77967828_
                                                  (##car _e77957824_)))
                                             (if (gx#stx-pair? _tl77977831_)
                                                 (let ((_e77987834_
                                                        (gx#syntax-e
                                                         _tl77977831_)))
                                                   (let ((_tl78007841_
                                                          (##cdr _e77987834_))
                                                         (_hd77997838_
                                                          (##car _e77987834_)))
                                                     (if (gx#stx-null?
                                                          _tl78007841_)
                                                         (___kont3674036741_
                                                          _hd77967828_)
                                                         (___kont3674236743_))))
                                                 (___kont3674236743_))))
                                         (___kont3674236743_))))))
                              (___kont3679436795_
                               (lambda ()
                                 (if _key?7707_
                                     (let ((_$e7753_
                                            (gx#stx-null? _rest7704_)))
                                       (if _$e7753_
                                           _$e7753_
                                           (gx#identifier? _rest7704_)))
                                     '#f))))
                          (let ((___match3680836809_
                                 (lambda (_e77177917_
                                          _hd77187921_
                                          _tl77197924_
                                          _e77207927_
                                          _hd77217931_
                                          _tl77227934_)
                                   (let ((_L7937_ _tl77227934_)
                                         (_L7939_ _hd77217931_)
                                         (_L7940_ _hd77187921_))
                                     (if (gx#stx-keyword? _L7940_)
                                         (___kont3678836789_
                                          _L7937_
                                          _L7939_
                                          _L7940_)
                                         (if (gx#stx-datum? _hd77187921_)
                                             (let ((_e77287880_
                                                    (gx#stx-e _hd77187921_)))
                                               (if (equal? _e77287880_ '#!key)
                                                   (___kont3679036791_
                                                    _tl77227934_
                                                    _hd77217931_)
                                                   (___kont3679236793_
                                                    _tl77197924_
                                                    _hd77187921_)))
                                             (___kont3679236793_
                                              _tl77197924_
                                              _hd77187921_)))))))
                            (if (gx#stx-pair? ___stx3678536786_)
                                (let ((_e77177917_
                                       (gx#syntax-e ___stx3678536786_)))
                                  (let ((_tl77197924_ (##cdr _e77177917_))
                                        (_hd77187921_ (##car _e77177917_)))
                                    (if (gx#stx-pair? _tl77197924_)
                                        (let ((_e77207927_
                                               (gx#syntax-e _tl77197924_)))
                                          (let ((_tl77227934_
                                                 (##cdr _e77207927_))
                                                (_hd77217931_
                                                 (##car _e77207927_)))
                                            (___match3680836809_
                                             _e77177917_
                                             _hd77187921_
                                             _tl77197924_
                                             _e77207927_
                                             _hd77217931_
                                             _tl77227934_)))
                                        (if (gx#stx-datum? _hd77187921_)
                                            (let ((_e77287880_
                                                   (gx#stx-e _hd77187921_)))
                                              (___kont3679236793_
                                               _tl77197924_
                                               _hd77187921_))
                                            (___kont3679236793_
                                             _tl77197924_
                                             _hd77187921_)))))
                                (___kont3679436795_))))))))
                 (_kw-lambda-split4934_
                  (lambda (_hd7431_)
                    (let _lp7434_ ((_rest7437_ _hd7431_)
                                   (_kwvar7439_ '#f)
                                   (_kwargs7440_ '())
                                   (_args7441_ '()))
                      (let* ((___stx3685936860_ _rest7437_)
                             (_g74467476_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3685936860_))))
                        (let ((___kont3686236863_
                               (lambda (_L7595_ _L7597_ _L7598_)
                                 (let ((_key7612_ (gx#stx-e _L7598_)))
                                   (if (find (lambda (_kwarg7615_)
                                               (eq? _key7612_
                                                    (car _kwarg7615_)))
                                             _kwargs7440_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; duplicate keyword argument"
                                        _stx4926_
                                        _hd7431_
                                        _key7612_)
                                       (let* ((___stx3683536836_ _L7597_)
                                              (_g76197634_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  ___stx3683536836_))))
                                         (let ((___kont3683836839_
                                                (lambda (_L7672_ _L7674_)
                                                  (_lp7434_
                                                   _L7595_
                                                   _kwvar7439_
                                                   (cons (list _key7612_
                                                               (_generate-bind4935_
                                                                _L7674_)
                                                               _L7672_)
                                                         _kwargs7440_)
                                                   _args7441_)))
                                               (___kont3684036841_
                                                (lambda ()
                                                  (_lp7434_
                                                   _L7595_
                                                   _kwvar7439_
                                                   (cons (list _key7612_
                                                               (_generate-bind4935_
                                                                _L7597_)
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'error)
                             (cons '"Missing required keyword argument"
                                   (cons _L7598_ '()))))
                 _kwargs7440_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _args7441_))))
                                           (if (gx#stx-pair? ___stx3683536836_)
                                               (let ((_e76237652_
                                                      (gx#syntax-e
                                                       ___stx3683536836_)))
                                                 (let ((_tl76257659_
                                                        (##cdr _e76237652_))
                                                       (_hd76247656_
                                                        (##car _e76237652_)))
                                                   (if (gx#stx-pair?
                                                        _tl76257659_)
                                                       (let ((_e76267662_
                                                              (gx#syntax-e
                                                               _tl76257659_)))
                                                         (let ((_tl76287669_
                                                                (##cdr _e76267662_))
                                                               (_hd76277666_
                                                                (##car _e76267662_)))
                                                           (if (gx#stx-null?
                                                                _tl76287669_)
                                                               (___kont3683836839_
                                                                _hd76277666_
                                                                _hd76247656_)
                                                               (___kont3684036841_))))
                                                       (___kont3684036841_))))
                                               (___kont3684036841_))))))))
                              (___kont3686436865_
                               (lambda (_L7552_ _L7554_)
                                 (if _kwvar7439_
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; duplicate #!key argument"
                                      _stx4926_
                                      _hd7431_
                                      _L7554_)
                                     (_lp7434_
                                      _L7552_
                                      (_generate-bind4935_ _L7554_)
                                      _kwargs7440_
                                      _args7441_))))
                              (___kont3686636867_
                               (lambda (_L7504_ _L7506_)
                                 (_lp7434_
                                  _L7504_
                                  _kwvar7439_
                                  _kwargs7440_
                                  (cons _L7506_ _args7441_))))
                              (___kont3686836869_
                               (lambda ()
                                 (values _kwvar7439_
                                         (reverse _kwargs7440_)
                                         (foldl cons _rest7437_ _args7441_)))))
                          (let ((___match3688236883_
                                 (lambda (_e74517575_
                                          _hd74527579_
                                          _tl74537582_
                                          _e74547585_
                                          _hd74557589_
                                          _tl74567592_)
                                   (let ((_L7595_ _tl74567592_)
                                         (_L7597_ _hd74557589_)
                                         (_L7598_ _hd74527579_))
                                     (if (gx#stx-keyword? _L7598_)
                                         (___kont3686236863_
                                          _L7595_
                                          _L7597_
                                          _L7598_)
                                         (if (gx#stx-datum? _hd74527579_)
                                             (let ((_e74627538_
                                                    (gx#stx-e _hd74527579_)))
                                               (if (equal? _e74627538_ '#!key)
                                                   (___kont3686436865_
                                                    _tl74567592_
                                                    _hd74557589_)
                                                   (___kont3686636867_
                                                    _tl74537582_
                                                    _hd74527579_)))
                                             (___kont3686636867_
                                              _tl74537582_
                                              _hd74527579_)))))))
                            (if (gx#stx-pair? ___stx3685936860_)
                                (let ((_e74517575_
                                       (gx#syntax-e ___stx3685936860_)))
                                  (let ((_tl74537582_ (##cdr _e74517575_))
                                        (_hd74527579_ (##car _e74517575_)))
                                    (if (gx#stx-pair? _tl74537582_)
                                        (let ((_e74547585_
                                               (gx#syntax-e _tl74537582_)))
                                          (let ((_tl74567592_
                                                 (##cdr _e74547585_))
                                                (_hd74557589_
                                                 (##car _e74547585_)))
                                            (___match3688236883_
                                             _e74517575_
                                             _hd74527579_
                                             _tl74537582_
                                             _e74547585_
                                             _hd74557589_
                                             _tl74567592_)))
                                        (if (gx#stx-datum? _hd74527579_)
                                            (let ((_e74627538_
                                                   (gx#stx-e _hd74527579_)))
                                              (___kont3686636867_
                                               _tl74537582_
                                               _hd74527579_))
                                            (___kont3686636867_
                                             _tl74537582_
                                             _hd74527579_)))))
                                (___kont3686836869_))))))))
                 (_generate-bind4935_
                  (lambda (_e7428_)
                    (if (gx#underscore? _e7428_)
                        (gx#genident _e7428_)
                        _e7428_)))
                 (_check-duplicate-bindings4936_
                  (lambda (_hd7125_)
                    (letrec ((_cons-id7128_
                              (lambda (_id7424_ _ids7426_)
                                (if (gx#underscore? _id7424_)
                                    _ids7426_
                                    (cons _id7424_ _ids7426_)))))
                      (let _lp7131_ ((_rest7134_ _hd7125_) (_ids7136_ '()))
                        (let* ((___stx3693336934_ _rest7134_)
                               (_g71397151_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   ___stx3693336934_))))
                          (let ((___kont3693636937_
                                 (lambda (_L7179_ _L7181_)
                                   (if (gx#identifier? _L7181_)
                                       (_lp7131_
                                        _L7179_
                                        (_cons-id7128_ _L7181_ _ids7136_))
                                       (if (gx#stx-pair? _L7181_)
                                           (let* ((_g71977211_
                                                   (lambda (_g71987207_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g71987207_)))
                                                  (_g71967252_
                                                   (lambda (_g71987215_)
                                                     (if (gx#stx-pair?
                                                          _g71987215_)
                                                         (let ((_e72007218_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g71987215_)))
                   (let ((_hd72017222_ (##car _e72007218_))
                         (_tl72027225_ (##cdr _e72007218_)))
                     (if (gx#stx-pair? _tl72027225_)
                         (let ((_e72037228_ (gx#syntax-e _tl72027225_)))
                           (let ((_hd72047232_ (##car _e72037228_))
                                 (_tl72057235_ (##cdr _e72037228_)))
                             (if (gx#stx-null? _tl72057235_)
                                 ((lambda (_L7238_)
                                    (_lp7131_
                                     _L7179_
                                     (_cons-id7128_ _L7238_ _ids7136_)))
                                  _hd72017222_)
                                 (_g71977211_ _g71987215_))))
                         (_g71977211_ _g71987215_))))
                 (_g71977211_ _g71987215_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g71967252_ _L7181_))
                                           (if (gx#stx-keyword? _L7181_)
                                               (let* ((_g72567268_
                                                       (lambda (_g72577264_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g72577264_)))
                                                      (_g72557370_
                                                       (lambda (_g72577272_)
                                                         (if (gx#stx-pair?
                                                              _g72577272_)
                                                             (let ((_e72607275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g72577272_)))
                       (let ((_hd72617279_ (##car _e72607275_))
                             (_tl72627282_ (##cdr _e72607275_)))
                         ((lambda (_L7285_ _L7287_)
                            (let* ((___stx3690936910_ _L7287_)
                                   (_g72997313_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       ___stx3690936910_))))
                              (let ((___kont3691236913_
                                     (lambda (_L7351_)
                                       (_lp7131_
                                        _L7285_
                                        (_cons-id7128_ _L7351_ _ids7136_))))
                                    (___kont3691436915_
                                     (lambda ()
                                       (_lp7131_
                                        _L7285_
                                        (_cons-id7128_ _L7287_ _ids7136_)))))
                                (if (gx#stx-pair? ___stx3690936910_)
                                    (let ((_e73027331_
                                           (gx#syntax-e ___stx3690936910_)))
                                      (let ((_tl73047338_ (##cdr _e73027331_))
                                            (_hd73037335_ (##car _e73027331_)))
                                        (if (gx#stx-pair? _tl73047338_)
                                            (let ((_e73057341_
                                                   (gx#syntax-e _tl73047338_)))
                                              (let ((_tl73077348_
                                                     (##cdr _e73057341_))
                                                    (_hd73067345_
                                                     (##car _e73057341_)))
                                                (if (gx#stx-null? _tl73077348_)
                                                    (___kont3691236913_
                                                     _hd73037335_)
                                                    (___kont3691436915_))))
                                            (___kont3691436915_))))
                                    (___kont3691436915_)))))
                          _tl72627282_
                          _hd72617279_)))
                     (_g72567268_ _g72577272_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g72557370_ _L7179_))
                                               (if (eq? (gx#stx-e _L7181_)
                                                        '#!key)
                                                   (let* ((_g73747386_
                                                           (lambda (_g73757382_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g73757382_)))
                                                          (_g73737416_
                                                           (lambda (_g73757390_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g73757390_)
                         (let ((_e73787393_ (gx#syntax-e _g73757390_)))
                           (let ((_hd73797397_ (##car _e73787393_))
                                 (_tl73807400_ (##cdr _e73787393_)))
                             ((lambda (_L7403_ _L7405_)
                                (_lp7131_
                                 _L7403_
                                 (_cons-id7128_ _L7405_ _ids7136_)))
                              _tl73807400_
                              _hd73797397_)))
                         (_g73747386_ _g73757390_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g73737416_ _L7179_))
                                                   (error '"BUG: check-duplicate-bindings"
                                                          _stx4926_
                                                          _rest7134_)))))))
                                (___kont3693836939_
                                 (lambda ()
                                   (gx#check-duplicate-identifiers
                                    (if (gx#stx-null? _rest7134_)
                                        _ids7136_
                                        (_cons-id7128_ _rest7134_ _ids7136_))
                                    _stx4926_))))
                            (if (gx#stx-pair? ___stx3693336934_)
                                (let ((_e71437169_
                                       (gx#syntax-e ___stx3693336934_)))
                                  (let ((_tl71457176_ (##cdr _e71437169_))
                                        (_hd71447173_ (##car _e71437169_)))
                                    (___kont3693636937_
                                     _tl71457176_
                                     _hd71447173_)))
                                (___kont3693836939_))))))))
                 (_generate-opt-primary4937_
                  (lambda (_pre6917_ _opt6919_ _tail6920_ _body6921_)
                    (let* ((_g69236964_
                            (lambda (_g69246960_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g69246960_)))
                           (_g69227121_
                            (lambda (_g69246968_)
                              (if (gx#stx-pair? _g69246968_)
                                  (let ((_e69296971_
                                         (gx#syntax-e _g69246968_)))
                                    (let ((_hd69306975_ (##car _e69296971_))
                                          (_tl69316978_ (##cdr _e69296971_)))
                                      (if (gx#stx-pair/null? _hd69306975_)
                                          (let ((_g41234_
                                                 (gx#syntax-split-splice
                                                  _hd69306975_
                                                  '0)))
                                            (begin
                                              (let ((_g41235_
                                                     (if (##values? _g41234_)
                                                         (##vector-length
                                                          _g41234_)
                                                         1)))
                                                (if (not (##fx= _g41235_ 2))
                                                    (error "Context expects 2 values"
                                                           _g41235_)))
                                              (let ((_target69326981_
                                                     (##vector-ref _g41234_ 0))
                                                    (_tl69346984_
                                                     (##vector-ref
                                                      _g41234_
                                                      1)))
                                                (if (gx#stx-null? _tl69346984_)
                                                    (letrec ((_loop69356987_
                                                              (lambda (_hd69336991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _pre69396994_)
                        (if (gx#stx-pair? _hd69336991_)
                            (let ((_e69366997_ (gx#syntax-e _hd69336991_)))
                              (let ((_lp-hd69377001_ (##car _e69366997_))
                                    (_lp-tl69387004_ (##cdr _e69366997_)))
                                (_loop69356987_
                                 _lp-tl69387004_
                                 (cons _lp-hd69377001_ _pre69396994_))))
                            (let ((_pre69407007_ (reverse _pre69396994_)))
                              (if (gx#stx-pair? _tl69316978_)
                                  (let ((_e69417011_
                                         (gx#syntax-e _tl69316978_)))
                                    (let ((_hd69427015_ (##car _e69417011_))
                                          (_tl69437018_ (##cdr _e69417011_)))
                                      (if (gx#stx-pair/null? _hd69427015_)
                                          (let ((_g41236_
                                                 (gx#syntax-split-splice
                                                  _hd69427015_
                                                  '0)))
                                            (begin
                                              (let ((_g41237_
                                                     (if (##values? _g41236_)
                                                         (##vector-length
                                                          _g41236_)
                                                         1)))
                                                (if (not (##fx= _g41237_ 2))
                                                    (error "Context expects 2 values"
                                                           _g41237_)))
                                              (let ((_target69447021_
                                                     (##vector-ref _g41236_ 0))
                                                    (_tl69467024_
                                                     (##vector-ref
                                                      _g41236_
                                                      1)))
                                                (if (gx#stx-null? _tl69467024_)
                                                    (letrec ((_loop69477027_
                                                              (lambda (_hd69457031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _opt69517034_)
                        (if (gx#stx-pair? _hd69457031_)
                            (let ((_e69487037_ (gx#syntax-e _hd69457031_)))
                              (let ((_lp-hd69497041_ (##car _e69487037_))
                                    (_lp-tl69507044_ (##cdr _e69487037_)))
                                (_loop69477027_
                                 _lp-tl69507044_
                                 (cons _lp-hd69497041_ _opt69517034_))))
                            (let ((_opt69527047_ (reverse _opt69517034_)))
                              (if (gx#stx-pair? _tl69437018_)
                                  (let ((_e69537051_
                                         (gx#syntax-e _tl69437018_)))
                                    (let ((_hd69547055_ (##car _e69537051_))
                                          (_tl69557058_ (##cdr _e69537051_)))
                                      (if (gx#stx-pair? _tl69557058_)
                                          (let ((_e69567061_
                                                 (gx#syntax-e _tl69557058_)))
                                            (let ((_hd69577065_
                                                   (##car _e69567061_))
                                                  (_tl69587068_
                                                   (##cdr _e69567061_)))
                                              (if (gx#stx-null? _tl69587068_)
                                                  ((lambda (_L7071_
                                                            _L7073_
                                                            _L7074_
                                                            _L7075_)
                                                     (let ()
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda%)
                                                             (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#!void
                             (foldr (lambda (_g71047109_ _g71057112_)
                                      (cons _g71047109_ _g71057112_))
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g71067115_ _g71077118_)
                                               (cons _g71067115_ _g71077118_))
                                             _L7073_
                                             _L7074_))
                                    _L7075_))
                           _L7071_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd69577065_
                                                   _hd69547055_
                                                   _opt69527047_
                                                   _pre69407007_)
                                                  (_g69236964_ _g69246968_))))
                                          (_g69236964_ _g69246968_))))
                                  (_g69236964_ _g69246968_)))))))
              (_loop69477027_ _target69447021_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g69236964_
                                                     _g69246968_)))))
                                          (_g69236964_ _g69246968_))))
                                  (_g69236964_ _g69246968_)))))))
              (_loop69356987_ _target69326981_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g69236964_
                                                     _g69246968_)))))
                                          (_g69236964_ _g69246968_))))
                                  (_g69236964_ _g69246968_)))))
                      (_g69227121_
                       (list _pre6917_
                             (map car _opt6919_)
                             _tail6920_
                             _body6921_)))))
                 (_generate-opt-dispatch4938_
                  (lambda (_primary6911_ _pre6913_ _opt6914_ _tail6915_)
                    (cons (list _pre6913_
                                (_generate-opt-clause4940_
                                 _primary6911_
                                 _pre6913_
                                 _opt6914_))
                          (_generate-opt-dispatch*4939_
                           _primary6911_
                           _pre6913_
                           _opt6914_
                           _tail6915_))))
                 (_generate-opt-dispatch*4939_
                  (lambda (_primary6468_ _pre6470_ _opt6471_ _tail6472_)
                    (let _recur6474_ ((_opt-rest6477_ _opt6471_)
                                      (_right6479_ '()))
                      (if (pair? _opt-rest6477_)
                          (let* ((_hd6481_ (caar _opt-rest6477_))
                                 (_rest6484_ (cdr _opt-rest6477_))
                                 (_right*6487_ (cons _hd6481_ _right6479_))
                                 (_g64906507_
                                  (lambda (_g64916503_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g64916503_)))
                                 (_g64896690_
                                  (lambda (_g64916511_)
                                    (if (gx#stx-pair/null? _g64916511_)
                                        (let ((_g41238_
                                               (gx#syntax-split-splice
                                                _g64916511_
                                                '0)))
                                          (begin
                                            (let ((_g41239_
                                                   (if (##values? _g41238_)
                                                       (##vector-length
                                                        _g41238_)
                                                       1)))
                                              (if (not (##fx= _g41239_ 2))
                                                  (error "Context expects 2 values"
                                                         _g41239_)))
                                            (let ((_target64936514_
                                                   (##vector-ref _g41238_ 0))
                                                  (_tl64956517_
                                                   (##vector-ref _g41238_ 1)))
                                              (if (gx#stx-null? _tl64956517_)
                                                  (letrec ((_loop64966520_
                                                            (lambda (_hd64946524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-bind65006527_)
                      (if (gx#stx-pair? _hd64946524_)
                          (let ((_e64976530_ (gx#syntax-e _hd64946524_)))
                            (let ((_lp-hd64986534_ (##car _e64976530_))
                                  (_lp-tl64996537_ (##cdr _e64976530_)))
                              (_loop64966520_
                               _lp-tl64996537_
                               (cons _lp-hd64986534_ _pre-bind65006527_))))
                          (let ((_pre-bind65016540_
                                 (reverse _pre-bind65006527_)))
                            ((lambda (_L6544_)
                               (let ()
                                 (let* ((_g65656582_
                                         (lambda (_g65666578_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g65666578_)))
                                        (_g65646686_
                                         (lambda (_g65666586_)
                                           (if (gx#stx-pair/null? _g65666586_)
                                               (let ((_g41240_
                                                      (gx#syntax-split-splice
                                                       _g65666586_
                                                       '0)))
                                                 (begin
                                                   (let ((_g41241_
                                                          (if (##values?
                                                               _g41240_)
                                                              (##vector-length
                                                               _g41240_)
                                                              1)))
                                                     (if (not (##fx= _g41241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                 (error "Context expects 2 values" _g41241_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target65686589_
                                                          (##vector-ref
                                                           _g41240_
                                                           0))
                                                         (_tl65706592_
                                                          (##vector-ref
                                                           _g41240_
                                                           1)))
                                                     (if (gx#stx-null?
                                                          _tl65706592_)
                                                         (letrec ((_loop65716595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd65696599_ _opt-bind65756602_)
                             (if (gx#stx-pair? _hd65696599_)
                                 (let ((_e65726605_
                                        (gx#syntax-e _hd65696599_)))
                                   (let ((_lp-hd65736609_ (##car _e65726605_))
                                         (_lp-tl65746612_ (##cdr _e65726605_)))
                                     (_loop65716595_
                                      _lp-tl65746612_
                                      (cons _lp-hd65736609_
                                            _opt-bind65756602_))))
                                 (let ((_opt-bind65766615_
                                        (reverse _opt-bind65756602_)))
                                   ((lambda (_L6619_)
                                      (let ()
                                        (let* ((_g66366644_
                                                (lambda (_g66376640_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g66376640_)))
                                               (_g66356682_
                                                (lambda (_g66376648_)
                                                  ((lambda (_L6651_)
                                                     (let ()
                                                       (let ()
                                                         (cons (list (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#!void
                               (foldr (lambda (_g66656670_ _g66666673_)
                                        (cons _g66656670_ _g66666673_))
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g66676676_
                                                        _g66686679_)
                                                 (cons _g66676676_
                                                       _g66686679_))
                                               (cons _L6651_ '())
                                               _L6619_))
                                      _L6544_))
                             (_generate-opt-clause4940_
                              _primary6468_
                              (foldr cons (reverse _right*6487_) _pre6470_)
                              _rest6484_))
                       (_recur6474_ _rest6484_ _right*6487_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g66376648_))))
                                          (_g66356682_ _hd6481_))))
                                    _opt-bind65766615_))))))
                   (_loop65716595_ _target65686589_ '()))
                 (_g65656582_ _g65666586_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g65656582_ _g65666586_)))))
                                   (_g65646686_ (reverse _right6479_)))))
                             _pre-bind65016540_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop64966520_
                                                     _target64936514_
                                                     '()))
                                                  (_g64906507_ _g64916511_)))))
                                        (_g64906507_ _g64916511_)))))
                            (_g64896690_ _pre6470_))
                          (if (gx#stx-null? _tail6472_)
                              '()
                              (let* ((_g66946735_
                                      (lambda (_g66956731_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g66956731_)))
                                     (_g66936907_
                                      (lambda (_g66956739_)
                                        (if (gx#stx-pair? _g66956739_)
                                            (let ((_e67006742_
                                                   (gx#syntax-e _g66956739_)))
                                              (let ((_hd67016746_
                                                     (##car _e67006742_))
                                                    (_tl67026749_
                                                     (##cdr _e67006742_)))
                                                (if (gx#stx-pair/null?
                                                     _hd67016746_)
                                                    (let ((_g41242_
                                                           (gx#syntax-split-splice
                                                            _hd67016746_
                                                            '0)))
                                                      (begin
                                                        (let ((_g41243_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g41242_)
                           (##vector-length _g41242_)
                           1)))
                  (if (not (##fx= _g41243_ 2))
                      (error "Context expects 2 values" _g41243_)))
                (let ((_target67036752_ (##vector-ref _g41242_ 0))
                      (_tl67056755_ (##vector-ref _g41242_ 1)))
                  (if (gx#stx-null? _tl67056755_)
                      (letrec ((_loop67066758_
                                (lambda (_hd67046762_ _pre67106765_)
                                  (if (gx#stx-pair? _hd67046762_)
                                      (let ((_e67076768_
                                             (gx#syntax-e _hd67046762_)))
                                        (let ((_lp-hd67086772_
                                               (##car _e67076768_))
                                              (_lp-tl67096775_
                                               (##cdr _e67076768_)))
                                          (_loop67066758_
                                           _lp-tl67096775_
                                           (cons _lp-hd67086772_
                                                 _pre67106765_))))
                                      (let ((_pre67116778_
                                             (reverse _pre67106765_)))
                                        (if (gx#stx-pair? _tl67026749_)
                                            (let ((_e67126782_
                                                   (gx#syntax-e _tl67026749_)))
                                              (let ((_hd67136786_
                                                     (##car _e67126782_))
                                                    (_tl67146789_
                                                     (##cdr _e67126782_)))
                                                (if (gx#stx-pair/null?
                                                     _hd67136786_)
                                                    (let ((_g41244_
                                                           (gx#syntax-split-splice
                                                            _hd67136786_
                                                            '0)))
                                                      (begin
                                                        (let ((_g41245_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g41244_)
                           (##vector-length _g41244_)
                           1)))
                  (if (not (##fx= _g41245_ 2))
                      (error "Context expects 2 values" _g41245_)))
                (let ((_target67156792_ (##vector-ref _g41244_ 0))
                      (_tl67176795_ (##vector-ref _g41244_ 1)))
                  (if (gx#stx-null? _tl67176795_)
                      (letrec ((_loop67186798_
                                (lambda (_hd67166802_ _opt67226805_)
                                  (if (gx#stx-pair? _hd67166802_)
                                      (let ((_e67196808_
                                             (gx#syntax-e _hd67166802_)))
                                        (let ((_lp-hd67206812_
                                               (##car _e67196808_))
                                              (_lp-tl67216815_
                                               (##cdr _e67196808_)))
                                          (_loop67186798_
                                           _lp-tl67216815_
                                           (cons _lp-hd67206812_
                                                 _opt67226805_))))
                                      (let ((_opt67236818_
                                             (reverse _opt67226805_)))
                                        (if (gx#stx-pair? _tl67146789_)
                                            (let ((_e67246822_
                                                   (gx#syntax-e _tl67146789_)))
                                              (let ((_hd67256826_
                                                     (##car _e67246822_))
                                                    (_tl67266829_
                                                     (##cdr _e67246822_)))
                                                (if (gx#stx-pair? _tl67266829_)
                                                    (let ((_e67276832_
                                                           (gx#syntax-e
                                                            _tl67266829_)))
                                                      (let ((_hd67286836_
                                                             (##car _e67276832_))
                                                            (_tl67296839_
                                                             (##cdr _e67276832_)))
                                                        (if (gx#stx-null?
                                                             _tl67296839_)
                                                            ((lambda (_L6842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L6844_
                              _L6845_
                              _L6846_)
                       (let ()
                         (list (list (begin
                                       '#!void
                                       (foldr (lambda (_g68746879_ _g68756882_)
                                                (cons _g68746879_ _g68756882_))
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g68766885_
                                                                _g68776888_)
                                                         (cons _g68766885_
                                                               _g68776888_))
                                                       _L6844_
                                                       _L6845_))
                                              _L6846_))
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'apply)
                                            (cons _L6842_
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g68906895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g68916898_)
                     (cons _g68906895_ _g68916898_))
                   (begin
                     '#!void
                     (foldr (lambda (_g68926901_ _g68936904_)
                              (cons _g68926901_ _g68936904_))
                            (cons _L6844_ '())
                            _L6845_))
                   _L6846_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (gx#stx-source _stx4926_))))))
                     _hd67286836_
                     _hd67256826_
                     _opt67236818_
                     _pre67116778_)
                    (_g66946735_ _g66956739_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66946735_
                                                     _g66956739_))))
                                            (_g66946735_ _g66956739_)))))))
                        (_loop67186798_ _target67156792_ '()))
                      (_g66946735_ _g66956739_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66946735_
                                                     _g66956739_))))
                                            (_g66946735_ _g66956739_)))))))
                        (_loop67066758_ _target67036752_ '()))
                      (_g66946735_ _g66956739_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66946735_
                                                     _g66956739_))))
                                            (_g66946735_ _g66956739_)))))
                                (_g66936907_
                                 (list _pre6470_
                                       (reverse _right6479_)
                                       _tail6472_
                                       _primary6468_))))))))
                 (_generate-opt-clause4940_
                  (lambda (_primary6166_ _pre6168_ _opt6169_)
                    (let _recur6171_ ((_opt-rest6174_ _opt6169_)
                                      (_right6176_ '()))
                      (if (pair? _opt-rest6174_)
                          (let* ((_hd6178_ (car _opt-rest6174_))
                                 (_rest6181_ (cdr _opt-rest6174_))
                                 (_g61846192_
                                  (lambda (_g61856188_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g61856188_)))
                                 (_g61836281_
                                  (lambda (_g61856196_)
                                    ((lambda (_L6199_)
                                       (let ()
                                         (let* ((_g62156223_
                                                 (lambda (_g62166219_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g62166219_)))
                                                (_g62146277_
                                                 (lambda (_g62166227_)
                                                   ((lambda (_L6230_)
                                                      (let ()
                                                        (let* ((_g62436251_
                                                                (lambda (_g62446247_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g62446247_)))
                       (_g62426273_
                        (lambda (_g62446255_)
                          ((lambda (_L6258_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let-values)
                                       (cons (cons (cons (cons _L6199_ '())
                                                         (cons _L6230_ '()))
                                                   '())
                                             (cons _L6258_ '()))))))
                           _g62446255_))))
                  (_g62426273_
                   (_recur6171_ _rest6181_ (cons _L6199_ _right6176_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g62166227_))))
                                           (_g62146277_ (cdr _hd6178_)))))
                                     _g61856196_))))
                            (_g61836281_ (car _hd6178_)))
                          (let* ((_g62856322_
                                  (lambda (_g62866318_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g62866318_)))
                                 (_g62846464_
                                  (lambda (_g62866326_)
                                    (if (gx#stx-pair? _g62866326_)
                                        (let ((_e62906329_
                                               (gx#syntax-e _g62866326_)))
                                          (let ((_hd62916333_
                                                 (##car _e62906329_))
                                                (_tl62926336_
                                                 (##cdr _e62906329_)))
                                            (if (gx#stx-pair/null?
                                                 _hd62916333_)
                                                (let ((_g41246_
                                                       (gx#syntax-split-splice
                                                        _hd62916333_
                                                        '0)))
                                                  (begin
                                                    (let ((_g41247_
                                                           (if (##values?
                                                                _g41246_)
                                                               (##vector-length
                                                                _g41246_)
                                                               1)))
                                                      (if (not (##fx= _g41247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g41247_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target62936339_
                                                           (##vector-ref
                                                            _g41246_
                                                            0))
                                                          (_tl62956342_
                                                           (##vector-ref
                                                            _g41246_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl62956342_)
                                                          (letrec ((_loop62966345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd62946349_ _pre63006352_)
                              (if (gx#stx-pair? _hd62946349_)
                                  (let ((_e62976355_
                                         (gx#syntax-e _hd62946349_)))
                                    (let ((_lp-hd62986359_ (##car _e62976355_))
                                          (_lp-tl62996362_
                                           (##cdr _e62976355_)))
                                      (_loop62966345_
                                       _lp-tl62996362_
                                       (cons _lp-hd62986359_ _pre63006352_))))
                                  (let ((_pre63016365_
                                         (reverse _pre63006352_)))
                                    (if (gx#stx-pair? _tl62926336_)
                                        (let ((_e63026369_
                                               (gx#syntax-e _tl62926336_)))
                                          (let ((_hd63036373_
                                                 (##car _e63026369_))
                                                (_tl63046376_
                                                 (##cdr _e63026369_)))
                                            (if (gx#stx-pair/null?
                                                 _hd63036373_)
                                                (let ((_g41248_
                                                       (gx#syntax-split-splice
                                                        _hd63036373_
                                                        '0)))
                                                  (begin
                                                    (let ((_g41249_
                                                           (if (##values?
                                                                _g41248_)
                                                               (##vector-length
                                                                _g41248_)
                                                               1)))
                                                      (if (not (##fx= _g41249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g41249_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target63056379_
                                                           (##vector-ref
                                                            _g41248_
                                                            0))
                                                          (_tl63076382_
                                                           (##vector-ref
                                                            _g41248_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl63076382_)
                                                          (letrec ((_loop63086385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd63066389_ _opt63126392_)
                              (if (gx#stx-pair? _hd63066389_)
                                  (let ((_e63096395_
                                         (gx#syntax-e _hd63066389_)))
                                    (let ((_lp-hd63106399_ (##car _e63096395_))
                                          (_lp-tl63116402_
                                           (##cdr _e63096395_)))
                                      (_loop63086385_
                                       _lp-tl63116402_
                                       (cons _lp-hd63106399_ _opt63126392_))))
                                  (let ((_opt63136405_
                                         (reverse _opt63126392_)))
                                    (if (gx#stx-pair? _tl63046376_)
                                        (let ((_e63146409_
                                               (gx#syntax-e _tl63046376_)))
                                          (let ((_hd63156413_
                                                 (##car _e63146409_))
                                                (_tl63166416_
                                                 (##cdr _e63146409_)))
                                            (if (gx#stx-null? _tl63166416_)
                                                ((lambda (_L6419_
                                                          _L6421_
                                                          _L6422_)
                                                   (let ()
                                                     (gx#stx-wrap-source
                                                      (cons _L6419_
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g64476452_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g64486455_)
                               (cons _g64476452_ _g64486455_))
                             (begin
                               '#!void
                               (foldr (lambda (_g64496458_ _g64506461_)
                                        (cons _g64496458_ _g64506461_))
                                      '()
                                      _L6421_))
                             _L6422_)))
              (gx#stx-source _stx4926_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd63156413_
                                                 _opt63136405_
                                                 _pre63016365_)
                                                (_g62856322_ _g62866326_))))
                                        (_g62856322_ _g62866326_)))))))
                    (_loop63086385_ _target63056379_ '()))
                  (_g62856322_ _g62866326_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g62856322_ _g62866326_))))
                                        (_g62856322_ _g62866326_)))))))
                    (_loop62966345_ _target62936339_ '()))
                  (_g62856322_ _g62866326_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g62856322_ _g62866326_))))
                                        (_g62856322_ _g62866326_)))))
                            (_g62846464_
                             (list _pre6168_
                                   (reverse _right6176_)
                                   _primary6166_)))))))
                 (_generate-kw-primary4941_
                  (lambda (_key5542_ _kwargs5544_ _args5545_ _body5546_)
                    (letrec ((_make-body5548_
                              (lambda (_kwargs6035_ _kwvals6037_)
                                (if (pair? _kwargs6035_)
                                    (let* ((_kwarg6039_ (car _kwargs6035_))
                                           (_var6042_ (cadr _kwarg6039_))
                                           (_default6045_ (caddr _kwarg6039_))
                                           (_kwval6048_ (car _kwvals6037_))
                                           (_rest-kwargs6051_
                                            (cdr _kwargs6035_))
                                           (_rest-kwvals6054_
                                            (cdr _kwvals6037_)))
                                      (let* ((_g60596082_
                                              (lambda (_g60606078_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g60606078_)))
                                             (_g60586162_
                                              (lambda (_g60606086_)
                                                (if (gx#stx-pair? _g60606086_)
                                                    (let ((_e60656089_
                                                           (gx#syntax-e
                                                            _g60606086_)))
                                                      (let ((_hd60666093_
                                                             (##car _e60656089_))
                                                            (_tl60676096_
                                                             (##cdr _e60656089_)))
                                                        (if (gx#stx-pair?
                                                             _tl60676096_)
                                                            (let ((_e60686099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl60676096_)))
                      (let ((_hd60696103_ (##car _e60686099_))
                            (_tl60706106_ (##cdr _e60686099_)))
                        (if (gx#stx-pair? _tl60706106_)
                            (let ((_e60716109_ (gx#syntax-e _tl60706106_)))
                              (let ((_hd60726113_ (##car _e60716109_))
                                    (_tl60736116_ (##cdr _e60716109_)))
                                (if (gx#stx-pair? _tl60736116_)
                                    (let ((_e60746119_
                                           (gx#syntax-e _tl60736116_)))
                                      (let ((_hd60756123_ (##car _e60746119_))
                                            (_tl60766126_ (##cdr _e60746119_)))
                                        (if (gx#stx-null? _tl60766126_)
                                            ((lambda (_L6129_
                                                      _L6131_
                                                      _L6132_
                                                      _L6133_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let-values)
                                                       (cons (cons (cons (cons _L6133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (cons (gx#datum->syntax '#f 'if)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'eq?)
                                                         (cons _L6132_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'absent-value)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _L6131_
                                                         (cons _L6132_ '()))))
                                       '()))
                           '())
                     (cons _L6129_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd60756123_
                                             _hd60726113_
                                             _hd60696103_
                                             _hd60666093_)
                                            (_g60596082_ _g60606086_))))
                                    (_g60596082_ _g60606086_))))
                            (_g60596082_ _g60606086_))))
                    (_g60596082_ _g60606086_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g60596082_
                                                     _g60606086_)))))
                                        (_g60586162_
                                         (list _var6042_
                                               _kwval6048_
                                               _default6045_
                                               (_make-body5548_
                                                _rest-kwargs6051_
                                                _rest-kwvals6054_)))))
                                    (cons 'begin _body5546_))))
                             (_make-main5550_
                              (lambda ()
                                (let* ((_g58435851_
                                        (lambda (_g58445847_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g58445847_)))
                                       (_g58426027_
                                        (lambda (_g58445855_)
                                          ((lambda (_L5858_)
                                             (let ()
                                               (let* ((_g58705887_
                                                       (lambda (_g58715883_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g58715883_)))
                                                      (_g58696023_
                                                       (lambda (_g58715891_)
                                                         (if (gx#stx-pair/null?
                                                              _g58715891_)
                                                             (let ((_g41250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g58715891_ '0)))
                       (begin
                         (let ((_g41251_
                                (if (##values? _g41250_)
                                    (##vector-length _g41250_)
                                    1)))
                           (if (not (##fx= _g41251_ 2))
                               (error "Context expects 2 values" _g41251_)))
                         (let ((_target58735894_ (##vector-ref _g41250_ 0))
                               (_tl58755897_ (##vector-ref _g41250_ 1)))
                           (if (gx#stx-null? _tl58755897_)
                               (letrec ((_loop58765900_
                                         (lambda (_hd58745904_ _kwval58805907_)
                                           (if (gx#stx-pair? _hd58745904_)
                                               (let ((_e58775910_
                                                      (gx#syntax-e
                                                       _hd58745904_)))
                                                 (let ((_lp-hd58785914_
                                                        (##car _e58775910_))
                                                       (_lp-tl58795917_
                                                        (##cdr _e58775910_)))
                                                   (_loop58765900_
                                                    _lp-tl58795917_
                                                    (cons _lp-hd58785914_
                                                          _kwval58805907_))))
                                               (let ((_kwval58815920_
                                                      (reverse _kwval58805907_)))
                                                 ((lambda (_L5924_)
                                                    (let ()
                                                      (let* ((_g59415949_
                                                              (lambda (_g59425945_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g59425945_)))
                     (_g59406019_
                      (lambda (_g59425953_)
                        ((lambda (_L5956_)
                           (let ()
                             (let* ((_g59695977_
                                     (lambda (_g59705973_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g59705973_)))
                                    (_g59686007_
                                     (lambda (_g59705981_)
                                       ((lambda (_L5984_)
                                          (let ()
                                            (let ()
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _L5858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr (lambda (_g59986001_ _g59996004_)
                                    (cons _g59986001_ _g59996004_))
                                  _L5956_
                                  _L5924_)))
                   (cons _L5984_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _stx4926_)))))
                                        _g59705981_))))
                               (_g59686007_
                                (_make-body5548_
                                 _kwargs5544_
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g60106013_ _g60116016_)
                                            (cons _g60106013_ _g60116016_))
                                          '()
                                          _L5924_)))))))
                         _g59425953_))))
                (_g59406019_ _args5545_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _kwval58815920_))))))
                                 (_loop58765900_ _target58735894_ '()))
                               (_g58705887_ _g58715891_)))))
                     (_g58705887_ _g58715891_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g58696023_
                                                  (gx#gentemps
                                                   (map cadr _kwargs5544_))))))
                                           _g58445855_))))
                                  (_g58426027_
                                   (let ((_$e6031_ _key5542_))
                                     (if _$e6031_ _$e6031_ '_))))))
                             (_make-dispatch5551_
                              (lambda (_main5651_)
                                (let* ((_g56545662_
                                        (lambda (_g56555658_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g56555658_)))
                                       (_g56535833_
                                        (lambda (_g56555666_)
                                          ((lambda (_L5669_)
                                             (let ()
                                               (let* ((_g56815698_
                                                       (lambda (_g56825694_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g56825694_)))
                                                      (_g56805794_
                                                       (lambda (_g56825702_)
                                                         (if (gx#stx-pair/null?
                                                              _g56825702_)
                                                             (let ((_g41252_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g56825702_ '0)))
                       (begin
                         (let ((_g41253_
                                (if (##values? _g41252_)
                                    (##vector-length _g41252_)
                                    1)))
                           (if (not (##fx= _g41253_ 2))
                               (error "Context expects 2 values" _g41253_)))
                         (let ((_target56845705_ (##vector-ref _g41252_ 0))
                               (_tl56865708_ (##vector-ref _g41252_ 1)))
                           (if (gx#stx-null? _tl56865708_)
                               (letrec ((_loop56875711_
                                         (lambda (_hd56855715_
                                                  _get-kw56915718_)
                                           (if (gx#stx-pair? _hd56855715_)
                                               (let ((_e56885721_
                                                      (gx#syntax-e
                                                       _hd56855715_)))
                                                 (let ((_lp-hd56895725_
                                                        (##car _e56885721_))
                                                       (_lp-tl56905728_
                                                        (##cdr _e56885721_)))
                                                   (_loop56875711_
                                                    _lp-tl56905728_
                                                    (cons _lp-hd56895725_
                                                          _get-kw56915718_))))
                                               (let ((_get-kw56925731_
                                                      (reverse _get-kw56915718_)))
                                                 ((lambda (_L5735_)
                                                    (let ()
                                                      (let* ((_g57525760_
                                                              (lambda (_g57535756_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g57535756_)))
                     (_g57515790_
                      (lambda (_g57535764_)
                        ((lambda (_L5767_)
                           (let ()
                             (let ()
                               (gx#stx-wrap-source
                                (cons (gx#datum->syntax '#f 'lambda)
                                      (cons (cons _L5669_
                                                  (gx#datum->syntax '#f 'args))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'apply)
                                                        (cons _L5767_
                                                              (cons _L5669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (begin
                              '#!void
                              (foldr (lambda (_g57815784_ _g57825787_)
                                       (cons _g57815784_ _g57825787_))
                                     (cons (gx#datum->syntax '#f 'args) '())
                                     _L5735_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                (gx#stx-source _stx4926_)))))
                         _g57535764_))))
                (_g57515790_ _main5651_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _get-kw56925731_))))))
                                 (_loop56875711_ _target56845705_ '()))
                               (_g56815698_ _g56825702_)))))
                     (_g56815698_ _g56825702_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g56805794_
                                                  (map (lambda (_kwarg5798_)
                                                         (let* ((_g58015809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g58025805_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g58025805_)))
                        (_g58005829_
                         (lambda (_g58025813_)
                           ((lambda (_L5816_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'hash-ref)
                                      (cons _L5669_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _L5816_ '()))
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'absent-value)
                                                        '()))))))
                            _g58025813_))))
                   (_g58005829_ (car _kwarg5798_))))
               _kwargs5544_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g56555666_))))
                                  (_g56535833_
                                   (let ((_$e5837_ _key5542_))
                                     (if _$e5837_
                                         _$e5837_
                                         (gx#genident 'keys))))))))
                      (let* ((_g55535561_
                              (lambda (_g55545557_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g55545557_)))
                             (_g55525647_
                              (lambda (_g55545565_)
                                ((lambda (_L5568_)
                                   (let ()
                                     (let* ((_g55815589_
                                             (lambda (_g55825585_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g55825585_)))
                                            (_g55805643_
                                             (lambda (_g55825593_)
                                               ((lambda (_L5596_)
                                                  (let ()
                                                    (let* ((_g56095617_
                                                            (lambda (_g56105613_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g56105613_)))
                                                           (_g56085639_
                                                            (lambda (_g56105621_)
                                                              ((lambda (_L5624_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ()
                             (cons (gx#datum->syntax '#f 'let-values)
                                   (cons (cons (cons (cons _L5568_ '())
                                                     (cons _L5624_ '()))
                                               '())
                                         (cons _L5596_ '()))))))
                       _g56105621_))))
              (_g56085639_ (_make-main5550_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g55825593_))))
                                       (_g55805643_
                                        (_make-dispatch5551_ _L5568_)))))
                                 _g55545565_))))
                        (_g55525647_ (gx#genident 'kw-lambda-main))))))
                 (_generate-kw-dispatch4942_
                  (lambda (_primary5455_ _kwargs5457_ _strict?5458_)
                    (let* ((_g54605479_
                            (lambda (_g54615475_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g54615475_)))
                           (_g54595538_
                            (lambda (_g54615483_)
                              (if (gx#stx-pair? _g54615483_)
                                  (let ((_e54655486_
                                         (gx#syntax-e _g54615483_)))
                                    (let ((_hd54665490_ (##car _e54655486_))
                                          (_tl54675493_ (##cdr _e54655486_)))
                                      (if (gx#stx-pair? _tl54675493_)
                                          (let ((_e54685496_
                                                 (gx#syntax-e _tl54675493_)))
                                            (let ((_hd54695500_
                                                   (##car _e54685496_))
                                                  (_tl54705503_
                                                   (##cdr _e54685496_)))
                                              (if (gx#stx-pair? _tl54705503_)
                                                  (let ((_e54715506_
                                                         (gx#syntax-e
                                                          _tl54705503_)))
                                                    (let ((_hd54725510_
                                                           (##car _e54715506_))
                                                          (_tl54735513_
                                                           (##cdr _e54715506_)))
                                                      (if (gx#stx-null?
                                                           _tl54735513_)
                                                          ((lambda (_L5516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5518_
                            _L5519_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'lambda%)
                             (cons _L5516_
                                   (cons (cons (gx#datum->syntax '#f 'apply)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'keyword-dispatch)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L5519_ '()))
                   (cons _L5518_ (cons _L5516_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                   _hd54725510_
                   _hd54695500_
                   _hd54665490_)
                  (_g54605479_ _g54615483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g54605479_ _g54615483_))))
                                          (_g54605479_ _g54615483_))))
                                  (_g54605479_ _g54615483_)))))
                      (_g54595538_
                       (list (if _strict?5458_
                                 (_generate-kw-table4943_
                                  (map car _kwargs5457_))
                                 '#f)
                             _primary5455_
                             (gx#genident 'args))))))
                 (_generate-kw-table4943_
                  (lambda (_kws5429_)
                    (let _rehash5432_ ((_pht5435_
                                        (make-vector (length _kws5429_) '#f)))
                      (let _lp5438_ ((_rest5441_ _kws5429_))
                        (if (pair? _rest5441_)
                            (let* ((_key5444_ (car _rest5441_))
                                   (_rest5447_ (cdr _rest5441_))
                                   (_pos5450_
                                    (fxmodulo
                                     (keyword-hash _key5444_)
                                     (vector-length _pht5435_))))
                              (if (vector-ref _pht5435_ _pos5450_)
                                  (if (fx< (vector-length _pht5435_) '8192)
                                      (_rehash5432_
                                       (make-vector
                                        (quotient
                                         (fx* '3 (vector-length _pht5435_))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _kws5429_))
                                  (begin
                                    (vector-set! _pht5435_ _pos5450_ _key5444_)
                                    (_lp5438_ _rest5447_))))
                            _pht5435_))))))
          (let* ((___stx3694936950_ _stx4926_)
                 (_g49474978_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx3694936950_))))
            (let ((___kont3695236953_
                   (lambda (_L5410_ _L5412_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _L5412_ _L5410_))))
                  (___kont3695436955_
                   (lambda (_L5182_ _L5184_)
                     (let ((_g41254_ (_opt-lambda-split4932_ _L5184_)))
                       (begin
                         (let ((_g41255_
                                (if (##values? _g41254_)
                                    (##vector-length _g41254_)
                                    1)))
                           (if (not (##fx= _g41255_ 3))
                               (error "Context expects 3 values" _g41255_)))
                         (let ((_pre5197_ (##vector-ref _g41254_ 0))
                               (_opt5199_ (##vector-ref _g41254_ 1))
                               (_tail5200_ (##vector-ref _g41254_ 2)))
                           (let* ((_g52025210_
                                   (lambda (_g52035206_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g52035206_)))
                                  (_g52015379_
                                   (lambda (_g52035214_)
                                     ((lambda (_L5217_)
                                        (let ()
                                          (let* ((_g52305238_
                                                  (lambda (_g52315234_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g52315234_)))
                                                 (_g52295375_
                                                  (lambda (_g52315242_)
                                                    ((lambda (_L5245_)
                                                       (let ()
                                                         (let* ((_g52585275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g52595271_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g52595271_)))
                        (_g52575371_
                         (lambda (_g52595279_)
                           (if (gx#stx-pair/null? _g52595279_)
                               (let ((_g41256_
                                      (gx#syntax-split-splice _g52595279_ '0)))
                                 (begin
                                   (let ((_g41257_
                                          (if (##values? _g41256_)
                                              (##vector-length _g41256_)
                                              1)))
                                     (if (not (##fx= _g41257_ 2))
                                         (error "Context expects 2 values"
                                                _g41257_)))
                                   (let ((_target52615282_
                                          (##vector-ref _g41256_ 0))
                                         (_tl52635285_
                                          (##vector-ref _g41256_ 1)))
                                     (if (gx#stx-null? _tl52635285_)
                                         (letrec ((_loop52645288_
                                                   (lambda (_hd52625292_
                                                            _clause52685295_)
                                                     (if (gx#stx-pair?
                                                          _hd52625292_)
                                                         (let ((_e52655298_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd52625292_)))
                   (let ((_lp-hd52665302_ (##car _e52655298_))
                         (_lp-tl52675305_ (##cdr _e52655298_)))
                     (_loop52645288_
                      _lp-tl52675305_
                      (cons _lp-hd52665302_ _clause52685295_))))
                 (let ((_clause52695308_ (reverse _clause52685295_)))
                   ((lambda (_L5312_)
                      (let ()
                        (let* ((_g53295337_
                                (lambda (_g53305333_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g53305333_)))
                               (_g53285359_
                                (lambda (_g53305341_)
                                  ((lambda (_L5344_)
                                     (let ()
                                       (let ()
                                         (cons (gx#datum->syntax
                                                '#f
                                                'let-values)
                                               (cons (cons (cons (cons _L5217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _L5245_ '()))
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L5344_ '()))))))
                                   _g53305341_))))
                          (_g53285359_
                           (gx#stx-wrap-source
                            (cons (gx#datum->syntax '#f 'case-lambda)
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g53625365_ _g53635368_)
                                             (cons _g53625365_ _g53635368_))
                                           '()
                                           _L5312_)))
                            (gx#stx-source _stx4926_))))))
                    _clause52695308_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop52645288_
                                            _target52615282_
                                            '()))
                                         (_g52585275_ _g52595279_)))))
                               (_g52585275_ _g52595279_)))))
                   (_g52575371_
                    (_generate-opt-dispatch4938_
                     _L5217_
                     _pre5197_
                     _opt5199_
                     _tail5200_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g52315242_))))
                                            (_g52295375_
                                             (gx#stx-wrap-source
                                              (_generate-opt-primary4937_
                                               _pre5197_
                                               _opt5199_
                                               _tail5200_
                                               _L5182_)
                                              (gx#stx-source _stx4926_))))))
                                      _g52035214_))))
                             (_g52015379_ (gx#genident 'opt-lambda))))))))
                  (___kont3695636957_
                   (lambda (_L5005_ _L5007_)
                     (let* ((_g50235030_
                             (lambda (_g50245026_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g50245026_)))
                            (_g50225151_
                             (lambda (_g50245034_)
                               ((lambda ()
                                  (let ()
                                    (let ((_g41258_
                                           (_kw-lambda-split4934_ _L5007_)))
                                      (begin
                                        (let ((_g41259_
                                               (if (##values? _g41258_)
                                                   (##vector-length _g41258_)
                                                   1)))
                                          (if (not (##fx= _g41259_ 3))
                                              (error "Context expects 3 values"
                                                     _g41259_)))
                                        (let ((_key5043_
                                               (##vector-ref _g41258_ 0))
                                              (_kwargs5045_
                                               (##vector-ref _g41258_ 1))
                                              (_args5046_
                                               (##vector-ref _g41258_ 2)))
                                          (let* ((_g50485056_
                                                  (lambda (_g50495052_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g50495052_)))
                                                 (_g50475147_
                                                  (lambda (_g50495060_)
                                                    ((lambda (_L5063_)
                                                       (let ()
                                                         (let* ((_g50815089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g50825085_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g50825085_)))
                        (_g50805143_
                         (lambda (_g50825093_)
                           ((lambda (_L5096_)
                              (let ()
                                (let* ((_g51095117_
                                        (lambda (_g51105113_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g51105113_)))
                                       (_g51085139_
                                        (lambda (_g51105121_)
                                          ((lambda (_L5124_)
                                             (let ()
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let-values)
                                                       (cons (cons (cons (cons _L5063_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons _L5096_ '()))
                           '())
                     (cons _L5124_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g51105121_))))
                                  (_g51085139_
                                   (gx#stx-wrap-source
                                    (_generate-kw-dispatch4942_
                                     _L5063_
                                     _kwargs5045_
                                     (not _key5043_))
                                    (gx#stx-source _stx4926_))))))
                            _g50825093_))))
                   (_g50805143_
                    (gx#stx-wrap-source
                     (_generate-kw-primary4941_
                      _key5043_
                      _kwargs5045_
                      _args5046_
                      _L5005_)
                     (gx#stx-source _stx4926_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g50495060_))))
                                            (_g50475147_
                                             (gx#genident
                                              'kw-lambda))))))))))))
                       (_g50225151_
                        (_check-duplicate-bindings4936_ _L5007_))))))
              (let* ((___match3699436995_
                      (lambda (_e49674985_
                               _hd49684989_
                               _tl49694992_
                               _e49704995_
                               _hd49714999_
                               _tl49725002_)
                        (let ((_L5005_ _tl49725002_) (_L5007_ _hd49714999_))
                          (if (_kw-lambda?4933_ _L5007_)
                              (___kont3695636957_ _L5005_ _L5007_)
                              (_g49474978_)))))
                     (___match3698236983_
                      (lambda (_e49595162_
                               _hd49605166_
                               _tl49615169_
                               _e49625172_
                               _hd49635176_
                               _tl49645179_)
                        (let ((_L5182_ _tl49645179_) (_L5184_ _hd49635176_))
                          (if (_opt-lambda?4931_ _L5184_)
                              (___kont3695436955_ _L5182_ _L5184_)
                              (___match3699436995_
                               _e49595162_
                               _hd49605166_
                               _tl49615169_
                               _e49625172_
                               _hd49635176_
                               _tl49645179_)))))
                     (___match3697036971_
                      (lambda (_e49515390_
                               _hd49525394_
                               _tl49535397_
                               _e49545400_
                               _hd49555404_
                               _tl49565407_)
                        (let ((_L5410_ _tl49565407_) (_L5412_ _hd49555404_))
                          (if (_simple-lambda?4929_ _L5412_)
                              (___kont3695236953_ _L5410_ _L5412_)
                              (___match3698236983_
                               _e49515390_
                               _hd49525394_
                               _tl49535397_
                               _e49545400_
                               _hd49555404_
                               _tl49565407_))))))
                (if (gx#stx-pair? ___stx3694936950_)
                    (let ((_e49515390_ (gx#syntax-e ___stx3694936950_)))
                      (let ((_tl49535397_ (##cdr _e49515390_))
                            (_hd49525394_ (##car _e49515390_)))
                        (if (gx#stx-pair? _tl49535397_)
                            (let ((_e49545400_ (gx#syntax-e _tl49535397_)))
                              (let ((_tl49565407_ (##cdr _e49545400_))
                                    (_hd49555404_ (##car _e49545400_)))
                                (___match3697036971_
                                 _e49515390_
                                 _hd49525394_
                                 _tl49535397_
                                 _e49545400_
                                 _hd49555404_
                                 _tl49565407_)))
                            (_g49474978_))))
                    (_g49474978_))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#def|
      (lambda (_$stx8342_)
        (let* ((___stx3699736998_ _$stx8342_)
               (_g83478386_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3699736998_))))
          (let ((___kont3700037001_
                 (lambda (_L8508_ _L8510_ _L8511_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _L8511_ '())
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons _L8510_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g85308533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g85318536_)
                    (cons _g85308533_ _g85318536_))
                  '()
                  _L8508_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont3700437005_
                 (lambda (_L8423_ _L8425_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _L8425_ '()) (cons _L8423_ '()))))))
            (let* ((___match3705237053_
                    (lambda (_e83728393_
                             _hd83738397_
                             _tl83748400_
                             _e83758403_
                             _hd83768407_
                             _tl83778410_
                             _e83788413_
                             _hd83798417_
                             _tl83808420_)
                      (let ((_L8423_ _hd83798417_) (_L8425_ _hd83768407_))
                        (if (gx#identifier? _L8425_)
                            (___kont3700437005_ _L8423_ _L8425_)
                            (_g83478386_)))))
                   (___match3704437045_
                    (lambda (_e83728393_
                             _hd83738397_
                             _tl83748400_
                             _e83758403_
                             _hd83768407_
                             _tl83778410_)
                      (if (gx#stx-pair? _tl83778410_)
                          (let ((_e83788413_ (gx#syntax-e _tl83778410_)))
                            (let ((_tl83808420_ (##cdr _e83788413_))
                                  (_hd83798417_ (##car _e83788413_)))
                              (if (gx#stx-null? _tl83808420_)
                                  (___match3705237053_
                                   _e83728393_
                                   _hd83738397_
                                   _tl83748400_
                                   _e83758403_
                                   _hd83768407_
                                   _tl83778410_
                                   _e83788413_
                                   _hd83798417_
                                   _tl83808420_)
                                  (_g83478386_))))
                          (_g83478386_))))
                   (___match3703237033_
                    (lambda (_e83528448_
                             _hd83538452_
                             _tl83548455_
                             _e83558458_
                             _hd83568462_
                             _tl83578465_
                             _e83588468_
                             _hd83598472_
                             _tl83608475_
                             ___splice3700237003_
                             _target83618478_
                             _tl83638481_)
                      (letrec ((_loop83648484_
                                (lambda (_hd83628488_ _body83688491_)
                                  (if (gx#stx-pair? _hd83628488_)
                                      (let ((_e83658494_
                                             (gx#syntax-e _hd83628488_)))
                                        (let ((_lp-tl83678501_
                                               (##cdr _e83658494_))
                                              (_lp-hd83668498_
                                               (##car _e83658494_)))
                                          (_loop83648484_
                                           _lp-tl83678501_
                                           (cons _lp-hd83668498_
                                                 _body83688491_))))
                                      (let ((_body83698504_
                                             (reverse _body83688491_)))
                                        (let ((_L8508_ _body83698504_)
                                              (_L8510_ _tl83608475_)
                                              (_L8511_ _hd83598472_))
                                          (if (gx#identifier? _L8511_)
                                              (___kont3700037001_
                                               _L8508_
                                               _L8510_
                                               _L8511_)
                                              (___match3704437045_
                                               _e83528448_
                                               _hd83538452_
                                               _tl83548455_
                                               _e83558458_
                                               _hd83568462_
                                               _tl83578465_))))))))
                        (_loop83648484_ _target83618478_ '())))))
              (if (gx#stx-pair? ___stx3699736998_)
                  (let ((_e83528448_ (gx#syntax-e ___stx3699736998_)))
                    (let ((_tl83548455_ (##cdr _e83528448_))
                          (_hd83538452_ (##car _e83528448_)))
                      (if (gx#stx-pair? _tl83548455_)
                          (let ((_e83558458_ (gx#syntax-e _tl83548455_)))
                            (let ((_tl83578465_ (##cdr _e83558458_))
                                  (_hd83568462_ (##car _e83558458_)))
                              (if (gx#stx-pair? _hd83568462_)
                                  (let ((_e83588468_
                                         (gx#syntax-e _hd83568462_)))
                                    (let ((_tl83608475_ (##cdr _e83588468_))
                                          (_hd83598472_ (##car _e83588468_)))
                                      (if (gx#stx-pair/null? _tl83578465_)
                                          (let ((___splice3700237003_
                                                 (gx#syntax-split-splice
                                                  _tl83578465_
                                                  '0)))
                                            (let ((_tl83638481_
                                                   (##vector-ref
                                                    ___splice3700237003_
                                                    '1))
                                                  (_target83618478_
                                                   (##vector-ref
                                                    ___splice3700237003_
                                                    '0)))
                                              (if (gx#stx-null? _tl83638481_)
                                                  (___match3703237033_
                                                   _e83528448_
                                                   _hd83538452_
                                                   _tl83548455_
                                                   _e83558458_
                                                   _hd83568462_
                                                   _tl83578465_
                                                   _e83588468_
                                                   _hd83598472_
                                                   _tl83608475_
                                                   ___splice3700237003_
                                                   _target83618478_
                                                   _tl83638481_)
                                                  (if (gx#stx-pair?
                                                       _tl83578465_)
                                                      (let ((_e83788413_
                                                             (gx#syntax-e
                                                              _tl83578465_)))
                                                        (let ((_tl83808420_
                                                               (##cdr _e83788413_))
                                                              (_hd83798417_
                                                               (##car _e83788413_)))
                                                          (if (gx#stx-null?
                                                               _tl83808420_)
                                                              (___match3705237053_
                                                               _e83528448_
                                                               _hd83538452_
                                                               _tl83548455_
                                                               _e83558458_
                                                               _hd83568462_
                                                               _tl83578465_
                                                               _e83788413_
                                                               _hd83798417_
                                                               _tl83808420_)
                                                              (_g83478386_))))
                                                      (_g83478386_)))))
                                          (if (gx#stx-pair? _tl83578465_)
                                              (let ((_e83788413_
                                                     (gx#syntax-e
                                                      _tl83578465_)))
                                                (let ((_tl83808420_
                                                       (##cdr _e83788413_))
                                                      (_hd83798417_
                                                       (##car _e83788413_)))
                                                  (if (gx#stx-null?
                                                       _tl83808420_)
                                                      (___match3705237053_
                                                       _e83528448_
                                                       _hd83538452_
                                                       _tl83548455_
                                                       _e83558458_
                                                       _hd83568462_
                                                       _tl83578465_
                                                       _e83788413_
                                                       _hd83798417_
                                                       _tl83808420_)
                                                      (_g83478386_))))
                                              (_g83478386_)))))
                                  (if (gx#stx-pair? _tl83578465_)
                                      (let ((_e83788413_
                                             (gx#syntax-e _tl83578465_)))
                                        (let ((_tl83808420_
                                               (##cdr _e83788413_))
                                              (_hd83798417_
                                               (##car _e83788413_)))
                                          (if (gx#stx-null? _tl83808420_)
                                              (___match3705237053_
                                               _e83528448_
                                               _hd83538452_
                                               _tl83548455_
                                               _e83558458_
                                               _hd83568462_
                                               _tl83578465_
                                               _e83788413_
                                               _hd83798417_
                                               _tl83808420_)
                                              (_g83478386_))))
                                      (_g83478386_)))))
                          (_g83478386_))))
                  (_g83478386_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#def*|
      (lambda (_$stx8544_)
        (let* ((_g85488572_
                (lambda (_g85498568_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g85498568_)))
               (_g85478657_
                (lambda (_g85498576_)
                  (if (gx#stx-pair? _g85498576_)
                      (let ((_e85528579_ (gx#syntax-e _g85498576_)))
                        (let ((_hd85538583_ (##car _e85528579_))
                              (_tl85548586_ (##cdr _e85528579_)))
                          (if (gx#stx-pair? _tl85548586_)
                              (let ((_e85558589_ (gx#syntax-e _tl85548586_)))
                                (let ((_hd85568593_ (##car _e85558589_))
                                      (_tl85578596_ (##cdr _e85558589_)))
                                  (if (gx#stx-pair/null? _tl85578596_)
                                      (let ((_g41260_
                                             (gx#syntax-split-splice
                                              _tl85578596_
                                              '0)))
                                        (begin
                                          (let ((_g41261_
                                                 (if (##values? _g41260_)
                                                     (##vector-length _g41260_)
                                                     1)))
                                            (if (not (##fx= _g41261_ 2))
                                                (error "Context expects 2 values"
                                                       _g41261_)))
                                          (let ((_target85588599_
                                                 (##vector-ref _g41260_ 0))
                                                (_tl85608602_
                                                 (##vector-ref _g41260_ 1)))
                                            (if (gx#stx-null? _tl85608602_)
                                                (letrec ((_loop85618605_
                                                          (lambda (_hd85598609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clauses85658612_)
                    (if (gx#stx-pair? _hd85598609_)
                        (let ((_e85628615_ (gx#syntax-e _hd85598609_)))
                          (let ((_lp-hd85638619_ (##car _e85628615_))
                                (_lp-tl85648622_ (##cdr _e85628615_)))
                            (_loop85618605_
                             _lp-tl85648622_
                             (cons _lp-hd85638619_ _clauses85658612_))))
                        (let ((_clauses85668625_ (reverse _clauses85658612_)))
                          ((lambda (_L8629_ _L8631_)
                             (if (gx#identifier? _L8631_)
                                 (cons (gx#datum->syntax '#f 'define-values)
                                       (cons (cons _L8631_ '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'case-lambda)
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g86488651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g86498654_)
                            (cons _g86488651_ _g86498654_))
                          '()
                          _L8629_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 (_g85488572_ _g85498576_)))
                           _clauses85668625_
                           _hd85568593_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop85618605_
                                                   _target85588599_
                                                   '()))
                                                (_g85488572_ _g85498576_)))))
                                      (_g85488572_ _g85498576_))))
                              (_g85488572_ _g85498576_))))
                      (_g85488572_ _g85498576_)))))
          (_g85478657_ _$stx8544_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#defvalues|
      (lambda (_$stx8662_)
        (let* ((_g86668684_
                (lambda (_g86678680_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g86678680_)))
               (_g86658739_
                (lambda (_g86678688_)
                  (if (gx#stx-pair? _g86678688_)
                      (let ((_e86708691_ (gx#syntax-e _g86678688_)))
                        (let ((_hd86718695_ (##car _e86708691_))
                              (_tl86728698_ (##cdr _e86708691_)))
                          (if (gx#stx-pair? _tl86728698_)
                              (let ((_e86738701_ (gx#syntax-e _tl86728698_)))
                                (let ((_hd86748705_ (##car _e86738701_))
                                      (_tl86758708_ (##cdr _e86738701_)))
                                  (if (gx#stx-pair? _tl86758708_)
                                      (let ((_e86768711_
                                             (gx#syntax-e _tl86758708_)))
                                        (let ((_hd86778715_
                                               (##car _e86768711_))
                                              (_tl86788718_
                                               (##cdr _e86768711_)))
                                          (if (gx#stx-null? _tl86788718_)
                                              ((lambda (_L8721_ _L8723_)
                                                 (if (gx#identifier-list?
                                                      _L8723_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons _L8723_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L8721_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g86668684_
                                                      _g86678688_)))
                                               _hd86778715_
                                               _hd86748705_)
                                              (_g86668684_ _g86678688_))))
                                      (_g86668684_ _g86678688_))))
                              (_g86668684_ _g86678688_))))
                      (_g86668684_ _g86678688_)))))
          (_g86658739_ _$stx8662_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#case|
      (lambda (_$stx8743_)
        (let* ((_g87478771_
                (lambda (_g87488767_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g87488767_)))
               (_g87468856_
                (lambda (_g87488775_)
                  (if (gx#stx-pair? _g87488775_)
                      (let ((_e87518778_ (gx#syntax-e _g87488775_)))
                        (let ((_hd87528782_ (##car _e87518778_))
                              (_tl87538785_ (##cdr _e87518778_)))
                          (if (gx#stx-pair? _tl87538785_)
                              (let ((_e87548788_ (gx#syntax-e _tl87538785_)))
                                (let ((_hd87558792_ (##car _e87548788_))
                                      (_tl87568795_ (##cdr _e87548788_)))
                                  (if (gx#stx-pair/null? _tl87568795_)
                                      (let ((_g41262_
                                             (gx#syntax-split-splice
                                              _tl87568795_
                                              '0)))
                                        (begin
                                          (let ((_g41263_
                                                 (if (##values? _g41262_)
                                                     (##vector-length _g41262_)
                                                     1)))
                                            (if (not (##fx= _g41263_ 2))
                                                (error "Context expects 2 values"
                                                       _g41263_)))
                                          (let ((_target87578798_
                                                 (##vector-ref _g41262_ 0))
                                                (_tl87598801_
                                                 (##vector-ref _g41262_ 1)))
                                            (if (gx#stx-null? _tl87598801_)
                                                (letrec ((_loop87608804_
                                                          (lambda (_hd87588808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause87648811_)
                    (if (gx#stx-pair? _hd87588808_)
                        (let ((_e87618814_ (gx#syntax-e _hd87588808_)))
                          (let ((_lp-hd87628818_ (##car _e87618814_))
                                (_lp-tl87638821_ (##cdr _e87618814_)))
                            (_loop87608804_
                             _lp-tl87638821_
                             (cons _lp-hd87628818_ _clause87648811_))))
                        (let ((_clause87658824_ (reverse _clause87648811_)))
                          ((lambda (_L8828_ _L8830_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (gx#datum->syntax '#f '$e)
                                               (cons _L8830_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '~case)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$e)
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g88478850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g88488853_)
                              (cons _g88478850_ _g88488853_))
                            '()
                            _L8828_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _clause87658824_
                           _hd87558792_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop87608804_
                                                   _target87578798_
                                                   '()))
                                                (_g87478771_ _g87488775_)))))
                                      (_g87478771_ _g87488775_))))
                              (_g87478771_ _g87488775_))))
                      (_g87478771_ _g87488775_)))))
          (_g87468856_ _$stx8743_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case|
      (lambda (_stx8861_)
        (letrec ((_parse-clauses8864_
                  (lambda (_e11327_ _clauses11329_)
                    (let _lp11331_ ((_rest11334_ _clauses11329_)
                                    (_datums11336_ '())
                                    (_dispatch11337_ '())
                                    (_default11338_ '#f))
                      (let* ((___stx3715137152_ _rest11334_)
                             (_g1134111353_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3715137152_))))
                        (let ((___kont3715437155_
                               (lambda (_L11385_ _L11387_)
                                 (let* ((___stx3705537056_ _L11387_)
                                        (_g1140511478_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3705537056_))))
                                   (let ((___kont3705837059_
                                          (lambda (_L11843_)
                                            (if (gx#stx-null? _L11385_)
                                                (let* ((_g1185811866_
                                                        (lambda (_g1185911862_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1185911862_)))
                                                       (_g1185711885_
                                                        (lambda (_g1185911870_)
                                                          ((lambda (_L11873_)
                                                             (let ()
                                                               (_lp11331_
                                                                '()
                                                                _datums11336_
                                                                _dispatch11337_
                                                                (cons _L11843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L11873_ '())))))
                   _g1185911870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1185711885_ _e11327_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _stx8861_
                                                 _L11387_))))
                                         (___kont3706037061_
                                          (lambda (_L11783_)
                                            (if (gx#stx-null? _L11385_)
                                                (_lp11331_
                                                 '()
                                                 _datums11336_
                                                 _dispatch11337_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g1179711800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1179811803_)
                          (cons _g1179711800_ _g1179811803_))
                        '()
                        _L11783_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _stx8861_
                                                 _L11387_))))
                                         (___kont3706437065_
                                          (lambda (_L11668_ _L11670_)
                                            (if (null? (begin
                                                         '#!void
                                                         (foldr (lambda (_g1168811691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1168911694_)
                          (cons _g1168811691_ _g1168911694_))
                        '()
                        _L11670_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp11331_
                                                 _L11385_
                                                 _datums11336_
                                                 _dispatch11337_
                                                 _default11338_)
                                                (let* ((_g1169711705_
                                                        (lambda (_g1169811701_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1169811701_)))
                                                       (_g1169611732_
                                                        (lambda (_g1169811709_)
                                                          ((lambda (_L11712_)
                                                             (let ()
                                                               (_lp11331_
                                                                _L11385_
                                                                (cons (map gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g1172311726_
                                                     _g1172411729_)
                                              (cons _g1172311726_
                                                    _g1172411729_))
                                            '()
                                            _L11670_)))
                              _datums11336_)
                        (cons (cons _L11668_ (cons _L11712_ '()))
                              _dispatch11337_)
                        _default11338_)))
                   _g1169811709_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1169611732_ _e11327_)))))
                                         (___kont3706837069_
                                          (lambda (_L11555_ _L11557_)
                                            (if (null? (begin
                                                         '#!void
                                                         (foldr (lambda (_g1157611579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1157711582_)
                          (cons _g1157611579_ _g1157711582_))
                        '()
                        _L11557_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp11331_
                                                 _L11385_
                                                 _datums11336_
                                                 _dispatch11337_
                                                 _default11338_)
                                                (_lp11331_
                                                 _L11385_
                                                 (cons (map gx#stx-e
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g1158411587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1158511590_)
                               (cons _g1158411587_ _g1158511590_))
                             '()
                             _L11557_)))
               _datums11336_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1159211595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1159311598_)
                                (cons _g1159211595_ _g1159311598_))
                              '()
                              _L11555_)))
               _dispatch11337_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _default11338_)))))
                                     (let* ((___match3714837149_
                                             (lambda (_e1145211485_
                                                      _hd1145311489_
                                                      _tl1145411492_
                                                      ___splice3707037071_
                                                      _target1145511495_
                                                      _tl1145711498_)
                                               (letrec ((_loop1145811501_
                                                         (lambda (_hd1145611505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1146211508_)
                   (if (gx#stx-pair? _hd1145611505_)
                       (let ((_e1145911511_ (gx#syntax-e _hd1145611505_)))
                         (let ((_lp-tl1146111518_ (##cdr _e1145911511_))
                               (_lp-hd1146011515_ (##car _e1145911511_)))
                           (_loop1145811501_
                            _lp-tl1146111518_
                            (cons _lp-hd1146011515_ _datum1146211508_))))
                       (let ((_datum1146311521_ (reverse _datum1146211508_)))
                         (if (gx#stx-pair/null? _tl1145411492_)
                             (let ((___splice3707237073_
                                    (gx#syntax-split-splice
                                     _tl1145411492_
                                     '0)))
                               (let ((_tl1146611528_
                                      (##vector-ref ___splice3707237073_ '1))
                                     (_target1146411525_
                                      (##vector-ref ___splice3707237073_ '0)))
                                 (if (gx#stx-null? _tl1146611528_)
                                     (letrec ((_loop1146711531_
                                               (lambda (_hd1146511535_
                                                        _body1147111538_)
                                                 (if (gx#stx-pair?
                                                      _hd1146511535_)
                                                     (let ((_e1146811541_
                                                            (gx#syntax-e
                                                             _hd1146511535_)))
                                                       (let ((_lp-tl1147011548_
                                                              (##cdr _e1146811541_))
                                                             (_lp-hd1146911545_
                                                              (##car _e1146811541_)))
                                                         (_loop1146711531_
                                                          _lp-tl1147011548_
                                                          (cons _lp-hd1146911545_
                                                                _body1147111538_))))
                                                     (let ((_body1147211551_
                                                            (reverse _body1147111538_)))
                                                       (___kont3706837069_
                                                        _body1147211551_
                                                        _datum1146311521_))))))
                                       (_loop1146711531_
                                        _target1146411525_
                                        '()))
                                     (_g1140511478_))))
                             (_g1140511478_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1145811501_
                                                  _target1145511495_
                                                  '()))))
                                            (___match3713437135_
                                             (lambda (_e1143211608_
                                                      _hd1143311612_
                                                      _tl1143411615_
                                                      ___splice3706637067_
                                                      _target1143511618_
                                                      _tl1143711621_)
                                               (letrec ((_loop1143811624_
                                                         (lambda (_hd1143611628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1144211631_)
                   (if (gx#stx-pair? _hd1143611628_)
                       (let ((_e1143911634_ (gx#syntax-e _hd1143611628_)))
                         (let ((_lp-tl1144111641_ (##cdr _e1143911634_))
                               (_lp-hd1144011638_ (##car _e1143911634_)))
                           (_loop1143811624_
                            _lp-tl1144111641_
                            (cons _lp-hd1144011638_ _datum1144211631_))))
                       (let ((_datum1144311644_ (reverse _datum1144211631_)))
                         (if (gx#stx-pair? _tl1143411615_)
                             (let ((_e1144411648_
                                    (gx#syntax-e _tl1143411615_)))
                               (let ((_tl1144611655_ (##cdr _e1144411648_))
                                     (_hd1144511652_ (##car _e1144411648_)))
                                 (if (gx#identifier? _hd1144511652_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core$<sugar>$<sugar:2>[1]#_g41264_|
                                          _hd1144511652_)
                                         (if (gx#stx-pair? _tl1144611655_)
                                             (let ((_e1144711658_
                                                    (gx#syntax-e
                                                     _tl1144611655_)))
                                               (let ((_tl1144911665_
                                                      (##cdr _e1144711658_))
                                                     (_hd1144811662_
                                                      (##car _e1144711658_)))
                                                 (if (gx#stx-null?
                                                      _tl1144911665_)
                                                     (___kont3706437065_
                                                      _hd1144811662_
                                                      _datum1144311644_)
                                                     (___match3714837149_
                                                      _e1143211608_
                                                      _hd1143311612_
                                                      _tl1143411615_
                                                      ___splice3706637067_
                                                      _target1143511618_
                                                      _tl1143711621_))))
                                             (___match3714837149_
                                              _e1143211608_
                                              _hd1143311612_
                                              _tl1143411615_
                                              ___splice3706637067_
                                              _target1143511618_
                                              _tl1143711621_))
                                         (___match3714837149_
                                          _e1143211608_
                                          _hd1143311612_
                                          _tl1143411615_
                                          ___splice3706637067_
                                          _target1143511618_
                                          _tl1143711621_))
                                     (___match3714837149_
                                      _e1143211608_
                                      _hd1143311612_
                                      _tl1143411615_
                                      ___splice3706637067_
                                      _target1143511618_
                                      _tl1143711621_))))
                             (___match3714837149_
                              _e1143211608_
                              _hd1143311612_
                              _tl1143411615_
                              ___splice3706637067_
                              _target1143511618_
                              _tl1143711621_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1143811624_
                                                  _target1143511618_
                                                  '()))))
                                            (___match3712037121_
                                             (lambda (_e1141811743_
                                                      _hd1141911747_
                                                      _tl1142011750_
                                                      ___splice3706237063_
                                                      _target1142111753_
                                                      _tl1142311756_)
                                               (letrec ((_loop1142411759_
                                                         (lambda (_hd1142211763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body1142811766_)
                   (if (gx#stx-pair? _hd1142211763_)
                       (let ((_e1142511769_ (gx#syntax-e _hd1142211763_)))
                         (let ((_lp-tl1142711776_ (##cdr _e1142511769_))
                               (_lp-hd1142611773_ (##car _e1142511769_)))
                           (_loop1142411759_
                            _lp-tl1142711776_
                            (cons _lp-hd1142611773_ _body1142811766_))))
                       (let ((_body1142911779_ (reverse _body1142811766_)))
                         (___kont3706037061_ _body1142911779_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1142411759_
                                                  _target1142111753_
                                                  '())))))
                                       (if (gx#stx-pair? ___stx3705537056_)
                                           (let ((_e1140811813_
                                                  (gx#syntax-e
                                                   ___stx3705537056_)))
                                             (let ((_tl1141011820_
                                                    (##cdr _e1140811813_))
                                                   (_hd1140911817_
                                                    (##car _e1140811813_)))
                                               (if (gx#identifier?
                                                    _hd1140911817_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<sugar>$<sugar:2>[1]#_g41265_|
                                                        _hd1140911817_)
                                                       (if (gx#stx-pair?
                                                            _tl1141011820_)
                                                           (let ((_e1141111823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1141011820_)))
                     (let ((_tl1141311830_ (##cdr _e1141111823_))
                           (_hd1141211827_ (##car _e1141111823_)))
                       (if (gx#identifier? _hd1141211827_)
                           (if (gx#free-identifier=?
                                |gerbil/core$<sugar>$<sugar:2>[1]#_g41266_|
                                _hd1141211827_)
                               (if (gx#stx-pair? _tl1141311830_)
                                   (let ((_e1141411833_
                                          (gx#syntax-e _tl1141311830_)))
                                     (let ((_tl1141611840_
                                            (##cdr _e1141411833_))
                                           (_hd1141511837_
                                            (##car _e1141411833_)))
                                       (if (gx#stx-null? _tl1141611840_)
                                           (___kont3705837059_ _hd1141511837_)
                                           (if (gx#stx-pair/null?
                                                _tl1141011820_)
                                               (let ((___splice3706237063_
                                                      (gx#syntax-split-splice
                                                       _tl1141011820_
                                                       '0)))
                                                 (let ((_tl1142311756_
                                                        (##vector-ref
                                                         ___splice3706237063_
                                                         '1))
                                                       (_target1142111753_
                                                        (##vector-ref
                                                         ___splice3706237063_
                                                         '0)))
                                                   (if (gx#stx-null?
                                                        _tl1142311756_)
                                                       (___match3712037121_
                                                        _e1140811813_
                                                        _hd1140911817_
                                                        _tl1141011820_
                                                        ___splice3706237063_
                                                        _target1142111753_
                                                        _tl1142311756_)
                                                       (if (gx#stx-pair/null?
                                                            _hd1140911817_)
                                                           (let ((___splice3706637067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd1140911817_ '0)))
                     (let ((_tl1143711621_
                            (##vector-ref ___splice3706637067_ '1))
                           (_target1143511618_
                            (##vector-ref ___splice3706637067_ '0)))
                       (if (gx#stx-null? _tl1143711621_)
                           (___match3713437135_
                            _e1140811813_
                            _hd1140911817_
                            _tl1141011820_
                            ___splice3706637067_
                            _target1143511618_
                            _tl1143711621_)
                           (_g1140511478_))))
                   (_g1140511478_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _hd1140911817_)
                                                   (let ((___splice3706637067_
                                                          (gx#syntax-split-splice
                                                           _hd1140911817_
                                                           '0)))
                                                     (let ((_tl1143711621_
                                                            (##vector-ref
                                                             ___splice3706637067_
                                                             '1))
                                                           (_target1143511618_
                                                            (##vector-ref
                                                             ___splice3706637067_
                                                             '0)))
                                                       (if (gx#stx-null?
                                                            _tl1143711621_)
                                                           (___match3713437135_
                                                            _e1140811813_
                                                            _hd1140911817_
                                                            _tl1141011820_
                                                            ___splice3706637067_
                                                            _target1143511618_
                                                            _tl1143711621_)
                                                           (_g1140511478_))))
                                                   (_g1140511478_))))))
                                   (if (gx#stx-pair/null? _tl1141011820_)
                                       (let ((___splice3706237063_
                                              (gx#syntax-split-splice
                                               _tl1141011820_
                                               '0)))
                                         (let ((_tl1142311756_
                                                (##vector-ref
                                                 ___splice3706237063_
                                                 '1))
                                               (_target1142111753_
                                                (##vector-ref
                                                 ___splice3706237063_
                                                 '0)))
                                           (if (gx#stx-null? _tl1142311756_)
                                               (___match3712037121_
                                                _e1140811813_
                                                _hd1140911817_
                                                _tl1141011820_
                                                ___splice3706237063_
                                                _target1142111753_
                                                _tl1142311756_)
                                               (if (gx#stx-pair/null?
                                                    _hd1140911817_)
                                                   (let ((___splice3706637067_
                                                          (gx#syntax-split-splice
                                                           _hd1140911817_
                                                           '0)))
                                                     (let ((_tl1143711621_
                                                            (##vector-ref
                                                             ___splice3706637067_
                                                             '1))
                                                           (_target1143511618_
                                                            (##vector-ref
                                                             ___splice3706637067_
                                                             '0)))
                                                       (if (gx#stx-null?
                                                            _tl1143711621_)
                                                           (___match3713437135_
                                                            _e1140811813_
                                                            _hd1140911817_
                                                            _tl1141011820_
                                                            ___splice3706637067_
                                                            _target1143511618_
                                                            _tl1143711621_)
                                                           (_g1140511478_))))
                                                   (_g1140511478_)))))
                                       (if (gx#stx-pair/null? _hd1140911817_)
                                           (let ((___splice3706637067_
                                                  (gx#syntax-split-splice
                                                   _hd1140911817_
                                                   '0)))
                                             (let ((_tl1143711621_
                                                    (##vector-ref
                                                     ___splice3706637067_
                                                     '1))
                                                   (_target1143511618_
                                                    (##vector-ref
                                                     ___splice3706637067_
                                                     '0)))
                                               (if (gx#stx-null?
                                                    _tl1143711621_)
                                                   (___match3713437135_
                                                    _e1140811813_
                                                    _hd1140911817_
                                                    _tl1141011820_
                                                    ___splice3706637067_
                                                    _target1143511618_
                                                    _tl1143711621_)
                                                   (_g1140511478_))))
                                           (_g1140511478_))))
                               (if (gx#stx-pair/null? _tl1141011820_)
                                   (let ((___splice3706237063_
                                          (gx#syntax-split-splice
                                           _tl1141011820_
                                           '0)))
                                     (let ((_tl1142311756_
                                            (##vector-ref
                                             ___splice3706237063_
                                             '1))
                                           (_target1142111753_
                                            (##vector-ref
                                             ___splice3706237063_
                                             '0)))
                                       (if (gx#stx-null? _tl1142311756_)
                                           (___match3712037121_
                                            _e1140811813_
                                            _hd1140911817_
                                            _tl1141011820_
                                            ___splice3706237063_
                                            _target1142111753_
                                            _tl1142311756_)
                                           (if (gx#stx-pair/null?
                                                _hd1140911817_)
                                               (let ((___splice3706637067_
                                                      (gx#syntax-split-splice
                                                       _hd1140911817_
                                                       '0)))
                                                 (let ((_tl1143711621_
                                                        (##vector-ref
                                                         ___splice3706637067_
                                                         '1))
                                                       (_target1143511618_
                                                        (##vector-ref
                                                         ___splice3706637067_
                                                         '0)))
                                                   (if (gx#stx-null?
                                                        _tl1143711621_)
                                                       (___match3713437135_
                                                        _e1140811813_
                                                        _hd1140911817_
                                                        _tl1141011820_
                                                        ___splice3706637067_
                                                        _target1143511618_
                                                        _tl1143711621_)
                                                       (_g1140511478_))))
                                               (_g1140511478_)))))
                                   (if (gx#stx-pair/null? _hd1140911817_)
                                       (let ((___splice3706637067_
                                              (gx#syntax-split-splice
                                               _hd1140911817_
                                               '0)))
                                         (let ((_tl1143711621_
                                                (##vector-ref
                                                 ___splice3706637067_
                                                 '1))
                                               (_target1143511618_
                                                (##vector-ref
                                                 ___splice3706637067_
                                                 '0)))
                                           (if (gx#stx-null? _tl1143711621_)
                                               (___match3713437135_
                                                _e1140811813_
                                                _hd1140911817_
                                                _tl1141011820_
                                                ___splice3706637067_
                                                _target1143511618_
                                                _tl1143711621_)
                                               (_g1140511478_))))
                                       (_g1140511478_))))
                           (if (gx#stx-pair/null? _tl1141011820_)
                               (let ((___splice3706237063_
                                      (gx#syntax-split-splice
                                       _tl1141011820_
                                       '0)))
                                 (let ((_tl1142311756_
                                        (##vector-ref ___splice3706237063_ '1))
                                       (_target1142111753_
                                        (##vector-ref
                                         ___splice3706237063_
                                         '0)))
                                   (if (gx#stx-null? _tl1142311756_)
                                       (___match3712037121_
                                        _e1140811813_
                                        _hd1140911817_
                                        _tl1141011820_
                                        ___splice3706237063_
                                        _target1142111753_
                                        _tl1142311756_)
                                       (if (gx#stx-pair/null? _hd1140911817_)
                                           (let ((___splice3706637067_
                                                  (gx#syntax-split-splice
                                                   _hd1140911817_
                                                   '0)))
                                             (let ((_tl1143711621_
                                                    (##vector-ref
                                                     ___splice3706637067_
                                                     '1))
                                                   (_target1143511618_
                                                    (##vector-ref
                                                     ___splice3706637067_
                                                     '0)))
                                               (if (gx#stx-null?
                                                    _tl1143711621_)
                                                   (___match3713437135_
                                                    _e1140811813_
                                                    _hd1140911817_
                                                    _tl1141011820_
                                                    ___splice3706637067_
                                                    _target1143511618_
                                                    _tl1143711621_)
                                                   (_g1140511478_))))
                                           (_g1140511478_)))))
                               (if (gx#stx-pair/null? _hd1140911817_)
                                   (let ((___splice3706637067_
                                          (gx#syntax-split-splice
                                           _hd1140911817_
                                           '0)))
                                     (let ((_tl1143711621_
                                            (##vector-ref
                                             ___splice3706637067_
                                             '1))
                                           (_target1143511618_
                                            (##vector-ref
                                             ___splice3706637067_
                                             '0)))
                                       (if (gx#stx-null? _tl1143711621_)
                                           (___match3713437135_
                                            _e1140811813_
                                            _hd1140911817_
                                            _tl1141011820_
                                            ___splice3706637067_
                                            _target1143511618_
                                            _tl1143711621_)
                                           (_g1140511478_))))
                                   (_g1140511478_))))))
                   (if (gx#stx-pair/null? _tl1141011820_)
                       (let ((___splice3706237063_
                              (gx#syntax-split-splice _tl1141011820_ '0)))
                         (let ((_tl1142311756_
                                (##vector-ref ___splice3706237063_ '1))
                               (_target1142111753_
                                (##vector-ref ___splice3706237063_ '0)))
                           (if (gx#stx-null? _tl1142311756_)
                               (___match3712037121_
                                _e1140811813_
                                _hd1140911817_
                                _tl1141011820_
                                ___splice3706237063_
                                _target1142111753_
                                _tl1142311756_)
                               (if (gx#stx-pair/null? _hd1140911817_)
                                   (let ((___splice3706637067_
                                          (gx#syntax-split-splice
                                           _hd1140911817_
                                           '0)))
                                     (let ((_tl1143711621_
                                            (##vector-ref
                                             ___splice3706637067_
                                             '1))
                                           (_target1143511618_
                                            (##vector-ref
                                             ___splice3706637067_
                                             '0)))
                                       (if (gx#stx-null? _tl1143711621_)
                                           (___match3713437135_
                                            _e1140811813_
                                            _hd1140911817_
                                            _tl1141011820_
                                            ___splice3706637067_
                                            _target1143511618_
                                            _tl1143711621_)
                                           (_g1140511478_))))
                                   (_g1140511478_)))))
                       (if (gx#stx-pair/null? _hd1140911817_)
                           (let ((___splice3706637067_
                                  (gx#syntax-split-splice _hd1140911817_ '0)))
                             (let ((_tl1143711621_
                                    (##vector-ref ___splice3706637067_ '1))
                                   (_target1143511618_
                                    (##vector-ref ___splice3706637067_ '0)))
                               (if (gx#stx-null? _tl1143711621_)
                                   (___match3713437135_
                                    _e1140811813_
                                    _hd1140911817_
                                    _tl1141011820_
                                    ___splice3706637067_
                                    _target1143511618_
                                    _tl1143711621_)
                                   (_g1140511478_))))
                           (_g1140511478_))))
               (if (gx#stx-pair/null? _hd1140911817_)
                   (let ((___splice3706637067_
                          (gx#syntax-split-splice _hd1140911817_ '0)))
                     (let ((_tl1143711621_
                            (##vector-ref ___splice3706637067_ '1))
                           (_target1143511618_
                            (##vector-ref ___splice3706637067_ '0)))
                       (if (gx#stx-null? _tl1143711621_)
                           (___match3713437135_
                            _e1140811813_
                            _hd1140911817_
                            _tl1141011820_
                            ___splice3706637067_
                            _target1143511618_
                            _tl1143711621_)
                           (_g1140511478_))))
                   (_g1140511478_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _hd1140911817_)
                                                       (let ((___splice3706637067_
                                                              (gx#syntax-split-splice
                                                               _hd1140911817_
                                                               '0)))
                                                         (let ((_tl1143711621_
                                                                (##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ___splice3706637067_
                         '1))
                       (_target1143511618_
                        (##vector-ref ___splice3706637067_ '0)))
                   (if (gx#stx-null? _tl1143711621_)
                       (___match3713437135_
                        _e1140811813_
                        _hd1140911817_
                        _tl1141011820_
                        ___splice3706637067_
                        _target1143511618_
                        _tl1143711621_)
                       (_g1140511478_))))
               (_g1140511478_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1140511478_)))))))
                              (___kont3715637157_
                               (lambda ()
                                 (begin
                                   (_check-duplicate-datums8866_ _datums11336_)
                                   (values (reverse _datums11336_)
                                           (reverse _dispatch11337_)
                                           (let ((_$e11364_ _default11338_))
                                             (if _$e11364_
                                                 _$e11364_
                                                 '#!void)))))))
                          (let ((_g1134011368_
                                 (lambda ()
                                   (if (gx#stx-null? ___stx3715137152_)
                                       (___kont3715637157_)
                                       (_g1134111353_)))))
                            (if (gx#stx-pair? ___stx3715137152_)
                                (let ((_e1134511375_
                                       (gx#syntax-e ___stx3715137152_)))
                                  (let ((_tl1134711382_ (##cdr _e1134511375_))
                                        (_hd1134611379_ (##car _e1134511375_)))
                                    (___kont3715437155_
                                     _tl1134711382_
                                     _hd1134611379_)))
                                (_g1134011368_))))))))
                 (_check-duplicate-datums8866_
                  (lambda (_datums11315_)
                    (let ((_ht11318_ (make-hash-table)))
                      (for-each
                       (lambda (_lst11321_)
                         (for-each
                          (lambda (_datum11324_)
                            (if (hash-get _ht11318_ _datum11324_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _stx8861_
                                 _datum11324_)
                                (hash-put! _ht11318_ _datum11324_ '#t)))
                          _lst11321_))
                       _datums11315_))))
                 (_count-datums8867_
                  (lambda (_datums11308_)
                    (foldl (lambda (_lst11311_ _r11313_)
                             (+ (length _lst11311_) _r11313_))
                           '0
                           _datums11308_)))
                 (_symbolic-datums?8868_
                  (lambda (_datums11302_)
                    (andmap (lambda (_lst11305_) (andmap symbol? _lst11305_))
                            _datums11302_)))
                 (_char-datums?8869_
                  (lambda (_datums11296_)
                    (andmap (lambda (_lst11299_) (andmap char? _lst11299_))
                            _datums11296_)))
                 (_fixnum-datums?8870_
                  (lambda (_datums11290_)
                    (andmap (lambda (_lst11293_) (andmap fixnum? _lst11293_))
                            _datums11290_)))
                 (_eq-datums?8871_
                  (lambda (_datums11273_)
                    (andmap (lambda (_lst11276_)
                              (andmap (lambda (_x11279_)
                                        (let ((_$e11282_ (symbol? _x11279_)))
                                          (if _$e11282_
                                              _$e11282_
                                              (let ((_$e11286_
                                                     (keyword? _x11279_)))
                                                (if _$e11286_
                                                    _$e11286_
                                                    (immediate? _x11279_))))))
                                      _lst11276_))
                            _datums11273_)))
                 (_generate-simple-case8872_
                  (lambda (_e11037_
                           _datums11039_
                           _dispatch11040_
                           _default11041_)
                    (let* ((_g1104311051_
                            (lambda (_g1104411047_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1104411047_)))
                           (_g1104211269_
                            (lambda (_g1104411055_)
                              ((lambda (_L11058_)
                                 (let ()
                                   (let _recur11070_ ((_datums11073_
                                                       _datums11039_)
                                                      (_dispatch11075_
                                                       _dispatch11040_))
                                     (let* ((___stx3716937170_ _datums11073_)
                                            (_g1107811099_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                ___stx3716937170_))))
                                       (let ((___kont3717237173_
                                              (lambda (_L11157_ _L11159_)
                                                (let* ((_g1117911191_
                                                        (lambda (_g1118011187_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1118011187_)))
                                                       (_g1117811261_
                                                        (lambda (_g1118011195_)
                                                          (if (gx#stx-pair?
                                                               _g1118011195_)
                                                              (let ((_e1118311198_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g1118011195_)))
                        (let ((_hd1118411202_ (##car _e1118311198_))
                              (_tl1118511205_ (##cdr _e1118311198_)))
                          ((lambda (_L11208_ _L11210_)
                             (let* ((_g1122211230_
                                     (lambda (_g1122311226_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1122311226_)))
                                    (_g1122111257_
                                     (lambda (_g1122311234_)
                                       ((lambda (_L11237_)
                                          (let ()
                                            (cons (gx#datum->syntax '#f 'if)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'or)
                                                              (begin
                                                                '#!void
                                                                (foldr (lambda (_g1124811251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1124911254_)
                                 (cons (cons (gx#datum->syntax '#f '~case-test)
                                             (cons _g1124811251_
                                                   (cons _L11058_ '())))
                                       _g1124911254_))
                               '()
                               _L11159_)))
                (cons _L11210_ (cons _L11237_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _g1122311234_))))
                               (_g1122111257_
                                (_recur11070_ _L11157_ _L11208_))))
                           _tl1118511205_
                           _hd1118411202_)))
                      (_g1117911191_ _g1118011195_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1117811261_
                                                   _dispatch11075_))))
                                             (___kont3717637177_
                                              (lambda () _default11041_)))
                                         (let ((___match3719237193_
                                                (lambda (_e1108211117_
                                                         _hd1108311121_
                                                         _tl1108411124_
                                                         ___splice3717437175_
                                                         _target1108511127_
                                                         _tl1108711130_)
                                                  (letrec ((_loop1108811133_
                                                            (lambda (_hd1108611137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _datum1109211140_)
                      (if (gx#stx-pair? _hd1108611137_)
                          (let ((_e1108911143_ (gx#syntax-e _hd1108611137_)))
                            (let ((_lp-tl1109111150_ (##cdr _e1108911143_))
                                  (_lp-hd1109011147_ (##car _e1108911143_)))
                              (_loop1108811133_
                               _lp-tl1109111150_
                               (cons _lp-hd1109011147_ _datum1109211140_))))
                          (let ((_datum1109311153_
                                 (reverse _datum1109211140_)))
                            (___kont3717237173_
                             _tl1108411124_
                             _datum1109311153_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1108811133_
                                                     _target1108511127_
                                                     '())))))
                                           (if (gx#stx-pair? ___stx3716937170_)
                                               (let ((_e1108211117_
                                                      (gx#syntax-e
                                                       ___stx3716937170_)))
                                                 (let ((_tl1108411124_
                                                        (##cdr _e1108211117_))
                                                       (_hd1108311121_
                                                        (##car _e1108211117_)))
                                                   (if (gx#stx-pair/null?
                                                        _hd1108311121_)
                                                       (let ((___splice3717437175_
                                                              (gx#syntax-split-splice
                                                               _hd1108311121_
                                                               '0)))
                                                         (let ((_tl1108711130_
                                                                (##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ___splice3717437175_
                         '1))
                       (_target1108511127_
                        (##vector-ref ___splice3717437175_ '0)))
                   (if (gx#stx-null? _tl1108711130_)
                       (___match3719237193_
                        _e1108211117_
                        _hd1108311121_
                        _tl1108411124_
                        ___splice3717437175_
                        _target1108511127_
                        _tl1108711130_)
                       (___kont3717637177_))))
               (___kont3717637177_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont3717637177_))))))))
                               _g1104411055_))))
                      (_g1104211269_ _e11037_))))
                 (_datum-dispatch-index8873_
                  (lambda (_datums10909_)
                    (let _lp10912_ ((_rest10915_ _datums10909_)
                                    (_ix10917_ '0)
                                    (_r10918_ '()))
                      (let* ((___stx3719537196_ _rest10915_)
                             (_g1092110942_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3719537196_))))
                        (let ((___kont3719837199_
                               (lambda (_L11000_ _L11002_)
                                 (_lp10912_
                                  _L11000_
                                  (fx1+ _ix10917_)
                                  (foldl (lambda (_x11021_ _r11023_)
                                           (cons (cons _x11021_ _ix10917_)
                                                 _r11023_))
                                         _r10918_
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1102411027_
                                                           _g1102511030_)
                                                    (cons _g1102411027_
                                                          _g1102511030_))
                                                  '()
                                                  _L11002_))))))
                              (___kont3720237203_ (lambda () _r10918_)))
                          (let ((___match3721837219_
                                 (lambda (_e1092510960_
                                          _hd1092610964_
                                          _tl1092710967_
                                          ___splice3720037201_
                                          _target1092810970_
                                          _tl1093010973_)
                                   (letrec ((_loop1093110976_
                                             (lambda (_hd1092910980_
                                                      _datum1093510983_)
                                               (if (gx#stx-pair?
                                                    _hd1092910980_)
                                                   (let ((_e1093210986_
                                                          (gx#syntax-e
                                                           _hd1092910980_)))
                                                     (let ((_lp-tl1093410993_
                                                            (##cdr _e1093210986_))
                                                           (_lp-hd1093310990_
                                                            (##car _e1093210986_)))
                                                       (_loop1093110976_
                                                        _lp-tl1093410993_
                                                        (cons _lp-hd1093310990_
                                                              _datum1093510983_))))
                                                   (let ((_datum1093610996_
                                                          (reverse _datum1093510983_)))
                                                     (___kont3719837199_
                                                      _tl1092710967_
                                                      _datum1093610996_))))))
                                     (_loop1093110976_
                                      _target1092810970_
                                      '())))))
                            (if (gx#stx-pair? ___stx3719537196_)
                                (let ((_e1092510960_
                                       (gx#syntax-e ___stx3719537196_)))
                                  (let ((_tl1092710967_ (##cdr _e1092510960_))
                                        (_hd1092610964_ (##car _e1092510960_)))
                                    (if (gx#stx-pair/null? _hd1092610964_)
                                        (let ((___splice3720037201_
                                               (gx#syntax-split-splice
                                                _hd1092610964_
                                                '0)))
                                          (let ((_tl1093010973_
                                                 (##vector-ref
                                                  ___splice3720037201_
                                                  '1))
                                                (_target1092810970_
                                                 (##vector-ref
                                                  ___splice3720037201_
                                                  '0)))
                                            (if (gx#stx-null? _tl1093010973_)
                                                (___match3721837219_
                                                 _e1092510960_
                                                 _hd1092610964_
                                                 _tl1092710967_
                                                 ___splice3720037201_
                                                 _target1092810970_
                                                 _tl1093010973_)
                                                (___kont3720237203_))))
                                        (___kont3720237203_))))
                                (___kont3720237203_))))))))
                 (_duplicate-indexes?8874_
                  (lambda (_xs10890_)
                    (let ((_ht10893_ (make-hash-table-eq)))
                      (let _lp10896_ ((_rest10899_ _xs10890_))
                        (if (pair? _rest10899_)
                            (let* ((_ix10902_ (car _rest10899_))
                                   (_$e10905_ (hash-get _ht10893_ _ix10902_)))
                              (if _$e10905_
                                  _$e10905_
                                  (begin
                                    (hash-put! _ht10893_ _ix10902_ '#t)
                                    (_lp10896_ (cdr _rest10899_)))))
                            '#f)))))
                 (_generate-hash-dispatch-table8875_
                  (lambda (_indexes10859_ _hash-e10861_)
                    (let _lp10863_ ((_len10866_
                                     (* '2 (length _indexes10859_))))
                      (let* ((_hs10872_
                              (map (lambda (_x10869_)
                                     (_hash-e10861_ (car _x10869_)))
                                   _indexes10859_))
                             (_xs10878_
                              (map (lambda (_h10875_)
                                     (fxmodulo _h10875_ _len10866_))
                                   _hs10872_)))
                        (if (_duplicate-indexes?8874_ _xs10878_)
                            (if (< _len10866_ '131072)
                                (_lp10863_ (quotient (fx* _len10866_ '3) '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _stx8861_
                                 _indexes10859_))
                            (let ((_tab10883_ (make-vector _len10866_ '#f)))
                              (begin
                                (for-each
                                 (lambda (_entry10886_ _x10888_)
                                   (vector-set!
                                    _tab10883_
                                    _x10888_
                                    _entry10886_))
                                 _indexes10859_
                                 _xs10878_)
                                _tab10883_)))))))
                 (_generate-symbolic-dispatch8876_
                  (lambda (_e10462_
                           _datums10464_
                           _dispatch10465_
                           _default10466_)
                    (let* ((_indexes10468_
                            (_datum-dispatch-index8873_ _datums10464_))
                           (_tab10471_
                            (_generate-hash-dispatch-table8875_
                             _indexes10468_
                             symbol-hash)))
                      (if (= (length _dispatch10465_) '1)
                          (let* ((_tab10479_
                                  (vector-map
                                   (lambda (_x10476_)
                                     (if _x10476_ (car _x10476_) '#f))
                                   _tab10471_))
                                 (_g1048210520_
                                  (lambda (_g1048310516_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1048310516_)))
                                 (_g1048110651_
                                  (lambda (_g1048310524_)
                                    (if (gx#stx-pair? _g1048310524_)
                                        (let ((_e1049110527_
                                               (gx#syntax-e _g1048310524_)))
                                          (let ((_hd1049210531_
                                                 (##car _e1049110527_))
                                                (_tl1049310534_
                                                 (##cdr _e1049110527_)))
                                            (if (gx#stx-pair? _tl1049310534_)
                                                (let ((_e1049410537_
                                                       (gx#syntax-e
                                                        _tl1049310534_)))
                                                  (let ((_hd1049510541_
                                                         (##car _e1049410537_))
                                                        (_tl1049610544_
                                                         (##cdr _e1049410537_)))
                                                    (if (gx#stx-pair?
                                                         _tl1049610544_)
                                                        (let ((_e1049710547_
                                                               (gx#syntax-e
                                                                _tl1049610544_)))
                                                          (let ((_hd1049810551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1049710547_))
                        (_tl1049910554_ (##cdr _e1049710547_)))
                    (if (gx#stx-pair? _tl1049910554_)
                        (let ((_e1050010557_ (gx#syntax-e _tl1049910554_)))
                          (let ((_hd1050110561_ (##car _e1050010557_))
                                (_tl1050210564_ (##cdr _e1050010557_)))
                            (if (gx#stx-pair? _hd1050110561_)
                                (let ((_e1050310567_
                                       (gx#syntax-e _hd1050110561_)))
                                  (let ((_hd1050410571_ (##car _e1050310567_))
                                        (_tl1050510574_ (##cdr _e1050310567_)))
                                    (if (gx#stx-null? _tl1050510574_)
                                        (if (gx#stx-pair? _tl1050210564_)
                                            (let ((_e1050610577_
                                                   (gx#syntax-e
                                                    _tl1050210564_)))
                                              (let ((_hd1050710581_
                                                     (##car _e1050610577_))
                                                    (_tl1050810584_
                                                     (##cdr _e1050610577_)))
                                                (if (gx#stx-pair?
                                                     _tl1050810584_)
                                                    (let ((_e1050910587_
                                                           (gx#syntax-e
                                                            _tl1050810584_)))
                                                      (let ((_hd1051010591_
                                                             (##car _e1050910587_))
                                                            (_tl1051110594_
                                                             (##cdr _e1050910587_)))
                                                        (if (gx#stx-pair?
                                                             _tl1051110594_)
                                                            (let ((_e1051210597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl1051110594_)))
                      (let ((_hd1051310601_ (##car _e1051210597_))
                            (_tl1051410604_ (##cdr _e1051210597_)))
                        (if (gx#stx-null? _tl1051410604_)
                            ((lambda (_L10607_
                                      _L10609_
                                      _L10610_
                                      _L10611_
                                      _L10612_
                                      _L10613_
                                      _L10614_)
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L10613_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons '() (cons _L10610_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L10612_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L10609_ '()))
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'if)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'symbol?)
                             (cons _L10614_ '()))
                       (cons (cons (gx#datum->syntax '#f 'let*)
                                   (cons (cons (cons (gx#datum->syntax '#f 'h)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##symbol-hash)
                         (cons _L10614_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'ix)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##fxmodulo)
                               (cons (gx#datum->syntax '#f 'h)
                                     (cons _L10607_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'q)
                         (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                     (cons _L10612_
                                           (cons (gx#datum->syntax '#f 'ix)
                                                 '())))
                               '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons (gx#datum->syntax '#f 'if)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'eq?)
                         (cons (gx#datum->syntax '#f 'q) (cons _L10614_ '())))
                   (cons _L10611_ (cons (cons _L10613_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons (cons _L10613_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))
                             _hd1051310601_
                             _hd1051010591_
                             _hd1050710581_
                             _hd1050410571_
                             _hd1049810551_
                             _hd1049510541_
                             _hd1049210531_)
                            (_g1048210520_ _g1048310524_))))
                    (_g1048210520_ _g1048310524_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1048210520_
                                                     _g1048310524_))))
                                            (_g1048210520_ _g1048310524_))
                                        (_g1048210520_ _g1048310524_))))
                                (_g1048210520_ _g1048310524_))))
                        (_g1048210520_ _g1048310524_))))
                (_g1048210520_ _g1048310524_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1048210520_
                                                 _g1048310524_))))
                                        (_g1048210520_ _g1048310524_)))))
                            (_g1048110651_
                             (list _e10462_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch10465_
                                   _default10466_
                                   _tab10479_
                                   (vector-length _tab10479_))))
                          (let* ((_g1065510699_
                                  (lambda (_g1065610695_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1065610695_)))
                                 (_g1065410855_
                                  (lambda (_g1065610703_)
                                    (if (gx#stx-pair? _g1065610703_)
                                        (let ((_e1066410706_
                                               (gx#syntax-e _g1065610703_)))
                                          (let ((_hd1066510710_
                                                 (##car _e1066410706_))
                                                (_tl1066610713_
                                                 (##cdr _e1066410706_)))
                                            (if (gx#stx-pair? _tl1066610713_)
                                                (let ((_e1066710716_
                                                       (gx#syntax-e
                                                        _tl1066610713_)))
                                                  (let ((_hd1066810720_
                                                         (##car _e1066710716_))
                                                        (_tl1066910723_
                                                         (##cdr _e1066710716_)))
                                                    (if (gx#stx-pair?
                                                         _tl1066910723_)
                                                        (let ((_e1067010726_
                                                               (gx#syntax-e
                                                                _tl1066910723_)))
                                                          (let ((_hd1067110730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1067010726_))
                        (_tl1067210733_ (##cdr _e1067010726_)))
                    (if (gx#stx-pair? _tl1067210733_)
                        (let ((_e1067310736_ (gx#syntax-e _tl1067210733_)))
                          (let ((_hd1067410740_ (##car _e1067310736_))
                                (_tl1067510743_ (##cdr _e1067310736_)))
                            (if (gx#stx-pair/null? _hd1067410740_)
                                (let ((_g41267_
                                       (gx#syntax-split-splice
                                        _hd1067410740_
                                        '0)))
                                  (begin
                                    (let ((_g41268_
                                           (if (##values? _g41267_)
                                               (##vector-length _g41267_)
                                               1)))
                                      (if (not (##fx= _g41268_ 2))
                                          (error "Context expects 2 values"
                                                 _g41268_)))
                                    (let ((_target1067610746_
                                           (##vector-ref _g41267_ 0))
                                          (_tl1067810749_
                                           (##vector-ref _g41267_ 1)))
                                      (if (gx#stx-null? _tl1067810749_)
                                          (letrec ((_loop1067910752_
                                                    (lambda (_hd1067710756_
                                                             _dispatch1068310759_)
                                                      (if (gx#stx-pair?
                                                           _hd1067710756_)
                                                          (let ((_e1068010762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1067710756_)))
                    (let ((_lp-hd1068110766_ (##car _e1068010762_))
                          (_lp-tl1068210769_ (##cdr _e1068010762_)))
                      (_loop1067910752_
                       _lp-tl1068210769_
                       (cons _lp-hd1068110766_ _dispatch1068310759_))))
                  (let ((_dispatch1068410772_ (reverse _dispatch1068310759_)))
                    (if (gx#stx-pair? _tl1067510743_)
                        (let ((_e1068510776_ (gx#syntax-e _tl1067510743_)))
                          (let ((_hd1068610780_ (##car _e1068510776_))
                                (_tl1068710783_ (##cdr _e1068510776_)))
                            (if (gx#stx-pair? _tl1068710783_)
                                (let ((_e1068810786_
                                       (gx#syntax-e _tl1068710783_)))
                                  (let ((_hd1068910790_ (##car _e1068810786_))
                                        (_tl1069010793_ (##cdr _e1068810786_)))
                                    (if (gx#stx-pair? _tl1069010793_)
                                        (let ((_e1069110796_
                                               (gx#syntax-e _tl1069010793_)))
                                          (let ((_hd1069210800_
                                                 (##car _e1069110796_))
                                                (_tl1069310803_
                                                 (##cdr _e1069110796_)))
                                            (if (gx#stx-null? _tl1069310803_)
                                                ((lambda (_L10806_
                                                          _L10808_
                                                          _L10809_
                                                          _L10810_
                                                          _L10811_
                                                          _L10812_
                                                          _L10813_)
                                                   (let ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _L10812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons _L10809_ '())))
                                           '()))
                               (cons (cons _L10811_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L10808_ '()))
                                                 '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'symbol?)
                                                 (cons _L10813_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let*)
                                                       (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'h)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '##symbol-hash)
                                             (cons _L10813_ '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'ix)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##fxmodulo)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'h)
                                                         (cons _L10806_ '())))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'q)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L10811_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'ix)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (gx#datum->syntax '#f 'q)
                                       (cons (cons (gx#datum->syntax '#f 'if)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'eq?)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##car)
                                   (cons (gx#datum->syntax '#f 'q) '()))
                             (cons _L10813_ '())))
                 (cons (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'x)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##cdr)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'q)
                                                           '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '~case-dispatch)
                                               (cons (gx#datum->syntax '#f 'x)
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1084610849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1084710852_)
                        (cons _g1084610849_ _g1084710852_))
                      '()
                      _L10810_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _L10812_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L10812_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L10812_ '())
                                                       '()))))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1069210800_
                                                 _hd1068910790_
                                                 _hd1068610780_
                                                 _dispatch1068410772_
                                                 _hd1067110730_
                                                 _hd1066810720_
                                                 _hd1066510710_)
                                                (_g1065510699_
                                                 _g1065610703_))))
                                        (_g1065510699_ _g1065610703_))))
                                (_g1065510699_ _g1065610703_))))
                        (_g1065510699_ _g1065610703_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1067910752_
                                             _target1067610746_
                                             '()))
                                          (_g1065510699_ _g1065610703_)))))
                                (_g1065510699_ _g1065610703_))))
                        (_g1065510699_ _g1065610703_))))
                (_g1065510699_ _g1065610703_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1065510699_
                                                 _g1065610703_))))
                                        (_g1065510699_ _g1065610703_)))))
                            (_g1065410855_
                             (list _e10462_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch10465_
                                   _default10466_
                                   _tab10471_
                                   (vector-length _tab10471_))))))))
                 (_max-char8877_
                  (lambda (_datums10451_)
                    (foldl (lambda (_lst10454_ _r10456_)
                             (foldl (lambda (_char10458_ _r10460_)
                                      (max (char->integer _char10458_)
                                           _r10460_))
                                    _r10456_
                                    _lst10454_))
                           '0
                           _datums10451_)))
                 (_generate-char-dispatch-table8878_
                  (lambda (_indexes10430_)
                    (let* ((_ixs10436_
                            (map (lambda (_x10433_)
                                   (char->integer (car _x10433_)))
                                 _indexes10430_))
                           (_len10439_ (fx1+ (foldl max '0 _ixs10436_)))
                           (_vec10442_ (make-vector _len10439_ '#f)))
                      (begin
                        (for-each
                         (lambda (_entry10447_ _x10449_)
                           (vector-set!
                            _vec10442_
                            _x10449_
                            (cdr _entry10447_)))
                         _indexes10430_
                         _ixs10436_)
                        _vec10442_))))
                 (_simple-char-range?8879_
                  (lambda (_tab10406_)
                    (let ((_end10409_ (vector-length _tab10406_)))
                      (let _lp10412_ ((_i10415_ '0))
                        (let ((_ix10418_ (vector-ref _tab10406_ _i10415_)))
                          (if _ix10418_
                              (let _lp210421_ ((_i10424_ (fx1+ _i10415_)))
                                (if (fx< _i10424_ _end10409_)
                                    (let ((_ix*10427_
                                           (vector-ref _tab10406_ _i10424_)))
                                      (if (eq? _ix10418_ _ix*10427_)
                                          (_lp210421_ (fx1+ _i10424_))
                                          '#f))
                                    '#t))
                              (_lp10412_ (fx1+ _i10415_))))))))
                 (_char-range-start8880_
                  (lambda (_tab10397_)
                    (let _lp10400_ ((_i10403_ '0))
                      (if (vector-ref _tab10397_ _i10403_)
                          _i10403_
                          (_lp10400_ (fx1+ _i10403_))))))
                 (_generate-char-dispatch8881_
                  (lambda (_e10020_
                           _datums10022_
                           _dispatch10023_
                           _default10024_)
                    (if (< (_max-char8877_ _datums10022_) '128)
                        (let* ((_indexes10026_
                                (_datum-dispatch-index8873_ _datums10022_))
                               (_tab10029_
                                (_generate-char-dispatch-table8878_
                                 _indexes10026_)))
                          (if (_simple-char-range?8879_ _tab10029_)
                              (let ((_start10034_
                                     (_char-range-start8880_ _tab10029_))
                                    (_end10036_ (vector-length _tab10029_)))
                                (let* ((_g1003810072_
                                        (lambda (_g1003910068_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1003910068_)))
                                       (_g1003710189_
                                        (lambda (_g1003910076_)
                                          (if (gx#stx-pair? _g1003910076_)
                                              (let ((_e1004610079_
                                                     (gx#syntax-e
                                                      _g1003910076_)))
                                                (let ((_hd1004710083_
                                                       (##car _e1004610079_))
                                                      (_tl1004810086_
                                                       (##cdr _e1004610079_)))
                                                  (if (gx#stx-pair?
                                                       _tl1004810086_)
                                                      (let ((_e1004910089_
                                                             (gx#syntax-e
                                                              _tl1004810086_)))
                                                        (let ((_hd1005010093_
                                                               (##car _e1004910089_))
                                                              (_tl1005110096_
                                                               (##cdr _e1004910089_)))
                                                          (if (gx#stx-pair?
                                                               _tl1005110096_)
                                                              (let ((_e1005210099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1005110096_)))
                        (let ((_hd1005310103_ (##car _e1005210099_))
                              (_tl1005410106_ (##cdr _e1005210099_)))
                          (if (gx#stx-pair? _hd1005310103_)
                              (let ((_e1005510109_
                                     (gx#syntax-e _hd1005310103_)))
                                (let ((_hd1005610113_ (##car _e1005510109_))
                                      (_tl1005710116_ (##cdr _e1005510109_)))
                                  (if (gx#stx-null? _tl1005710116_)
                                      (if (gx#stx-pair? _tl1005410106_)
                                          (let ((_e1005810119_
                                                 (gx#syntax-e _tl1005410106_)))
                                            (let ((_hd1005910123_
                                                   (##car _e1005810119_))
                                                  (_tl1006010126_
                                                   (##cdr _e1005810119_)))
                                              (if (gx#stx-pair? _tl1006010126_)
                                                  (let ((_e1006110129_
                                                         (gx#syntax-e
                                                          _tl1006010126_)))
                                                    (let ((_hd1006210133_
                                                           (##car _e1006110129_))
                                                          (_tl1006310136_
                                                           (##cdr _e1006110129_)))
                                                      (if (gx#stx-pair?
                                                           _tl1006310136_)
                                                          (let ((_e1006410139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1006310136_)))
                    (let ((_hd1006510143_ (##car _e1006410139_))
                          (_tl1006610146_ (##cdr _e1006410139_)))
                      (if (gx#stx-null? _tl1006610146_)
                          ((lambda (_L10149_
                                    _L10151_
                                    _L10152_
                                    _L10153_
                                    _L10154_
                                    _L10155_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons _L10154_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L10152_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'char?)
                           (cons _L10155_ '()))
                     (cons (cons (gx#datum->syntax '#f 'let)
                                 (cons (cons (gx#datum->syntax '#f 'ix)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##char->integer)
                                                         (cons _L10155_ '()))
                                                   '()))
                                       (cons (cons (gx#datum->syntax '#f 'if)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'and)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##fx>=)
                                   (cons (gx#datum->syntax '#f 'ix)
                                         (cons _L10151_ '())))
                             (cons (cons (gx#datum->syntax '#f '##fx<)
                                         (cons (gx#datum->syntax '#f 'ix)
                                               (cons _L10149_ '())))
                                   '())))
                 (cons _L10153_ (cons (cons _L10154_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _L10154_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                           _hd1006510143_
                           _hd1006210133_
                           _hd1005910123_
                           _hd1005610113_
                           _hd1005010093_
                           _hd1004710083_)
                          (_g1003810072_ _g1003910076_))))
                  (_g1003810072_ _g1003910076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1003810072_
                                                   _g1003910076_))))
                                          (_g1003810072_ _g1003910076_))
                                      (_g1003810072_ _g1003910076_))))
                              (_g1003810072_ _g1003910076_))))
                      (_g1003810072_ _g1003910076_))))
              (_g1003810072_ _g1003910076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1003810072_ _g1003910076_)))))
                                  (_g1003710189_
                                   (list _e10020_
                                         (gx#genident 'default)
                                         _dispatch10023_
                                         _default10024_
                                         _start10034_
                                         _end10036_))))
                              (let* ((_g1019310237_
                                      (lambda (_g1019410233_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1019410233_)))
                                     (_g1019210393_
                                      (lambda (_g1019410241_)
                                        (if (gx#stx-pair? _g1019410241_)
                                            (let ((_e1020210244_
                                                   (gx#syntax-e
                                                    _g1019410241_)))
                                              (let ((_hd1020310248_
                                                     (##car _e1020210244_))
                                                    (_tl1020410251_
                                                     (##cdr _e1020210244_)))
                                                (if (gx#stx-pair?
                                                     _tl1020410251_)
                                                    (let ((_e1020510254_
                                                           (gx#syntax-e
                                                            _tl1020410251_)))
                                                      (let ((_hd1020610258_
                                                             (##car _e1020510254_))
                                                            (_tl1020710261_
                                                             (##cdr _e1020510254_)))
                                                        (if (gx#stx-pair?
                                                             _tl1020710261_)
                                                            (let ((_e1020810264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl1020710261_)))
                      (let ((_hd1020910268_ (##car _e1020810264_))
                            (_tl1021010271_ (##cdr _e1020810264_)))
                        (if (gx#stx-pair? _tl1021010271_)
                            (let ((_e1021110274_ (gx#syntax-e _tl1021010271_)))
                              (let ((_hd1021210278_ (##car _e1021110274_))
                                    (_tl1021310281_ (##cdr _e1021110274_)))
                                (if (gx#stx-pair/null? _hd1021210278_)
                                    (let ((_g41269_
                                           (gx#syntax-split-splice
                                            _hd1021210278_
                                            '0)))
                                      (begin
                                        (let ((_g41270_
                                               (if (##values? _g41269_)
                                                   (##vector-length _g41269_)
                                                   1)))
                                          (if (not (##fx= _g41270_ 2))
                                              (error "Context expects 2 values"
                                                     _g41270_)))
                                        (let ((_target1021410284_
                                               (##vector-ref _g41269_ 0))
                                              (_tl1021610287_
                                               (##vector-ref _g41269_ 1)))
                                          (if (gx#stx-null? _tl1021610287_)
                                              (letrec ((_loop1021710290_
                                                        (lambda (_hd1021510294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _dispatch1022110297_)
                  (if (gx#stx-pair? _hd1021510294_)
                      (let ((_e1021810300_ (gx#syntax-e _hd1021510294_)))
                        (let ((_lp-hd1021910304_ (##car _e1021810300_))
                              (_lp-tl1022010307_ (##cdr _e1021810300_)))
                          (_loop1021710290_
                           _lp-tl1022010307_
                           (cons _lp-hd1021910304_ _dispatch1022110297_))))
                      (let ((_dispatch1022210310_
                             (reverse _dispatch1022110297_)))
                        (if (gx#stx-pair? _tl1021310281_)
                            (let ((_e1022310314_ (gx#syntax-e _tl1021310281_)))
                              (let ((_hd1022410318_ (##car _e1022310314_))
                                    (_tl1022510321_ (##cdr _e1022310314_)))
                                (if (gx#stx-pair? _tl1022510321_)
                                    (let ((_e1022610324_
                                           (gx#syntax-e _tl1022510321_)))
                                      (let ((_hd1022710328_
                                             (##car _e1022610324_))
                                            (_tl1022810331_
                                             (##cdr _e1022610324_)))
                                        (if (gx#stx-pair? _tl1022810331_)
                                            (let ((_e1022910334_
                                                   (gx#syntax-e
                                                    _tl1022810331_)))
                                              (let ((_hd1023010338_
                                                     (##car _e1022910334_))
                                                    (_tl1023110341_
                                                     (##cdr _e1022910334_)))
                                                (if (gx#stx-null?
                                                     _tl1023110341_)
                                                    ((lambda (_L10344_
                                                              _L10346_
                                                              _L10347_
                                                              _L10348_
                                                              _L10349_
                                                              _L10350_
                                                              _L10351_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _L10350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L10347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons _L10349_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _L10346_ '()))
                                                     '()))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'char?)
                                                     (cons _L10351_ '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'ix)
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '##char->integer)
                                           (cons _L10351_ '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax '#f '##fx<)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'ix)
                                                       (cons _L10344_ '())))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'x)
                           (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                       (cons _L10349_
                                             (cons (gx#datum->syntax '#f 'ix)
                                                   '())))
                                 '()))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (gx#datum->syntax '#f 'x)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '~case-dispatch)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'x)
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g1038410387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1038510390_)
                            (cons _g1038410387_ _g1038510390_))
                          '()
                          _L10348_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L10350_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L10350_ '())
                                                       '()))))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _L10350_ '())
                                                           '()))))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1023010338_
                                                     _hd1022710328_
                                                     _hd1022410318_
                                                     _dispatch1022210310_
                                                     _hd1020910268_
                                                     _hd1020610258_
                                                     _hd1020310248_)
                                                    (_g1019310237_
                                                     _g1019410241_))))
                                            (_g1019310237_ _g1019410241_))))
                                    (_g1019310237_ _g1019410241_))))
                            (_g1019310237_ _g1019410241_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1021710290_
                                                 _target1021410284_
                                                 '()))
                                              (_g1019310237_ _g1019410241_)))))
                                    (_g1019310237_ _g1019410241_))))
                            (_g1019310237_ _g1019410241_))))
                    (_g1019310237_ _g1019410241_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1019310237_
                                                     _g1019410241_))))
                                            (_g1019310237_ _g1019410241_)))))
                                (_g1019210393_
                                 (list _e10020_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _dispatch10023_
                                       _default10024_
                                       _tab10029_
                                       (vector-length _tab10029_))))))
                        (_generate-char-dispatch/hash8882_
                         _e10020_
                         _datums10022_
                         _dispatch10023_
                         _default10024_))))
                 (_generate-char-dispatch/hash8882_
                  (lambda (_e9798_ _datums9800_ _dispatch9801_ _default9802_)
                    (let* ((_indexes9804_
                            (_datum-dispatch-index8873_ _datums9800_))
                           (_tab9807_
                            (_generate-hash-dispatch-table8875_
                             _indexes9804_
                             char->integer)))
                      (let* ((_g98129856_
                              (lambda (_g98139852_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g98139852_)))
                             (_g981110016_
                              (lambda (_g98139860_)
                                (if (gx#stx-pair? _g98139860_)
                                    (let ((_e98219863_
                                           (gx#syntax-e _g98139860_)))
                                      (let ((_hd98229867_ (##car _e98219863_))
                                            (_tl98239870_ (##cdr _e98219863_)))
                                        (if (gx#stx-pair? _tl98239870_)
                                            (let ((_e98249873_
                                                   (gx#syntax-e _tl98239870_)))
                                              (let ((_hd98259877_
                                                     (##car _e98249873_))
                                                    (_tl98269880_
                                                     (##cdr _e98249873_)))
                                                (if (gx#stx-pair? _tl98269880_)
                                                    (let ((_e98279883_
                                                           (gx#syntax-e
                                                            _tl98269880_)))
                                                      (let ((_hd98289887_
                                                             (##car _e98279883_))
                                                            (_tl98299890_
                                                             (##cdr _e98279883_)))
                                                        (if (gx#stx-pair?
                                                             _tl98299890_)
                                                            (let ((_e98309893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl98299890_)))
                      (let ((_hd98319897_ (##car _e98309893_))
                            (_tl98329900_ (##cdr _e98309893_)))
                        (if (gx#stx-pair/null? _hd98319897_)
                            (let ((_g41271_
                                   (gx#syntax-split-splice _hd98319897_ '0)))
                              (begin
                                (let ((_g41272_
                                       (if (##values? _g41271_)
                                           (##vector-length _g41271_)
                                           1)))
                                  (if (not (##fx= _g41272_ 2))
                                      (error "Context expects 2 values"
                                             _g41272_)))
                                (let ((_target98339903_
                                       (##vector-ref _g41271_ 0))
                                      (_tl98359906_ (##vector-ref _g41271_ 1)))
                                  (if (gx#stx-null? _tl98359906_)
                                      (letrec ((_loop98369909_
                                                (lambda (_hd98349913_
                                                         _dispatch98409916_)
                                                  (if (gx#stx-pair?
                                                       _hd98349913_)
                                                      (let ((_e98379919_
                                                             (gx#syntax-e
                                                              _hd98349913_)))
                                                        (let ((_lp-hd98389923_
                                                               (##car _e98379919_))
                                                              (_lp-tl98399926_
                                                               (##cdr _e98379919_)))
                                                          (_loop98369909_
                                                           _lp-tl98399926_
                                                           (cons _lp-hd98389923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _dispatch98409916_))))
              (let ((_dispatch98419929_ (reverse _dispatch98409916_)))
                (if (gx#stx-pair? _tl98329900_)
                    (let ((_e98429933_ (gx#syntax-e _tl98329900_)))
                      (let ((_hd98439937_ (##car _e98429933_))
                            (_tl98449940_ (##cdr _e98429933_)))
                        (if (gx#stx-pair? _tl98449940_)
                            (let ((_e98459943_ (gx#syntax-e _tl98449940_)))
                              (let ((_hd98469947_ (##car _e98459943_))
                                    (_tl98479950_ (##cdr _e98459943_)))
                                (if (gx#stx-pair? _tl98479950_)
                                    (let ((_e98489953_
                                           (gx#syntax-e _tl98479950_)))
                                      (let ((_hd98499957_ (##car _e98489953_))
                                            (_tl98509960_ (##cdr _e98489953_)))
                                        (if (gx#stx-null? _tl98509960_)
                                            ((lambda (_L9963_
                                                      _L9965_
                                                      _L9966_
                                                      _L9967_
                                                      _L9968_
                                                      _L9969_
                                                      _L9970_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _L9969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f 'lambda)
                                             (cons '() (cons _L9966_ '())))
                                       '()))
                           (cons (cons _L9968_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L9965_ '()))
                                             '()))
                                 '()))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (cons (gx#datum->syntax '#f 'char?)
                                             (cons _L9970_ '()))
                                       (cons (cons (gx#datum->syntax '#f 'let*)
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'h)
                             (cons (cons (gx#datum->syntax
                                          '#f
                                          '##char->integer)
                                         (cons _L9970_ '()))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'ix)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '##fxmodulo)
                                               (cons (gx#datum->syntax '#f 'h)
                                                     (cons _L9963_ '())))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'q)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##vector-ref)
                                                     (cons _L9968_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ix)
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (gx#datum->syntax '#f 'q)
                                   (cons (cons (gx#datum->syntax '#f 'if)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'eq?)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##car)
                               (cons (gx#datum->syntax '#f 'q) '()))
                         (cons _L9970_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (gx#datum->syntax '#f 'x)
                                     (cons (cons (gx#datum->syntax '#f '##cdr)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'q)
                                                       '()))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '~case-dispatch)
                                           (cons (gx#datum->syntax '#f 'x)
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g1000710010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1000810013_)
                    (cons _g1000710010_ _g1000810013_))
                  '()
                  _L9967_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (cons (cons _L9969_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _L9969_ '()) '()))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L9969_ '()) '()))))
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd98499957_
                                             _hd98469947_
                                             _hd98439937_
                                             _dispatch98419929_
                                             _hd98289887_
                                             _hd98259877_
                                             _hd98229867_)
                                            (_g98129856_ _g98139860_))))
                                    (_g98129856_ _g98139860_))))
                            (_g98129856_ _g98139860_))))
                    (_g98129856_ _g98139860_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop98369909_ _target98339903_ '()))
                                      (_g98129856_ _g98139860_)))))
                            (_g98129856_ _g98139860_))))
                    (_g98129856_ _g98139860_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g98129856_
                                                     _g98139860_))))
                                            (_g98129856_ _g98139860_))))
                                    (_g98129856_ _g98139860_)))))
                        (_g981110016_
                         (list _e9798_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch9801_
                               _default9802_
                               _tab9807_
                               (vector-length _tab9807_)))))))
                 (_min-fixnum8883_
                  (lambda (_datums9791_)
                    (foldl (lambda (_lst9794_ _r9796_)
                             (foldl min _r9796_ _lst9794_))
                           ##max-fixnum
                           _datums9791_)))
                 (_max-fixnum8884_
                  (lambda (_datums9784_)
                    (foldl (lambda (_lst9787_ _r9789_)
                             (foldl max _r9789_ _lst9787_))
                           ##min-fixnum
                           _datums9784_)))
                 (_generate-fixnum-dispatch-table8885_
                  (lambda (_indexes9766_)
                    (let* ((_ixs9769_ (map car _indexes9766_))
                           (_len9772_ (fx1+ (foldl max '0 _ixs9769_)))
                           (_vec9775_ (make-vector _len9772_ '#f)))
                      (begin
                        (for-each
                         (lambda (_entry9780_ _x9782_)
                           (vector-set! _vec9775_ _x9782_ (cdr _entry9780_)))
                         _indexes9766_
                         _ixs9769_)
                        _vec9775_))))
                 (_generate-fixnum-dispatch8886_
                  (lambda (_e9500_ _datums9502_ _dispatch9503_ _default9504_)
                    (if (if (>= (_min-fixnum8883_ _datums9502_) '0)
                            (< (_max-fixnum8884_ _datums9502_) '1024)
                            '#f)
                        (let* ((_indexes9506_
                                (_datum-dispatch-index8873_ _datums9502_))
                               (_tab9509_
                                (_generate-fixnum-dispatch-table8885_
                                 _indexes9506_))
                               (_dense?9512_
                                (andmap values (vector->list _tab9509_))))
                          (let* ((_g95179561_
                                  (lambda (_g95189557_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g95189557_)))
                                 (_g95169762_
                                  (lambda (_g95189565_)
                                    (if (gx#stx-pair? _g95189565_)
                                        (let ((_e95269568_
                                               (gx#syntax-e _g95189565_)))
                                          (let ((_hd95279572_
                                                 (##car _e95269568_))
                                                (_tl95289575_
                                                 (##cdr _e95269568_)))
                                            (if (gx#stx-pair? _tl95289575_)
                                                (let ((_e95299578_
                                                       (gx#syntax-e
                                                        _tl95289575_)))
                                                  (let ((_hd95309582_
                                                         (##car _e95299578_))
                                                        (_tl95319585_
                                                         (##cdr _e95299578_)))
                                                    (if (gx#stx-pair?
                                                         _tl95319585_)
                                                        (let ((_e95329588_
                                                               (gx#syntax-e
                                                                _tl95319585_)))
                                                          (let ((_hd95339592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e95329588_))
                        (_tl95349595_ (##cdr _e95329588_)))
                    (if (gx#stx-pair? _tl95349595_)
                        (let ((_e95359598_ (gx#syntax-e _tl95349595_)))
                          (let ((_hd95369602_ (##car _e95359598_))
                                (_tl95379605_ (##cdr _e95359598_)))
                            (if (gx#stx-pair/null? _hd95369602_)
                                (let ((_g41273_
                                       (gx#syntax-split-splice
                                        _hd95369602_
                                        '0)))
                                  (begin
                                    (let ((_g41274_
                                           (if (##values? _g41273_)
                                               (##vector-length _g41273_)
                                               1)))
                                      (if (not (##fx= _g41274_ 2))
                                          (error "Context expects 2 values"
                                                 _g41274_)))
                                    (let ((_target95389608_
                                           (##vector-ref _g41273_ 0))
                                          (_tl95409611_
                                           (##vector-ref _g41273_ 1)))
                                      (if (gx#stx-null? _tl95409611_)
                                          (letrec ((_loop95419614_
                                                    (lambda (_hd95399618_
                                                             _dispatch95459621_)
                                                      (if (gx#stx-pair?
                                                           _hd95399618_)
                                                          (let ((_e95429624_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd95399618_)))
                    (let ((_lp-hd95439628_ (##car _e95429624_))
                          (_lp-tl95449631_ (##cdr _e95429624_)))
                      (_loop95419614_
                       _lp-tl95449631_
                       (cons _lp-hd95439628_ _dispatch95459621_))))
                  (let ((_dispatch95469634_ (reverse _dispatch95459621_)))
                    (if (gx#stx-pair? _tl95379605_)
                        (let ((_e95479638_ (gx#syntax-e _tl95379605_)))
                          (let ((_hd95489642_ (##car _e95479638_))
                                (_tl95499645_ (##cdr _e95479638_)))
                            (if (gx#stx-pair? _tl95499645_)
                                (let ((_e95509648_ (gx#syntax-e _tl95499645_)))
                                  (let ((_hd95519652_ (##car _e95509648_))
                                        (_tl95529655_ (##cdr _e95509648_)))
                                    (if (gx#stx-pair? _tl95529655_)
                                        (let ((_e95539658_
                                               (gx#syntax-e _tl95529655_)))
                                          (let ((_hd95549662_
                                                 (##car _e95539658_))
                                                (_tl95559665_
                                                 (##cdr _e95539658_)))
                                            (if (gx#stx-null? _tl95559665_)
                                                ((lambda (_L9668_
                                                          _L9670_
                                                          _L9671_
                                                          _L9672_
                                                          _L9673_
                                                          _L9674_
                                                          _L9675_)
                                                   (let ()
                                                     (let* ((_g97149722_
                                                             (lambda (_g97159718_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g97159718_)))
                                                            (_g97139742_
                                                             (lambda (_g97159726_)
                                                               ((lambda (_L9729_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (cons _L9674_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda)
                        (cons '() (cons _L9671_ '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons _L9673_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L9670_ '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (cons (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'fixnum?)
                        (cons _L9675_ '()))
                  (cons (cons (gx#datum->syntax '#f 'if)
                              (cons (cons (gx#datum->syntax '#f 'and)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       '##fx>=)
                                                      (cons _L9675_
                                                            (cons '0 '())))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##fx<)
                                                            (cons _L9675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L9668_ '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons (cons (gx#datum->syntax '#f 'let)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'x)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##vector-ref)
                                (cons _L9673_ (cons _L9675_ '())))
                          '()))
              (cons _L9729_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L9674_ '()) '()))))
                        (cons (cons _L9674_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                        _g97159726_))))
               (_g97139742_
                (if _dense?9512_
                    (cons (gx#datum->syntax '#f '~case-dispatch)
                          (cons (gx#datum->syntax '#f 'x)
                                (begin
                                  '#!void
                                  (foldr (lambda (_g97459748_ _g97469751_)
                                           (cons _g97459748_ _g97469751_))
                                         '()
                                         _L9672_))))
                    (cons (gx#datum->syntax '#f 'if)
                          (cons (gx#datum->syntax '#f 'x)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             '~case-dispatch)
                                            (cons (gx#datum->syntax '#f 'x)
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g97539756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g97549759_)
                     (cons _g97539756_ _g97549759_))
                   '()
                   _L9672_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons (cons _L9674_ '()) '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd95549662_
                                                 _hd95519652_
                                                 _hd95489642_
                                                 _dispatch95469634_
                                                 _hd95339592_
                                                 _hd95309582_
                                                 _hd95279572_)
                                                (_g95179561_ _g95189565_))))
                                        (_g95179561_ _g95189565_))))
                                (_g95179561_ _g95189565_))))
                        (_g95179561_ _g95189565_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop95419614_
                                             _target95389608_
                                             '()))
                                          (_g95179561_ _g95189565_)))))
                                (_g95179561_ _g95189565_))))
                        (_g95179561_ _g95189565_))))
                (_g95179561_ _g95189565_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g95179561_ _g95189565_))))
                                        (_g95179561_ _g95189565_)))))
                            (_g95169762_
                             (list _e9500_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch9503_
                                   _default9504_
                                   _tab9509_
                                   (vector-length _tab9509_)))))
                        (_generate-fixnum-dispatch/hash8887_
                         _e9500_
                         _datums9502_
                         _dispatch9503_
                         _default9504_))))
                 (_generate-fixnum-dispatch/hash8887_
                  (lambda (_e9278_ _datums9280_ _dispatch9281_ _default9282_)
                    (let* ((_indexes9284_
                            (_datum-dispatch-index8873_ _datums9280_))
                           (_tab9287_
                            (_generate-hash-dispatch-table8875_
                             _indexes9284_
                             values)))
                      (let* ((_g92929336_
                              (lambda (_g92939332_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g92939332_)))
                             (_g92919496_
                              (lambda (_g92939340_)
                                (if (gx#stx-pair? _g92939340_)
                                    (let ((_e93019343_
                                           (gx#syntax-e _g92939340_)))
                                      (let ((_hd93029347_ (##car _e93019343_))
                                            (_tl93039350_ (##cdr _e93019343_)))
                                        (if (gx#stx-pair? _tl93039350_)
                                            (let ((_e93049353_
                                                   (gx#syntax-e _tl93039350_)))
                                              (let ((_hd93059357_
                                                     (##car _e93049353_))
                                                    (_tl93069360_
                                                     (##cdr _e93049353_)))
                                                (if (gx#stx-pair? _tl93069360_)
                                                    (let ((_e93079363_
                                                           (gx#syntax-e
                                                            _tl93069360_)))
                                                      (let ((_hd93089367_
                                                             (##car _e93079363_))
                                                            (_tl93099370_
                                                             (##cdr _e93079363_)))
                                                        (if (gx#stx-pair?
                                                             _tl93099370_)
                                                            (let ((_e93109373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl93099370_)))
                      (let ((_hd93119377_ (##car _e93109373_))
                            (_tl93129380_ (##cdr _e93109373_)))
                        (if (gx#stx-pair/null? _hd93119377_)
                            (let ((_g41275_
                                   (gx#syntax-split-splice _hd93119377_ '0)))
                              (begin
                                (let ((_g41276_
                                       (if (##values? _g41275_)
                                           (##vector-length _g41275_)
                                           1)))
                                  (if (not (##fx= _g41276_ 2))
                                      (error "Context expects 2 values"
                                             _g41276_)))
                                (let ((_target93139383_
                                       (##vector-ref _g41275_ 0))
                                      (_tl93159386_ (##vector-ref _g41275_ 1)))
                                  (if (gx#stx-null? _tl93159386_)
                                      (letrec ((_loop93169389_
                                                (lambda (_hd93149393_
                                                         _dispatch93209396_)
                                                  (if (gx#stx-pair?
                                                       _hd93149393_)
                                                      (let ((_e93179399_
                                                             (gx#syntax-e
                                                              _hd93149393_)))
                                                        (let ((_lp-hd93189403_
                                                               (##car _e93179399_))
                                                              (_lp-tl93199406_
                                                               (##cdr _e93179399_)))
                                                          (_loop93169389_
                                                           _lp-tl93199406_
                                                           (cons _lp-hd93189403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _dispatch93209396_))))
              (let ((_dispatch93219409_ (reverse _dispatch93209396_)))
                (if (gx#stx-pair? _tl93129380_)
                    (let ((_e93229413_ (gx#syntax-e _tl93129380_)))
                      (let ((_hd93239417_ (##car _e93229413_))
                            (_tl93249420_ (##cdr _e93229413_)))
                        (if (gx#stx-pair? _tl93249420_)
                            (let ((_e93259423_ (gx#syntax-e _tl93249420_)))
                              (let ((_hd93269427_ (##car _e93259423_))
                                    (_tl93279430_ (##cdr _e93259423_)))
                                (if (gx#stx-pair? _tl93279430_)
                                    (let ((_e93289433_
                                           (gx#syntax-e _tl93279430_)))
                                      (let ((_hd93299437_ (##car _e93289433_))
                                            (_tl93309440_ (##cdr _e93289433_)))
                                        (if (gx#stx-null? _tl93309440_)
                                            ((lambda (_L9443_
                                                      _L9445_
                                                      _L9446_
                                                      _L9447_
                                                      _L9448_
                                                      _L9449_
                                                      _L9450_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let)
                                                       (cons (cons (cons _L9449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons (gx#datum->syntax '#f 'lambda)
                                             (cons '() (cons _L9446_ '())))
                                       '()))
                           (cons (cons _L9448_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L9445_ '()))
                                             '()))
                                 '()))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (cons (gx#datum->syntax '#f 'fixnum?)
                                             (cons _L9450_ '()))
                                       (cons (cons (gx#datum->syntax '#f 'let*)
                                                   (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'ix)
                             (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                         (cons _L9450_ (cons _L9443_ '())))
                                   '()))
                       (cons (cons (gx#datum->syntax '#f 'q)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '##vector-ref)
                                               (cons _L9448_
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'ix)
                                                           '())))
                                         '()))
                             '()))
                 (cons (cons (gx#datum->syntax '#f 'if)
                             (cons (gx#datum->syntax '#f 'q)
                                   (cons (cons (gx#datum->syntax '#f 'if)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'eq?)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##car)
                               (cons (gx#datum->syntax '#f 'q) '()))
                         (cons _L9450_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (gx#datum->syntax '#f 'x)
                                     (cons (cons (gx#datum->syntax '#f '##cdr)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'q)
                                                       '()))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            '~case-dispatch)
                                           (cons (gx#datum->syntax '#f 'x)
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g94879490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g94889493_)
                    (cons _g94879490_ _g94889493_))
                  '()
                  _L9447_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   (cons (cons _L9449_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons (cons _L9449_ '()) '()))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L9449_ '()) '()))))
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd93299437_
                                             _hd93269427_
                                             _hd93239417_
                                             _dispatch93219409_
                                             _hd93089367_
                                             _hd93059357_
                                             _hd93029347_)
                                            (_g92929336_ _g92939340_))))
                                    (_g92929336_ _g92939340_))))
                            (_g92929336_ _g92939340_))))
                    (_g92929336_ _g92939340_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop93169389_ _target93139383_ '()))
                                      (_g92929336_ _g92939340_)))))
                            (_g92929336_ _g92939340_))))
                    (_g92929336_ _g92939340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g92929336_
                                                     _g92939340_))))
                                            (_g92929336_ _g92939340_))))
                                    (_g92929336_ _g92939340_)))))
                        (_g92919496_
                         (list _e9278_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch9281_
                               _default9282_
                               _tab9287_
                               (vector-length _tab9287_)))))))
                 (_generate-generic-dispatch8888_
                  (lambda (_e9014_ _datums9016_ _dispatch9017_ _default9018_)
                    (let ((_g41277_
                           (if (_eq-datums?8871_ _datums9016_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_hash-e9020_ (##vector-ref _g41277_ 0))
                              (_hashf9022_ (##vector-ref _g41277_ 1))
                              (_eqf9023_ (##vector-ref _g41277_ 2)))
                          (let* ((_indexes9025_
                                  (_datum-dispatch-index8873_ _datums9016_))
                                 (_tab9028_
                                  (_generate-hash-dispatch-table8875_
                                   _indexes9025_
                                   _hash-e9020_)))
                            (let* ((_g90339085_
                                    (lambda (_g90349081_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g90349081_)))
                                   (_g90329274_
                                    (lambda (_g90349089_)
                                      (if (gx#stx-pair? _g90349089_)
                                          (let ((_e90449092_
                                                 (gx#syntax-e _g90349089_)))
                                            (let ((_hd90459096_
                                                   (##car _e90449092_))
                                                  (_tl90469099_
                                                   (##cdr _e90449092_)))
                                              (if (gx#stx-pair? _tl90469099_)
                                                  (let ((_e90479102_
                                                         (gx#syntax-e
                                                          _tl90469099_)))
                                                    (let ((_hd90489106_
                                                           (##car _e90479102_))
                                                          (_tl90499109_
                                                           (##cdr _e90479102_)))
                                                      (if (gx#stx-pair?
                                                           _tl90499109_)
                                                          (let ((_e90509112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl90499109_)))
                    (let ((_hd90519116_ (##car _e90509112_))
                          (_tl90529119_ (##cdr _e90509112_)))
                      (if (gx#stx-pair? _tl90529119_)
                          (let ((_e90539122_ (gx#syntax-e _tl90529119_)))
                            (let ((_hd90549126_ (##car _e90539122_))
                                  (_tl90559129_ (##cdr _e90539122_)))
                              (if (gx#stx-pair/null? _hd90549126_)
                                  (let ((_g41278_
                                         (gx#syntax-split-splice
                                          _hd90549126_
                                          '0)))
                                    (begin
                                      (let ((_g41279_
                                             (if (##values? _g41278_)
                                                 (##vector-length _g41278_)
                                                 1)))
                                        (if (not (##fx= _g41279_ 2))
                                            (error "Context expects 2 values"
                                                   _g41279_)))
                                      (let ((_target90569132_
                                             (##vector-ref _g41278_ 0))
                                            (_tl90589135_
                                             (##vector-ref _g41278_ 1)))
                                        (if (gx#stx-null? _tl90589135_)
                                            (letrec ((_loop90599138_
                                                      (lambda (_hd90579142_
                                                               _dispatch90639145_)
                                                        (if (gx#stx-pair?
                                                             _hd90579142_)
                                                            (let ((_e90609148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd90579142_)))
                      (let ((_lp-hd90619152_ (##car _e90609148_))
                            (_lp-tl90629155_ (##cdr _e90609148_)))
                        (_loop90599138_
                         _lp-tl90629155_
                         (cons _lp-hd90619152_ _dispatch90639145_))))
                    (let ((_dispatch90649158_ (reverse _dispatch90639145_)))
                      (if (gx#stx-pair? _tl90559129_)
                          (let ((_e90659162_ (gx#syntax-e _tl90559129_)))
                            (let ((_hd90669166_ (##car _e90659162_))
                                  (_tl90679169_ (##cdr _e90659162_)))
                              (if (gx#stx-pair? _tl90679169_)
                                  (let ((_e90689172_
                                         (gx#syntax-e _tl90679169_)))
                                    (let ((_hd90699176_ (##car _e90689172_))
                                          (_tl90709179_ (##cdr _e90689172_)))
                                      (if (gx#stx-pair? _tl90709179_)
                                          (let ((_e90719182_
                                                 (gx#syntax-e _tl90709179_)))
                                            (let ((_hd90729186_
                                                   (##car _e90719182_))
                                                  (_tl90739189_
                                                   (##cdr _e90719182_)))
                                              (if (gx#stx-pair? _tl90739189_)
                                                  (let ((_e90749192_
                                                         (gx#syntax-e
                                                          _tl90739189_)))
                                                    (let ((_hd90759196_
                                                           (##car _e90749192_))
                                                          (_tl90769199_
                                                           (##cdr _e90749192_)))
                                                      (if (gx#stx-pair?
                                                           _tl90769199_)
                                                          (let ((_e90779202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl90769199_)))
                    (let ((_hd90789206_ (##car _e90779202_))
                          (_tl90799209_ (##cdr _e90779202_)))
                      (if (gx#stx-null? _tl90799209_)
                          ((lambda (_L9212_
                                    _L9214_
                                    _L9215_
                                    _L9216_
                                    _L9217_
                                    _L9218_
                                    _L9219_
                                    _L9220_
                                    _L9221_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _L9220_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons '() (cons _L9217_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L9219_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _L9216_ '()))
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let*)
                                                       (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'h)
                                 (cons (cons _L9214_ (cons _L9221_ '())) '()))
                           (cons (cons (gx#datum->syntax '#f 'ix)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##fxmodulo)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'h)
                                                         (cons _L9215_ '())))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'q)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L9219_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'ix)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       '())))
                     (cons (cons (gx#datum->syntax '#f 'if)
                                 (cons (gx#datum->syntax '#f 'q)
                                       (cons (cons (gx#datum->syntax '#f 'if)
                                                   (cons (cons _L9212_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##car)
                                   (cons (gx#datum->syntax '#f 'q) '()))
                             (cons _L9221_ '())))
                 (cons (cons (gx#datum->syntax '#f 'let)
                             (cons (cons (gx#datum->syntax '#f 'x)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##cdr)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'q)
                                                           '()))
                                               '()))
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                '~case-dispatch)
                                               (cons (gx#datum->syntax '#f 'x)
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g92659268_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g92669271_)
                        (cons _g92659268_ _g92669271_))
                      '()
                      _L9218_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _L9220_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L9220_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                           _hd90789206_
                           _hd90759196_
                           _hd90729186_
                           _hd90699176_
                           _hd90669166_
                           _dispatch90649158_
                           _hd90519116_
                           _hd90489106_
                           _hd90459096_)
                          (_g90339085_ _g90349089_))))
                  (_g90339085_ _g90349089_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g90339085_ _g90349089_))))
                                          (_g90339085_ _g90349089_))))
                                  (_g90339085_ _g90349089_))))
                          (_g90339085_ _g90349089_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop90599138_
                                               _target90569132_
                                               '()))
                                            (_g90339085_ _g90349089_)))))
                                  (_g90339085_ _g90349089_))))
                          (_g90339085_ _g90349089_))))
                  (_g90339085_ _g90349089_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g90339085_ _g90349089_))))
                                          (_g90339085_ _g90349089_)))))
                              (_g90329274_
                               (list _e9014_
                                     (gx#genident 'default)
                                     (gx#genident 'table)
                                     _dispatch9017_
                                     _default9018_
                                     _tab9028_
                                     (vector-length _tab9028_)
                                     _hashf9022_
                                     _eqf9023_))))))))))
          (let* ((_g88908914_
                  (lambda (_g88918910_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g88918910_)))
                 (_g88899010_
                  (lambda (_g88918918_)
                    (if (gx#stx-pair? _g88918918_)
                        (let ((_e88948921_ (gx#syntax-e _g88918918_)))
                          (let ((_hd88958925_ (##car _e88948921_))
                                (_tl88968928_ (##cdr _e88948921_)))
                            (if (gx#stx-pair? _tl88968928_)
                                (let ((_e88978931_ (gx#syntax-e _tl88968928_)))
                                  (let ((_hd88988935_ (##car _e88978931_))
                                        (_tl88998938_ (##cdr _e88978931_)))
                                    (if (gx#stx-pair/null? _tl88998938_)
                                        (let ((_g41280_
                                               (gx#syntax-split-splice
                                                _tl88998938_
                                                '0)))
                                          (begin
                                            (let ((_g41281_
                                                   (if (##values? _g41280_)
                                                       (##vector-length
                                                        _g41280_)
                                                       1)))
                                              (if (not (##fx= _g41281_ 2))
                                                  (error "Context expects 2 values"
                                                         _g41281_)))
                                            (let ((_target89008941_
                                                   (##vector-ref _g41280_ 0))
                                                  (_tl89028944_
                                                   (##vector-ref _g41280_ 1)))
                                              (if (gx#stx-null? _tl89028944_)
                                                  (letrec ((_loop89038947_
                                                            (lambda (_hd89018951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause89078954_)
                      (if (gx#stx-pair? _hd89018951_)
                          (let ((_e89048957_ (gx#syntax-e _hd89018951_)))
                            (let ((_lp-hd89058961_ (##car _e89048957_))
                                  (_lp-tl89068964_ (##cdr _e89048957_)))
                              (_loop89038947_
                               _lp-tl89068964_
                               (cons _lp-hd89058961_ _clause89078954_))))
                          (let ((_clause89088967_ (reverse _clause89078954_)))
                            ((lambda (_L8971_ _L8973_)
                               (let ((_g41282_
                                      (_parse-clauses8864_
                                       _L8973_
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g89918994_
                                                         _g89928997_)
                                                  (cons _g89918994_
                                                        _g89928997_))
                                                '()
                                                _L8971_)))))
                                 (begin
                                   (let ((_g41283_
                                          (if (##values? _g41282_)
                                              (##vector-length _g41282_)
                                              1)))
                                     (if (not (##fx= _g41283_ 3))
                                         (error "Context expects 3 values"
                                                _g41283_)))
                                   (let ((_datums9000_
                                          (##vector-ref _g41282_ 0))
                                         (_dispatch9002_
                                          (##vector-ref _g41282_ 1))
                                         (_default9003_
                                          (##vector-ref _g41282_ 2)))
                                     (let ((_datum-count9005_
                                            (_count-datums8867_ _datums9000_)))
                                       (if (< _datum-count9005_ '6)
                                           (_generate-simple-case8872_
                                            _L8973_
                                            _datums9000_
                                            _dispatch9002_
                                            _default9003_)
                                           (if (_char-datums?8869_
                                                _datums9000_)
                                               (_generate-char-dispatch8881_
                                                _L8973_
                                                _datums9000_
                                                _dispatch9002_
                                                _default9003_)
                                               (if (_fixnum-datums?8870_
                                                    _datums9000_)
                                                   (_generate-fixnum-dispatch8886_
                                                    _L8973_
                                                    _datums9000_
                                                    _dispatch9002_
                                                    _default9003_)
                                                   (if (< _datum-count9005_
                                                          '12)
                                                       (_generate-simple-case8872_
                                                        _L8973_
                                                        _datums9000_
                                                        _dispatch9002_
                                                        _default9003_)
                                                       (if (_symbolic-datums?8868_
                                                            _datums9000_)
                                                           (_generate-symbolic-dispatch8876_
                                                            _L8973_
                                                            _datums9000_
                                                            _dispatch9002_
                                                            _default9003_)
                                                           (_generate-generic-dispatch8888_
                                                            _L8973_
                                                            _datums9000_
                                                            _dispatch9002_
                                                            _default9003_)))))))))))
                             _clause89088967_
                             _hd88988935_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop89038947_
                                                     _target89008941_
                                                     '()))
                                                  (_g88908914_ _g88918918_)))))
                                        (_g88908914_ _g88918918_))))
                                (_g88908914_ _g88918918_))))
                        (_g88908914_ _g88918918_)))))
            (_g88899010_ _stx8861_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-test|
      (lambda (_stx11912_)
        (let* ((_g1191511933_
                (lambda (_g1191611929_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1191611929_)))
               (_g1191411999_
                (lambda (_g1191611937_)
                  (if (gx#stx-pair? _g1191611937_)
                      (let ((_e1191911940_ (gx#syntax-e _g1191611937_)))
                        (let ((_hd1192011944_ (##car _e1191911940_))
                              (_tl1192111947_ (##cdr _e1191911940_)))
                          (if (gx#stx-pair? _tl1192111947_)
                              (let ((_e1192211950_
                                     (gx#syntax-e _tl1192111947_)))
                                (let ((_hd1192311954_ (##car _e1192211950_))
                                      (_tl1192411957_ (##cdr _e1192211950_)))
                                  (if (gx#stx-pair? _tl1192411957_)
                                      (let ((_e1192511960_
                                             (gx#syntax-e _tl1192411957_)))
                                        (let ((_hd1192611964_
                                               (##car _e1192511960_))
                                              (_tl1192711967_
                                               (##cdr _e1192511960_)))
                                          (if (gx#stx-null? _tl1192711967_)
                                              ((lambda (_L11970_ _L11972_)
                                                 (let ((_datum-e11988_
                                                        (gx#stx-e _L11972_)))
                                                   (if (let ((_$e11991_
                                                              (symbol? _datum-e11988_)))
                                                         (if _$e11991_
                                                             _$e11991_
                                                             (let ((_$e11995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (keyword? _datum-e11988_)))
                       (if _$e11995_ _$e11995_ (immediate? _datum-e11988_)))))
               (cons (gx#datum->syntax '#f 'eq?)
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _L11972_ '()))
                           (cons _L11970_ '())))
               (if (number? _datum-e11988_)
                   (cons (gx#datum->syntax '#f 'eqv?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L11972_ '()))
                               (cons _L11970_ '())))
                   (cons (gx#datum->syntax '#f 'equal?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L11972_ '()))
                               (cons _L11970_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd1192611964_
                                               _hd1192311954_)
                                              (_g1191511933_ _g1191611937_))))
                                      (_g1191511933_ _g1191611937_))))
                              (_g1191511933_ _g1191611937_))))
                      (_g1191511933_ _g1191611937_)))))
          (_g1191411999_ _stx11912_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch|
      (lambda (_$stx12003_)
        (let* ((_g1200712031_
                (lambda (_g1200812027_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1200812027_)))
               (_g1200612116_
                (lambda (_g1200812035_)
                  (if (gx#stx-pair? _g1200812035_)
                      (let ((_e1201112038_ (gx#syntax-e _g1200812035_)))
                        (let ((_hd1201212042_ (##car _e1201112038_))
                              (_tl1201312045_ (##cdr _e1201112038_)))
                          (if (gx#stx-pair? _tl1201312045_)
                              (let ((_e1201412048_
                                     (gx#syntax-e _tl1201312045_)))
                                (let ((_hd1201512052_ (##car _e1201412048_))
                                      (_tl1201612055_ (##cdr _e1201412048_)))
                                  (if (gx#stx-pair/null? _tl1201612055_)
                                      (let ((_g41284_
                                             (gx#syntax-split-splice
                                              _tl1201612055_
                                              '0)))
                                        (begin
                                          (let ((_g41285_
                                                 (if (##values? _g41284_)
                                                     (##vector-length _g41284_)
                                                     1)))
                                            (if (not (##fx= _g41285_ 2))
                                                (error "Context expects 2 values"
                                                       _g41285_)))
                                          (let ((_target1201712058_
                                                 (##vector-ref _g41284_ 0))
                                                (_tl1201912061_
                                                 (##vector-ref _g41284_ 1)))
                                            (if (gx#stx-null? _tl1201912061_)
                                                (letrec ((_loop1202012064_
                                                          (lambda (_hd1201812068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _K1202412071_)
                    (if (gx#stx-pair? _hd1201812068_)
                        (let ((_e1202112074_ (gx#syntax-e _hd1201812068_)))
                          (let ((_lp-hd1202212078_ (##car _e1202112074_))
                                (_lp-tl1202312081_ (##cdr _e1202112074_)))
                            (_loop1202012064_
                             _lp-tl1202312081_
                             (cons _lp-hd1202212078_ _K1202412071_))))
                        (let ((_K1202512084_ (reverse _K1202412071_)))
                          ((lambda (_L12088_ _L12090_)
                             (cons (gx#datum->syntax '#f '~case-dispatch*)
                                   (cons '0
                                         (cons _L12090_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1210712110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1210812113_)
                  (cons _g1210712110_ _g1210812113_))
                '()
                _L12088_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           _K1202512084_
                           _hd1201512052_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1202012064_
                                                   _target1201712058_
                                                   '()))
                                                (_g1200712031_
                                                 _g1200812035_)))))
                                      (_g1200712031_ _g1200812035_))))
                              (_g1200712031_ _g1200812035_))))
                      (_g1200712031_ _g1200812035_)))))
          (_g1200612116_ _$stx12003_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch*|
      (lambda (_stx12121_)
        (let* ((___stx3722137222_ _stx12121_)
               (_g1212812224_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3722137222_))))
          (let ((___kont3722437225_
                 (lambda (_L12701_ _L12703_)
                   (cons (gx#datum->syntax '#f 'quote) (cons '#!void '()))))
                (___kont3722637227_
                 (lambda (_L12643_ _L12645_ _L12646_) _L12643_))
                (___kont3722837229_
                 (lambda (_L12540_ _L12542_ _L12543_ _L12544_)
                   (let* ((_g1256512573_
                           (lambda (_g1256612569_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1256612569_)))
                          (_g1256412592_
                           (lambda (_g1256612577_)
                             ((lambda (_L12580_)
                                (let ()
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '##fx=)
                                                    (cons _L12543_
                                                          (cons _L12580_ '())))
                                              (cons _L12542_
                                                    (cons _L12540_ '()))))))
                              _g1256612577_))))
                     (_g1256412592_ (gx#stx-e _L12544_)))))
                (___kont3723037231_
                 (lambda (_L12390_ _L12392_ _L12393_ _L12394_ _L12395_)
                   (let* ((_g1241912434_
                           (lambda (_g1242012430_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1242012430_)))
                          (_g1241812479_
                           (lambda (_g1242012438_)
                             (if (gx#stx-pair? _g1242012438_)
                                 (let ((_e1242312441_
                                        (gx#syntax-e _g1242012438_)))
                                   (let ((_hd1242412445_ (##car _e1242312441_))
                                         (_tl1242512448_
                                          (##cdr _e1242312441_)))
                                     (if (gx#stx-pair? _tl1242512448_)
                                         (let ((_e1242612451_
                                                (gx#syntax-e _tl1242512448_)))
                                           (let ((_hd1242712455_
                                                  (##car _e1242612451_))
                                                 (_tl1242812458_
                                                  (##cdr _e1242612451_)))
                                             (if (gx#stx-null? _tl1242812458_)
                                                 ((lambda (_L12461_ _L12463_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##fx=)
                                (cons _L12394_ (cons _L12463_ '())))
                          (cons _L12393_
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '##fx=)
                                                        (cons _L12394_
                                                              (cons _L12461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L12392_
                                                        (cons _L12390_ '()))))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1242712455_
                                                  _hd1242412445_)
                                                 (_g1241912434_
                                                  _g1242012438_))))
                                         (_g1241912434_ _g1242012438_))))
                                 (_g1241912434_ _g1242012438_)))))
                     (_g1241812479_
                      (list (gx#stx-e _L12395_) (fx1+ (gx#stx-e _L12395_)))))))
                (___kont3723237233_
                 (lambda (_L12291_ _L12293_ _L12294_)
                   (cons (gx#datum->syntax '#f '~case-dispatch-bsearch)
                         (cons _L12294_
                               (cons _L12293_
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g1231412317_
                                                       _g1231512320_)
                                                (cons _g1231412317_
                                                      _g1231512320_))
                                              '()
                                              _L12291_))))))))
            (let ((___match3737837379_
                   (lambda (_e1220112231_
                            _hd1220212235_
                            _tl1220312238_
                            _e1220412241_
                            _hd1220512245_
                            _tl1220612248_
                            _e1220712251_
                            _hd1220812255_
                            _tl1220912258_
                            ___splice3723437235_
                            _target1221012261_
                            _tl1221212264_)
                     (letrec ((_loop1221312267_
                               (lambda (_hd1221112271_ _K1221712274_)
                                 (if (gx#stx-pair? _hd1221112271_)
                                     (let ((_e1221412277_
                                            (gx#syntax-e _hd1221112271_)))
                                       (let ((_lp-tl1221612284_
                                              (##cdr _e1221412277_))
                                             (_lp-hd1221512281_
                                              (##car _e1221412277_)))
                                         (_loop1221312267_
                                          _lp-tl1221612284_
                                          (cons _lp-hd1221512281_
                                                _K1221712274_))))
                                     (let ((_K1221812287_
                                            (reverse _K1221712274_)))
                                       (___kont3723237233_
                                        _K1221812287_
                                        _hd1220812255_
                                        _hd1220512245_))))))
                       (_loop1221312267_ _target1221012261_ '())))))
              (if (gx#stx-pair? ___stx3722137222_)
                  (let ((_e1213212671_ (gx#syntax-e ___stx3722137222_)))
                    (let ((_tl1213412678_ (##cdr _e1213212671_))
                          (_hd1213312675_ (##car _e1213212671_)))
                      (if (gx#stx-pair? _tl1213412678_)
                          (let ((_e1213512681_ (gx#syntax-e _tl1213412678_)))
                            (let ((_tl1213712688_ (##cdr _e1213512681_))
                                  (_hd1213612685_ (##car _e1213512681_)))
                              (if (gx#stx-pair? _tl1213712688_)
                                  (let ((_e1213812691_
                                         (gx#syntax-e _tl1213712688_)))
                                    (let ((_tl1214012698_
                                           (##cdr _e1213812691_))
                                          (_hd1213912695_
                                           (##car _e1213812691_)))
                                      (if (gx#stx-null? _tl1214012698_)
                                          (___kont3722437225_
                                           _hd1213912695_
                                           _hd1213612685_)
                                          (if (gx#stx-pair? _tl1214012698_)
                                              (let ((_e1215312633_
                                                     (gx#syntax-e
                                                      _tl1214012698_)))
                                                (let ((_tl1215512640_
                                                       (##cdr _e1215312633_))
                                                      (_hd1215412637_
                                                       (##car _e1215312633_)))
                                                  (if (gx#stx-null?
                                                       _tl1215512640_)
                                                      (___kont3722637227_
                                                       _hd1215412637_
                                                       _hd1213912695_
                                                       _hd1213612685_)
                                                      (if (gx#stx-pair?
                                                           _tl1215512640_)
                                                          (let ((_e1217212530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1215512640_)))
                    (let ((_tl1217412537_ (##cdr _e1217212530_))
                          (_hd1217312534_ (##car _e1217212530_)))
                      (if (gx#stx-null? _tl1217412537_)
                          (___kont3722837229_
                           _hd1217312534_
                           _hd1215412637_
                           _hd1213912695_
                           _hd1213612685_)
                          (if (gx#stx-pair? _tl1217412537_)
                              (let ((_e1219512380_
                                     (gx#syntax-e _tl1217412537_)))
                                (let ((_tl1219712387_ (##cdr _e1219512380_))
                                      (_hd1219612384_ (##car _e1219512380_)))
                                  (if (gx#stx-null? _tl1219712387_)
                                      (___kont3723037231_
                                       _hd1219612384_
                                       _hd1217312534_
                                       _hd1215412637_
                                       _hd1213912695_
                                       _hd1213612685_)
                                      (if (gx#stx-pair/null? _tl1214012698_)
                                          (let ((___splice3723437235_
                                                 (gx#syntax-split-splice
                                                  _tl1214012698_
                                                  '0)))
                                            (let ((_tl1221212264_
                                                   (##vector-ref
                                                    ___splice3723437235_
                                                    '1))
                                                  (_target1221012261_
                                                   (##vector-ref
                                                    ___splice3723437235_
                                                    '0)))
                                              (if (gx#stx-null? _tl1221212264_)
                                                  (___match3737837379_
                                                   _e1213212671_
                                                   _hd1213312675_
                                                   _tl1213412678_
                                                   _e1213512681_
                                                   _hd1213612685_
                                                   _tl1213712688_
                                                   _e1213812691_
                                                   _hd1213912695_
                                                   _tl1214012698_
                                                   ___splice3723437235_
                                                   _target1221012261_
                                                   _tl1221212264_)
                                                  (_g1212812224_))))
                                          (_g1212812224_)))))
                              (if (gx#stx-pair/null? _tl1214012698_)
                                  (let ((___splice3723437235_
                                         (gx#syntax-split-splice
                                          _tl1214012698_
                                          '0)))
                                    (let ((_tl1221212264_
                                           (##vector-ref
                                            ___splice3723437235_
                                            '1))
                                          (_target1221012261_
                                           (##vector-ref
                                            ___splice3723437235_
                                            '0)))
                                      (if (gx#stx-null? _tl1221212264_)
                                          (___match3737837379_
                                           _e1213212671_
                                           _hd1213312675_
                                           _tl1213412678_
                                           _e1213512681_
                                           _hd1213612685_
                                           _tl1213712688_
                                           _e1213812691_
                                           _hd1213912695_
                                           _tl1214012698_
                                           ___splice3723437235_
                                           _target1221012261_
                                           _tl1221212264_)
                                          (_g1212812224_))))
                                  (_g1212812224_))))))
                  (if (gx#stx-pair/null? _tl1214012698_)
                      (let ((___splice3723437235_
                             (gx#syntax-split-splice _tl1214012698_ '0)))
                        (let ((_tl1221212264_
                               (##vector-ref ___splice3723437235_ '1))
                              (_target1221012261_
                               (##vector-ref ___splice3723437235_ '0)))
                          (if (gx#stx-null? _tl1221212264_)
                              (___match3737837379_
                               _e1213212671_
                               _hd1213312675_
                               _tl1213412678_
                               _e1213512681_
                               _hd1213612685_
                               _tl1213712688_
                               _e1213812691_
                               _hd1213912695_
                               _tl1214012698_
                               ___splice3723437235_
                               _target1221012261_
                               _tl1221212264_)
                              (_g1212812224_))))
                      (_g1212812224_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl1214012698_)
                                                  (let ((___splice3723437235_
                                                         (gx#syntax-split-splice
                                                          _tl1214012698_
                                                          '0)))
                                                    (let ((_tl1221212264_
                                                           (##vector-ref
                                                            ___splice3723437235_
                                                            '1))
                                                          (_target1221012261_
                                                           (##vector-ref
                                                            ___splice3723437235_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl1221212264_)
                                                          (___match3737837379_
                                                           _e1213212671_
                                                           _hd1213312675_
                                                           _tl1213412678_
                                                           _e1213512681_
                                                           _hd1213612685_
                                                           _tl1213712688_
                                                           _e1213812691_
                                                           _hd1213912695_
                                                           _tl1214012698_
                                                           ___splice3723437235_
                                                           _target1221012261_
                                                           _tl1221212264_)
                                                          (_g1212812224_))))
                                                  (_g1212812224_))))))
                                  (_g1212812224_))))
                          (_g1212812224_))))
                  (_g1212812224_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch-bsearch|
      (lambda (_stx12723_)
        (letrec ((_split12726_
                  (lambda (_lst13087_ _mid13089_)
                    (let _lp13091_ ((_i13094_ '0)
                                    (_rest13096_ _lst13087_)
                                    (_left13097_ '()))
                      (if (fx< _i13094_ _mid13089_)
                          (_lp13091_
                           (fx1+ _i13094_)
                           (cdr _rest13096_)
                           (cons (car _rest13096_) _left13097_))
                          (values (reverse _left13097_) _rest13096_))))))
          (let* ((_g1272912757_
                  (lambda (_g1273012753_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1273012753_)))
                 (_g1272813083_
                  (lambda (_g1273012761_)
                    (if (gx#stx-pair? _g1273012761_)
                        (let ((_e1273412764_ (gx#syntax-e _g1273012761_)))
                          (let ((_hd1273512768_ (##car _e1273412764_))
                                (_tl1273612771_ (##cdr _e1273412764_)))
                            (if (gx#stx-pair? _tl1273612771_)
                                (let ((_e1273712774_
                                       (gx#syntax-e _tl1273612771_)))
                                  (let ((_hd1273812778_ (##car _e1273712774_))
                                        (_tl1273912781_ (##cdr _e1273712774_)))
                                    (if (gx#stx-pair? _tl1273912781_)
                                        (let ((_e1274012784_
                                               (gx#syntax-e _tl1273912781_)))
                                          (let ((_hd1274112788_
                                                 (##car _e1274012784_))
                                                (_tl1274212791_
                                                 (##cdr _e1274012784_)))
                                            (if (gx#stx-pair/null?
                                                 _tl1274212791_)
                                                (let ((_g41286_
                                                       (gx#syntax-split-splice
                                                        _tl1274212791_
                                                        '0)))
                                                  (begin
                                                    (let ((_g41287_
                                                           (if (##values?
                                                                _g41286_)
                                                               (##vector-length
                                                                _g41286_)
                                                               1)))
                                                      (if (not (##fx= _g41287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g41287_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1274312794_
                                                           (##vector-ref
                                                            _g41286_
                                                            0))
                                                          (_tl1274512797_
                                                           (##vector-ref
                                                            _g41286_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1274512797_)
                                                          (letrec ((_loop1274612800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1274412804_ _K1275012807_)
                              (if (gx#stx-pair? _hd1274412804_)
                                  (let ((_e1274712810_
                                         (gx#syntax-e _hd1274412804_)))
                                    (let ((_lp-hd1274812814_
                                           (##car _e1274712810_))
                                          (_lp-tl1274912817_
                                           (##cdr _e1274712810_)))
                                      (_loop1274612800_
                                       _lp-tl1274912817_
                                       (cons _lp-hd1274812814_
                                             _K1275012807_))))
                                  (let ((_K1275112820_
                                         (reverse _K1275012807_)))
                                    ((lambda (_L12824_ _L12826_ _L12827_)
                                       (let* ((_len12857_
                                               (length (begin
                                                         '#!void
                                                         (foldr (lambda (_g1284812851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1284912854_)
                          (cons _g1284812851_ _g1284912854_))
                        '()
                        _L12824_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_mid12860_
                                               (quotient _len12857_ '2))
                                              (_g41288_
                                               (_split12726_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1286212865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1286312868_)
                   (cons _g1286212865_ _g1286312868_))
                 '()
                 _L12824_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _mid12860_)))
                                         (begin
                                           (let ((_g41289_
                                                  (if (##values? _g41288_)
                                                      (##vector-length
                                                       _g41288_)
                                                      1)))
                                             (if (not (##fx= _g41289_ 2))
                                                 (error "Context expects 2 values"
                                                        _g41289_)))
                                           (let ((_left12871_
                                                  (##vector-ref _g41288_ 0))
                                                 (_right12873_
                                                  (##vector-ref _g41288_ 1)))
                                             (let ()
                                               (let* ((_g1287712918_
                                                       (lambda (_g1287812914_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1287812914_)))
                                                      (_g1287613079_
                                                       (lambda (_g1287812922_)
                                                         (if (gx#stx-pair?
                                                              _g1287812922_)
                                                             (let ((_e1288312925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1287812922_)))
                       (let ((_hd1288412929_ (##car _e1288312925_))
                             (_tl1288512932_ (##cdr _e1288312925_)))
                         (if (gx#stx-pair? _tl1288512932_)
                             (let ((_e1288612935_
                                    (gx#syntax-e _tl1288512932_)))
                               (let ((_hd1288712939_ (##car _e1288612935_))
                                     (_tl1288812942_ (##cdr _e1288612935_)))
                                 (if (gx#stx-pair/null? _hd1288712939_)
                                     (let ((_g41290_
                                            (gx#syntax-split-splice
                                             _hd1288712939_
                                             '0)))
                                       (begin
                                         (let ((_g41291_
                                                (if (##values? _g41290_)
                                                    (##vector-length _g41290_)
                                                    1)))
                                           (if (not (##fx= _g41291_ 2))
                                               (error "Context expects 2 values"
                                                      _g41291_)))
                                         (let ((_target1288912945_
                                                (##vector-ref _g41290_ 0))
                                               (_tl1289112948_
                                                (##vector-ref _g41290_ 1)))
                                           (if (gx#stx-null? _tl1289112948_)
                                               (letrec ((_loop1289212951_
                                                         (lambda (_hd1289012955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K-left1289612958_)
                   (if (gx#stx-pair? _hd1289012955_)
                       (let ((_e1289312961_ (gx#syntax-e _hd1289012955_)))
                         (let ((_lp-hd1289412965_ (##car _e1289312961_))
                               (_lp-tl1289512968_ (##cdr _e1289312961_)))
                           (_loop1289212951_
                            _lp-tl1289512968_
                            (cons _lp-hd1289412965_ _K-left1289612958_))))
                       (let ((_K-left1289712971_ (reverse _K-left1289612958_)))
                         (if (gx#stx-pair? _tl1288812942_)
                             (let ((_e1289812975_
                                    (gx#syntax-e _tl1288812942_)))
                               (let ((_hd1289912979_ (##car _e1289812975_))
                                     (_tl1290012982_ (##cdr _e1289812975_)))
                                 (if (gx#stx-pair/null? _hd1289912979_)
                                     (let ((_g41292_
                                            (gx#syntax-split-splice
                                             _hd1289912979_
                                             '0)))
                                       (begin
                                         (let ((_g41293_
                                                (if (##values? _g41292_)
                                                    (##vector-length _g41292_)
                                                    1)))
                                           (if (not (##fx= _g41293_ 2))
                                               (error "Context expects 2 values"
                                                      _g41293_)))
                                         (let ((_target1290112985_
                                                (##vector-ref _g41292_ 0))
                                               (_tl1290312988_
                                                (##vector-ref _g41292_ 1)))
                                           (if (gx#stx-null? _tl1290312988_)
                                               (letrec ((_loop1290412991_
                                                         (lambda (_hd1290212995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K-right1290812998_)
                   (if (gx#stx-pair? _hd1290212995_)
                       (let ((_e1290513001_ (gx#syntax-e _hd1290212995_)))
                         (let ((_lp-hd1290613005_ (##car _e1290513001_))
                               (_lp-tl1290713008_ (##cdr _e1290513001_)))
                           (_loop1290412991_
                            _lp-tl1290713008_
                            (cons _lp-hd1290613005_ _K-right1290812998_))))
                       (let ((_K-right1290913011_
                              (reverse _K-right1290812998_)))
                         (if (gx#stx-pair? _tl1290012982_)
                             (let ((_e1291013015_
                                    (gx#syntax-e _tl1290012982_)))
                               (let ((_hd1291113019_ (##car _e1291013015_))
                                     (_tl1291213022_ (##cdr _e1291013015_)))
                                 (if (gx#stx-null? _tl1291213022_)
                                     ((lambda (_L13025_
                                               _L13027_
                                               _L13028_
                                               _L13029_)
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'if)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##fx<)
                                                            (cons _L12826_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L13025_ '())))
              (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                          (cons _L12827_
                                (cons _L12826_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1306213067_
                                                        _g1306313070_)
                                                 (cons _g1306213067_
                                                       _g1306313070_))
                                               '()
                                               _L13028_)))))
                    (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                                (cons _L13025_
                                      (cons _L12826_
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g1306413073_
                                                              _g1306513076_)
                                                       (cons _g1306413073_
                                                             _g1306513076_))
                                                     '()
                                                     _L13027_)))))
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _hd1291113019_
                                      _K-right1290913011_
                                      _K-left1289712971_
                                      _hd1288412929_)
                                     (_g1287712918_ _g1287812922_))))
                             (_g1287712918_ _g1287812922_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1290412991_
                                                  _target1290112985_
                                                  '()))
                                               (_g1287712918_
                                                _g1287812922_)))))
                                     (_g1287712918_ _g1287812922_))))
                             (_g1287712918_ _g1287812922_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1289212951_
                                                  _target1288912945_
                                                  '()))
                                               (_g1287712918_
                                                _g1287812922_)))))
                                     (_g1287712918_ _g1287812922_))))
                             (_g1287712918_ _g1287812922_))))
                     (_g1287712918_ _g1287812922_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1287613079_
                                                  (list _mid12860_
                                                        _left12871_
                                                        _right12873_
                                                        (fx+ _mid12860_
                                                             (gx#stx-e
                                                              _L12827_))))))))))
                                     _K1275112820_
                                     _hd1274112788_
                                     _hd1273812778_))))))
                    (_loop1274612800_ _target1274312794_ '()))
                  (_g1272912757_ _g1273012761_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1272912757_
                                                 _g1273012761_))))
                                        (_g1272912757_ _g1273012761_))))
                                (_g1272912757_ _g1273012761_))))
                        (_g1272912757_ _g1273012761_)))))
            (_g1272813083_ _stx12723_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#do|
      (lambda (_$stx13103_)
        (let* ((_g1310713178_
                (lambda (_g1310813174_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1310813174_)))
               (_g1310613467_
                (lambda (_g1310813182_)
                  (if (gx#stx-pair? _g1310813182_)
                      (let ((_e1311513185_ (gx#syntax-e _g1310813182_)))
                        (let ((_hd1311613189_ (##car _e1311513185_))
                              (_tl1311713192_ (##cdr _e1311513185_)))
                          (if (gx#stx-pair? _tl1311713192_)
                              (let ((_e1311813195_
                                     (gx#syntax-e _tl1311713192_)))
                                (let ((_hd1311913199_ (##car _e1311813195_))
                                      (_tl1312013202_ (##cdr _e1311813195_)))
                                  (if (gx#stx-pair/null? _hd1311913199_)
                                      (let ((_g41294_
                                             (gx#syntax-split-splice
                                              _hd1311913199_
                                              '0)))
                                        (begin
                                          (let ((_g41295_
                                                 (if (##values? _g41294_)
                                                     (##vector-length _g41294_)
                                                     1)))
                                            (if (not (##fx= _g41295_ 2))
                                                (error "Context expects 2 values"
                                                       _g41295_)))
                                          (let ((_target1312113205_
                                                 (##vector-ref _g41294_ 0))
                                                (_tl1312313208_
                                                 (##vector-ref _g41294_ 1)))
                                            (if (gx#stx-null? _tl1312313208_)
                                                (letrec ((_loop1312413211_
                                                          (lambda (_hd1312213215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _step1312813218_
                           _init1312913220_
                           _var1313013222_)
                    (if (gx#stx-pair? _hd1312213215_)
                        (let ((_e1312513225_ (gx#syntax-e _hd1312213215_)))
                          (let ((_lp-hd1312613229_ (##car _e1312513225_))
                                (_lp-tl1312713232_ (##cdr _e1312513225_)))
                            (if (gx#stx-pair? _lp-hd1312613229_)
                                (let ((_e1313413235_
                                       (gx#syntax-e _lp-hd1312613229_)))
                                  (let ((_hd1313513239_ (##car _e1313413235_))
                                        (_tl1313613242_ (##cdr _e1313413235_)))
                                    (if (gx#stx-pair? _tl1313613242_)
                                        (let ((_e1313713245_
                                               (gx#syntax-e _tl1313613242_)))
                                          (let ((_hd1313813249_
                                                 (##car _e1313713245_))
                                                (_tl1313913252_
                                                 (##cdr _e1313713245_)))
                                            (if (gx#stx-pair/null?
                                                 _tl1313913252_)
                                                (let ((_g41296_
                                                       (gx#syntax-split-splice
                                                        _tl1313913252_
                                                        '0)))
                                                  (begin
                                                    (let ((_g41297_
                                                           (if (##values?
                                                                _g41296_)
                                                               (##vector-length
                                                                _g41296_)
                                                               1)))
                                                      (if (not (##fx= _g41297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g41297_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1314013255_
                                                           (##vector-ref
                                                            _g41296_
                                                            0))
                                                          (_tl1314213258_
                                                           (##vector-ref
                                                            _g41296_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1314213258_)
                                                          (letrec ((_loop1314313261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1314113265_ _step1314713268_)
                              (if (gx#stx-pair? _hd1314113265_)
                                  (let ((_e1314413271_
                                         (gx#syntax-e _hd1314113265_)))
                                    (let ((_lp-hd1314513275_
                                           (##car _e1314413271_))
                                          (_lp-tl1314613278_
                                           (##cdr _e1314413271_)))
                                      (_loop1314313261_
                                       _lp-tl1314613278_
                                       (cons _lp-hd1314513275_
                                             _step1314713268_))))
                                  (let ((_step1314813281_
                                         (reverse _step1314713268_)))
                                    (_loop1312413211_
                                     _lp-tl1312713232_
                                     (cons _step1314813281_ _step1312813218_)
                                     (cons _hd1313813249_ _init1312913220_)
                                     (cons _hd1313513239_
                                           _var1313013222_)))))))
                    (_loop1314313261_ _target1314013255_ '()))
                  (_g1310713178_ _g1310813182_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1310713178_
                                                 _g1310813182_))))
                                        (_g1310713178_ _g1310813182_))))
                                (_g1310713178_ _g1310813182_))))
                        (let ((_step1313113285_ (reverse _step1312813218_))
                              (_init1313213288_ (reverse _init1312913220_))
                              (_var1313313290_ (reverse _var1313013222_)))
                          (if (gx#stx-pair? _tl1312013202_)
                              (let ((_e1314913293_
                                     (gx#syntax-e _tl1312013202_)))
                                (let ((_hd1315013297_ (##car _e1314913293_))
                                      (_tl1315113300_ (##cdr _e1314913293_)))
                                  (if (gx#stx-pair? _hd1315013297_)
                                      (let ((_e1315213303_
                                             (gx#syntax-e _hd1315013297_)))
                                        (let ((_hd1315313307_
                                               (##car _e1315213303_))
                                              (_tl1315413310_
                                               (##cdr _e1315213303_)))
                                          (if (gx#stx-pair/null?
                                               _tl1315413310_)
                                              (let ((_g41298_
                                                     (gx#syntax-split-splice
                                                      _tl1315413310_
                                                      '0)))
                                                (begin
                                                  (let ((_g41299_
                                                         (if (##values?
                                                              _g41298_)
                                                             (##vector-length
                                                              _g41298_)
                                                             1)))
                                                    (if (not (##fx= _g41299_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g41299_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1315513313_
                                                         (##vector-ref
                                                          _g41298_
                                                          0))
                                                        (_tl1315713316_
                                                         (##vector-ref
                                                          _g41298_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl1315713316_)
                                                        (letrec ((_loop1315813319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1315613323_ _fini1316213326_)
                            (if (gx#stx-pair? _hd1315613323_)
                                (let ((_e1315913329_
                                       (gx#syntax-e _hd1315613323_)))
                                  (let ((_lp-hd1316013333_
                                         (##car _e1315913329_))
                                        (_lp-tl1316113336_
                                         (##cdr _e1315913329_)))
                                    (_loop1315813319_
                                     _lp-tl1316113336_
                                     (cons _lp-hd1316013333_
                                           _fini1316213326_))))
                                (let ((_fini1316313339_
                                       (reverse _fini1316213326_)))
                                  (if (gx#stx-pair/null? _tl1315113300_)
                                      (let ((_g41300_
                                             (gx#syntax-split-splice
                                              _tl1315113300_
                                              '0)))
                                        (begin
                                          (let ((_g41301_
                                                 (if (##values? _g41300_)
                                                     (##vector-length _g41300_)
                                                     1)))
                                            (if (not (##fx= _g41301_ 2))
                                                (error "Context expects 2 values"
                                                       _g41301_)))
                                          (let ((_target1316413343_
                                                 (##vector-ref _g41300_ 0))
                                                (_tl1316613346_
                                                 (##vector-ref _g41300_ 1)))
                                            (if (gx#stx-null? _tl1316613346_)
                                                (letrec ((_loop1316713349_
                                                          (lambda (_hd1316513353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1317113356_)
                    (if (gx#stx-pair? _hd1316513353_)
                        (let ((_e1316813359_ (gx#syntax-e _hd1316513353_)))
                          (let ((_lp-hd1316913363_ (##car _e1316813359_))
                                (_lp-tl1317013366_ (##cdr _e1316813359_)))
                            (_loop1316713349_
                             _lp-tl1317013366_
                             (cons _lp-hd1316913363_ _body1317113356_))))
                        (let ((_body1317213369_ (reverse _body1317113356_)))
                          ((lambda (_L13373_
                                    _L13375_
                                    _L13376_
                                    _L13377_
                                    _L13378_
                                    _L13379_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1341213415_
                                                    _g1341313418_)
                                             (cons _g1341213415_
                                                   _g1341313418_))
                                           '()
                                           _L13379_)))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _L13378_
                                                      _L13379_)
                                                     (foldr (lambda (_g1342013433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1342113436_
                             _g1342213438_)
                      (cons (cons _g1342113436_ (cons _g1342013433_ '()))
                            _g1342213438_))
                    '()
                    _L13378_
                    _L13379_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _L13376_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1342313441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1342413444_)
                  (cons _g1342313441_ _g1342413444_))
                '()
                _L13375_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (cons (cons (gx#datum->syntax '#f 'begin)
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1342513447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1342613450_)
                  (cons _g1342513447_ _g1342613450_))
                (cons (cons (gx#datum->syntax '#f '$loop)
                            (begin
                              (gx#syntax-check-splice-targets
                               _L13377_
                               _L13379_)
                              (foldr (lambda (_g1342713453_
                                              _g1342813456_
                                              _g1342913458_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'begin)
                                                   (cons _g1342813456_
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g1343013461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1343113464_)
                            (cons _g1343013461_ _g1343113464_))
                          '()
                          _g1342713453_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g1342913458_))
                                     '()
                                     _L13377_
                                     _L13379_)))
                      '())
                _L13373_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_g1310713178_ _g1310813182_)))
                           _body1317213369_
                           _fini1316313339_
                           _hd1315313307_
                           _step1313113285_
                           _init1313213288_
                           _var1313313290_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1316713349_
                                                   _target1316413343_
                                                   '()))
                                                (_g1310713178_
                                                 _g1310813182_)))))
                                      (_g1310713178_ _g1310813182_)))))))
                  (_loop1315813319_ _target1315513313_ '()))
                (_g1310713178_ _g1310813182_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1310713178_ _g1310813182_))))
                                      (_g1310713178_ _g1310813182_))))
                              (_g1310713178_ _g1310813182_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1312413211_
                                                   _target1312113205_
                                                   '()
                                                   '()
                                                   '()))
                                                (_g1310713178_
                                                 _g1310813182_)))))
                                      (_g1310713178_ _g1310813182_))))
                              (_g1310713178_ _g1310813182_))))
                      (_g1310713178_ _g1310813182_)))))
          (_g1310613467_ _$stx13103_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#do-while|
      (lambda (_$stx13475_)
        (let* ((_g1347913502_
                (lambda (_g1348013498_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1348013498_)))
               (_g1347813573_
                (lambda (_g1348013506_)
                  (if (gx#stx-pair? _g1348013506_)
                      (let ((_e1348513509_ (gx#syntax-e _g1348013506_)))
                        (let ((_hd1348613513_ (##car _e1348513509_))
                              (_tl1348713516_ (##cdr _e1348513509_)))
                          (if (gx#stx-pair? _tl1348713516_)
                              (let ((_e1348813519_
                                     (gx#syntax-e _tl1348713516_)))
                                (let ((_hd1348913523_ (##car _e1348813519_))
                                      (_tl1349013526_ (##cdr _e1348813519_)))
                                  (if (gx#stx-pair? _tl1349013526_)
                                      (let ((_e1349113529_
                                             (gx#syntax-e _tl1349013526_)))
                                        (let ((_hd1349213533_
                                               (##car _e1349113529_))
                                              (_tl1349313536_
                                               (##cdr _e1349113529_)))
                                          (if (gx#stx-pair? _hd1349213533_)
                                              (let ((_e1349413539_
                                                     (gx#syntax-e
                                                      _hd1349213533_)))
                                                (let ((_hd1349513543_
                                                       (##car _e1349413539_))
                                                      (_tl1349613546_
                                                       (##cdr _e1349413539_)))
                                                  ((lambda (_L13549_
                                                            _L13551_
                                                            _L13552_
                                                            _L13553_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'do)
                                                           (cons _L13553_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (gx#datum->syntax '#f 'not)
                                           (cons _L13552_ '()))
                                     _L13551_)
                               _L13549_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl1349313536_
                                                   _tl1349613546_
                                                   _hd1349513543_
                                                   _hd1348913523_)))
                                              (_g1347913502_ _g1348013506_))))
                                      (_g1347913502_ _g1348013506_))))
                              (_g1347913502_ _g1348013506_))))
                      (_g1347913502_ _g1348013506_)))))
          (_g1347813573_ _$stx13475_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#begin0|
      (lambda (_$stx13577_)
        (let* ((___stx3738137382_ _$stx13577_)
               (_g1358213613_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3738137382_))))
          (let ((___kont3738437385_ (lambda (_L13725_) _L13725_))
                (___kont3738637387_
                 (lambda (_L13670_ _L13672_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$r)
                                     (cons _L13672_ '()))
                               (cons (cons (gx#datum->syntax '#f '%#expression)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g1368913692_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1369013695_)
                          (cons _g1368913692_ _g1369013695_))
                        '()
                        _L13670_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (gx#datum->syntax '#f '$r)
                                           '())))))))
            (let ((___match3742437425_
                   (lambda (_e1359313620_
                            _hd1359413624_
                            _tl1359513627_
                            _e1359613630_
                            _hd1359713634_
                            _tl1359813637_
                            ___splice3738837389_
                            _target1359913640_
                            _tl1360113643_)
                     (letrec ((_loop1360213646_
                               (lambda (_hd1360013650_ _rest1360613653_)
                                 (if (gx#stx-pair? _hd1360013650_)
                                     (let ((_e1360313656_
                                            (gx#syntax-e _hd1360013650_)))
                                       (let ((_lp-tl1360513663_
                                              (##cdr _e1360313656_))
                                             (_lp-hd1360413660_
                                              (##car _e1360313656_)))
                                         (_loop1360213646_
                                          _lp-tl1360513663_
                                          (cons _lp-hd1360413660_
                                                _rest1360613653_))))
                                     (let ((_rest1360713666_
                                            (reverse _rest1360613653_)))
                                       (___kont3738637387_
                                        _rest1360713666_
                                        _hd1359713634_))))))
                       (_loop1360213646_ _target1359913640_ '())))))
              (if (gx#stx-pair? ___stx3738137382_)
                  (let ((_e1358513705_ (gx#syntax-e ___stx3738137382_)))
                    (let ((_tl1358713712_ (##cdr _e1358513705_))
                          (_hd1358613709_ (##car _e1358513705_)))
                      (if (gx#stx-pair? _tl1358713712_)
                          (let ((_e1358813715_ (gx#syntax-e _tl1358713712_)))
                            (let ((_tl1359013722_ (##cdr _e1358813715_))
                                  (_hd1358913719_ (##car _e1358813715_)))
                              (if (gx#stx-null? _tl1359013722_)
                                  (___kont3738437385_ _hd1358913719_)
                                  (if (gx#stx-pair/null? _tl1359013722_)
                                      (let ((___splice3738837389_
                                             (gx#syntax-split-splice
                                              _tl1359013722_
                                              '0)))
                                        (let ((_tl1360113643_
                                               (##vector-ref
                                                ___splice3738837389_
                                                '1))
                                              (_target1359913640_
                                               (##vector-ref
                                                ___splice3738837389_
                                                '0)))
                                          (if (gx#stx-null? _tl1360113643_)
                                              (___match3742437425_
                                               _e1358513705_
                                               _hd1358613709_
                                               _tl1358713712_
                                               _e1358813715_
                                               _hd1358913719_
                                               _tl1359013722_
                                               ___splice3738837389_
                                               _target1359913640_
                                               _tl1360113643_)
                                              (_g1358213613_))))
                                      (_g1358213613_)))))
                          (_g1358213613_))))
                  (_g1358213613_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#rec|
      (lambda (_$stx13743_)
        (let* ((___stx3742737428_ _$stx13743_)
               (_g1374913802_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3742737428_))))
          (let ((___kont3743037431_
                 (lambda (_L14004_ _L14006_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _L14006_ (cons _L14004_ '())) '())
                               (cons _L14006_ '())))))
                (___kont3743237433_
                 (lambda (_L13948_ _L13950_)
                   (cons (gx#datum->syntax '#f 'letrec-values)
                         (cons (cons (cons _L13950_ (cons _L13948_ '())) '())
                               (cons (cons (gx#datum->syntax '#f 'values)
                                           _L13950_)
                                     '())))))
                (___kont3743437435_
                 (lambda (_L13869_ _L13871_ _L13872_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _L13872_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons _L13871_
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1389213895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1389313898_)
                                (cons _g1389213895_ _g1389313898_))
                              '()
                              _L13869_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons _L13872_ '()))))))
            (let* ((___match3751437515_
                    (lambda (_e1377913809_
                             _hd1378013813_
                             _tl1378113816_
                             _e1378213819_
                             _hd1378313823_
                             _tl1378413826_
                             _e1378513829_
                             _hd1378613833_
                             _tl1378713836_
                             ___splice3743637437_
                             _target1378813839_
                             _tl1379013842_)
                      (letrec ((_loop1379113845_
                                (lambda (_hd1378913849_ _body1379513852_)
                                  (if (gx#stx-pair? _hd1378913849_)
                                      (let ((_e1379213855_
                                             (gx#syntax-e _hd1378913849_)))
                                        (let ((_lp-tl1379413862_
                                               (##cdr _e1379213855_))
                                              (_lp-hd1379313859_
                                               (##car _e1379213855_)))
                                          (_loop1379113845_
                                           _lp-tl1379413862_
                                           (cons _lp-hd1379313859_
                                                 _body1379513852_))))
                                      (let ((_body1379613865_
                                             (reverse _body1379513852_)))
                                        (let ((_L13869_ _body1379613865_)
                                              (_L13871_ _tl1378713836_)
                                              (_L13872_ _hd1378613833_))
                                          (if (gx#identifier? _L13872_)
                                              (___kont3743437435_
                                               _L13869_
                                               _L13871_
                                               _L13872_)
                                              (_g1374913802_))))))))
                        (_loop1379113845_ _target1378813839_ '()))))
                   (___match3748837489_
                    (lambda (_e1376413908_
                             _hd1376513912_
                             _tl1376613915_
                             _e1376713918_
                             _hd1376813922_
                             _tl1376913925_
                             _e1377013928_
                             _hd1377113932_
                             _tl1377213935_
                             _e1377313938_
                             _hd1377413942_
                             _tl1377513945_)
                      (let ((_L13948_ _hd1377413942_)
                            (_L13950_ _tl1377213935_))
                        (if (gx#identifier-list? _L13950_)
                            (___kont3743237433_ _L13948_ _L13950_)
                            (if (gx#stx-pair/null? _tl1376913925_)
                                (let ((___splice3743637437_
                                       (gx#syntax-split-splice
                                        _tl1376913925_
                                        '0)))
                                  (let ((_tl1379013842_
                                         (##vector-ref
                                          ___splice3743637437_
                                          '1))
                                        (_target1378813839_
                                         (##vector-ref
                                          ___splice3743637437_
                                          '0)))
                                    (if (gx#stx-null? _tl1379013842_)
                                        (___match3751437515_
                                         _e1376413908_
                                         _hd1376513912_
                                         _tl1376613915_
                                         _e1376713918_
                                         _hd1376813922_
                                         _tl1376913925_
                                         _e1377013928_
                                         _hd1377113932_
                                         _tl1377213935_
                                         ___splice3743637437_
                                         _target1378813839_
                                         _tl1379013842_)
                                        (_g1374913802_))))
                                (_g1374913802_))))))
                   (___match3745837459_
                    (lambda (_e1375313974_
                             _hd1375413978_
                             _tl1375513981_
                             _e1375613984_
                             _hd1375713988_
                             _tl1375813991_
                             _e1375913994_
                             _hd1376013998_
                             _tl1376114001_)
                      (let ((_L14004_ _hd1376013998_)
                            (_L14006_ _hd1375713988_))
                        (if (gx#identifier? _L14006_)
                            (___kont3743037431_ _L14004_ _L14006_)
                            (if (gx#stx-pair? _hd1375713988_)
                                (let ((_e1377013928_
                                       (gx#syntax-e _hd1375713988_)))
                                  (let ((_tl1377213935_ (##cdr _e1377013928_))
                                        (_hd1377113932_ (##car _e1377013928_)))
                                    (if (gx#identifier? _hd1377113932_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core$<sugar>$<sugar:2>[1]#_g41302_|
                                             _hd1377113932_)
                                            (___match3748837489_
                                             _e1375313974_
                                             _hd1375413978_
                                             _tl1375513981_
                                             _e1375613984_
                                             _hd1375713988_
                                             _tl1375813991_
                                             _e1377013928_
                                             _hd1377113932_
                                             _tl1377213935_
                                             _e1375913994_
                                             _hd1376013998_
                                             _tl1376114001_)
                                            (if (gx#stx-pair/null?
                                                 _tl1375813991_)
                                                (let ((___splice3743637437_
                                                       (gx#syntax-split-splice
                                                        _tl1375813991_
                                                        '0)))
                                                  (let ((_tl1379013842_
                                                         (##vector-ref
                                                          ___splice3743637437_
                                                          '1))
                                                        (_target1378813839_
                                                         (##vector-ref
                                                          ___splice3743637437_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl1379013842_)
                                                        (___match3751437515_
                                                         _e1375313974_
                                                         _hd1375413978_
                                                         _tl1375513981_
                                                         _e1375613984_
                                                         _hd1375713988_
                                                         _tl1375813991_
                                                         _e1377013928_
                                                         _hd1377113932_
                                                         _tl1377213935_
                                                         ___splice3743637437_
                                                         _target1378813839_
                                                         _tl1379013842_)
                                                        (_g1374913802_))))
                                                (_g1374913802_)))
                                        (if (gx#stx-pair/null? _tl1375813991_)
                                            (let ((___splice3743637437_
                                                   (gx#syntax-split-splice
                                                    _tl1375813991_
                                                    '0)))
                                              (let ((_tl1379013842_
                                                     (##vector-ref
                                                      ___splice3743637437_
                                                      '1))
                                                    (_target1378813839_
                                                     (##vector-ref
                                                      ___splice3743637437_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl1379013842_)
                                                    (___match3751437515_
                                                     _e1375313974_
                                                     _hd1375413978_
                                                     _tl1375513981_
                                                     _e1375613984_
                                                     _hd1375713988_
                                                     _tl1375813991_
                                                     _e1377013928_
                                                     _hd1377113932_
                                                     _tl1377213935_
                                                     ___splice3743637437_
                                                     _target1378813839_
                                                     _tl1379013842_)
                                                    (_g1374913802_))))
                                            (_g1374913802_)))))
                                (_g1374913802_)))))))
              (if (gx#stx-pair? ___stx3742737428_)
                  (let ((_e1375313974_ (gx#syntax-e ___stx3742737428_)))
                    (let ((_tl1375513981_ (##cdr _e1375313974_))
                          (_hd1375413978_ (##car _e1375313974_)))
                      (if (gx#stx-pair? _tl1375513981_)
                          (let ((_e1375613984_ (gx#syntax-e _tl1375513981_)))
                            (let ((_tl1375813991_ (##cdr _e1375613984_))
                                  (_hd1375713988_ (##car _e1375613984_)))
                              (if (gx#stx-pair? _tl1375813991_)
                                  (let ((_e1375913994_
                                         (gx#syntax-e _tl1375813991_)))
                                    (let ((_tl1376114001_
                                           (##cdr _e1375913994_))
                                          (_hd1376013998_
                                           (##car _e1375913994_)))
                                      (if (gx#stx-null? _tl1376114001_)
                                          (___match3745837459_
                                           _e1375313974_
                                           _hd1375413978_
                                           _tl1375513981_
                                           _e1375613984_
                                           _hd1375713988_
                                           _tl1375813991_
                                           _e1375913994_
                                           _hd1376013998_
                                           _tl1376114001_)
                                          (if (gx#stx-pair? _hd1375713988_)
                                              (let ((_e1377013928_
                                                     (gx#syntax-e
                                                      _hd1375713988_)))
                                                (let ((_tl1377213935_
                                                       (##cdr _e1377013928_))
                                                      (_hd1377113932_
                                                       (##car _e1377013928_)))
                                                  (if (gx#stx-pair/null?
                                                       _tl1375813991_)
                                                      (let ((___splice3743637437_
                                                             (gx#syntax-split-splice
                                                              _tl1375813991_
                                                              '0)))
                                                        (let ((_tl1379013842_
                                                               (##vector-ref
                                                                ___splice3743637437_
                                                                '1))
                                                              (_target1378813839_
                                                               (##vector-ref
                                                                ___splice3743637437_
                                                                '0)))
                                                          (if (gx#stx-null?
                                                               _tl1379013842_)
                                                              (___match3751437515_
                                                               _e1375313974_
                                                               _hd1375413978_
                                                               _tl1375513981_
                                                               _e1375613984_
                                                               _hd1375713988_
                                                               _tl1375813991_
                                                               _e1377013928_
                                                               _hd1377113932_
                                                               _tl1377213935_
                                                               ___splice3743637437_
                                                               _target1378813839_
                                                               _tl1379013842_)
                                                              (_g1374913802_))))
                                                      (_g1374913802_))))
                                              (_g1374913802_)))))
                                  (if (gx#stx-pair? _hd1375713988_)
                                      (let ((_e1377013928_
                                             (gx#syntax-e _hd1375713988_)))
                                        (let ((_tl1377213935_
                                               (##cdr _e1377013928_))
                                              (_hd1377113932_
                                               (##car _e1377013928_)))
                                          (if (gx#stx-pair/null?
                                               _tl1375813991_)
                                              (let ((___splice3743637437_
                                                     (gx#syntax-split-splice
                                                      _tl1375813991_
                                                      '0)))
                                                (let ((_tl1379013842_
                                                       (##vector-ref
                                                        ___splice3743637437_
                                                        '1))
                                                      (_target1378813839_
                                                       (##vector-ref
                                                        ___splice3743637437_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl1379013842_)
                                                      (___match3751437515_
                                                       _e1375313974_
                                                       _hd1375413978_
                                                       _tl1375513981_
                                                       _e1375613984_
                                                       _hd1375713988_
                                                       _tl1375813991_
                                                       _e1377013928_
                                                       _hd1377113932_
                                                       _tl1377213935_
                                                       ___splice3743637437_
                                                       _target1378813839_
                                                       _tl1379013842_)
                                                      (_g1374913802_))))
                                              (_g1374913802_))))
                                      (_g1374913802_)))))
                          (_g1374913802_))))
                  (_g1374913802_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet|
      (lambda (_stx14026_)
        (letrec ((_let-head?14029_
                  (lambda (_x14576_)
                    (let* ((___stx3751737518_ _x14576_)
                           (_g1458014591_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3751737518_))))
                      (let ((___kont3752037521_
                             (lambda (_L14619_)
                               (gx#stx-andmap gx#identifier? _L14619_)))
                            (___kont3752237523_
                             (lambda () (gx#identifier? _x14576_))))
                        (if (gx#stx-pair? ___stx3751737518_)
                            (let ((_e1458314609_
                                   (gx#syntax-e ___stx3751737518_)))
                              (let ((_tl1458514616_ (##cdr _e1458314609_))
                                    (_hd1458414613_ (##car _e1458314609_)))
                                (if (gx#identifier? _hd1458414613_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:2>[1]#_g41303_|
                                         _hd1458414613_)
                                        (___kont3752037521_ _tl1458514616_)
                                        (___kont3752237523_))
                                    (___kont3752237523_))))
                            (___kont3752237523_))))))
                 (_let-head14031_
                  (lambda (_x14516_)
                    (let* ((___stx3753737538_ _x14516_)
                           (_g1452014531_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3753737538_))))
                      (let ((___kont3754037541_ (lambda (_L14559_) _L14559_))
                            (___kont3754237543_ (lambda () (list _x14516_))))
                        (if (gx#stx-pair? ___stx3753737538_)
                            (let ((_e1452314549_
                                   (gx#syntax-e ___stx3753737538_)))
                              (let ((_tl1452514556_ (##cdr _e1452314549_))
                                    (_hd1452414553_ (##car _e1452314549_)))
                                (if (gx#identifier? _hd1452414553_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:2>[1]#_g41304_|
                                         _hd1452414553_)
                                        (___kont3754037541_ _tl1452514556_)
                                        (___kont3754237543_))
                                    (___kont3754237543_))))
                            (___kont3754237543_)))))))
          (let* ((___stx3755737558_ _stx14026_)
                 (_g1403414092_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx3755737558_))))
            (let ((___kont3756037561_
                   (lambda (_L14489_ _L14491_ _L14492_ _L14493_)
                     (cons _L14493_
                           (cons (cons (cons _L14492_ (cons _L14491_ '())) '())
                                 _L14489_))))
                  (___kont3756237563_
                   (lambda (_L14203_ _L14205_ _L14206_)
                     (let* ((_g1423814271_
                             (lambda (_g1423914267_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1423914267_)))
                            (_g1423714422_
                             (lambda (_g1423914275_)
                               (if (gx#stx-pair? _g1423914275_)
                                   (let ((_e1424214278_
                                          (gx#syntax-e _g1423914275_)))
                                     (let ((_hd1424314282_
                                            (##car _e1424214278_))
                                           (_tl1424414285_
                                            (##cdr _e1424214278_)))
                                       (if (gx#stx-pair/null? _hd1424314282_)
                                           (let ((_g41305_
                                                  (gx#syntax-split-splice
                                                   _hd1424314282_
                                                   '0)))
                                             (begin
                                               (let ((_g41306_
                                                      (if (##values? _g41305_)
                                                          (##vector-length
                                                           _g41305_)
                                                          1)))
                                                 (if (not (##fx= _g41306_ 2))
                                                     (error "Context expects 2 values"
                                                            _g41306_)))
                                               (let ((_target1424514288_
                                                      (##vector-ref
                                                       _g41305_
                                                       0))
                                                     (_tl1424714291_
                                                      (##vector-ref
                                                       _g41305_
                                                       1)))
                                                 (if (gx#stx-null?
                                                      _tl1424714291_)
                                                     (letrec ((_loop1424814294_
                                                               (lambda (_hd1424614298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _$e1425214301_)
                         (if (gx#stx-pair? _hd1424614298_)
                             (let ((_e1424914304_
                                    (gx#syntax-e _hd1424614298_)))
                               (let ((_lp-hd1425014308_ (##car _e1424914304_))
                                     (_lp-tl1425114311_ (##cdr _e1424914304_)))
                                 (_loop1424814294_
                                  _lp-tl1425114311_
                                  (cons _lp-hd1425014308_ _$e1425214301_))))
                             (let ((_$e1425314314_ (reverse _$e1425214301_)))
                               (if (gx#stx-pair? _tl1424414285_)
                                   (let ((_e1425414318_
                                          (gx#syntax-e _tl1424414285_)))
                                     (let ((_hd1425514322_
                                            (##car _e1425414318_))
                                           (_tl1425614325_
                                            (##cdr _e1425414318_)))
                                       (if (gx#stx-pair/null? _hd1425514322_)
                                           (let ((_g41307_
                                                  (gx#syntax-split-splice
                                                   _hd1425514322_
                                                   '0)))
                                             (begin
                                               (let ((_g41308_
                                                      (if (##values? _g41307_)
                                                          (##vector-length
                                                           _g41307_)
                                                          1)))
                                                 (if (not (##fx= _g41308_ 2))
                                                     (error "Context expects 2 values"
                                                            _g41308_)))
                                               (let ((_target1425714328_
                                                      (##vector-ref
                                                       _g41307_
                                                       0))
                                                     (_tl1425914331_
                                                      (##vector-ref
                                                       _g41307_
                                                       1)))
                                                 (if (gx#stx-null?
                                                      _tl1425914331_)
                                                     (letrec ((_loop1426014334_
                                                               (lambda (_hd1425814338_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd-bind1426414341_)
                         (if (gx#stx-pair? _hd1425814338_)
                             (let ((_e1426114344_
                                    (gx#syntax-e _hd1425814338_)))
                               (let ((_lp-hd1426214348_ (##car _e1426114344_))
                                     (_lp-tl1426314351_ (##cdr _e1426114344_)))
                                 (_loop1426014334_
                                  _lp-tl1426314351_
                                  (cons _lp-hd1426214348_
                                        _hd-bind1426414341_))))
                             (let ((_hd-bind1426514354_
                                    (reverse _hd-bind1426414341_)))
                               (if (gx#stx-null? _tl1425614325_)
                                   ((lambda (_L14358_ _L14360_)
                                      (let ()
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L14205_
                                                       _L14360_)
                                                      (foldr (lambda (_g1438314394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1438414397_
                              _g1438514399_)
                       (cons (cons (cons _g1438414397_ '())
                                   (cons _g1438314394_ '()))
                             _g1438514399_))
                     '()
                     _L14205_
                     _L14360_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'and)
                        (begin
                          '#!void
                          (foldr (lambda (_g1438614402_ _g1438714405_)
                                   (cons _g1438614402_ _g1438714405_))
                                 (cons (cons (gx#datum->syntax '#f 'let-values)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _L14360_
                                                      _L14358_)
                                                     (foldr (lambda (_g1438814408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1438914411_
                             _g1439014413_)
                      (cons (cons _g1438914411_ (cons _g1438814408_ '()))
                            _g1439014413_))
                    '()
                    _L14360_
                    _L14358_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g1439114416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1439214419_)
                      (cons _g1439114416_ _g1439214419_))
                    '()
                    _L14203_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())
                                 _L14360_)))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _hd-bind1426514354_
                                    _$e1425314314_)
                                   (_g1423814271_ _g1423914275_)))))))
               (_loop1426014334_ _target1425714328_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1423814271_
                                                      _g1423914275_)))))
                                           (_g1423814271_ _g1423914275_))))
                                   (_g1423814271_ _g1423914275_)))))))
               (_loop1424814294_ _target1424514288_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1423814271_
                                                      _g1423914275_)))))
                                           (_g1423814271_ _g1423914275_))))
                                   (_g1423814271_ _g1423914275_)))))
                       (_g1423714422_
                        (list (gx#gentemps
                               (begin
                                 '#!void
                                 (foldr (lambda (_g1442514428_ _g1442614431_)
                                          (cons _g1442514428_ _g1442614431_))
                                        '()
                                        _L14206_)))
                              (gx#stx-map
                               _let-head14031_
                               (begin
                                 '#!void
                                 (foldr (lambda (_g1443314436_ _g1443414439_)
                                          (cons _g1443314436_ _g1443414439_))
                                        '()
                                        _L14206_)))))))))
              (let* ((___match3761437615_
                      (lambda (_e1405514099_
                               _hd1405614103_
                               _tl1405714106_
                               _e1405814109_
                               _hd1405914113_
                               _tl1406014116_
                               ___splice3756437565_
                               _target1406114119_
                               _tl1406314122_)
                        (letrec ((_loop1406414125_
                                  (lambda (_hd1406214129_
                                           _e1406814132_
                                           _hd1406914134_)
                                    (if (gx#stx-pair? _hd1406214129_)
                                        (let ((_e1406514137_
                                               (gx#syntax-e _hd1406214129_)))
                                          (let ((_lp-tl1406714144_
                                                 (##cdr _e1406514137_))
                                                (_lp-hd1406614141_
                                                 (##car _e1406514137_)))
                                            (if (gx#stx-pair?
                                                 _lp-hd1406614141_)
                                                (let ((_e1407214147_
                                                       (gx#syntax-e
                                                        _lp-hd1406614141_)))
                                                  (let ((_tl1407414154_
                                                         (##cdr _e1407214147_))
                                                        (_hd1407314151_
                                                         (##car _e1407214147_)))
                                                    (if (gx#stx-pair?
                                                         _tl1407414154_)
                                                        (let ((_e1407514157_
                                                               (gx#syntax-e
                                                                _tl1407414154_)))
                                                          (let ((_tl1407714164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e1407514157_))
                        (_hd1407614161_ (##car _e1407514157_)))
                    (if (gx#stx-null? _tl1407714164_)
                        (_loop1406414125_
                         _lp-tl1406714144_
                         (cons _hd1407614161_ _e1406814132_)
                         (cons _hd1407314151_ _hd1406914134_))
                        (_g1403414092_))))
                (_g1403414092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1403414092_))))
                                        (let ((_hd1407114170_
                                               (reverse _hd1406914134_))
                                              (_e1407014167_
                                               (reverse _e1406814132_)))
                                          (if (gx#stx-pair/null?
                                               _tl1406014116_)
                                              (let ((___splice3756637567_
                                                     (gx#syntax-split-splice
                                                      _tl1406014116_
                                                      '0)))
                                                (let ((_tl1408014176_
                                                       (##vector-ref
                                                        ___splice3756637567_
                                                        '1))
                                                      (_target1407814173_
                                                       (##vector-ref
                                                        ___splice3756637567_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl1408014176_)
                                                      (letrec ((_loop1408114179_
                                                                (lambda (_hd1407914183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body1408514186_)
                          (if (gx#stx-pair? _hd1407914183_)
                              (let ((_e1408214189_
                                     (gx#syntax-e _hd1407914183_)))
                                (let ((_lp-tl1408414196_ (##cdr _e1408214189_))
                                      (_lp-hd1408314193_
                                       (##car _e1408214189_)))
                                  (_loop1408114179_
                                   _lp-tl1408414196_
                                   (cons _lp-hd1408314193_ _body1408514186_))))
                              (let ((_body1408614199_
                                     (reverse _body1408514186_)))
                                (let ((_L14203_ _body1408614199_)
                                      (_L14205_ _e1407014167_)
                                      (_L14206_ _hd1407114170_))
                                  (if (gx#stx-andmap
                                       _let-head?14029_
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1422914232_
                                                         _g1423014235_)
                                                  (cons _g1422914232_
                                                        _g1423014235_))
                                                '()
                                                _L14206_)))
                                      (___kont3756237563_
                                       _L14203_
                                       _L14205_
                                       _L14206_)
                                      (_g1403414092_))))))))
                (_loop1408114179_ _target1407814173_ '()))
              (_g1403414092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1403414092_)))))))
                          (_loop1406414125_ _target1406114119_ '() '()))))
                     (___match3759437595_
                      (lambda (_e1404014449_
                               _hd1404114453_
                               _tl1404214456_
                               _e1404314459_
                               _hd1404414463_
                               _tl1404514466_
                               _e1404614469_
                               _hd1404714473_
                               _tl1404814476_
                               _e1404914479_
                               _hd1405014483_
                               _tl1405114486_)
                        (let ((_L14489_ _tl1404514466_)
                              (_L14491_ _hd1405014483_)
                              (_L14492_ _hd1404714473_)
                              (_L14493_ _hd1404114453_))
                          (if (_let-head?14029_ _L14492_)
                              (___kont3756037561_
                               _L14489_
                               _L14491_
                               _L14492_
                               _L14493_)
                              (if (gx#stx-pair/null? _hd1404414463_)
                                  (let ((___splice3756437565_
                                         (gx#syntax-split-splice
                                          _hd1404414463_
                                          '0)))
                                    (let ((_tl1406314122_
                                           (##vector-ref
                                            ___splice3756437565_
                                            '1))
                                          (_target1406114119_
                                           (##vector-ref
                                            ___splice3756437565_
                                            '0)))
                                      (if (gx#stx-null? _tl1406314122_)
                                          (___match3761437615_
                                           _e1404014449_
                                           _hd1404114453_
                                           _tl1404214456_
                                           _e1404314459_
                                           _hd1404414463_
                                           _tl1404514466_
                                           ___splice3756437565_
                                           _target1406114119_
                                           _tl1406314122_)
                                          (_g1403414092_))))
                                  (_g1403414092_)))))))
                (if (gx#stx-pair? ___stx3755737558_)
                    (let ((_e1404014449_ (gx#syntax-e ___stx3755737558_)))
                      (let ((_tl1404214456_ (##cdr _e1404014449_))
                            (_hd1404114453_ (##car _e1404014449_)))
                        (if (gx#stx-pair? _tl1404214456_)
                            (let ((_e1404314459_ (gx#syntax-e _tl1404214456_)))
                              (let ((_tl1404514466_ (##cdr _e1404314459_))
                                    (_hd1404414463_ (##car _e1404314459_)))
                                (if (gx#stx-pair? _hd1404414463_)
                                    (let ((_e1404614469_
                                           (gx#syntax-e _hd1404414463_)))
                                      (let ((_tl1404814476_
                                             (##cdr _e1404614469_))
                                            (_hd1404714473_
                                             (##car _e1404614469_)))
                                        (if (gx#stx-pair? _tl1404814476_)
                                            (let ((_e1404914479_
                                                   (gx#syntax-e
                                                    _tl1404814476_)))
                                              (let ((_tl1405114486_
                                                     (##cdr _e1404914479_))
                                                    (_hd1405014483_
                                                     (##car _e1404914479_)))
                                                (if (gx#stx-null?
                                                     _tl1405114486_)
                                                    (___match3759437595_
                                                     _e1404014449_
                                                     _hd1404114453_
                                                     _tl1404214456_
                                                     _e1404314459_
                                                     _hd1404414463_
                                                     _tl1404514466_
                                                     _e1404614469_
                                                     _hd1404714473_
                                                     _tl1404814476_
                                                     _e1404914479_
                                                     _hd1405014483_
                                                     _tl1405114486_)
                                                    (if (gx#stx-pair/null?
                                                         _hd1404414463_)
                                                        (let ((___splice3756437565_
                                                               (gx#syntax-split-splice
                                                                _hd1404414463_
                                                                '0)))
                                                          (let ((_tl1406314122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice3756437565_ '1))
                        (_target1406114119_
                         (##vector-ref ___splice3756437565_ '0)))
                    (if (gx#stx-null? _tl1406314122_)
                        (___match3761437615_
                         _e1404014449_
                         _hd1404114453_
                         _tl1404214456_
                         _e1404314459_
                         _hd1404414463_
                         _tl1404514466_
                         ___splice3756437565_
                         _target1406114119_
                         _tl1406314122_)
                        (_g1403414092_))))
                (_g1403414092_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _hd1404414463_)
                                                (let ((___splice3756437565_
                                                       (gx#syntax-split-splice
                                                        _hd1404414463_
                                                        '0)))
                                                  (let ((_tl1406314122_
                                                         (##vector-ref
                                                          ___splice3756437565_
                                                          '1))
                                                        (_target1406114119_
                                                         (##vector-ref
                                                          ___splice3756437565_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl1406314122_)
                                                        (___match3761437615_
                                                         _e1404014449_
                                                         _hd1404114453_
                                                         _tl1404214456_
                                                         _e1404314459_
                                                         _hd1404414463_
                                                         _tl1404514466_
                                                         ___splice3756437565_
                                                         _target1406114119_
                                                         _tl1406314122_)
                                                        (_g1403414092_))))
                                                (_g1403414092_)))))
                                    (if (gx#stx-pair/null? _hd1404414463_)
                                        (let ((___splice3756437565_
                                               (gx#syntax-split-splice
                                                _hd1404414463_
                                                '0)))
                                          (let ((_tl1406314122_
                                                 (##vector-ref
                                                  ___splice3756437565_
                                                  '1))
                                                (_target1406114119_
                                                 (##vector-ref
                                                  ___splice3756437565_
                                                  '0)))
                                            (if (gx#stx-null? _tl1406314122_)
                                                (___match3761437615_
                                                 _e1404014449_
                                                 _hd1404114453_
                                                 _tl1404214456_
                                                 _e1404314459_
                                                 _hd1404414463_
                                                 _tl1404514466_
                                                 ___splice3756437565_
                                                 _target1406114119_
                                                 _tl1406314122_)
                                                (_g1403414092_))))
                                        (_g1403414092_)))))
                            (_g1403414092_))))
                    (_g1403414092_))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet*|
      (lambda (_$stx14640_)
        (let* ((___stx3761737618_ _$stx14640_)
               (_g1464514690_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3761737618_))))
          (let ((___kont3762037621_
                 (lambda (_L14848_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (begin
                                 '#!void
                                 (foldr (lambda (_g1486414867_ _g1486514870_)
                                          (cons _g1486414867_ _g1486514870_))
                                        '()
                                        _L14848_))))))
                (___kont3762437625_
                 (lambda (_L14757_ _L14759_ _L14760_ _L14761_)
                   (cons (gx#datum->syntax '#f 'alet)
                         (cons (cons _L14760_ '())
                               (cons (cons _L14761_
                                           (cons _L14759_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g1478214785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1478314788_)
                    (cons _g1478214785_ _g1478314788_))
                  '()
                  _L14757_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match3767637677_
                    (lambda (_e1466714697_
                             _hd1466814701_
                             _tl1466914704_
                             _e1467014707_
                             _hd1467114711_
                             _tl1467214714_
                             _e1467314717_
                             _hd1467414721_
                             _tl1467514724_
                             ___splice3762637627_
                             _target1467614727_
                             _tl1467814730_)
                      (letrec ((_loop1467914733_
                                (lambda (_hd1467714737_ _body1468314740_)
                                  (if (gx#stx-pair? _hd1467714737_)
                                      (let ((_e1468014743_
                                             (gx#syntax-e _hd1467714737_)))
                                        (let ((_lp-tl1468214750_
                                               (##cdr _e1468014743_))
                                              (_lp-hd1468114747_
                                               (##car _e1468014743_)))
                                          (_loop1467914733_
                                           _lp-tl1468214750_
                                           (cons _lp-hd1468114747_
                                                 _body1468314740_))))
                                      (let ((_body1468414753_
                                             (reverse _body1468314740_)))
                                        (___kont3762437625_
                                         _body1468414753_
                                         _tl1467514724_
                                         _hd1467414721_
                                         _hd1466814701_))))))
                        (_loop1467914733_ _target1467614727_ '()))))
                   (___match3765037651_
                    (lambda (_e1464814798_
                             _hd1464914802_
                             _tl1465014805_
                             _e1465114808_
                             _hd1465214812_
                             _tl1465314815_
                             ___splice3762237623_
                             _target1465414818_
                             _tl1465614821_)
                      (letrec ((_loop1465714824_
                                (lambda (_hd1465514828_ _body1466114831_)
                                  (if (gx#stx-pair? _hd1465514828_)
                                      (let ((_e1465814834_
                                             (gx#syntax-e _hd1465514828_)))
                                        (let ((_lp-tl1466014841_
                                               (##cdr _e1465814834_))
                                              (_lp-hd1465914838_
                                               (##car _e1465814834_)))
                                          (_loop1465714824_
                                           _lp-tl1466014841_
                                           (cons _lp-hd1465914838_
                                                 _body1466114831_))))
                                      (let ((_body1466214844_
                                             (reverse _body1466114831_)))
                                        (___kont3762037621_
                                         _body1466214844_))))))
                        (_loop1465714824_ _target1465414818_ '())))))
              (if (gx#stx-pair? ___stx3761737618_)
                  (let ((_e1464814798_ (gx#syntax-e ___stx3761737618_)))
                    (let ((_tl1465014805_ (##cdr _e1464814798_))
                          (_hd1464914802_ (##car _e1464814798_)))
                      (if (gx#stx-pair? _tl1465014805_)
                          (let ((_e1465114808_ (gx#syntax-e _tl1465014805_)))
                            (let ((_tl1465314815_ (##cdr _e1465114808_))
                                  (_hd1465214812_ (##car _e1465114808_)))
                              (if (gx#stx-null? _hd1465214812_)
                                  (if (gx#stx-pair/null? _tl1465314815_)
                                      (let ((___splice3762237623_
                                             (gx#syntax-split-splice
                                              _tl1465314815_
                                              '0)))
                                        (let ((_tl1465614821_
                                               (##vector-ref
                                                ___splice3762237623_
                                                '1))
                                              (_target1465414818_
                                               (##vector-ref
                                                ___splice3762237623_
                                                '0)))
                                          (if (gx#stx-null? _tl1465614821_)
                                              (___match3765037651_
                                               _e1464814798_
                                               _hd1464914802_
                                               _tl1465014805_
                                               _e1465114808_
                                               _hd1465214812_
                                               _tl1465314815_
                                               ___splice3762237623_
                                               _target1465414818_
                                               _tl1465614821_)
                                              (_g1464514690_))))
                                      (_g1464514690_))
                                  (if (gx#stx-pair? _hd1465214812_)
                                      (let ((_e1467314717_
                                             (gx#syntax-e _hd1465214812_)))
                                        (let ((_tl1467514724_
                                               (##cdr _e1467314717_))
                                              (_hd1467414721_
                                               (##car _e1467314717_)))
                                          (if (gx#stx-pair/null?
                                               _tl1465314815_)
                                              (let ((___splice3762637627_
                                                     (gx#syntax-split-splice
                                                      _tl1465314815_
                                                      '0)))
                                                (let ((_tl1467814730_
                                                       (##vector-ref
                                                        ___splice3762637627_
                                                        '1))
                                                      (_target1467614727_
                                                       (##vector-ref
                                                        ___splice3762637627_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl1467814730_)
                                                      (___match3767637677_
                                                       _e1464814798_
                                                       _hd1464914802_
                                                       _tl1465014805_
                                                       _e1465114808_
                                                       _hd1465214812_
                                                       _tl1465314815_
                                                       _e1467314717_
                                                       _hd1467414721_
                                                       _tl1467514724_
                                                       ___splice3762637627_
                                                       _target1467614727_
                                                       _tl1467814730_)
                                                      (_g1464514690_))))
                                              (_g1464514690_))))
                                      (_g1464514690_)))))
                          (_g1464514690_))))
                  (_g1464514690_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#@list|
      (lambda (_$stx14879_)
        (let* ((___stx3767937680_ _$stx14879_)
               (_g1488814946_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3767937680_))))
          (let ((___kont3768237683_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'quote) (cons '() '()))))
                (___kont3768437685_ (lambda (_L15172_) _L15172_))
                (___kont3768637687_ (lambda (_L15114_ _L15116_) _L15116_))
                (___kont3768837689_
                 (lambda (_L15056_ _L15058_ _L15059_ _L15060_)
                   (cons (gx#datum->syntax '#f 'foldr)
                         (cons (gx#datum->syntax '#f 'cons)
                               (cons (cons _L15060_ _L15056_)
                                     (cons _L15059_ '()))))))
                (___kont3769037691_
                 (lambda (_L15002_ _L15004_ _L15005_)
                   (cons (gx#datum->syntax '#f 'cons)
                         (cons _L15004_ (cons (cons _L15005_ _L15002_) '())))))
                (___kont3769237693_ (lambda (_L14963_) _L14963_)))
            (let* ((___match3776637767_
                    (lambda (_e1491915026_
                             _hd1492015030_
                             _tl1492115033_
                             _e1492215036_
                             _hd1492315040_
                             _tl1492415043_
                             _e1492515046_
                             _hd1492615050_
                             _tl1492715053_)
                      (let ((_L15056_ _tl1492715053_)
                            (_L15058_ _hd1492615050_)
                            (_L15059_ _hd1492315040_)
                            (_L15060_ _hd1492015030_))
                        (if (gx#ellipsis? _L15058_)
                            (___kont3768837689_
                             _L15056_
                             _L15058_
                             _L15059_
                             _L15060_)
                            (___kont3769037691_
                             _tl1492415043_
                             _hd1492315040_
                             _hd1492015030_)))))
                   (___match3774837749_
                    (lambda (_e1490615084_
                             _hd1490715088_
                             _tl1490815091_
                             _e1490915094_
                             _hd1491015098_
                             _tl1491115101_
                             _e1491215104_
                             _hd1491315108_
                             _tl1491415111_)
                      (let ((_L15114_ _hd1491315108_)
                            (_L15116_ _hd1491015098_))
                        (if (gx#ellipsis? _L15114_)
                            (___kont3768637687_ _L15114_ _L15116_)
                            (___match3776637767_
                             _e1490615084_
                             _hd1490715088_
                             _tl1490815091_
                             _e1490915094_
                             _hd1491015098_
                             _tl1491115101_
                             _e1491215104_
                             _hd1491315108_
                             _tl1491415111_))))))
              (if (gx#stx-pair? ___stx3767937680_)
                  (let ((_e1489015195_ (gx#syntax-e ___stx3767937680_)))
                    (let ((_tl1489215202_ (##cdr _e1489015195_))
                          (_hd1489115199_ (##car _e1489015195_)))
                      (if (gx#stx-null? _tl1489215202_)
                          (___kont3768237683_)
                          (if (gx#stx-pair? _tl1489215202_)
                              (let ((_e1489715148_
                                     (gx#syntax-e _tl1489215202_)))
                                (let ((_tl1489915155_ (##cdr _e1489715148_))
                                      (_hd1489815152_ (##car _e1489715148_)))
                                  (if (gx#stx-datum? _hd1489815152_)
                                      (let ((_e1490015158_
                                             (gx#stx-e _hd1489815152_)))
                                        (if (equal? _e1490015158_ '::)
                                            (if (gx#stx-pair? _tl1489915155_)
                                                (let ((_e1490115162_
                                                       (gx#syntax-e
                                                        _tl1489915155_)))
                                                  (let ((_tl1490315169_
                                                         (##cdr _e1490115162_))
                                                        (_hd1490215166_
                                                         (##car _e1490115162_)))
                                                    (if (gx#stx-null?
                                                         _tl1490315169_)
                                                        (___kont3768437685_
                                                         _hd1490215166_)
                                                        (___match3776637767_
                                                         _e1489015195_
                                                         _hd1489115199_
                                                         _tl1489215202_
                                                         _e1489715148_
                                                         _hd1489815152_
                                                         _tl1489915155_
                                                         _e1490115162_
                                                         _hd1490215166_
                                                         _tl1490315169_))))
                                                (___kont3769037691_
                                                 _tl1489915155_
                                                 _hd1489815152_
                                                 _hd1489115199_))
                                            (if (gx#stx-pair? _tl1489915155_)
                                                (let ((_e1491215104_
                                                       (gx#syntax-e
                                                        _tl1489915155_)))
                                                  (let ((_tl1491415111_
                                                         (##cdr _e1491215104_))
                                                        (_hd1491315108_
                                                         (##car _e1491215104_)))
                                                    (if (gx#stx-null?
                                                         _tl1491415111_)
                                                        (___match3774837749_
                                                         _e1489015195_
                                                         _hd1489115199_
                                                         _tl1489215202_
                                                         _e1489715148_
                                                         _hd1489815152_
                                                         _tl1489915155_
                                                         _e1491215104_
                                                         _hd1491315108_
                                                         _tl1491415111_)
                                                        (___match3776637767_
                                                         _e1489015195_
                                                         _hd1489115199_
                                                         _tl1489215202_
                                                         _e1489715148_
                                                         _hd1489815152_
                                                         _tl1489915155_
                                                         _e1491215104_
                                                         _hd1491315108_
                                                         _tl1491415111_))))
                                                (___kont3769037691_
                                                 _tl1489915155_
                                                 _hd1489815152_
                                                 _hd1489115199_))))
                                      (if (gx#stx-pair? _tl1489915155_)
                                          (let ((_e1491215104_
                                                 (gx#syntax-e _tl1489915155_)))
                                            (let ((_tl1491415111_
                                                   (##cdr _e1491215104_))
                                                  (_hd1491315108_
                                                   (##car _e1491215104_)))
                                              (if (gx#stx-null? _tl1491415111_)
                                                  (___match3774837749_
                                                   _e1489015195_
                                                   _hd1489115199_
                                                   _tl1489215202_
                                                   _e1489715148_
                                                   _hd1489815152_
                                                   _tl1489915155_
                                                   _e1491215104_
                                                   _hd1491315108_
                                                   _tl1491415111_)
                                                  (___match3776637767_
                                                   _e1489015195_
                                                   _hd1489115199_
                                                   _tl1489215202_
                                                   _e1489715148_
                                                   _hd1489815152_
                                                   _tl1489915155_
                                                   _e1491215104_
                                                   _hd1491315108_
                                                   _tl1491415111_))))
                                          (___kont3769037691_
                                           _tl1489915155_
                                           _hd1489815152_
                                           _hd1489115199_)))))
                              (___kont3769237693_ _tl1489215202_)))))
                  (_g1488814946_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#quasiquote|
      (lambda (_stx15213_)
        (letrec ((_simple-quote?15216_
                  (lambda (_e15908_)
                    (let* ((___stx3778737788_ _e15908_)
                           (_g1591615953_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3778737788_))))
                      (let ((___kont3779037791_ (lambda () '#f))
                            (___kont3779237793_ (lambda () '#f))
                            (___kont3779437795_
                             (lambda (_L16067_ _L16069_)
                               (if (_simple-quote?15216_ _L16069_)
                                   (_simple-quote?15216_ _L16067_)
                                   '#f)))
                            (___kont3779637797_
                             (lambda (_L16028_)
                               (_simple-quote?15216_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g1604116044_ _g1604216047_)
                                           (cons _g1604116044_ _g1604216047_))
                                         '()
                                         _L16028_)))))
                            (___kont3780037801_
                             (lambda (_L15975_)
                               (_simple-quote?15216_ _L15975_)))
                            (___kont3780237803_ (lambda () '#t)))
                        (let* ((_g1591415987_
                                (lambda ()
                                  (if (gx#stx-box? ___stx3778737788_)
                                      (let ((_e1594715971_
                                             (unbox (gx#syntax-e
                                                     ___stx3778737788_))))
                                        (___kont3780037801_ _e1594715971_))
                                      (___kont3780237803_))))
                               (___match3785837859_
                                (lambda (_e1593615994_
                                         ___splice3779837799_
                                         _target1593715998_
                                         _tl1593916001_)
                                  (letrec ((_loop1594016004_
                                            (lambda (_hd1593816008_
                                                     _e1594416011_)
                                              (if (gx#stx-pair? _hd1593816008_)
                                                  (let ((_e1594116014_
                                                         (gx#syntax-e
                                                          _hd1593816008_)))
                                                    (let ((_lp-tl1594316021_
                                                           (##cdr _e1594116014_))
                                                          (_lp-hd1594216018_
                                                           (##car _e1594116014_)))
                                                      (_loop1594016004_
                                                       _lp-tl1594316021_
                                                       (cons _lp-hd1594216018_
                                                             _e1594416011_))))
                                                  (let ((_e1594516024_
                                                         (reverse _e1594416011_)))
                                                    (___kont3779637797_
                                                     _e1594516024_))))))
                                    (_loop1594016004_
                                     _target1593715998_
                                     '()))))
                               (_g1591316050_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx3778737788_)
                                      (let ((_e1593615994_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx3778737788_))))
                                        (if (gx#stx-pair/null? _e1593615994_)
                                            (let ((___splice3779837799_
                                                   (gx#syntax-split-splice
                                                    _e1593615994_
                                                    '0)))
                                              (let ((_tl1593916001_
                                                     (##vector-ref
                                                      ___splice3779837799_
                                                      '1))
                                                    (_target1593715998_
                                                     (##vector-ref
                                                      ___splice3779837799_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl1593916001_)
                                                    (___match3785837859_
                                                     _e1593615994_
                                                     ___splice3779837799_
                                                     _target1593715998_
                                                     _tl1593916001_)
                                                    (___kont3780237803_))))
                                            (___kont3780237803_)))
                                      (_g1591415987_)))))
                          (if (gx#stx-pair? ___stx3778737788_)
                              (let ((_e1591816118_
                                     (gx#syntax-e ___stx3778737788_)))
                                (let ((_tl1592016125_ (##cdr _e1591816118_))
                                      (_hd1591916122_ (##car _e1591816118_)))
                                  (if (gx#identifier? _hd1591916122_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<sugar>$<sugar:2>[1]#_g41309_|
                                           _hd1591916122_)
                                          (if (gx#stx-pair? _tl1592016125_)
                                              (let ((_e1592116128_
                                                     (gx#syntax-e
                                                      _tl1592016125_)))
                                                (let ((_tl1592316135_
                                                       (##cdr _e1592116128_))
                                                      (_hd1592216132_
                                                       (##car _e1592116128_)))
                                                  (if (gx#stx-null?
                                                       _tl1592316135_)
                                                      (___kont3779037791_)
                                                      (___kont3779437795_
                                                       _tl1592016125_
                                                       _hd1591916122_))))
                                              (___kont3779437795_
                                               _tl1592016125_
                                               _hd1591916122_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g41310_|
                                               _hd1591916122_)
                                              (if (gx#stx-pair? _tl1592016125_)
                                                  (let ((_e1592716097_
                                                         (gx#syntax-e
                                                          _tl1592016125_)))
                                                    (let ((_tl1592916104_
                                                           (##cdr _e1592716097_))
                                                          (_hd1592816101_
                                                           (##car _e1592716097_)))
                                                      (if (gx#stx-null?
                                                           _tl1592916104_)
                                                          (___kont3779237793_)
                                                          (___kont3779437795_
                                                           _tl1592016125_
                                                           _hd1591916122_))))
                                                  (___kont3779437795_
                                                   _tl1592016125_
                                                   _hd1591916122_))
                                              (___kont3779437795_
                                               _tl1592016125_
                                               _hd1591916122_)))
                                      (___kont3779437795_
                                       _tl1592016125_
                                       _hd1591916122_))))
                              (_g1591316050_)))))))
                 (_generate15218_
                  (lambda (_e15280_ _d15282_)
                    (let* ((___stx3786537866_ _e15280_)
                           (_g1529115349_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3786537866_))))
                      (let ((___kont3786837869_
                             (lambda (_L15860_)
                               (let* ((_g1587315881_
                                       (lambda (_g1587415877_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1587415877_)))
                                      (_g1587215900_
                                       (lambda (_g1587415885_)
                                         ((lambda (_L15888_)
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'list)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons (gx#datum->syntax '#f 'quasiquote) '()))
                  (cons _L15888_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1587415885_))))
                                 (_g1587215900_
                                  (_generate15218_
                                   _L15860_
                                   (fx1+ _d15282_))))))
                            (___kont3787037871_
                             (lambda (_L15789_)
                               (if (fxzero? _d15282_)
                                   _L15789_
                                   (let* ((_g1580215810_
                                           (lambda (_g1580315806_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1580315806_)))
                                          (_g1580115829_
                                           (lambda (_g1580315814_)
                                             ((lambda (_L15817_)
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'list)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (gx#datum->syntax '#f 'unquote) '()))
                      (cons _L15817_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1580315814_))))
                                     (_g1580115829_
                                      (_generate15218_
                                       _L15789_
                                       (fx1- _d15282_)))))))
                            (___kont3787237873_
                             (lambda (_L15718_)
                               (if (fxzero? _d15282_)
                                   (cons (gx#datum->syntax '#f 'foldr)
                                         (cons (gx#datum->syntax '#f 'cons)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons '() '()))
                                                     (cons _L15718_ '()))))
                                   (let* ((_g1573115739_
                                           (lambda (_g1573215735_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1573215735_)))
                                          (_g1573015758_
                                           (lambda (_g1573215743_)
                                             ((lambda (_L15746_)
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'list)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (gx#datum->syntax '#f 'unquote-splicing)
                                  '()))
                      (cons _L15746_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1573215743_))))
                                     (_g1573015758_
                                      (_generate15218_
                                       _L15718_
                                       (fx1- _d15282_)))))))
                            (___kont3787437875_
                             (lambda (_L15643_ _L15645_)
                               (let* ((_g1566015668_
                                       (lambda (_g1566115664_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1566115664_)))
                                      (_g1565915687_
                                       (lambda (_g1566115672_)
                                         ((lambda (_L15675_)
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'foldr)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'cons)
                                                          (cons _L15675_
                                                                (cons _L15645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1566115672_))))
                                 (_g1565915687_
                                  (_generate15218_ _L15643_ _d15282_)))))
                            (___kont3787637877_
                             (lambda (_L15529_ _L15531_)
                               (let* ((_g1554215557_
                                       (lambda (_g1554315553_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1554315553_)))
                                      (_g1554115602_
                                       (lambda (_g1554315561_)
                                         (if (gx#stx-pair? _g1554315561_)
                                             (let ((_e1554615564_
                                                    (gx#syntax-e
                                                     _g1554315561_)))
                                               (let ((_hd1554715568_
                                                      (##car _e1554615564_))
                                                     (_tl1554815571_
                                                      (##cdr _e1554615564_)))
                                                 (if (gx#stx-pair?
                                                      _tl1554815571_)
                                                     (let ((_e1554915574_
                                                            (gx#syntax-e
                                                             _tl1554815571_)))
                                                       (let ((_hd1555015578_
                                                              (##car _e1554915574_))
                                                             (_tl1555115581_
                                                              (##cdr _e1554915574_)))
                                                         (if (gx#stx-null?
                                                              _tl1555115581_)
                                                             ((lambda (_L15584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L15586_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'cons)
                                (cons _L15586_ (cons _L15584_ '())))))
                      _hd1555015578_
                      _hd1554715568_)
                     (_g1554215557_ _g1554315561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1554215557_
                                                      _g1554315561_))))
                                             (_g1554215557_ _g1554315561_)))))
                                 (_g1554115602_
                                  (list (_generate15218_ _L15531_ _d15282_)
                                        (_generate15218_
                                         _L15529_
                                         _d15282_))))))
                            (___kont3787837879_
                             (lambda (_L15459_)
                               (let* ((_g1547315481_
                                       (lambda (_g1547415477_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1547415477_)))
                                      (_g1547215500_
                                       (lambda (_g1547415485_)
                                         ((lambda (_L15488_)
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'list->vector)
                                                    (cons _L15488_ '()))))
                                          _g1547415485_))))
                                 (_g1547215500_
                                  (_generate15218_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g1550315506_
                                                     _g1550415509_)
                                              (cons _g1550315506_
                                                    _g1550415509_))
                                            '()
                                            _L15459_))
                                   _d15282_)))))
                            (___kont3788237883_
                             (lambda (_L15377_)
                               (let* ((_g1538715395_
                                       (lambda (_g1538815391_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1538815391_)))
                                      (_g1538615414_
                                       (lambda (_g1538815399_)
                                         ((lambda (_L15402_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'box)
                                                    (cons _L15402_ '()))))
                                          _g1538815399_))))
                                 (_g1538615414_
                                  (_generate15218_ _L15377_ _d15282_)))))
                            (___kont3788437885_
                             (lambda (_L15356_)
                               (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L15356_ '())))))
                        (let* ((_g1528915418_
                                (lambda ()
                                  (if (gx#stx-box? ___stx3786537866_)
                                      (let ((_e1534215373_
                                             (unbox (gx#syntax-e
                                                     ___stx3786537866_))))
                                        (___kont3788237883_ _e1534215373_))
                                      (___kont3788437885_ ___stx3786537866_))))
                               (___match3798437985_
                                (lambda (_e1533115425_
                                         ___splice3788037881_
                                         _target1533215429_
                                         _tl1533415432_)
                                  (letrec ((_loop1533515435_
                                            (lambda (_hd1533315439_
                                                     _e1533915442_)
                                              (if (gx#stx-pair? _hd1533315439_)
                                                  (let ((_e1533615445_
                                                         (gx#syntax-e
                                                          _hd1533315439_)))
                                                    (let ((_lp-tl1533815452_
                                                           (##cdr _e1533615445_))
                                                          (_lp-hd1533715449_
                                                           (##car _e1533615445_)))
                                                      (_loop1533515435_
                                                       _lp-tl1533815452_
                                                       (cons _lp-hd1533715449_
                                                             _e1533915442_))))
                                                  (let ((_e1534015455_
                                                         (reverse _e1533915442_)))
                                                    (___kont3787837879_
                                                     _e1534015455_))))))
                                    (_loop1533515435_
                                     _target1533215429_
                                     '()))))
                               (_g1528815512_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx3786537866_)
                                      (let ((_e1533115425_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx3786537866_))))
                                        (if (gx#stx-pair/null? _e1533115425_)
                                            (let ((___splice3788037881_
                                                   (gx#syntax-split-splice
                                                    _e1533115425_
                                                    '0)))
                                              (let ((_tl1533415432_
                                                     (##vector-ref
                                                      ___splice3788037881_
                                                      '1))
                                                    (_target1533215429_
                                                     (##vector-ref
                                                      ___splice3788037881_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl1533415432_)
                                                    (___match3798437985_
                                                     _e1533115425_
                                                     ___splice3788037881_
                                                     _target1533215429_
                                                     _tl1533415432_)
                                                    (___kont3788437885_
                                                     ___stx3786537866_))))
                                            (___kont3788437885_
                                             ___stx3786537866_)))
                                      (_g1528915418_)))))
                          (if (gx#stx-pair? ___stx3786537866_)
                              (let ((_e1529415840_
                                     (gx#syntax-e ___stx3786537866_)))
                                (let ((_tl1529615847_ (##cdr _e1529415840_))
                                      (_hd1529515844_ (##car _e1529415840_)))
                                  (if (gx#identifier? _hd1529515844_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<sugar>$<sugar:2>[1]#_g41311_|
                                           _hd1529515844_)
                                          (if (gx#stx-pair? _tl1529615847_)
                                              (let ((_e1529715850_
                                                     (gx#syntax-e
                                                      _tl1529615847_)))
                                                (let ((_tl1529915857_
                                                       (##cdr _e1529715850_))
                                                      (_hd1529815854_
                                                       (##car _e1529715850_)))
                                                  (if (gx#stx-null?
                                                       _tl1529915857_)
                                                      (___kont3786837869_
                                                       _hd1529815854_)
                                                      (___kont3787637877_
                                                       _tl1529615847_
                                                       _hd1529515844_))))
                                              (___kont3787637877_
                                               _tl1529615847_
                                               _hd1529515844_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g41312_|
                                               _hd1529515844_)
                                              (if (gx#stx-pair? _tl1529615847_)
                                                  (let ((_e1530415779_
                                                         (gx#syntax-e
                                                          _tl1529615847_)))
                                                    (let ((_tl1530615786_
                                                           (##cdr _e1530415779_))
                                                          (_hd1530515783_
                                                           (##car _e1530415779_)))
                                                      (if (gx#stx-null?
                                                           _tl1530615786_)
                                                          (___kont3787037871_
                                                           _hd1530515783_)
                                                          (___kont3787637877_
                                                           _tl1529615847_
                                                           _hd1529515844_))))
                                                  (___kont3787637877_
                                                   _tl1529615847_
                                                   _hd1529515844_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:2>[1]#_g41313_|
                                                   _hd1529515844_)
                                                  (if (gx#stx-pair?
                                                       _tl1529615847_)
                                                      (let ((_e1531115708_
                                                             (gx#syntax-e
                                                              _tl1529615847_)))
                                                        (let ((_tl1531315715_
                                                               (##cdr _e1531115708_))
                                                              (_hd1531215712_
                                                               (##car _e1531115708_)))
                                                          (if (gx#stx-null?
                                                               _tl1531315715_)
                                                              (___kont3787237873_
                                                               _hd1531215712_)
                                                              (___kont3787637877_
                                                               _tl1529615847_
                                                               _hd1529515844_))))
                                                      (___kont3787637877_
                                                       _tl1529615847_
                                                       _hd1529515844_))
                                                  (___kont3787637877_
                                                   _tl1529615847_
                                                   _hd1529515844_))))
                                      (if (gx#stx-pair? _hd1529515844_)
                                          (let ((_e1531915623_
                                                 (gx#syntax-e _hd1529515844_)))
                                            (let ((_tl1532115630_
                                                   (##cdr _e1531915623_))
                                                  (_hd1532015627_
                                                   (##car _e1531915623_)))
                                              (if (gx#identifier?
                                                   _hd1532015627_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<sugar>$<sugar:2>[1]#_g41314_|
                                                       _hd1532015627_)
                                                      (if (gx#stx-pair?
                                                           _tl1532115630_)
                                                          (let ((_e1532215633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1532115630_)))
                    (let ((_tl1532415640_ (##cdr _e1532215633_))
                          (_hd1532315637_ (##car _e1532215633_)))
                      (if (gx#stx-null? _tl1532415640_)
                          (if (fxzero? _d15282_)
                              (let ((_L15643_ _tl1529615847_)
                                    (_L15645_ _hd1532315637_))
                                (___kont3787437875_ _L15643_ _L15645_))
                              (___kont3787637877_
                               _tl1529615847_
                               _hd1529515844_))
                          (___kont3787637877_ _tl1529615847_ _hd1529515844_))))
                  (___kont3787637877_ _tl1529615847_ _hd1529515844_))
              (___kont3787637877_ _tl1529615847_ _hd1529515844_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3787637877_
                                                   _tl1529615847_
                                                   _hd1529515844_))))
                                          (___kont3787637877_
                                           _tl1529615847_
                                           _hd1529515844_)))))
                              (_g1528815512_))))))))
          (let* ((_g1522015234_
                  (lambda (_g1522115230_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1522115230_)))
                 (_g1521915276_
                  (lambda (_g1522115238_)
                    (if (gx#stx-pair? _g1522115238_)
                        (let ((_e1522315241_ (gx#syntax-e _g1522115238_)))
                          (let ((_hd1522415245_ (##car _e1522315241_))
                                (_tl1522515248_ (##cdr _e1522315241_)))
                            (if (gx#stx-pair? _tl1522515248_)
                                (let ((_e1522615251_
                                       (gx#syntax-e _tl1522515248_)))
                                  (let ((_hd1522715255_ (##car _e1522615251_))
                                        (_tl1522815258_ (##cdr _e1522615251_)))
                                    (if (gx#stx-null? _tl1522815258_)
                                        ((lambda (_L15261_)
                                           (if (_simple-quote?15216_ _L15261_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L15261_ '()))
                                               (_generate15218_ _L15261_ '0)))
                                         _hd1522715255_)
                                        (_g1522015234_ _g1522115238_))))
                                (_g1522015234_ _g1522115238_))))
                        (_g1522015234_ _g1522115238_)))))
            (_g1521915276_ _stx15213_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#delay|
      (lambda (_$stx16148_)
        (let* ((___stx3799137992_ _$stx16148_)
               (_g1615316174_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3799137992_))))
          (let ((___kont3799437995_
                 (lambda (_L16242_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _L16242_ '()))))
                (___kont3799637997_
                 (lambda (_L16201_)
                   (cons (gx#datum->syntax '#f 'make-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _L16201_ '())))
                               '())))))
            (let ((___match3801238013_
                   (lambda (_e1615616222_
                            _hd1615716226_
                            _tl1615816229_
                            _e1615916232_
                            _hd1616016236_
                            _tl1616116239_)
                     (let ((_L16242_ _hd1616016236_))
                       (if (gx#stx-datum? _L16242_)
                           (___kont3799437995_ _L16242_)
                           (___kont3799637997_ _hd1616016236_))))))
              (if (gx#stx-pair? ___stx3799137992_)
                  (let ((_e1615616222_ (gx#syntax-e ___stx3799137992_)))
                    (let ((_tl1615816229_ (##cdr _e1615616222_))
                          (_hd1615716226_ (##car _e1615616222_)))
                      (if (gx#stx-pair? _tl1615816229_)
                          (let ((_e1615916232_ (gx#syntax-e _tl1615816229_)))
                            (let ((_tl1616116239_ (##cdr _e1615916232_))
                                  (_hd1616016236_ (##car _e1615916232_)))
                              (if (gx#stx-null? _tl1616116239_)
                                  (___match3801238013_
                                   _e1615616222_
                                   _hd1615716226_
                                   _tl1615816229_
                                   _e1615916232_
                                   _hd1616016236_
                                   _tl1616116239_)
                                  (_g1615316174_))))
                          (_g1615316174_))))
                  (_g1615316174_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#cut|
      (lambda (_stx16259_)
        (letrec ((_generate16262_
                  (lambda (_rest16381_)
                    (let _lp16384_ ((_rest16387_ _rest16381_)
                                    (_hd16389_ '())
                                    (_body16390_ '()))
                      (let* ((___stx3804938050_ _rest16387_)
                             (_g1639316405_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3804938050_))))
                        (let ((___kont3805238053_
                               (lambda (_L16433_ _L16435_)
                                 (let* ((___stx3802938030_ _L16435_)
                                        (_g1645216459_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3802938030_))))
                                   (let ((___kont3803238033_
                                          (lambda ()
                                            (let ((_arg16495_ (gx#genident)))
                                              (_lp16384_
                                               _L16433_
                                               (cons _arg16495_ _hd16389_)
                                               (cons _arg16495_
                                                     _body16390_)))))
                                         (___kont3803438035_
                                          (lambda ()
                                            (if (gx#stx-null? _L16433_)
                                                (let ((_tail16481_
                                                       (gx#genident)))
                                                  (values (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tail16481_
                         _hd16389_)
                  (foldl cons (list _tail16481_) _body16390_)
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx16259_
                                                 _L16435_))))
                                         (___kont3803638037_
                                          (lambda ()
                                            (_lp16384_
                                             _L16433_
                                             _hd16389_
                                             (cons _L16435_ _body16390_)))))
                                     (if (gx#identifier? ___stx3802938030_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core$<sugar>$<sugar:2>[1]#_g41315_|
                                              ___stx3802938030_)
                                             (___kont3803238033_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core$<sugar>$<sugar:2>[1]#_g41316_|
                                                  ___stx3802938030_)
                                                 (___kont3803438035_)
                                                 (___kont3803638037_)))
                                         (___kont3803638037_))))))
                              (___kont3805438055_
                               (lambda ()
                                 (values (reverse _hd16389_)
                                         (reverse _body16390_)
                                         '#f))))
                          (if (gx#stx-pair? ___stx3804938050_)
                              (let ((_e1639716423_
                                     (gx#syntax-e ___stx3804938050_)))
                                (let ((_tl1639916430_ (##cdr _e1639716423_))
                                      (_hd1639816427_ (##car _e1639716423_)))
                                  (___kont3805238053_
                                   _tl1639916430_
                                   _hd1639816427_)))
                              (___kont3805438055_))))))))
          (let* ((_g1626516276_
                  (lambda (_g1626616272_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1626616272_)))
                 (_g1626416377_
                  (lambda (_g1626616280_)
                    (if (gx#stx-pair? _g1626616280_)
                        (let ((_e1626816283_ (gx#syntax-e _g1626616280_)))
                          (let ((_hd1626916287_ (##car _e1626816283_))
                                (_tl1627016290_ (##cdr _e1626816283_)))
                            ((lambda (_L16293_)
                               (if (if (gx#stx-list? _L16293_)
                                       (not (gx#stx-null? _L16293_))
                                       '#f)
                                   (let ((_g41317_ (_generate16262_ _L16293_)))
                                     (begin
                                       (let ((_g41318_
                                              (if (##values? _g41317_)
                                                  (##vector-length _g41317_)
                                                  1)))
                                         (if (not (##fx= _g41318_ 3))
                                             (error "Context expects 3 values"
                                                    _g41318_)))
                                       (let ((_hd16306_
                                              (##vector-ref _g41317_ 0))
                                             (_body16308_
                                              (##vector-ref _g41317_ 1))
                                             (_tail?16309_
                                              (##vector-ref _g41317_ 2)))
                                         (let* ((_g1631116319_
                                                 (lambda (_g1631216315_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1631216315_)))
                                                (_g1631016373_
                                                 (lambda (_g1631216323_)
                                                   ((lambda (_L16326_)
                                                      (let ()
                                                        (let* ((_g1633916347_
                                                                (lambda (_g1634016343_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1634016343_)))
                       (_g1633816369_
                        (lambda (_g1634016351_)
                          ((lambda (_L16354_)
                             (let ()
                               (let ()
                                 (if _tail?16309_
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L16326_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'apply)
                                                             _L16354_)
                                                       '())))
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L16326_
                                                 (cons _L16354_ '())))))))
                           _g1634016351_))))
                  (_g1633816369_ _body16308_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1631216323_))))
                                           (_g1631016373_ _hd16306_)))))
                                   (_g1626516276_ _g1626616280_)))
                             _tl1627016290_)))
                        (_g1626516276_ _g1626616280_)))))
            (_g1626416377_ _stx16259_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<>|
      (lambda (_$stx16507_)
        (let ((_g1651016517_
               (lambda (_g1651116513_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1651116513_))))
          (_g1651016517_ _$stx16507_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<...>|
      (lambda (_$stx16521_)
        (let ((_g1652416531_
               (lambda (_g1652516527_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1652516527_))))
          (_g1652416531_ _$stx16521_))))))
