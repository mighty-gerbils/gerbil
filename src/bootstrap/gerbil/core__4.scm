(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 100))
(begin
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41081_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41082_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41118_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41119_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41120_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41125_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41126_|
    (gx#make-syntax-quote 'unquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41127_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41128_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41129_|
    (gx#make-syntax-quote 'unquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41130_|
    (gx#make-syntax-quote 'quasiquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41131_|
    (gx#make-syntax-quote '<...> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g41132_|
    (gx#make-syntax-quote '<> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#lambda|
      (lambda (_stx4926_)
        (letrec ((_simple-lambda?4929_
                  (lambda (_hd8326_) (gx#stx-andmap gx#identifier? _hd8326_)))
                 (_opt-lambda?4931_
                  (lambda (_hd8178_)
                    (let _lp8181_ ((_rest8184_ _hd8178_) (_opt?8186_ '#f))
                      (let* ((___stx3652836529_ _rest8184_)
                             (_g81898201_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3652836529_))))
                        (let ((___kont3653136532_
                               (lambda (_L8233_ _L8235_)
                                 (let* ((___stx3650436505_ _L8235_)
                                        (_g82518265_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3650436505_))))
                                   (let ((___kont3650736508_
                                          (lambda (_L8303_)
                                            (_lp8181_ _L8233_ '#t)))
                                         (___kont3650936510_
                                          (lambda ()
                                            (if (gx#identifier? _L8235_)
                                                (if (not _opt?8186_)
                                                    (_lp8181_ _L8233_ '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((___match3652536526_
                                            (lambda (_e82548283_
                                                     _hd82558287_
                                                     _tl82568290_
                                                     _e82578293_
                                                     _hd82588297_
                                                     _tl82598300_)
                                              (let ((_L8303_ _hd82558287_))
                                                (if (gx#identifier? _L8303_)
                                                    (___kont3650736508_
                                                     _L8303_)
                                                    (___kont3650936510_))))))
                                       (if (gx#stx-pair? ___stx3650436505_)
                                           (let ((_e82548283_
                                                  (gx#syntax-e
                                                   ___stx3650436505_)))
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
                                                           (___match3652536526_
                                                            _e82548283_
                                                            _hd82558287_
                                                            _tl82568290_
                                                            _e82578293_
                                                            _hd82588297_
                                                            _tl82598300_)
                                                           (___kont3650936510_))))
                                                   (___kont3650936510_))))
                                           (___kont3650936510_)))))))
                              (___kont3653336534_
                               (lambda ()
                                 (if _opt?8186_
                                     (let ((_$e8212_
                                            (gx#stx-null? _rest8184_)))
                                       (if _$e8212_
                                           _$e8212_
                                           (gx#identifier? _rest8184_)))
                                     '#f))))
                          (if (gx#stx-pair? ___stx3652836529_)
                              (let ((_e81938223_
                                     (gx#syntax-e ___stx3652836529_)))
                                (let ((_tl81958230_ (##cdr _e81938223_))
                                      (_hd81948227_ (##car _e81938223_)))
                                  (___kont3653136532_
                                   _tl81958230_
                                   _hd81948227_)))
                              (___kont3653336534_)))))))
                 (_opt-lambda-split4932_
                  (lambda (_hd8030_)
                    (let _lp8033_ ((_rest8036_ _hd8030_)
                                   (_pre8038_ '())
                                   (_opt8039_ '()))
                      (let* ((___stx3656836569_ _rest8036_)
                             (_g80428054_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3656836569_))))
                        (let ((___kont3657136572_
                               (lambda (_L8082_ _L8084_)
                                 (let* ((___stx3654436545_ _L8084_)
                                        (_g81008115_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3654436545_))))
                                   (let ((___kont3654736548_
                                          (lambda (_L8153_ _L8155_)
                                            (_lp8033_
                                             _L8082_
                                             _pre8038_
                                             (cons (cons (_generate-bind4935_
                                                          _L8155_)
                                                         _L8153_)
                                                   _opt8039_))))
                                         (___kont3654936550_
                                          (lambda ()
                                            (_lp8033_
                                             _L8082_
                                             (cons (_generate-bind4935_
                                                    _L8084_)
                                                   _pre8038_)
                                             _opt8039_))))
                                     (if (gx#stx-pair? ___stx3654436545_)
                                         (let ((_e81048133_
                                                (gx#syntax-e
                                                 ___stx3654436545_)))
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
                                                         (___kont3654736548_
                                                          _hd81088147_
                                                          _hd81058137_)
                                                         (___kont3654936550_))))
                                                 (___kont3654936550_))))
                                         (___kont3654936550_))))))
                              (___kont3657336574_
                               (lambda ()
                                 (values (reverse _pre8038_)
                                         (reverse _opt8039_)
                                         (if (gx#identifier? _rest8036_)
                                             (_generate-bind4935_ _rest8036_)
                                             _rest8036_)))))
                          (if (gx#stx-pair? ___stx3656836569_)
                              (let ((_e80468072_
                                     (gx#syntax-e ___stx3656836569_)))
                                (let ((_tl80488079_ (##cdr _e80468072_))
                                      (_hd80478076_ (##car _e80468072_)))
                                  (___kont3657136572_
                                   _tl80488079_
                                   _hd80478076_)))
                              (___kont3657336574_)))))))
                 (_kw-lambda?4933_
                  (lambda (_hd7698_)
                    (let _lp7701_ ((_rest7704_ _hd7698_)
                                   (_opt?7706_ '#f)
                                   (_key?7707_ '#f))
                      (let* ((___stx3663236633_ _rest7704_)
                             (_g77127742_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3663236633_))))
                        (let ((___kont3663536636_
                               (lambda (_L7937_ _L7939_ _L7940_)
                                 (let* ((___stx3660836609_ _L7939_)
                                        (_g79557969_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3660836609_))))
                                   (let ((___kont3661136612_
                                          (lambda (_L8007_)
                                            (if (gx#identifier? _L8007_)
                                                (_lp7701_
                                                 _L7937_
                                                 _opt?7706_
                                                 '#t)
                                                '#f)))
                                         (___kont3661336614_
                                          (lambda ()
                                            (if (gx#identifier? _L7939_)
                                                (_lp7701_
                                                 _L7937_
                                                 _opt?7706_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx3660836609_)
                                         (let ((_e79587987_
                                                (gx#syntax-e
                                                 ___stx3660836609_)))
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
                                                         (___kont3661136612_
                                                          _hd79597991_)
                                                         (___kont3661336614_))))
                                                 (___kont3661336614_))))
                                         (___kont3661336614_))))))
                              (___kont3663736638_
                               (lambda (_L7894_ _L7896_)
                                 (if (gx#identifier? _L7896_)
                                     (_lp7701_ _L7894_ _opt?7706_ '#t)
                                     '#f)))
                              (___kont3663936640_
                               (lambda (_L7774_ _L7776_)
                                 (let* ((___stx3658436585_ _L7776_)
                                        (_g77927806_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3658436585_))))
                                   (let ((___kont3658736588_
                                          (lambda (_L7844_)
                                            (if (gx#identifier? _L7844_)
                                                (_lp7701_
                                                 _L7774_
                                                 '#t
                                                 _key?7707_)
                                                '#f)))
                                         (___kont3658936590_
                                          (lambda ()
                                            (if (gx#identifier? _L7776_)
                                                (if (not _opt?7706_)
                                                    (_lp7701_
                                                     _L7774_
                                                     '#f
                                                     _key?7707_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx3658436585_)
                                         (let ((_e77957824_
                                                (gx#syntax-e
                                                 ___stx3658436585_)))
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
                                                         (___kont3658736588_
                                                          _hd77967828_)
                                                         (___kont3658936590_))))
                                                 (___kont3658936590_))))
                                         (___kont3658936590_))))))
                              (___kont3664136642_
                               (lambda ()
                                 (if _key?7707_
                                     (let ((_$e7753_
                                            (gx#stx-null? _rest7704_)))
                                       (if _$e7753_
                                           _$e7753_
                                           (gx#identifier? _rest7704_)))
                                     '#f))))
                          (let ((___match3665536656_
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
                                         (___kont3663536636_
                                          _L7937_
                                          _L7939_
                                          _L7940_)
                                         (if (gx#stx-datum? _hd77187921_)
                                             (let ((_e77287880_
                                                    (gx#stx-e _hd77187921_)))
                                               (if (equal? _e77287880_ '#!key)
                                                   (___kont3663736638_
                                                    _tl77227934_
                                                    _hd77217931_)
                                                   (___kont3663936640_
                                                    _tl77197924_
                                                    _hd77187921_)))
                                             (___kont3663936640_
                                              _tl77197924_
                                              _hd77187921_)))))))
                            (if (gx#stx-pair? ___stx3663236633_)
                                (let ((_e77177917_
                                       (gx#syntax-e ___stx3663236633_)))
                                  (let ((_tl77197924_ (##cdr _e77177917_))
                                        (_hd77187921_ (##car _e77177917_)))
                                    (if (gx#stx-pair? _tl77197924_)
                                        (let ((_e77207927_
                                               (gx#syntax-e _tl77197924_)))
                                          (let ((_tl77227934_
                                                 (##cdr _e77207927_))
                                                (_hd77217931_
                                                 (##car _e77207927_)))
                                            (___match3665536656_
                                             _e77177917_
                                             _hd77187921_
                                             _tl77197924_
                                             _e77207927_
                                             _hd77217931_
                                             _tl77227934_)))
                                        (if (gx#stx-datum? _hd77187921_)
                                            (let ((_e77287880_
                                                   (gx#stx-e _hd77187921_)))
                                              (___kont3663936640_
                                               _tl77197924_
                                               _hd77187921_))
                                            (___kont3663936640_
                                             _tl77197924_
                                             _hd77187921_)))))
                                (___kont3664136642_))))))))
                 (_kw-lambda-split4934_
                  (lambda (_hd7431_)
                    (let _lp7434_ ((_rest7437_ _hd7431_)
                                   (_kwvar7439_ '#f)
                                   (_kwargs7440_ '())
                                   (_args7441_ '()))
                      (let* ((___stx3670636707_ _rest7437_)
                             (_g74467476_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3670636707_))))
                        (let ((___kont3670936710_
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
                                       (let* ((___stx3668236683_ _L7597_)
                                              (_g76197634_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  ___stx3668236683_))))
                                         (let ((___kont3668536686_
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
                                               (___kont3668736688_
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
                                           (if (gx#stx-pair? ___stx3668236683_)
                                               (let ((_e76237652_
                                                      (gx#syntax-e
                                                       ___stx3668236683_)))
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
                                                               (___kont3668536686_
                                                                _hd76277666_
                                                                _hd76247656_)
                                                               (___kont3668736688_))))
                                                       (___kont3668736688_))))
                                               (___kont3668736688_))))))))
                              (___kont3671136712_
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
                              (___kont3671336714_
                               (lambda (_L7504_ _L7506_)
                                 (_lp7434_
                                  _L7504_
                                  _kwvar7439_
                                  _kwargs7440_
                                  (cons _L7506_ _args7441_))))
                              (___kont3671536716_
                               (lambda ()
                                 (values _kwvar7439_
                                         (reverse _kwargs7440_)
                                         (foldl cons _rest7437_ _args7441_)))))
                          (let ((___match3672936730_
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
                                         (___kont3670936710_
                                          _L7595_
                                          _L7597_
                                          _L7598_)
                                         (if (gx#stx-datum? _hd74527579_)
                                             (let ((_e74627538_
                                                    (gx#stx-e _hd74527579_)))
                                               (if (equal? _e74627538_ '#!key)
                                                   (___kont3671136712_
                                                    _tl74567592_
                                                    _hd74557589_)
                                                   (___kont3671336714_
                                                    _tl74537582_
                                                    _hd74527579_)))
                                             (___kont3671336714_
                                              _tl74537582_
                                              _hd74527579_)))))))
                            (if (gx#stx-pair? ___stx3670636707_)
                                (let ((_e74517575_
                                       (gx#syntax-e ___stx3670636707_)))
                                  (let ((_tl74537582_ (##cdr _e74517575_))
                                        (_hd74527579_ (##car _e74517575_)))
                                    (if (gx#stx-pair? _tl74537582_)
                                        (let ((_e74547585_
                                               (gx#syntax-e _tl74537582_)))
                                          (let ((_tl74567592_
                                                 (##cdr _e74547585_))
                                                (_hd74557589_
                                                 (##car _e74547585_)))
                                            (___match3672936730_
                                             _e74517575_
                                             _hd74527579_
                                             _tl74537582_
                                             _e74547585_
                                             _hd74557589_
                                             _tl74567592_)))
                                        (if (gx#stx-datum? _hd74527579_)
                                            (let ((_e74627538_
                                                   (gx#stx-e _hd74527579_)))
                                              (___kont3671336714_
                                               _tl74537582_
                                               _hd74527579_))
                                            (___kont3671336714_
                                             _tl74537582_
                                             _hd74527579_)))))
                                (___kont3671536716_))))))))
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
                        (let* ((___stx3678036781_ _rest7134_)
                               (_g71397151_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   ___stx3678036781_))))
                          (let ((___kont3678336784_
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
                            (let* ((___stx3675636757_ _L7287_)
                                   (_g72997313_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       ___stx3675636757_))))
                              (let ((___kont3675936760_
                                     (lambda (_L7351_)
                                       (_lp7131_
                                        _L7285_
                                        (_cons-id7128_ _L7351_ _ids7136_))))
                                    (___kont3676136762_
                                     (lambda ()
                                       (_lp7131_
                                        _L7285_
                                        (_cons-id7128_ _L7287_ _ids7136_)))))
                                (if (gx#stx-pair? ___stx3675636757_)
                                    (let ((_e73027331_
                                           (gx#syntax-e ___stx3675636757_)))
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
                                                    (___kont3675936760_
                                                     _hd73037335_)
                                                    (___kont3676136762_))))
                                            (___kont3676136762_))))
                                    (___kont3676136762_)))))
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
                                (___kont3678536786_
                                 (lambda ()
                                   (gx#check-duplicate-identifiers
                                    (if (gx#stx-null? _rest7134_)
                                        _ids7136_
                                        (_cons-id7128_ _rest7134_ _ids7136_))
                                    _stx4926_))))
                            (if (gx#stx-pair? ___stx3678036781_)
                                (let ((_e71437169_
                                       (gx#syntax-e ___stx3678036781_)))
                                  (let ((_tl71457176_ (##cdr _e71437169_))
                                        (_hd71447173_ (##car _e71437169_)))
                                    (___kont3678336784_
                                     _tl71457176_
                                     _hd71447173_)))
                                (___kont3678536786_))))))))
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
                                          (let ((_g41051_
                                                 (gx#syntax-split-splice
                                                  _hd69306975_
                                                  '0)))
                                            (begin
                                              (let ((_g41052_
                                                     (if (##values? _g41051_)
                                                         (##vector-length
                                                          _g41051_)
                                                         1)))
                                                (if (not (##fx= _g41052_ 2))
                                                    (error "Context expects 2 values"
                                                           _g41052_)))
                                              (let ((_target69326981_
                                                     (##vector-ref _g41051_ 0))
                                                    (_tl69346984_
                                                     (##vector-ref
                                                      _g41051_
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
                                          (let ((_g41053_
                                                 (gx#syntax-split-splice
                                                  _hd69427015_
                                                  '0)))
                                            (begin
                                              (let ((_g41054_
                                                     (if (##values? _g41053_)
                                                         (##vector-length
                                                          _g41053_)
                                                         1)))
                                                (if (not (##fx= _g41054_ 2))
                                                    (error "Context expects 2 values"
                                                           _g41054_)))
                                              (let ((_target69447021_
                                                     (##vector-ref _g41053_ 0))
                                                    (_tl69467024_
                                                     (##vector-ref
                                                      _g41053_
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
                                        (let ((_g41059_
                                               (gx#syntax-split-splice
                                                _g64916511_
                                                '0)))
                                          (begin
                                            (let ((_g41060_
                                                   (if (##values? _g41059_)
                                                       (##vector-length
                                                        _g41059_)
                                                       1)))
                                              (if (not (##fx= _g41060_ 2))
                                                  (error "Context expects 2 values"
                                                         _g41060_)))
                                            (let ((_target64936514_
                                                   (##vector-ref _g41059_ 0))
                                                  (_tl64956517_
                                                   (##vector-ref _g41059_ 1)))
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
                                               (let ((_g41061_
                                                      (gx#syntax-split-splice
                                                       _g65666586_
                                                       '0)))
                                                 (begin
                                                   (let ((_g41062_
                                                          (if (##values?
                                                               _g41061_)
                                                              (##vector-length
                                                               _g41061_)
                                                              1)))
                                                     (if (not (##fx= _g41062_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                 (error "Context expects 2 values" _g41062_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target65686589_
                                                          (##vector-ref
                                                           _g41061_
                                                           0))
                                                         (_tl65706592_
                                                          (##vector-ref
                                                           _g41061_
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
                                                    (let ((_g41055_
                                                           (gx#syntax-split-splice
                                                            _hd67016746_
                                                            '0)))
                                                      (begin
                                                        (let ((_g41056_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g41055_)
                           (##vector-length _g41055_)
                           1)))
                  (if (not (##fx= _g41056_ 2))
                      (error "Context expects 2 values" _g41056_)))
                (let ((_target67036752_ (##vector-ref _g41055_ 0))
                      (_tl67056755_ (##vector-ref _g41055_ 1)))
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
                                                    (let ((_g41057_
                                                           (gx#syntax-split-splice
                                                            _hd67136786_
                                                            '0)))
                                                      (begin
                                                        (let ((_g41058_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g41057_)
                           (##vector-length _g41057_)
                           1)))
                  (if (not (##fx= _g41058_ 2))
                      (error "Context expects 2 values" _g41058_)))
                (let ((_target67156792_ (##vector-ref _g41057_ 0))
                      (_tl67176795_ (##vector-ref _g41057_ 1)))
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
                                                (let ((_g41063_
                                                       (gx#syntax-split-splice
                                                        _hd62916333_
                                                        '0)))
                                                  (begin
                                                    (let ((_g41064_
                                                           (if (##values?
                                                                _g41063_)
                                                               (##vector-length
                                                                _g41063_)
                                                               1)))
                                                      (if (not (##fx= _g41064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g41064_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target62936339_
                                                           (##vector-ref
                                                            _g41063_
                                                            0))
                                                          (_tl62956342_
                                                           (##vector-ref
                                                            _g41063_
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
                                                (let ((_g41065_
                                                       (gx#syntax-split-splice
                                                        _hd63036373_
                                                        '0)))
                                                  (begin
                                                    (let ((_g41066_
                                                           (if (##values?
                                                                _g41065_)
                                                               (##vector-length
                                                                _g41065_)
                                                               1)))
                                                      (if (not (##fx= _g41066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g41066_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target63056379_
                                                           (##vector-ref
                                                            _g41065_
                                                            0))
                                                          (_tl63076382_
                                                           (##vector-ref
                                                            _g41065_
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
                                                             (let ((_g41067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g58715891_ '0)))
                       (begin
                         (let ((_g41068_
                                (if (##values? _g41067_)
                                    (##vector-length _g41067_)
                                    1)))
                           (if (not (##fx= _g41068_ 2))
                               (error "Context expects 2 values" _g41068_)))
                         (let ((_target58735894_ (##vector-ref _g41067_ 0))
                               (_tl58755897_ (##vector-ref _g41067_ 1)))
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
                                                             (let ((_g41069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g56825702_ '0)))
                       (begin
                         (let ((_g41070_
                                (if (##values? _g41069_)
                                    (##vector-length _g41069_)
                                    1)))
                           (if (not (##fx= _g41070_ 2))
                               (error "Context expects 2 values" _g41070_)))
                         (let ((_target56845705_ (##vector-ref _g41069_ 0))
                               (_tl56865708_ (##vector-ref _g41069_ 1)))
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
          (let* ((___stx3679636797_ _stx4926_)
                 (_g49474978_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx3679636797_))))
            (let ((___kont3679936800_
                   (lambda (_L5410_ _L5412_)
                     (cons (gx#datum->syntax '#f 'lambda%)
                           (cons _L5412_ _L5410_))))
                  (___kont3680136802_
                   (lambda (_L5182_ _L5184_)
                     (let ((_g41071_ (_opt-lambda-split4932_ _L5184_)))
                       (begin
                         (let ((_g41072_
                                (if (##values? _g41071_)
                                    (##vector-length _g41071_)
                                    1)))
                           (if (not (##fx= _g41072_ 3))
                               (error "Context expects 3 values" _g41072_)))
                         (let ((_pre5197_ (##vector-ref _g41071_ 0))
                               (_opt5199_ (##vector-ref _g41071_ 1))
                               (_tail5200_ (##vector-ref _g41071_ 2)))
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
                               (let ((_g41073_
                                      (gx#syntax-split-splice _g52595279_ '0)))
                                 (begin
                                   (let ((_g41074_
                                          (if (##values? _g41073_)
                                              (##vector-length _g41073_)
                                              1)))
                                     (if (not (##fx= _g41074_ 2))
                                         (error "Context expects 2 values"
                                                _g41074_)))
                                   (let ((_target52615282_
                                          (##vector-ref _g41073_ 0))
                                         (_tl52635285_
                                          (##vector-ref _g41073_ 1)))
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
                  (___kont3680336804_
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
                                    (let ((_g41075_
                                           (_kw-lambda-split4934_ _L5007_)))
                                      (begin
                                        (let ((_g41076_
                                               (if (##values? _g41075_)
                                                   (##vector-length _g41075_)
                                                   1)))
                                          (if (not (##fx= _g41076_ 3))
                                              (error "Context expects 3 values"
                                                     _g41076_)))
                                        (let ((_key5043_
                                               (##vector-ref _g41075_ 0))
                                              (_kwargs5045_
                                               (##vector-ref _g41075_ 1))
                                              (_args5046_
                                               (##vector-ref _g41075_ 2)))
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
              (let* ((___match3684136842_
                      (lambda (_e49674985_
                               _hd49684989_
                               _tl49694992_
                               _e49704995_
                               _hd49714999_
                               _tl49725002_)
                        (let ((_L5005_ _tl49725002_) (_L5007_ _hd49714999_))
                          (if (_kw-lambda?4933_ _L5007_)
                              (___kont3680336804_ _L5005_ _L5007_)
                              (_g49474978_)))))
                     (___match3682936830_
                      (lambda (_e49595162_
                               _hd49605166_
                               _tl49615169_
                               _e49625172_
                               _hd49635176_
                               _tl49645179_)
                        (let ((_L5182_ _tl49645179_) (_L5184_ _hd49635176_))
                          (if (_opt-lambda?4931_ _L5184_)
                              (___kont3680136802_ _L5182_ _L5184_)
                              (___match3684136842_
                               _e49595162_
                               _hd49605166_
                               _tl49615169_
                               _e49625172_
                               _hd49635176_
                               _tl49645179_)))))
                     (___match3681736818_
                      (lambda (_e49515390_
                               _hd49525394_
                               _tl49535397_
                               _e49545400_
                               _hd49555404_
                               _tl49565407_)
                        (let ((_L5410_ _tl49565407_) (_L5412_ _hd49555404_))
                          (if (_simple-lambda?4929_ _L5412_)
                              (___kont3679936800_ _L5410_ _L5412_)
                              (___match3682936830_
                               _e49515390_
                               _hd49525394_
                               _tl49535397_
                               _e49545400_
                               _hd49555404_
                               _tl49565407_))))))
                (if (gx#stx-pair? ___stx3679636797_)
                    (let ((_e49515390_ (gx#syntax-e ___stx3679636797_)))
                      (let ((_tl49535397_ (##cdr _e49515390_))
                            (_hd49525394_ (##car _e49515390_)))
                        (if (gx#stx-pair? _tl49535397_)
                            (let ((_e49545400_ (gx#syntax-e _tl49535397_)))
                              (let ((_tl49565407_ (##cdr _e49545400_))
                                    (_hd49555404_ (##car _e49545400_)))
                                (___match3681736818_
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
        (let* ((___stx3684436845_ _$stx8342_)
               (_g83478386_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3684436845_))))
          (let ((___kont3684736848_
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
                (___kont3685136852_
                 (lambda (_L8423_ _L8425_)
                   (cons (gx#datum->syntax '#f 'define-values)
                         (cons (cons _L8425_ '()) (cons _L8423_ '()))))))
            (let* ((___match3689936900_
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
                            (___kont3685136852_ _L8423_ _L8425_)
                            (_g83478386_)))))
                   (___match3689136892_
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
                                  (___match3689936900_
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
                   (___match3687936880_
                    (lambda (_e83528448_
                             _hd83538452_
                             _tl83548455_
                             _e83558458_
                             _hd83568462_
                             _tl83578465_
                             _e83588468_
                             _hd83598472_
                             _tl83608475_
                             ___splice3684936850_
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
                                              (___kont3684736848_
                                               _L8508_
                                               _L8510_
                                               _L8511_)
                                              (___match3689136892_
                                               _e83528448_
                                               _hd83538452_
                                               _tl83548455_
                                               _e83558458_
                                               _hd83568462_
                                               _tl83578465_))))))))
                        (_loop83648484_ _target83618478_ '())))))
              (if (gx#stx-pair? ___stx3684436845_)
                  (let ((_e83528448_ (gx#syntax-e ___stx3684436845_)))
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
                                          (let ((___splice3684936850_
                                                 (gx#syntax-split-splice
                                                  _tl83578465_
                                                  '0)))
                                            (let ((_tl83638481_
                                                   (##vector-ref
                                                    ___splice3684936850_
                                                    '1))
                                                  (_target83618478_
                                                   (##vector-ref
                                                    ___splice3684936850_
                                                    '0)))
                                              (if (gx#stx-null? _tl83638481_)
                                                  (___match3687936880_
                                                   _e83528448_
                                                   _hd83538452_
                                                   _tl83548455_
                                                   _e83558458_
                                                   _hd83568462_
                                                   _tl83578465_
                                                   _e83588468_
                                                   _hd83598472_
                                                   _tl83608475_
                                                   ___splice3684936850_
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
                                                              (___match3689936900_
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
                                                      (___match3689936900_
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
                                              (___match3689936900_
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
                                      (let ((_g41077_
                                             (gx#syntax-split-splice
                                              _tl85578596_
                                              '0)))
                                        (begin
                                          (let ((_g41078_
                                                 (if (##values? _g41077_)
                                                     (##vector-length _g41077_)
                                                     1)))
                                            (if (not (##fx= _g41078_ 2))
                                                (error "Context expects 2 values"
                                                       _g41078_)))
                                          (let ((_target85588599_
                                                 (##vector-ref _g41077_ 0))
                                                (_tl85608602_
                                                 (##vector-ref _g41077_ 1)))
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
                                      (let ((_g41079_
                                             (gx#syntax-split-splice
                                              _tl87568795_
                                              '0)))
                                        (begin
                                          (let ((_g41080_
                                                 (if (##values? _g41079_)
                                                     (##vector-length _g41079_)
                                                     1)))
                                            (if (not (##fx= _g41080_ 2))
                                                (error "Context expects 2 values"
                                                       _g41080_)))
                                          (let ((_target87578798_
                                                 (##vector-ref _g41079_ 0))
                                                (_tl87598801_
                                                 (##vector-ref _g41079_ 1)))
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
                      (let* ((___stx3696836969_ _rest11334_)
                             (_g1134111353_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3696836969_))))
                        (let ((___kont3697136972_
                               (lambda (_L11385_ _L11387_)
                                 (let* ((___stx3690236903_ _L11387_)
                                        (_g1140411467_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3690236903_))))
                                   (let ((___kont3690536906_
                                          (lambda (_L11772_)
                                            (if (gx#stx-null? _L11385_)
                                                (if _default11338_
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Duplicate else clause"
                                                     _stx8861_
                                                     _L11387_)
                                                    (_lp11331_
                                                     _L11385_
                                                     _datums11336_
                                                     _dispatch11337_
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'begin)
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g1178611789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1178711792_)
                              (cons _g1178611789_ _g1178711792_))
                            '()
                            _L11772_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _stx8861_
                                                 _L11387_))))
                                         (___kont3690936910_
                                          (lambda (_L11657_ _L11659_)
                                            (if (null? (begin
                                                         '#!void
                                                         (foldr (lambda (_g1167711680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1167811683_)
                          (cons _g1167711680_ _g1167811683_))
                        '()
                        _L11659_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_lp11331_
                                                 _L11385_
                                                 _datums11336_
                                                 _dispatch11337_
                                                 _default11338_)
                                                (let* ((_g1168611694_
                                                        (lambda (_g1168711690_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g1168711690_)))
                                                       (_g1168511721_
                                                        (lambda (_g1168711698_)
                                                          ((lambda (_L11701_)
                                                             (let ()
                                                               (_lp11331_
                                                                _L11385_
                                                                (cons (map gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g1171211715_
                                                     _g1171311718_)
                                              (cons _g1171211715_
                                                    _g1171311718_))
                                            '()
                                            _L11659_)))
                              _datums11336_)
                        (cons (cons _L11657_ (cons _L11701_ '()))
                              _dispatch11337_)
                        _default11338_)))
                   _g1168711698_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1168511721_ _e11327_)))))
                                         (___kont3691336914_
                                          (lambda (_L11544_ _L11546_)
                                            (if (null? (begin
                                                         '#!void
                                                         (foldr (lambda (_g1156511568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1156611571_)
                          (cons _g1156511568_ _g1156611571_))
                        '()
                        _L11546_)))
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
                                                              (foldr (lambda (_g1157311576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1157411579_)
                               (cons _g1157311576_ _g1157411579_))
                             '()
                             _L11546_)))
               _datums11336_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'begin)
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1158111584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1158211587_)
                                (cons _g1158111584_ _g1158211587_))
                              '()
                              _L11544_)))
               _dispatch11337_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _default11338_)))))
                                     (let* ((___match3696536966_
                                             (lambda (_e1144111474_
                                                      _hd1144211478_
                                                      _tl1144311481_
                                                      ___splice3691536916_
                                                      _target1144411484_
                                                      _tl1144611487_)
                                               (letrec ((_loop1144711490_
                                                         (lambda (_hd1144511494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1145111497_)
                   (if (gx#stx-pair? _hd1144511494_)
                       (let ((_e1144811500_ (gx#syntax-e _hd1144511494_)))
                         (let ((_lp-tl1145011507_ (##cdr _e1144811500_))
                               (_lp-hd1144911504_ (##car _e1144811500_)))
                           (_loop1144711490_
                            _lp-tl1145011507_
                            (cons _lp-hd1144911504_ _datum1145111497_))))
                       (let ((_datum1145211510_ (reverse _datum1145111497_)))
                         (if (gx#stx-pair/null? _tl1144311481_)
                             (let ((___splice3691736918_
                                    (gx#syntax-split-splice
                                     _tl1144311481_
                                     '0)))
                               (let ((_tl1145511517_
                                      (##vector-ref ___splice3691736918_ '1))
                                     (_target1145311514_
                                      (##vector-ref ___splice3691736918_ '0)))
                                 (if (gx#stx-null? _tl1145511517_)
                                     (letrec ((_loop1145611520_
                                               (lambda (_hd1145411524_
                                                        _body1146011527_)
                                                 (if (gx#stx-pair?
                                                      _hd1145411524_)
                                                     (let ((_e1145711530_
                                                            (gx#syntax-e
                                                             _hd1145411524_)))
                                                       (let ((_lp-tl1145911537_
                                                              (##cdr _e1145711530_))
                                                             (_lp-hd1145811534_
                                                              (##car _e1145711530_)))
                                                         (_loop1145611520_
                                                          _lp-tl1145911537_
                                                          (cons _lp-hd1145811534_
                                                                _body1146011527_))))
                                                     (let ((_body1146111540_
                                                            (reverse _body1146011527_)))
                                                       (___kont3691336914_
                                                        _body1146111540_
                                                        _datum1145211510_))))))
                                       (_loop1145611520_
                                        _target1145311514_
                                        '()))
                                     (_g1140411467_))))
                             (_g1140411467_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1144711490_
                                                  _target1144411484_
                                                  '()))))
                                            (___match3695136952_
                                             (lambda (_e1142111597_
                                                      _hd1142211601_
                                                      _tl1142311604_
                                                      ___splice3691136912_
                                                      _target1142411607_
                                                      _tl1142611610_)
                                               (letrec ((_loop1142711613_
                                                         (lambda (_hd1142511617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1143111620_)
                   (if (gx#stx-pair? _hd1142511617_)
                       (let ((_e1142811623_ (gx#syntax-e _hd1142511617_)))
                         (let ((_lp-tl1143011630_ (##cdr _e1142811623_))
                               (_lp-hd1142911627_ (##car _e1142811623_)))
                           (_loop1142711613_
                            _lp-tl1143011630_
                            (cons _lp-hd1142911627_ _datum1143111620_))))
                       (let ((_datum1143211633_ (reverse _datum1143111620_)))
                         (if (gx#stx-pair? _tl1142311604_)
                             (let ((_e1143311637_
                                    (gx#syntax-e _tl1142311604_)))
                               (let ((_tl1143511644_ (##cdr _e1143311637_))
                                     (_hd1143411641_ (##car _e1143311637_)))
                                 (if (gx#identifier? _hd1143411641_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core$<sugar>$<sugar:2>[1]#_g41081_|
                                          _hd1143411641_)
                                         (if (gx#stx-pair? _tl1143511644_)
                                             (let ((_e1143611647_
                                                    (gx#syntax-e
                                                     _tl1143511644_)))
                                               (let ((_tl1143811654_
                                                      (##cdr _e1143611647_))
                                                     (_hd1143711651_
                                                      (##car _e1143611647_)))
                                                 (if (gx#stx-null?
                                                      _tl1143811654_)
                                                     (___kont3690936910_
                                                      _hd1143711651_
                                                      _datum1143211633_)
                                                     (___match3696536966_
                                                      _e1142111597_
                                                      _hd1142211601_
                                                      _tl1142311604_
                                                      ___splice3691136912_
                                                      _target1142411607_
                                                      _tl1142611610_))))
                                             (___match3696536966_
                                              _e1142111597_
                                              _hd1142211601_
                                              _tl1142311604_
                                              ___splice3691136912_
                                              _target1142411607_
                                              _tl1142611610_))
                                         (___match3696536966_
                                          _e1142111597_
                                          _hd1142211601_
                                          _tl1142311604_
                                          ___splice3691136912_
                                          _target1142411607_
                                          _tl1142611610_))
                                     (___match3696536966_
                                      _e1142111597_
                                      _hd1142211601_
                                      _tl1142311604_
                                      ___splice3691136912_
                                      _target1142411607_
                                      _tl1142611610_))))
                             (___match3696536966_
                              _e1142111597_
                              _hd1142211601_
                              _tl1142311604_
                              ___splice3691136912_
                              _target1142411607_
                              _tl1142611610_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1142711613_
                                                  _target1142411607_
                                                  '()))))
                                            (___match3693736938_
                                             (lambda (_e1140711732_
                                                      _hd1140811736_
                                                      _tl1140911739_
                                                      ___splice3690736908_
                                                      _target1141011742_
                                                      _tl1141211745_)
                                               (letrec ((_loop1141311748_
                                                         (lambda (_hd1141111752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body1141711755_)
                   (if (gx#stx-pair? _hd1141111752_)
                       (let ((_e1141411758_ (gx#syntax-e _hd1141111752_)))
                         (let ((_lp-tl1141611765_ (##cdr _e1141411758_))
                               (_lp-hd1141511762_ (##car _e1141411758_)))
                           (_loop1141311748_
                            _lp-tl1141611765_
                            (cons _lp-hd1141511762_ _body1141711755_))))
                       (let ((_body1141811768_ (reverse _body1141711755_)))
                         (___kont3690536906_ _body1141811768_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1141311748_
                                                  _target1141011742_
                                                  '())))))
                                       (if (gx#stx-pair? ___stx3690236903_)
                                           (let ((_e1140711732_
                                                  (gx#syntax-e
                                                   ___stx3690236903_)))
                                             (let ((_tl1140911739_
                                                    (##cdr _e1140711732_))
                                                   (_hd1140811736_
                                                    (##car _e1140711732_)))
                                               (if (gx#identifier?
                                                    _hd1140811736_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core$<sugar>$<sugar:2>[1]#_g41082_|
                                                        _hd1140811736_)
                                                       (if (gx#stx-pair/null?
                                                            _tl1140911739_)
                                                           (let ((___splice3690736908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _tl1140911739_ '0)))
                     (let ((_tl1141211745_
                            (##vector-ref ___splice3690736908_ '1))
                           (_target1141011742_
                            (##vector-ref ___splice3690736908_ '0)))
                       (if (gx#stx-null? _tl1141211745_)
                           (___match3693736938_
                            _e1140711732_
                            _hd1140811736_
                            _tl1140911739_
                            ___splice3690736908_
                            _target1141011742_
                            _tl1141211745_)
                           (if (gx#stx-pair/null? _hd1140811736_)
                               (let ((___splice3691136912_
                                      (gx#syntax-split-splice
                                       _hd1140811736_
                                       '0)))
                                 (let ((_tl1142611610_
                                        (##vector-ref ___splice3691136912_ '1))
                                       (_target1142411607_
                                        (##vector-ref
                                         ___splice3691136912_
                                         '0)))
                                   (if (gx#stx-null? _tl1142611610_)
                                       (___match3695136952_
                                        _e1140711732_
                                        _hd1140811736_
                                        _tl1140911739_
                                        ___splice3691136912_
                                        _target1142411607_
                                        _tl1142611610_)
                                       (_g1140411467_))))
                               (_g1140411467_)))))
                   (if (gx#stx-pair/null? _hd1140811736_)
                       (let ((___splice3691136912_
                              (gx#syntax-split-splice _hd1140811736_ '0)))
                         (let ((_tl1142611610_
                                (##vector-ref ___splice3691136912_ '1))
                               (_target1142411607_
                                (##vector-ref ___splice3691136912_ '0)))
                           (if (gx#stx-null? _tl1142611610_)
                               (___match3695136952_
                                _e1140711732_
                                _hd1140811736_
                                _tl1140911739_
                                ___splice3691136912_
                                _target1142411607_
                                _tl1142611610_)
                               (_g1140411467_))))
                       (_g1140411467_)))
               (if (gx#stx-pair/null? _hd1140811736_)
                   (let ((___splice3691136912_
                          (gx#syntax-split-splice _hd1140811736_ '0)))
                     (let ((_tl1142611610_
                            (##vector-ref ___splice3691136912_ '1))
                           (_target1142411607_
                            (##vector-ref ___splice3691136912_ '0)))
                       (if (gx#stx-null? _tl1142611610_)
                           (___match3695136952_
                            _e1140711732_
                            _hd1140811736_
                            _tl1140911739_
                            ___splice3691136912_
                            _target1142411607_
                            _tl1142611610_)
                           (_g1140411467_))))
                   (_g1140411467_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _hd1140811736_)
                                                       (let ((___splice3691136912_
                                                              (gx#syntax-split-splice
                                                               _hd1140811736_
                                                               '0)))
                                                         (let ((_tl1142611610_
                                                                (##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ___splice3691136912_
                         '1))
                       (_target1142411607_
                        (##vector-ref ___splice3691136912_ '0)))
                   (if (gx#stx-null? _tl1142611610_)
                       (___match3695136952_
                        _e1140711732_
                        _hd1140811736_
                        _tl1140911739_
                        ___splice3691136912_
                        _target1142411607_
                        _tl1142611610_)
                       (_g1140411467_))))
               (_g1140411467_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1140411467_)))))))
                              (___kont3697336974_
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
                                   (if (gx#stx-null? ___stx3696836969_)
                                       (___kont3697336974_)
                                       (_g1134111353_)))))
                            (if (gx#stx-pair? ___stx3696836969_)
                                (let ((_e1134511375_
                                       (gx#syntax-e ___stx3696836969_)))
                                  (let ((_tl1134711382_ (##cdr _e1134511375_))
                                        (_hd1134611379_ (##car _e1134511375_)))
                                    (___kont3697136972_
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
                                     (let* ((___stx3698636987_ _datums11073_)
                                            (_g1107811099_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                ___stx3698636987_))))
                                       (let ((___kont3698936990_
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
                                             (___kont3699336994_
                                              (lambda () _default11041_)))
                                         (let ((___match3700937010_
                                                (lambda (_e1108211117_
                                                         _hd1108311121_
                                                         _tl1108411124_
                                                         ___splice3699136992_
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
                            (___kont3698936990_
                             _tl1108411124_
                             _datum1109311153_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1108811133_
                                                     _target1108511127_
                                                     '())))))
                                           (if (gx#stx-pair? ___stx3698636987_)
                                               (let ((_e1108211117_
                                                      (gx#syntax-e
                                                       ___stx3698636987_)))
                                                 (let ((_tl1108411124_
                                                        (##cdr _e1108211117_))
                                                       (_hd1108311121_
                                                        (##car _e1108211117_)))
                                                   (if (gx#stx-pair/null?
                                                        _hd1108311121_)
                                                       (let ((___splice3699136992_
                                                              (gx#syntax-split-splice
                                                               _hd1108311121_
                                                               '0)))
                                                         (let ((_tl1108711130_
                                                                (##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ___splice3699136992_
                         '1))
                       (_target1108511127_
                        (##vector-ref ___splice3699136992_ '0)))
                   (if (gx#stx-null? _tl1108711130_)
                       (___match3700937010_
                        _e1108211117_
                        _hd1108311121_
                        _tl1108411124_
                        ___splice3699136992_
                        _target1108511127_
                        _tl1108711130_)
                       (___kont3699336994_))))
               (___kont3699336994_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont3699336994_))))))))
                               _g1104411055_))))
                      (_g1104211269_ _e11037_))))
                 (_datum-dispatch-index8873_
                  (lambda (_datums10909_)
                    (let _lp10912_ ((_rest10915_ _datums10909_)
                                    (_ix10917_ '0)
                                    (_r10918_ '()))
                      (let* ((___stx3701237013_ _rest10915_)
                             (_g1092110942_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3701237013_))))
                        (let ((___kont3701537016_
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
                              (___kont3701937020_ (lambda () _r10918_)))
                          (let ((___match3703537036_
                                 (lambda (_e1092510960_
                                          _hd1092610964_
                                          _tl1092710967_
                                          ___splice3701737018_
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
                                                     (___kont3701537016_
                                                      _tl1092710967_
                                                      _datum1093610996_))))))
                                     (_loop1093110976_
                                      _target1092810970_
                                      '())))))
                            (if (gx#stx-pair? ___stx3701237013_)
                                (let ((_e1092510960_
                                       (gx#syntax-e ___stx3701237013_)))
                                  (let ((_tl1092710967_ (##cdr _e1092510960_))
                                        (_hd1092610964_ (##car _e1092510960_)))
                                    (if (gx#stx-pair/null? _hd1092610964_)
                                        (let ((___splice3701737018_
                                               (gx#syntax-split-splice
                                                _hd1092610964_
                                                '0)))
                                          (let ((_tl1093010973_
                                                 (##vector-ref
                                                  ___splice3701737018_
                                                  '1))
                                                (_target1092810970_
                                                 (##vector-ref
                                                  ___splice3701737018_
                                                  '0)))
                                            (if (gx#stx-null? _tl1093010973_)
                                                (___match3703537036_
                                                 _e1092510960_
                                                 _hd1092610964_
                                                 _tl1092710967_
                                                 ___splice3701737018_
                                                 _target1092810970_
                                                 _tl1093010973_)
                                                (___kont3701937020_))))
                                        (___kont3701937020_))))
                                (___kont3701937020_))))))))
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
                                (let ((_g41083_
                                       (gx#syntax-split-splice
                                        _hd1067410740_
                                        '0)))
                                  (begin
                                    (let ((_g41084_
                                           (if (##values? _g41083_)
                                               (##vector-length _g41083_)
                                               1)))
                                      (if (not (##fx= _g41084_ 2))
                                          (error "Context expects 2 values"
                                                 _g41084_)))
                                    (let ((_target1067610746_
                                           (##vector-ref _g41083_ 0))
                                          (_tl1067810749_
                                           (##vector-ref _g41083_ 1)))
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
                                    (let ((_g41085_
                                           (gx#syntax-split-splice
                                            _hd1021210278_
                                            '0)))
                                      (begin
                                        (let ((_g41086_
                                               (if (##values? _g41085_)
                                                   (##vector-length _g41085_)
                                                   1)))
                                          (if (not (##fx= _g41086_ 2))
                                              (error "Context expects 2 values"
                                                     _g41086_)))
                                        (let ((_target1021410284_
                                               (##vector-ref _g41085_ 0))
                                              (_tl1021610287_
                                               (##vector-ref _g41085_ 1)))
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
                            (let ((_g41087_
                                   (gx#syntax-split-splice _hd98319897_ '0)))
                              (begin
                                (let ((_g41088_
                                       (if (##values? _g41087_)
                                           (##vector-length _g41087_)
                                           1)))
                                  (if (not (##fx= _g41088_ 2))
                                      (error "Context expects 2 values"
                                             _g41088_)))
                                (let ((_target98339903_
                                       (##vector-ref _g41087_ 0))
                                      (_tl98359906_ (##vector-ref _g41087_ 1)))
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
                                (let ((_g41089_
                                       (gx#syntax-split-splice
                                        _hd95369602_
                                        '0)))
                                  (begin
                                    (let ((_g41090_
                                           (if (##values? _g41089_)
                                               (##vector-length _g41089_)
                                               1)))
                                      (if (not (##fx= _g41090_ 2))
                                          (error "Context expects 2 values"
                                                 _g41090_)))
                                    (let ((_target95389608_
                                           (##vector-ref _g41089_ 0))
                                          (_tl95409611_
                                           (##vector-ref _g41089_ 1)))
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
                            (let ((_g41091_
                                   (gx#syntax-split-splice _hd93119377_ '0)))
                              (begin
                                (let ((_g41092_
                                       (if (##values? _g41091_)
                                           (##vector-length _g41091_)
                                           1)))
                                  (if (not (##fx= _g41092_ 2))
                                      (error "Context expects 2 values"
                                             _g41092_)))
                                (let ((_target93139383_
                                       (##vector-ref _g41091_ 0))
                                      (_tl93159386_ (##vector-ref _g41091_ 1)))
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
                    (let ((_g41093_
                           (if (_eq-datums?8871_ _datums9016_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_hash-e9020_ (##vector-ref _g41093_ 0))
                              (_hashf9022_ (##vector-ref _g41093_ 1))
                              (_eqf9023_ (##vector-ref _g41093_ 2)))
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
                                  (let ((_g41094_
                                         (gx#syntax-split-splice
                                          _hd90549126_
                                          '0)))
                                    (begin
                                      (let ((_g41095_
                                             (if (##values? _g41094_)
                                                 (##vector-length _g41094_)
                                                 1)))
                                        (if (not (##fx= _g41095_ 2))
                                            (error "Context expects 2 values"
                                                   _g41095_)))
                                      (let ((_target90569132_
                                             (##vector-ref _g41094_ 0))
                                            (_tl90589135_
                                             (##vector-ref _g41094_ 1)))
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
                                        (let ((_g41096_
                                               (gx#syntax-split-splice
                                                _tl88998938_
                                                '0)))
                                          (begin
                                            (let ((_g41097_
                                                   (if (##values? _g41096_)
                                                       (##vector-length
                                                        _g41096_)
                                                       1)))
                                              (if (not (##fx= _g41097_ 2))
                                                  (error "Context expects 2 values"
                                                         _g41097_)))
                                            (let ((_target89008941_
                                                   (##vector-ref _g41096_ 0))
                                                  (_tl89028944_
                                                   (##vector-ref _g41096_ 1)))
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
                               (let ((_g41098_
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
                                   (let ((_g41099_
                                          (if (##values? _g41098_)
                                              (##vector-length _g41098_)
                                              1)))
                                     (if (not (##fx= _g41099_ 3))
                                         (error "Context expects 3 values"
                                                _g41099_)))
                                   (let ((_datums9000_
                                          (##vector-ref _g41098_ 0))
                                         (_dispatch9002_
                                          (##vector-ref _g41098_ 1))
                                         (_default9003_
                                          (##vector-ref _g41098_ 2)))
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
      (lambda (_stx11818_)
        (let* ((_g1182111839_
                (lambda (_g1182211835_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1182211835_)))
               (_g1182011905_
                (lambda (_g1182211843_)
                  (if (gx#stx-pair? _g1182211843_)
                      (let ((_e1182511846_ (gx#syntax-e _g1182211843_)))
                        (let ((_hd1182611850_ (##car _e1182511846_))
                              (_tl1182711853_ (##cdr _e1182511846_)))
                          (if (gx#stx-pair? _tl1182711853_)
                              (let ((_e1182811856_
                                     (gx#syntax-e _tl1182711853_)))
                                (let ((_hd1182911860_ (##car _e1182811856_))
                                      (_tl1183011863_ (##cdr _e1182811856_)))
                                  (if (gx#stx-pair? _tl1183011863_)
                                      (let ((_e1183111866_
                                             (gx#syntax-e _tl1183011863_)))
                                        (let ((_hd1183211870_
                                               (##car _e1183111866_))
                                              (_tl1183311873_
                                               (##cdr _e1183111866_)))
                                          (if (gx#stx-null? _tl1183311873_)
                                              ((lambda (_L11876_ _L11878_)
                                                 (let ((_datum-e11894_
                                                        (gx#stx-e _L11878_)))
                                                   (if (if (symbol? _datum-e11894_)
                                                           '#t
                                                           (if (keyword?
                                                                _datum-e11894_)
                                                               '#t
                                                               (immediate?
                                                                _datum-e11894_)))
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'eq?)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'quote)
                                 (cons _L11878_ '()))
                           (cons _L11876_ '())))
               (if (number? _datum-e11894_)
                   (cons (gx#datum->syntax '#f 'eqv?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L11878_ '()))
                               (cons _L11876_ '())))
                   (cons (gx#datum->syntax '#f 'equal?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L11878_ '()))
                               (cons _L11876_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd1183211870_
                                               _hd1182911860_)
                                              (_g1182111839_ _g1182211843_))))
                                      (_g1182111839_ _g1182211843_))))
                              (_g1182111839_ _g1182211843_))))
                      (_g1182111839_ _g1182211843_)))))
          (_g1182011905_ _stx11818_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch|
      (lambda (_$stx11909_)
        (let* ((_g1191311937_
                (lambda (_g1191411933_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1191411933_)))
               (_g1191212022_
                (lambda (_g1191411941_)
                  (if (gx#stx-pair? _g1191411941_)
                      (let ((_e1191711944_ (gx#syntax-e _g1191411941_)))
                        (let ((_hd1191811948_ (##car _e1191711944_))
                              (_tl1191911951_ (##cdr _e1191711944_)))
                          (if (gx#stx-pair? _tl1191911951_)
                              (let ((_e1192011954_
                                     (gx#syntax-e _tl1191911951_)))
                                (let ((_hd1192111958_ (##car _e1192011954_))
                                      (_tl1192211961_ (##cdr _e1192011954_)))
                                  (if (gx#stx-pair/null? _tl1192211961_)
                                      (let ((_g41100_
                                             (gx#syntax-split-splice
                                              _tl1192211961_
                                              '0)))
                                        (begin
                                          (let ((_g41101_
                                                 (if (##values? _g41100_)
                                                     (##vector-length _g41100_)
                                                     1)))
                                            (if (not (##fx= _g41101_ 2))
                                                (error "Context expects 2 values"
                                                       _g41101_)))
                                          (let ((_target1192311964_
                                                 (##vector-ref _g41100_ 0))
                                                (_tl1192511967_
                                                 (##vector-ref _g41100_ 1)))
                                            (if (gx#stx-null? _tl1192511967_)
                                                (letrec ((_loop1192611970_
                                                          (lambda (_hd1192411974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _K1193011977_)
                    (if (gx#stx-pair? _hd1192411974_)
                        (let ((_e1192711980_ (gx#syntax-e _hd1192411974_)))
                          (let ((_lp-hd1192811984_ (##car _e1192711980_))
                                (_lp-tl1192911987_ (##cdr _e1192711980_)))
                            (_loop1192611970_
                             _lp-tl1192911987_
                             (cons _lp-hd1192811984_ _K1193011977_))))
                        (let ((_K1193111990_ (reverse _K1193011977_)))
                          ((lambda (_L11994_ _L11996_)
                             (cons (gx#datum->syntax '#f '~case-dispatch*)
                                   (cons '0
                                         (cons _L11996_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1201312016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1201412019_)
                  (cons _g1201312016_ _g1201412019_))
                '()
                _L11994_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           _K1193111990_
                           _hd1192111958_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1192611970_
                                                   _target1192311964_
                                                   '()))
                                                (_g1191311937_
                                                 _g1191411941_)))))
                                      (_g1191311937_ _g1191411941_))))
                              (_g1191311937_ _g1191411941_))))
                      (_g1191311937_ _g1191411941_)))))
          (_g1191212022_ _$stx11909_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch*|
      (lambda (_stx12027_)
        (let* ((___stx3703837039_ _stx12027_)
               (_g1203412130_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3703837039_))))
          (let ((___kont3704137042_
                 (lambda (_L12607_ _L12609_)
                   (cons (gx#datum->syntax '#f 'quote) (cons '#!void '()))))
                (___kont3704337044_
                 (lambda (_L12549_ _L12551_ _L12552_) _L12549_))
                (___kont3704537046_
                 (lambda (_L12446_ _L12448_ _L12449_ _L12450_)
                   (let* ((_g1247112479_
                           (lambda (_g1247212475_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1247212475_)))
                          (_g1247012498_
                           (lambda (_g1247212483_)
                             ((lambda (_L12486_)
                                (let ()
                                  (cons (gx#datum->syntax '#f 'if)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '##fx=)
                                                    (cons _L12449_
                                                          (cons _L12486_ '())))
                                              (cons _L12448_
                                                    (cons _L12446_ '()))))))
                              _g1247212483_))))
                     (_g1247012498_ (gx#stx-e _L12450_)))))
                (___kont3704737048_
                 (lambda (_L12296_ _L12298_ _L12299_ _L12300_ _L12301_)
                   (let* ((_g1232512340_
                           (lambda (_g1232612336_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1232612336_)))
                          (_g1232412385_
                           (lambda (_g1232612344_)
                             (if (gx#stx-pair? _g1232612344_)
                                 (let ((_e1232912347_
                                        (gx#syntax-e _g1232612344_)))
                                   (let ((_hd1233012351_ (##car _e1232912347_))
                                         (_tl1233112354_
                                          (##cdr _e1232912347_)))
                                     (if (gx#stx-pair? _tl1233112354_)
                                         (let ((_e1233212357_
                                                (gx#syntax-e _tl1233112354_)))
                                           (let ((_hd1233312361_
                                                  (##car _e1233212357_))
                                                 (_tl1233412364_
                                                  (##cdr _e1233212357_)))
                                             (if (gx#stx-null? _tl1233412364_)
                                                 ((lambda (_L12367_ _L12369_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##fx=)
                                (cons _L12300_ (cons _L12369_ '())))
                          (cons _L12299_
                                (cons (cons (gx#datum->syntax '#f 'if)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '##fx=)
                                                        (cons _L12300_
                                                              (cons _L12367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _L12298_
                                                        (cons _L12296_ '()))))
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1233312361_
                                                  _hd1233012351_)
                                                 (_g1232512340_
                                                  _g1232612344_))))
                                         (_g1232512340_ _g1232612344_))))
                                 (_g1232512340_ _g1232612344_)))))
                     (_g1232412385_
                      (list (gx#stx-e _L12301_) (fx1+ (gx#stx-e _L12301_)))))))
                (___kont3704937050_
                 (lambda (_L12197_ _L12199_ _L12200_)
                   (cons (gx#datum->syntax '#f '~case-dispatch-bsearch)
                         (cons _L12200_
                               (cons _L12199_
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g1222012223_
                                                       _g1222112226_)
                                                (cons _g1222012223_
                                                      _g1222112226_))
                                              '()
                                              _L12197_))))))))
            (let ((___match3719537196_
                   (lambda (_e1210712137_
                            _hd1210812141_
                            _tl1210912144_
                            _e1211012147_
                            _hd1211112151_
                            _tl1211212154_
                            _e1211312157_
                            _hd1211412161_
                            _tl1211512164_
                            ___splice3705137052_
                            _target1211612167_
                            _tl1211812170_)
                     (letrec ((_loop1211912173_
                               (lambda (_hd1211712177_ _K1212312180_)
                                 (if (gx#stx-pair? _hd1211712177_)
                                     (let ((_e1212012183_
                                            (gx#syntax-e _hd1211712177_)))
                                       (let ((_lp-tl1212212190_
                                              (##cdr _e1212012183_))
                                             (_lp-hd1212112187_
                                              (##car _e1212012183_)))
                                         (_loop1211912173_
                                          _lp-tl1212212190_
                                          (cons _lp-hd1212112187_
                                                _K1212312180_))))
                                     (let ((_K1212412193_
                                            (reverse _K1212312180_)))
                                       (___kont3704937050_
                                        _K1212412193_
                                        _hd1211412161_
                                        _hd1211112151_))))))
                       (_loop1211912173_ _target1211612167_ '())))))
              (if (gx#stx-pair? ___stx3703837039_)
                  (let ((_e1203812577_ (gx#syntax-e ___stx3703837039_)))
                    (let ((_tl1204012584_ (##cdr _e1203812577_))
                          (_hd1203912581_ (##car _e1203812577_)))
                      (if (gx#stx-pair? _tl1204012584_)
                          (let ((_e1204112587_ (gx#syntax-e _tl1204012584_)))
                            (let ((_tl1204312594_ (##cdr _e1204112587_))
                                  (_hd1204212591_ (##car _e1204112587_)))
                              (if (gx#stx-pair? _tl1204312594_)
                                  (let ((_e1204412597_
                                         (gx#syntax-e _tl1204312594_)))
                                    (let ((_tl1204612604_
                                           (##cdr _e1204412597_))
                                          (_hd1204512601_
                                           (##car _e1204412597_)))
                                      (if (gx#stx-null? _tl1204612604_)
                                          (___kont3704137042_
                                           _hd1204512601_
                                           _hd1204212591_)
                                          (if (gx#stx-pair? _tl1204612604_)
                                              (let ((_e1205912539_
                                                     (gx#syntax-e
                                                      _tl1204612604_)))
                                                (let ((_tl1206112546_
                                                       (##cdr _e1205912539_))
                                                      (_hd1206012543_
                                                       (##car _e1205912539_)))
                                                  (if (gx#stx-null?
                                                       _tl1206112546_)
                                                      (___kont3704337044_
                                                       _hd1206012543_
                                                       _hd1204512601_
                                                       _hd1204212591_)
                                                      (if (gx#stx-pair?
                                                           _tl1206112546_)
                                                          (let ((_e1207812436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1206112546_)))
                    (let ((_tl1208012443_ (##cdr _e1207812436_))
                          (_hd1207912440_ (##car _e1207812436_)))
                      (if (gx#stx-null? _tl1208012443_)
                          (___kont3704537046_
                           _hd1207912440_
                           _hd1206012543_
                           _hd1204512601_
                           _hd1204212591_)
                          (if (gx#stx-pair? _tl1208012443_)
                              (let ((_e1210112286_
                                     (gx#syntax-e _tl1208012443_)))
                                (let ((_tl1210312293_ (##cdr _e1210112286_))
                                      (_hd1210212290_ (##car _e1210112286_)))
                                  (if (gx#stx-null? _tl1210312293_)
                                      (___kont3704737048_
                                       _hd1210212290_
                                       _hd1207912440_
                                       _hd1206012543_
                                       _hd1204512601_
                                       _hd1204212591_)
                                      (if (gx#stx-pair/null? _tl1204612604_)
                                          (let ((___splice3705137052_
                                                 (gx#syntax-split-splice
                                                  _tl1204612604_
                                                  '0)))
                                            (let ((_tl1211812170_
                                                   (##vector-ref
                                                    ___splice3705137052_
                                                    '1))
                                                  (_target1211612167_
                                                   (##vector-ref
                                                    ___splice3705137052_
                                                    '0)))
                                              (if (gx#stx-null? _tl1211812170_)
                                                  (___match3719537196_
                                                   _e1203812577_
                                                   _hd1203912581_
                                                   _tl1204012584_
                                                   _e1204112587_
                                                   _hd1204212591_
                                                   _tl1204312594_
                                                   _e1204412597_
                                                   _hd1204512601_
                                                   _tl1204612604_
                                                   ___splice3705137052_
                                                   _target1211612167_
                                                   _tl1211812170_)
                                                  (_g1203412130_))))
                                          (_g1203412130_)))))
                              (if (gx#stx-pair/null? _tl1204612604_)
                                  (let ((___splice3705137052_
                                         (gx#syntax-split-splice
                                          _tl1204612604_
                                          '0)))
                                    (let ((_tl1211812170_
                                           (##vector-ref
                                            ___splice3705137052_
                                            '1))
                                          (_target1211612167_
                                           (##vector-ref
                                            ___splice3705137052_
                                            '0)))
                                      (if (gx#stx-null? _tl1211812170_)
                                          (___match3719537196_
                                           _e1203812577_
                                           _hd1203912581_
                                           _tl1204012584_
                                           _e1204112587_
                                           _hd1204212591_
                                           _tl1204312594_
                                           _e1204412597_
                                           _hd1204512601_
                                           _tl1204612604_
                                           ___splice3705137052_
                                           _target1211612167_
                                           _tl1211812170_)
                                          (_g1203412130_))))
                                  (_g1203412130_))))))
                  (if (gx#stx-pair/null? _tl1204612604_)
                      (let ((___splice3705137052_
                             (gx#syntax-split-splice _tl1204612604_ '0)))
                        (let ((_tl1211812170_
                               (##vector-ref ___splice3705137052_ '1))
                              (_target1211612167_
                               (##vector-ref ___splice3705137052_ '0)))
                          (if (gx#stx-null? _tl1211812170_)
                              (___match3719537196_
                               _e1203812577_
                               _hd1203912581_
                               _tl1204012584_
                               _e1204112587_
                               _hd1204212591_
                               _tl1204312594_
                               _e1204412597_
                               _hd1204512601_
                               _tl1204612604_
                               ___splice3705137052_
                               _target1211612167_
                               _tl1211812170_)
                              (_g1203412130_))))
                      (_g1203412130_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl1204612604_)
                                                  (let ((___splice3705137052_
                                                         (gx#syntax-split-splice
                                                          _tl1204612604_
                                                          '0)))
                                                    (let ((_tl1211812170_
                                                           (##vector-ref
                                                            ___splice3705137052_
                                                            '1))
                                                          (_target1211612167_
                                                           (##vector-ref
                                                            ___splice3705137052_
                                                            '0)))
                                                      (if (gx#stx-null?
                                                           _tl1211812170_)
                                                          (___match3719537196_
                                                           _e1203812577_
                                                           _hd1203912581_
                                                           _tl1204012584_
                                                           _e1204112587_
                                                           _hd1204212591_
                                                           _tl1204312594_
                                                           _e1204412597_
                                                           _hd1204512601_
                                                           _tl1204612604_
                                                           ___splice3705137052_
                                                           _target1211612167_
                                                           _tl1211812170_)
                                                          (_g1203412130_))))
                                                  (_g1203412130_))))))
                                  (_g1203412130_))))
                          (_g1203412130_))))
                  (_g1203412130_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch-bsearch|
      (lambda (_stx12629_)
        (letrec ((_split12632_
                  (lambda (_lst12993_ _mid12995_)
                    (let _lp12997_ ((_i13000_ '0)
                                    (_rest13002_ _lst12993_)
                                    (_left13003_ '()))
                      (if (fx< _i13000_ _mid12995_)
                          (_lp12997_
                           (fx1+ _i13000_)
                           (cdr _rest13002_)
                           (cons (car _rest13002_) _left13003_))
                          (values (reverse _left13003_) _rest13002_))))))
          (let* ((_g1263512663_
                  (lambda (_g1263612659_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1263612659_)))
                 (_g1263412989_
                  (lambda (_g1263612667_)
                    (if (gx#stx-pair? _g1263612667_)
                        (let ((_e1264012670_ (gx#syntax-e _g1263612667_)))
                          (let ((_hd1264112674_ (##car _e1264012670_))
                                (_tl1264212677_ (##cdr _e1264012670_)))
                            (if (gx#stx-pair? _tl1264212677_)
                                (let ((_e1264312680_
                                       (gx#syntax-e _tl1264212677_)))
                                  (let ((_hd1264412684_ (##car _e1264312680_))
                                        (_tl1264512687_ (##cdr _e1264312680_)))
                                    (if (gx#stx-pair? _tl1264512687_)
                                        (let ((_e1264612690_
                                               (gx#syntax-e _tl1264512687_)))
                                          (let ((_hd1264712694_
                                                 (##car _e1264612690_))
                                                (_tl1264812697_
                                                 (##cdr _e1264612690_)))
                                            (if (gx#stx-pair/null?
                                                 _tl1264812697_)
                                                (let ((_g41102_
                                                       (gx#syntax-split-splice
                                                        _tl1264812697_
                                                        '0)))
                                                  (begin
                                                    (let ((_g41103_
                                                           (if (##values?
                                                                _g41102_)
                                                               (##vector-length
                                                                _g41102_)
                                                               1)))
                                                      (if (not (##fx= _g41103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g41103_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1264912700_
                                                           (##vector-ref
                                                            _g41102_
                                                            0))
                                                          (_tl1265112703_
                                                           (##vector-ref
                                                            _g41102_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1265112703_)
                                                          (letrec ((_loop1265212706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1265012710_ _K1265612713_)
                              (if (gx#stx-pair? _hd1265012710_)
                                  (let ((_e1265312716_
                                         (gx#syntax-e _hd1265012710_)))
                                    (let ((_lp-hd1265412720_
                                           (##car _e1265312716_))
                                          (_lp-tl1265512723_
                                           (##cdr _e1265312716_)))
                                      (_loop1265212706_
                                       _lp-tl1265512723_
                                       (cons _lp-hd1265412720_
                                             _K1265612713_))))
                                  (let ((_K1265712726_
                                         (reverse _K1265612713_)))
                                    ((lambda (_L12730_ _L12732_ _L12733_)
                                       (let* ((_len12763_
                                               (length (begin
                                                         '#!void
                                                         (foldr (lambda (_g1275412757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1275512760_)
                          (cons _g1275412757_ _g1275512760_))
                        '()
                        _L12730_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_mid12766_
                                               (quotient _len12763_ '2))
                                              (_g41104_
                                               (_split12632_
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g1276812771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1276912774_)
                   (cons _g1276812771_ _g1276912774_))
                 '()
                 _L12730_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _mid12766_)))
                                         (begin
                                           (let ((_g41105_
                                                  (if (##values? _g41104_)
                                                      (##vector-length
                                                       _g41104_)
                                                      1)))
                                             (if (not (##fx= _g41105_ 2))
                                                 (error "Context expects 2 values"
                                                        _g41105_)))
                                           (let ((_left12777_
                                                  (##vector-ref _g41104_ 0))
                                                 (_right12779_
                                                  (##vector-ref _g41104_ 1)))
                                             (let ()
                                               (let* ((_g1278312824_
                                                       (lambda (_g1278412820_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1278412820_)))
                                                      (_g1278212985_
                                                       (lambda (_g1278412828_)
                                                         (if (gx#stx-pair?
                                                              _g1278412828_)
                                                             (let ((_e1278912831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1278412828_)))
                       (let ((_hd1279012835_ (##car _e1278912831_))
                             (_tl1279112838_ (##cdr _e1278912831_)))
                         (if (gx#stx-pair? _tl1279112838_)
                             (let ((_e1279212841_
                                    (gx#syntax-e _tl1279112838_)))
                               (let ((_hd1279312845_ (##car _e1279212841_))
                                     (_tl1279412848_ (##cdr _e1279212841_)))
                                 (if (gx#stx-pair/null? _hd1279312845_)
                                     (let ((_g41106_
                                            (gx#syntax-split-splice
                                             _hd1279312845_
                                             '0)))
                                       (begin
                                         (let ((_g41107_
                                                (if (##values? _g41106_)
                                                    (##vector-length _g41106_)
                                                    1)))
                                           (if (not (##fx= _g41107_ 2))
                                               (error "Context expects 2 values"
                                                      _g41107_)))
                                         (let ((_target1279512851_
                                                (##vector-ref _g41106_ 0))
                                               (_tl1279712854_
                                                (##vector-ref _g41106_ 1)))
                                           (if (gx#stx-null? _tl1279712854_)
                                               (letrec ((_loop1279812857_
                                                         (lambda (_hd1279612861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K-left1280212864_)
                   (if (gx#stx-pair? _hd1279612861_)
                       (let ((_e1279912867_ (gx#syntax-e _hd1279612861_)))
                         (let ((_lp-hd1280012871_ (##car _e1279912867_))
                               (_lp-tl1280112874_ (##cdr _e1279912867_)))
                           (_loop1279812857_
                            _lp-tl1280112874_
                            (cons _lp-hd1280012871_ _K-left1280212864_))))
                       (let ((_K-left1280312877_ (reverse _K-left1280212864_)))
                         (if (gx#stx-pair? _tl1279412848_)
                             (let ((_e1280412881_
                                    (gx#syntax-e _tl1279412848_)))
                               (let ((_hd1280512885_ (##car _e1280412881_))
                                     (_tl1280612888_ (##cdr _e1280412881_)))
                                 (if (gx#stx-pair/null? _hd1280512885_)
                                     (let ((_g41108_
                                            (gx#syntax-split-splice
                                             _hd1280512885_
                                             '0)))
                                       (begin
                                         (let ((_g41109_
                                                (if (##values? _g41108_)
                                                    (##vector-length _g41108_)
                                                    1)))
                                           (if (not (##fx= _g41109_ 2))
                                               (error "Context expects 2 values"
                                                      _g41109_)))
                                         (let ((_target1280712891_
                                                (##vector-ref _g41108_ 0))
                                               (_tl1280912894_
                                                (##vector-ref _g41108_ 1)))
                                           (if (gx#stx-null? _tl1280912894_)
                                               (letrec ((_loop1281012897_
                                                         (lambda (_hd1280812901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K-right1281412904_)
                   (if (gx#stx-pair? _hd1280812901_)
                       (let ((_e1281112907_ (gx#syntax-e _hd1280812901_)))
                         (let ((_lp-hd1281212911_ (##car _e1281112907_))
                               (_lp-tl1281312914_ (##cdr _e1281112907_)))
                           (_loop1281012897_
                            _lp-tl1281312914_
                            (cons _lp-hd1281212911_ _K-right1281412904_))))
                       (let ((_K-right1281512917_
                              (reverse _K-right1281412904_)))
                         (if (gx#stx-pair? _tl1280612888_)
                             (let ((_e1281612921_
                                    (gx#syntax-e _tl1280612888_)))
                               (let ((_hd1281712925_ (##car _e1281612921_))
                                     (_tl1281812928_ (##cdr _e1281612921_)))
                                 (if (gx#stx-null? _tl1281812928_)
                                     ((lambda (_L12931_
                                               _L12933_
                                               _L12934_
                                               _L12935_)
                                        (let ()
                                          (cons (gx#datum->syntax '#f 'if)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##fx<)
                                                            (cons _L12732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L12931_ '())))
              (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                          (cons _L12733_
                                (cons _L12732_
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g1296812973_
                                                        _g1296912976_)
                                                 (cons _g1296812973_
                                                       _g1296912976_))
                                               '()
                                               _L12934_)))))
                    (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                                (cons _L12931_
                                      (cons _L12732_
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g1297012979_
                                                              _g1297112982_)
                                                       (cons _g1297012979_
                                                             _g1297112982_))
                                                     '()
                                                     _L12933_)))))
                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _hd1281712925_
                                      _K-right1281512917_
                                      _K-left1280312877_
                                      _hd1279012835_)
                                     (_g1278312824_ _g1278412828_))))
                             (_g1278312824_ _g1278412828_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1281012897_
                                                  _target1280712891_
                                                  '()))
                                               (_g1278312824_
                                                _g1278412828_)))))
                                     (_g1278312824_ _g1278412828_))))
                             (_g1278312824_ _g1278412828_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1279812857_
                                                  _target1279512851_
                                                  '()))
                                               (_g1278312824_
                                                _g1278412828_)))))
                                     (_g1278312824_ _g1278412828_))))
                             (_g1278312824_ _g1278412828_))))
                     (_g1278312824_ _g1278412828_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1278212985_
                                                  (list _mid12766_
                                                        _left12777_
                                                        _right12779_
                                                        (fx+ _mid12766_
                                                             (gx#stx-e
                                                              _L12733_))))))))))
                                     _K1265712726_
                                     _hd1264712694_
                                     _hd1264412684_))))))
                    (_loop1265212706_ _target1264912700_ '()))
                  (_g1263512663_ _g1263612667_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1263512663_
                                                 _g1263612667_))))
                                        (_g1263512663_ _g1263612667_))))
                                (_g1263512663_ _g1263612667_))))
                        (_g1263512663_ _g1263612667_)))))
            (_g1263412989_ _stx12629_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#do|
      (lambda (_$stx13009_)
        (let* ((_g1301313084_
                (lambda (_g1301413080_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1301413080_)))
               (_g1301213373_
                (lambda (_g1301413088_)
                  (if (gx#stx-pair? _g1301413088_)
                      (let ((_e1302113091_ (gx#syntax-e _g1301413088_)))
                        (let ((_hd1302213095_ (##car _e1302113091_))
                              (_tl1302313098_ (##cdr _e1302113091_)))
                          (if (gx#stx-pair? _tl1302313098_)
                              (let ((_e1302413101_
                                     (gx#syntax-e _tl1302313098_)))
                                (let ((_hd1302513105_ (##car _e1302413101_))
                                      (_tl1302613108_ (##cdr _e1302413101_)))
                                  (if (gx#stx-pair/null? _hd1302513105_)
                                      (let ((_g41110_
                                             (gx#syntax-split-splice
                                              _hd1302513105_
                                              '0)))
                                        (begin
                                          (let ((_g41111_
                                                 (if (##values? _g41110_)
                                                     (##vector-length _g41110_)
                                                     1)))
                                            (if (not (##fx= _g41111_ 2))
                                                (error "Context expects 2 values"
                                                       _g41111_)))
                                          (let ((_target1302713111_
                                                 (##vector-ref _g41110_ 0))
                                                (_tl1302913114_
                                                 (##vector-ref _g41110_ 1)))
                                            (if (gx#stx-null? _tl1302913114_)
                                                (letrec ((_loop1303013117_
                                                          (lambda (_hd1302813121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _step1303413124_
                           _init1303513126_
                           _var1303613128_)
                    (if (gx#stx-pair? _hd1302813121_)
                        (let ((_e1303113131_ (gx#syntax-e _hd1302813121_)))
                          (let ((_lp-hd1303213135_ (##car _e1303113131_))
                                (_lp-tl1303313138_ (##cdr _e1303113131_)))
                            (if (gx#stx-pair? _lp-hd1303213135_)
                                (let ((_e1304013141_
                                       (gx#syntax-e _lp-hd1303213135_)))
                                  (let ((_hd1304113145_ (##car _e1304013141_))
                                        (_tl1304213148_ (##cdr _e1304013141_)))
                                    (if (gx#stx-pair? _tl1304213148_)
                                        (let ((_e1304313151_
                                               (gx#syntax-e _tl1304213148_)))
                                          (let ((_hd1304413155_
                                                 (##car _e1304313151_))
                                                (_tl1304513158_
                                                 (##cdr _e1304313151_)))
                                            (if (gx#stx-pair/null?
                                                 _tl1304513158_)
                                                (let ((_g41116_
                                                       (gx#syntax-split-splice
                                                        _tl1304513158_
                                                        '0)))
                                                  (begin
                                                    (let ((_g41117_
                                                           (if (##values?
                                                                _g41116_)
                                                               (##vector-length
                                                                _g41116_)
                                                               1)))
                                                      (if (not (##fx= _g41117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g41117_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1304613161_
                                                           (##vector-ref
                                                            _g41116_
                                                            0))
                                                          (_tl1304813164_
                                                           (##vector-ref
                                                            _g41116_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1304813164_)
                                                          (letrec ((_loop1304913167_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1304713171_ _step1305313174_)
                              (if (gx#stx-pair? _hd1304713171_)
                                  (let ((_e1305013177_
                                         (gx#syntax-e _hd1304713171_)))
                                    (let ((_lp-hd1305113181_
                                           (##car _e1305013177_))
                                          (_lp-tl1305213184_
                                           (##cdr _e1305013177_)))
                                      (_loop1304913167_
                                       _lp-tl1305213184_
                                       (cons _lp-hd1305113181_
                                             _step1305313174_))))
                                  (let ((_step1305413187_
                                         (reverse _step1305313174_)))
                                    (_loop1303013117_
                                     _lp-tl1303313138_
                                     (cons _step1305413187_ _step1303413124_)
                                     (cons _hd1304413155_ _init1303513126_)
                                     (cons _hd1304113145_
                                           _var1303613128_)))))))
                    (_loop1304913167_ _target1304613161_ '()))
                  (_g1301313084_ _g1301413088_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1301313084_
                                                 _g1301413088_))))
                                        (_g1301313084_ _g1301413088_))))
                                (_g1301313084_ _g1301413088_))))
                        (let ((_step1303713191_ (reverse _step1303413124_))
                              (_init1303813194_ (reverse _init1303513126_))
                              (_var1303913196_ (reverse _var1303613128_)))
                          (if (gx#stx-pair? _tl1302613108_)
                              (let ((_e1305513199_
                                     (gx#syntax-e _tl1302613108_)))
                                (let ((_hd1305613203_ (##car _e1305513199_))
                                      (_tl1305713206_ (##cdr _e1305513199_)))
                                  (if (gx#stx-pair? _hd1305613203_)
                                      (let ((_e1305813209_
                                             (gx#syntax-e _hd1305613203_)))
                                        (let ((_hd1305913213_
                                               (##car _e1305813209_))
                                              (_tl1306013216_
                                               (##cdr _e1305813209_)))
                                          (if (gx#stx-pair/null?
                                               _tl1306013216_)
                                              (let ((_g41112_
                                                     (gx#syntax-split-splice
                                                      _tl1306013216_
                                                      '0)))
                                                (begin
                                                  (let ((_g41113_
                                                         (if (##values?
                                                              _g41112_)
                                                             (##vector-length
                                                              _g41112_)
                                                             1)))
                                                    (if (not (##fx= _g41113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g41113_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1306113219_
                                                         (##vector-ref
                                                          _g41112_
                                                          0))
                                                        (_tl1306313222_
                                                         (##vector-ref
                                                          _g41112_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl1306313222_)
                                                        (letrec ((_loop1306413225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1306213229_ _fini1306813232_)
                            (if (gx#stx-pair? _hd1306213229_)
                                (let ((_e1306513235_
                                       (gx#syntax-e _hd1306213229_)))
                                  (let ((_lp-hd1306613239_
                                         (##car _e1306513235_))
                                        (_lp-tl1306713242_
                                         (##cdr _e1306513235_)))
                                    (_loop1306413225_
                                     _lp-tl1306713242_
                                     (cons _lp-hd1306613239_
                                           _fini1306813232_))))
                                (let ((_fini1306913245_
                                       (reverse _fini1306813232_)))
                                  (if (gx#stx-pair/null? _tl1305713206_)
                                      (let ((_g41114_
                                             (gx#syntax-split-splice
                                              _tl1305713206_
                                              '0)))
                                        (begin
                                          (let ((_g41115_
                                                 (if (##values? _g41114_)
                                                     (##vector-length _g41114_)
                                                     1)))
                                            (if (not (##fx= _g41115_ 2))
                                                (error "Context expects 2 values"
                                                       _g41115_)))
                                          (let ((_target1307013249_
                                                 (##vector-ref _g41114_ 0))
                                                (_tl1307213252_
                                                 (##vector-ref _g41114_ 1)))
                                            (if (gx#stx-null? _tl1307213252_)
                                                (letrec ((_loop1307313255_
                                                          (lambda (_hd1307113259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1307713262_)
                    (if (gx#stx-pair? _hd1307113259_)
                        (let ((_e1307413265_ (gx#syntax-e _hd1307113259_)))
                          (let ((_lp-hd1307513269_ (##car _e1307413265_))
                                (_lp-tl1307613272_ (##cdr _e1307413265_)))
                            (_loop1307313255_
                             _lp-tl1307613272_
                             (cons _lp-hd1307513269_ _body1307713262_))))
                        (let ((_body1307813275_ (reverse _body1307713262_)))
                          ((lambda (_L13279_
                                    _L13281_
                                    _L13282_
                                    _L13283_
                                    _L13284_
                                    _L13285_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g1331813321_
                                                    _g1331913324_)
                                             (cons _g1331813321_
                                                   _g1331913324_))
                                           '()
                                           _L13285_)))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _L13284_
                                                      _L13285_)
                                                     (foldr (lambda (_g1332613339_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1332713342_
                             _g1332813344_)
                      (cons (cons _g1332713342_ (cons _g1332613339_ '()))
                            _g1332813344_))
                    '()
                    _L13284_
                    _L13285_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _L13282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1332913347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1333013350_)
                  (cons _g1332913347_ _g1333013350_))
                '()
                _L13281_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (cons (cons (gx#datum->syntax '#f 'begin)
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1333113353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1333213356_)
                  (cons _g1333113353_ _g1333213356_))
                (cons (cons (gx#datum->syntax '#f '$loop)
                            (begin
                              (gx#syntax-check-splice-targets
                               _L13283_
                               _L13285_)
                              (foldr (lambda (_g1333313359_
                                              _g1333413362_
                                              _g1333513364_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'begin)
                                                   (cons _g1333413362_
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g1333613367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1333713370_)
                            (cons _g1333613367_ _g1333713370_))
                          '()
                          _g1333313359_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _g1333513364_))
                                     '()
                                     _L13283_
                                     _L13285_)))
                      '())
                _L13279_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_g1301313084_ _g1301413088_)))
                           _body1307813275_
                           _fini1306913245_
                           _hd1305913213_
                           _step1303713191_
                           _init1303813194_
                           _var1303913196_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1307313255_
                                                   _target1307013249_
                                                   '()))
                                                (_g1301313084_
                                                 _g1301413088_)))))
                                      (_g1301313084_ _g1301413088_)))))))
                  (_loop1306413225_ _target1306113219_ '()))
                (_g1301313084_ _g1301413088_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1301313084_ _g1301413088_))))
                                      (_g1301313084_ _g1301413088_))))
                              (_g1301313084_ _g1301413088_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1303013117_
                                                   _target1302713111_
                                                   '()
                                                   '()
                                                   '()))
                                                (_g1301313084_
                                                 _g1301413088_)))))
                                      (_g1301313084_ _g1301413088_))))
                              (_g1301313084_ _g1301413088_))))
                      (_g1301313084_ _g1301413088_)))))
          (_g1301213373_ _$stx13009_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#do-while|
      (lambda (_$stx13381_)
        (let* ((_g1338513408_
                (lambda (_g1338613404_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1338613404_)))
               (_g1338413479_
                (lambda (_g1338613412_)
                  (if (gx#stx-pair? _g1338613412_)
                      (let ((_e1339113415_ (gx#syntax-e _g1338613412_)))
                        (let ((_hd1339213419_ (##car _e1339113415_))
                              (_tl1339313422_ (##cdr _e1339113415_)))
                          (if (gx#stx-pair? _tl1339313422_)
                              (let ((_e1339413425_
                                     (gx#syntax-e _tl1339313422_)))
                                (let ((_hd1339513429_ (##car _e1339413425_))
                                      (_tl1339613432_ (##cdr _e1339413425_)))
                                  (if (gx#stx-pair? _tl1339613432_)
                                      (let ((_e1339713435_
                                             (gx#syntax-e _tl1339613432_)))
                                        (let ((_hd1339813439_
                                               (##car _e1339713435_))
                                              (_tl1339913442_
                                               (##cdr _e1339713435_)))
                                          (if (gx#stx-pair? _hd1339813439_)
                                              (let ((_e1340013445_
                                                     (gx#syntax-e
                                                      _hd1339813439_)))
                                                (let ((_hd1340113449_
                                                       (##car _e1340013445_))
                                                      (_tl1340213452_
                                                       (##cdr _e1340013445_)))
                                                  ((lambda (_L13455_
                                                            _L13457_
                                                            _L13458_
                                                            _L13459_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'do)
                                                           (cons _L13459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (gx#datum->syntax '#f 'not)
                                           (cons _L13458_ '()))
                                     _L13457_)
                               _L13455_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl1339913442_
                                                   _tl1340213452_
                                                   _hd1340113449_
                                                   _hd1339513429_)))
                                              (_g1338513408_ _g1338613412_))))
                                      (_g1338513408_ _g1338613412_))))
                              (_g1338513408_ _g1338613412_))))
                      (_g1338513408_ _g1338613412_)))))
          (_g1338413479_ _$stx13381_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#begin0|
      (lambda (_$stx13483_)
        (let* ((___stx3719837199_ _$stx13483_)
               (_g1348813519_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3719837199_))))
          (let ((___kont3720137202_ (lambda (_L13631_) _L13631_))
                (___kont3720337204_
                 (lambda (_L13576_ _L13578_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f '$r)
                                     (cons _L13578_ '()))
                               (cons (cons (gx#datum->syntax '#f '%#expression)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g1359513598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1359613601_)
                          (cons _g1359513598_ _g1359613601_))
                        '()
                        _L13576_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (gx#datum->syntax '#f '$r)
                                           '())))))))
            (let ((___match3724137242_
                   (lambda (_e1349913526_
                            _hd1350013530_
                            _tl1350113533_
                            _e1350213536_
                            _hd1350313540_
                            _tl1350413543_
                            ___splice3720537206_
                            _target1350513546_
                            _tl1350713549_)
                     (letrec ((_loop1350813552_
                               (lambda (_hd1350613556_ _rest1351213559_)
                                 (if (gx#stx-pair? _hd1350613556_)
                                     (let ((_e1350913562_
                                            (gx#syntax-e _hd1350613556_)))
                                       (let ((_lp-tl1351113569_
                                              (##cdr _e1350913562_))
                                             (_lp-hd1351013566_
                                              (##car _e1350913562_)))
                                         (_loop1350813552_
                                          _lp-tl1351113569_
                                          (cons _lp-hd1351013566_
                                                _rest1351213559_))))
                                     (let ((_rest1351313572_
                                            (reverse _rest1351213559_)))
                                       (___kont3720337204_
                                        _rest1351313572_
                                        _hd1350313540_))))))
                       (_loop1350813552_ _target1350513546_ '())))))
              (if (gx#stx-pair? ___stx3719837199_)
                  (let ((_e1349113611_ (gx#syntax-e ___stx3719837199_)))
                    (let ((_tl1349313618_ (##cdr _e1349113611_))
                          (_hd1349213615_ (##car _e1349113611_)))
                      (if (gx#stx-pair? _tl1349313618_)
                          (let ((_e1349413621_ (gx#syntax-e _tl1349313618_)))
                            (let ((_tl1349613628_ (##cdr _e1349413621_))
                                  (_hd1349513625_ (##car _e1349413621_)))
                              (if (gx#stx-null? _tl1349613628_)
                                  (___kont3720137202_ _hd1349513625_)
                                  (if (gx#stx-pair/null? _tl1349613628_)
                                      (let ((___splice3720537206_
                                             (gx#syntax-split-splice
                                              _tl1349613628_
                                              '0)))
                                        (let ((_tl1350713549_
                                               (##vector-ref
                                                ___splice3720537206_
                                                '1))
                                              (_target1350513546_
                                               (##vector-ref
                                                ___splice3720537206_
                                                '0)))
                                          (if (gx#stx-null? _tl1350713549_)
                                              (___match3724137242_
                                               _e1349113611_
                                               _hd1349213615_
                                               _tl1349313618_
                                               _e1349413621_
                                               _hd1349513625_
                                               _tl1349613628_
                                               ___splice3720537206_
                                               _target1350513546_
                                               _tl1350713549_)
                                              (_g1348813519_))))
                                      (_g1348813519_)))))
                          (_g1348813519_))))
                  (_g1348813519_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#rec|
      (lambda (_$stx13649_)
        (let* ((___stx3724437245_ _$stx13649_)
               (_g1365513708_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3724437245_))))
          (let ((___kont3724737248_
                 (lambda (_L13910_ _L13912_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _L13912_ (cons _L13910_ '())) '())
                               (cons _L13912_ '())))))
                (___kont3724937250_
                 (lambda (_L13854_ _L13856_)
                   (cons (gx#datum->syntax '#f 'letrec-values)
                         (cons (cons (cons _L13856_ (cons _L13854_ '())) '())
                               (cons (cons (gx#datum->syntax '#f 'values)
                                           _L13856_)
                                     '())))))
                (___kont3725137252_
                 (lambda (_L13775_ _L13777_ _L13778_)
                   (cons (gx#datum->syntax '#f 'letrec)
                         (cons (cons (cons _L13778_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons _L13777_
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1379813801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1379913804_)
                                (cons _g1379813801_ _g1379913804_))
                              '()
                              _L13775_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons _L13778_ '()))))))
            (let* ((___match3733137332_
                    (lambda (_e1368513715_
                             _hd1368613719_
                             _tl1368713722_
                             _e1368813725_
                             _hd1368913729_
                             _tl1369013732_
                             _e1369113735_
                             _hd1369213739_
                             _tl1369313742_
                             ___splice3725337254_
                             _target1369413745_
                             _tl1369613748_)
                      (letrec ((_loop1369713751_
                                (lambda (_hd1369513755_ _body1370113758_)
                                  (if (gx#stx-pair? _hd1369513755_)
                                      (let ((_e1369813761_
                                             (gx#syntax-e _hd1369513755_)))
                                        (let ((_lp-tl1370013768_
                                               (##cdr _e1369813761_))
                                              (_lp-hd1369913765_
                                               (##car _e1369813761_)))
                                          (_loop1369713751_
                                           _lp-tl1370013768_
                                           (cons _lp-hd1369913765_
                                                 _body1370113758_))))
                                      (let ((_body1370213771_
                                             (reverse _body1370113758_)))
                                        (let ((_L13775_ _body1370213771_)
                                              (_L13777_ _tl1369313742_)
                                              (_L13778_ _hd1369213739_))
                                          (if (gx#identifier? _L13778_)
                                              (___kont3725137252_
                                               _L13775_
                                               _L13777_
                                               _L13778_)
                                              (_g1365513708_))))))))
                        (_loop1369713751_ _target1369413745_ '()))))
                   (___match3730537306_
                    (lambda (_e1367013814_
                             _hd1367113818_
                             _tl1367213821_
                             _e1367313824_
                             _hd1367413828_
                             _tl1367513831_
                             _e1367613834_
                             _hd1367713838_
                             _tl1367813841_
                             _e1367913844_
                             _hd1368013848_
                             _tl1368113851_)
                      (let ((_L13854_ _hd1368013848_)
                            (_L13856_ _tl1367813841_))
                        (if (gx#identifier-list? _L13856_)
                            (___kont3724937250_ _L13854_ _L13856_)
                            (if (gx#stx-pair/null? _tl1367513831_)
                                (let ((___splice3725337254_
                                       (gx#syntax-split-splice
                                        _tl1367513831_
                                        '0)))
                                  (let ((_tl1369613748_
                                         (##vector-ref
                                          ___splice3725337254_
                                          '1))
                                        (_target1369413745_
                                         (##vector-ref
                                          ___splice3725337254_
                                          '0)))
                                    (if (gx#stx-null? _tl1369613748_)
                                        (___match3733137332_
                                         _e1367013814_
                                         _hd1367113818_
                                         _tl1367213821_
                                         _e1367313824_
                                         _hd1367413828_
                                         _tl1367513831_
                                         _e1367613834_
                                         _hd1367713838_
                                         _tl1367813841_
                                         ___splice3725337254_
                                         _target1369413745_
                                         _tl1369613748_)
                                        (_g1365513708_))))
                                (_g1365513708_))))))
                   (___match3727537276_
                    (lambda (_e1365913880_
                             _hd1366013884_
                             _tl1366113887_
                             _e1366213890_
                             _hd1366313894_
                             _tl1366413897_
                             _e1366513900_
                             _hd1366613904_
                             _tl1366713907_)
                      (let ((_L13910_ _hd1366613904_)
                            (_L13912_ _hd1366313894_))
                        (if (gx#identifier? _L13912_)
                            (___kont3724737248_ _L13910_ _L13912_)
                            (if (gx#stx-pair? _hd1366313894_)
                                (let ((_e1367613834_
                                       (gx#syntax-e _hd1366313894_)))
                                  (let ((_tl1367813841_ (##cdr _e1367613834_))
                                        (_hd1367713838_ (##car _e1367613834_)))
                                    (if (gx#identifier? _hd1367713838_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core$<sugar>$<sugar:2>[1]#_g41118_|
                                             _hd1367713838_)
                                            (___match3730537306_
                                             _e1365913880_
                                             _hd1366013884_
                                             _tl1366113887_
                                             _e1366213890_
                                             _hd1366313894_
                                             _tl1366413897_
                                             _e1367613834_
                                             _hd1367713838_
                                             _tl1367813841_
                                             _e1366513900_
                                             _hd1366613904_
                                             _tl1366713907_)
                                            (if (gx#stx-pair/null?
                                                 _tl1366413897_)
                                                (let ((___splice3725337254_
                                                       (gx#syntax-split-splice
                                                        _tl1366413897_
                                                        '0)))
                                                  (let ((_tl1369613748_
                                                         (##vector-ref
                                                          ___splice3725337254_
                                                          '1))
                                                        (_target1369413745_
                                                         (##vector-ref
                                                          ___splice3725337254_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl1369613748_)
                                                        (___match3733137332_
                                                         _e1365913880_
                                                         _hd1366013884_
                                                         _tl1366113887_
                                                         _e1366213890_
                                                         _hd1366313894_
                                                         _tl1366413897_
                                                         _e1367613834_
                                                         _hd1367713838_
                                                         _tl1367813841_
                                                         ___splice3725337254_
                                                         _target1369413745_
                                                         _tl1369613748_)
                                                        (_g1365513708_))))
                                                (_g1365513708_)))
                                        (if (gx#stx-pair/null? _tl1366413897_)
                                            (let ((___splice3725337254_
                                                   (gx#syntax-split-splice
                                                    _tl1366413897_
                                                    '0)))
                                              (let ((_tl1369613748_
                                                     (##vector-ref
                                                      ___splice3725337254_
                                                      '1))
                                                    (_target1369413745_
                                                     (##vector-ref
                                                      ___splice3725337254_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl1369613748_)
                                                    (___match3733137332_
                                                     _e1365913880_
                                                     _hd1366013884_
                                                     _tl1366113887_
                                                     _e1366213890_
                                                     _hd1366313894_
                                                     _tl1366413897_
                                                     _e1367613834_
                                                     _hd1367713838_
                                                     _tl1367813841_
                                                     ___splice3725337254_
                                                     _target1369413745_
                                                     _tl1369613748_)
                                                    (_g1365513708_))))
                                            (_g1365513708_)))))
                                (_g1365513708_)))))))
              (if (gx#stx-pair? ___stx3724437245_)
                  (let ((_e1365913880_ (gx#syntax-e ___stx3724437245_)))
                    (let ((_tl1366113887_ (##cdr _e1365913880_))
                          (_hd1366013884_ (##car _e1365913880_)))
                      (if (gx#stx-pair? _tl1366113887_)
                          (let ((_e1366213890_ (gx#syntax-e _tl1366113887_)))
                            (let ((_tl1366413897_ (##cdr _e1366213890_))
                                  (_hd1366313894_ (##car _e1366213890_)))
                              (if (gx#stx-pair? _tl1366413897_)
                                  (let ((_e1366513900_
                                         (gx#syntax-e _tl1366413897_)))
                                    (let ((_tl1366713907_
                                           (##cdr _e1366513900_))
                                          (_hd1366613904_
                                           (##car _e1366513900_)))
                                      (if (gx#stx-null? _tl1366713907_)
                                          (___match3727537276_
                                           _e1365913880_
                                           _hd1366013884_
                                           _tl1366113887_
                                           _e1366213890_
                                           _hd1366313894_
                                           _tl1366413897_
                                           _e1366513900_
                                           _hd1366613904_
                                           _tl1366713907_)
                                          (if (gx#stx-pair? _hd1366313894_)
                                              (let ((_e1367613834_
                                                     (gx#syntax-e
                                                      _hd1366313894_)))
                                                (let ((_tl1367813841_
                                                       (##cdr _e1367613834_))
                                                      (_hd1367713838_
                                                       (##car _e1367613834_)))
                                                  (if (gx#stx-pair/null?
                                                       _tl1366413897_)
                                                      (let ((___splice3725337254_
                                                             (gx#syntax-split-splice
                                                              _tl1366413897_
                                                              '0)))
                                                        (let ((_tl1369613748_
                                                               (##vector-ref
                                                                ___splice3725337254_
                                                                '1))
                                                              (_target1369413745_
                                                               (##vector-ref
                                                                ___splice3725337254_
                                                                '0)))
                                                          (if (gx#stx-null?
                                                               _tl1369613748_)
                                                              (___match3733137332_
                                                               _e1365913880_
                                                               _hd1366013884_
                                                               _tl1366113887_
                                                               _e1366213890_
                                                               _hd1366313894_
                                                               _tl1366413897_
                                                               _e1367613834_
                                                               _hd1367713838_
                                                               _tl1367813841_
                                                               ___splice3725337254_
                                                               _target1369413745_
                                                               _tl1369613748_)
                                                              (_g1365513708_))))
                                                      (_g1365513708_))))
                                              (_g1365513708_)))))
                                  (if (gx#stx-pair? _hd1366313894_)
                                      (let ((_e1367613834_
                                             (gx#syntax-e _hd1366313894_)))
                                        (let ((_tl1367813841_
                                               (##cdr _e1367613834_))
                                              (_hd1367713838_
                                               (##car _e1367613834_)))
                                          (if (gx#stx-pair/null?
                                               _tl1366413897_)
                                              (let ((___splice3725337254_
                                                     (gx#syntax-split-splice
                                                      _tl1366413897_
                                                      '0)))
                                                (let ((_tl1369613748_
                                                       (##vector-ref
                                                        ___splice3725337254_
                                                        '1))
                                                      (_target1369413745_
                                                       (##vector-ref
                                                        ___splice3725337254_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl1369613748_)
                                                      (___match3733137332_
                                                       _e1365913880_
                                                       _hd1366013884_
                                                       _tl1366113887_
                                                       _e1366213890_
                                                       _hd1366313894_
                                                       _tl1366413897_
                                                       _e1367613834_
                                                       _hd1367713838_
                                                       _tl1367813841_
                                                       ___splice3725337254_
                                                       _target1369413745_
                                                       _tl1369613748_)
                                                      (_g1365513708_))))
                                              (_g1365513708_))))
                                      (_g1365513708_)))))
                          (_g1365513708_))))
                  (_g1365513708_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet|
      (lambda (_stx13932_)
        (letrec ((_let-head?13935_
                  (lambda (_x14482_)
                    (let* ((___stx3733437335_ _x14482_)
                           (_g1448614497_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3733437335_))))
                      (let ((___kont3733737338_
                             (lambda (_L14525_)
                               (gx#stx-andmap gx#identifier? _L14525_)))
                            (___kont3733937340_
                             (lambda () (gx#identifier? _x14482_))))
                        (if (gx#stx-pair? ___stx3733437335_)
                            (let ((_e1448914515_
                                   (gx#syntax-e ___stx3733437335_)))
                              (let ((_tl1449114522_ (##cdr _e1448914515_))
                                    (_hd1449014519_ (##car _e1448914515_)))
                                (if (gx#identifier? _hd1449014519_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:2>[1]#_g41119_|
                                         _hd1449014519_)
                                        (___kont3733737338_ _tl1449114522_)
                                        (___kont3733937340_))
                                    (___kont3733937340_))))
                            (___kont3733937340_))))))
                 (_let-head13937_
                  (lambda (_x14422_)
                    (let* ((___stx3735437355_ _x14422_)
                           (_g1442614437_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3735437355_))))
                      (let ((___kont3735737358_ (lambda (_L14465_) _L14465_))
                            (___kont3735937360_ (lambda () (list _x14422_))))
                        (if (gx#stx-pair? ___stx3735437355_)
                            (let ((_e1442914455_
                                   (gx#syntax-e ___stx3735437355_)))
                              (let ((_tl1443114462_ (##cdr _e1442914455_))
                                    (_hd1443014459_ (##car _e1442914455_)))
                                (if (gx#identifier? _hd1443014459_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core$<sugar>$<sugar:2>[1]#_g41120_|
                                         _hd1443014459_)
                                        (___kont3735737358_ _tl1443114462_)
                                        (___kont3735937360_))
                                    (___kont3735937360_))))
                            (___kont3735937360_)))))))
          (let* ((___stx3737437375_ _stx13932_)
                 (_g1394013998_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx3737437375_))))
            (let ((___kont3737737378_
                   (lambda (_L14395_ _L14397_ _L14398_ _L14399_)
                     (cons _L14399_
                           (cons (cons (cons _L14398_ (cons _L14397_ '())) '())
                                 _L14395_))))
                  (___kont3737937380_
                   (lambda (_L14109_ _L14111_ _L14112_)
                     (let* ((_g1414414177_
                             (lambda (_g1414514173_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1414514173_)))
                            (_g1414314328_
                             (lambda (_g1414514181_)
                               (if (gx#stx-pair? _g1414514181_)
                                   (let ((_e1414814184_
                                          (gx#syntax-e _g1414514181_)))
                                     (let ((_hd1414914188_
                                            (##car _e1414814184_))
                                           (_tl1415014191_
                                            (##cdr _e1414814184_)))
                                       (if (gx#stx-pair/null? _hd1414914188_)
                                           (let ((_g41121_
                                                  (gx#syntax-split-splice
                                                   _hd1414914188_
                                                   '0)))
                                             (begin
                                               (let ((_g41122_
                                                      (if (##values? _g41121_)
                                                          (##vector-length
                                                           _g41121_)
                                                          1)))
                                                 (if (not (##fx= _g41122_ 2))
                                                     (error "Context expects 2 values"
                                                            _g41122_)))
                                               (let ((_target1415114194_
                                                      (##vector-ref
                                                       _g41121_
                                                       0))
                                                     (_tl1415314197_
                                                      (##vector-ref
                                                       _g41121_
                                                       1)))
                                                 (if (gx#stx-null?
                                                      _tl1415314197_)
                                                     (letrec ((_loop1415414200_
                                                               (lambda (_hd1415214204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _$e1415814207_)
                         (if (gx#stx-pair? _hd1415214204_)
                             (let ((_e1415514210_
                                    (gx#syntax-e _hd1415214204_)))
                               (let ((_lp-hd1415614214_ (##car _e1415514210_))
                                     (_lp-tl1415714217_ (##cdr _e1415514210_)))
                                 (_loop1415414200_
                                  _lp-tl1415714217_
                                  (cons _lp-hd1415614214_ _$e1415814207_))))
                             (let ((_$e1415914220_ (reverse _$e1415814207_)))
                               (if (gx#stx-pair? _tl1415014191_)
                                   (let ((_e1416014224_
                                          (gx#syntax-e _tl1415014191_)))
                                     (let ((_hd1416114228_
                                            (##car _e1416014224_))
                                           (_tl1416214231_
                                            (##cdr _e1416014224_)))
                                       (if (gx#stx-pair/null? _hd1416114228_)
                                           (let ((_g41123_
                                                  (gx#syntax-split-splice
                                                   _hd1416114228_
                                                   '0)))
                                             (begin
                                               (let ((_g41124_
                                                      (if (##values? _g41123_)
                                                          (##vector-length
                                                           _g41123_)
                                                          1)))
                                                 (if (not (##fx= _g41124_ 2))
                                                     (error "Context expects 2 values"
                                                            _g41124_)))
                                               (let ((_target1416314234_
                                                      (##vector-ref
                                                       _g41123_
                                                       0))
                                                     (_tl1416514237_
                                                      (##vector-ref
                                                       _g41123_
                                                       1)))
                                                 (if (gx#stx-null?
                                                      _tl1416514237_)
                                                     (letrec ((_loop1416614240_
                                                               (lambda (_hd1416414244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd-bind1417014247_)
                         (if (gx#stx-pair? _hd1416414244_)
                             (let ((_e1416714250_
                                    (gx#syntax-e _hd1416414244_)))
                               (let ((_lp-hd1416814254_ (##car _e1416714250_))
                                     (_lp-tl1416914257_ (##cdr _e1416714250_)))
                                 (_loop1416614240_
                                  _lp-tl1416914257_
                                  (cons _lp-hd1416814254_
                                        _hd-bind1417014247_))))
                             (let ((_hd-bind1417114260_
                                    (reverse _hd-bind1417014247_)))
                               (if (gx#stx-null? _tl1416214231_)
                                   ((lambda (_L14264_ _L14266_)
                                      (let ()
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L14111_
                                                       _L14266_)
                                                      (foldr (lambda (_g1428914300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1429014303_
                              _g1429114305_)
                       (cons (cons (cons _g1429014303_ '())
                                   (cons _g1428914300_ '()))
                             _g1429114305_))
                     '()
                     _L14111_
                     _L14266_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'and)
                        (begin
                          '#!void
                          (foldr (lambda (_g1429214308_ _g1429314311_)
                                   (cons _g1429214308_ _g1429314311_))
                                 (cons (cons (gx#datum->syntax '#f 'let-values)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _L14266_
                                                      _L14264_)
                                                     (foldr (lambda (_g1429414314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1429514317_
                             _g1429614319_)
                      (cons (cons _g1429514317_ (cons _g1429414314_ '()))
                            _g1429614319_))
                    '()
                    _L14266_
                    _L14264_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g1429714322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1429814325_)
                      (cons _g1429714322_ _g1429814325_))
                    '()
                    _L14109_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())
                                 _L14266_)))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _hd-bind1417114260_
                                    _$e1415914220_)
                                   (_g1414414177_ _g1414514181_)))))))
               (_loop1416614240_ _target1416314234_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1414414177_
                                                      _g1414514181_)))))
                                           (_g1414414177_ _g1414514181_))))
                                   (_g1414414177_ _g1414514181_)))))))
               (_loop1415414200_ _target1415114194_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1414414177_
                                                      _g1414514181_)))))
                                           (_g1414414177_ _g1414514181_))))
                                   (_g1414414177_ _g1414514181_)))))
                       (_g1414314328_
                        (list (gx#gentemps
                               (begin
                                 '#!void
                                 (foldr (lambda (_g1433114334_ _g1433214337_)
                                          (cons _g1433114334_ _g1433214337_))
                                        '()
                                        _L14112_)))
                              (gx#stx-map
                               _let-head13937_
                               (begin
                                 '#!void
                                 (foldr (lambda (_g1433914342_ _g1434014345_)
                                          (cons _g1433914342_ _g1434014345_))
                                        '()
                                        _L14112_)))))))))
              (let* ((___match3743137432_
                      (lambda (_e1396114005_
                               _hd1396214009_
                               _tl1396314012_
                               _e1396414015_
                               _hd1396514019_
                               _tl1396614022_
                               ___splice3738137382_
                               _target1396714025_
                               _tl1396914028_)
                        (letrec ((_loop1397014031_
                                  (lambda (_hd1396814035_
                                           _e1397414038_
                                           _hd1397514040_)
                                    (if (gx#stx-pair? _hd1396814035_)
                                        (let ((_e1397114043_
                                               (gx#syntax-e _hd1396814035_)))
                                          (let ((_lp-tl1397314050_
                                                 (##cdr _e1397114043_))
                                                (_lp-hd1397214047_
                                                 (##car _e1397114043_)))
                                            (if (gx#stx-pair?
                                                 _lp-hd1397214047_)
                                                (let ((_e1397814053_
                                                       (gx#syntax-e
                                                        _lp-hd1397214047_)))
                                                  (let ((_tl1398014060_
                                                         (##cdr _e1397814053_))
                                                        (_hd1397914057_
                                                         (##car _e1397814053_)))
                                                    (if (gx#stx-pair?
                                                         _tl1398014060_)
                                                        (let ((_e1398114063_
                                                               (gx#syntax-e
                                                                _tl1398014060_)))
                                                          (let ((_tl1398314070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e1398114063_))
                        (_hd1398214067_ (##car _e1398114063_)))
                    (if (gx#stx-null? _tl1398314070_)
                        (_loop1397014031_
                         _lp-tl1397314050_
                         (cons _hd1398214067_ _e1397414038_)
                         (cons _hd1397914057_ _hd1397514040_))
                        (_g1394013998_))))
                (_g1394013998_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1394013998_))))
                                        (let ((_hd1397714076_
                                               (reverse _hd1397514040_))
                                              (_e1397614073_
                                               (reverse _e1397414038_)))
                                          (if (gx#stx-pair/null?
                                               _tl1396614022_)
                                              (let ((___splice3738337384_
                                                     (gx#syntax-split-splice
                                                      _tl1396614022_
                                                      '0)))
                                                (let ((_tl1398614082_
                                                       (##vector-ref
                                                        ___splice3738337384_
                                                        '1))
                                                      (_target1398414079_
                                                       (##vector-ref
                                                        ___splice3738337384_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl1398614082_)
                                                      (letrec ((_loop1398714085_
                                                                (lambda (_hd1398514089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body1399114092_)
                          (if (gx#stx-pair? _hd1398514089_)
                              (let ((_e1398814095_
                                     (gx#syntax-e _hd1398514089_)))
                                (let ((_lp-tl1399014102_ (##cdr _e1398814095_))
                                      (_lp-hd1398914099_
                                       (##car _e1398814095_)))
                                  (_loop1398714085_
                                   _lp-tl1399014102_
                                   (cons _lp-hd1398914099_ _body1399114092_))))
                              (let ((_body1399214105_
                                     (reverse _body1399114092_)))
                                (let ((_L14109_ _body1399214105_)
                                      (_L14111_ _e1397614073_)
                                      (_L14112_ _hd1397714076_))
                                  (if (gx#stx-andmap
                                       _let-head?13935_
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1413514138_
                                                         _g1413614141_)
                                                  (cons _g1413514138_
                                                        _g1413614141_))
                                                '()
                                                _L14112_)))
                                      (___kont3737937380_
                                       _L14109_
                                       _L14111_
                                       _L14112_)
                                      (_g1394013998_))))))))
                (_loop1398714085_ _target1398414079_ '()))
              (_g1394013998_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1394013998_)))))))
                          (_loop1397014031_ _target1396714025_ '() '()))))
                     (___match3741137412_
                      (lambda (_e1394614355_
                               _hd1394714359_
                               _tl1394814362_
                               _e1394914365_
                               _hd1395014369_
                               _tl1395114372_
                               _e1395214375_
                               _hd1395314379_
                               _tl1395414382_
                               _e1395514385_
                               _hd1395614389_
                               _tl1395714392_)
                        (let ((_L14395_ _tl1395114372_)
                              (_L14397_ _hd1395614389_)
                              (_L14398_ _hd1395314379_)
                              (_L14399_ _hd1394714359_))
                          (if (_let-head?13935_ _L14398_)
                              (___kont3737737378_
                               _L14395_
                               _L14397_
                               _L14398_
                               _L14399_)
                              (if (gx#stx-pair/null? _hd1395014369_)
                                  (let ((___splice3738137382_
                                         (gx#syntax-split-splice
                                          _hd1395014369_
                                          '0)))
                                    (let ((_tl1396914028_
                                           (##vector-ref
                                            ___splice3738137382_
                                            '1))
                                          (_target1396714025_
                                           (##vector-ref
                                            ___splice3738137382_
                                            '0)))
                                      (if (gx#stx-null? _tl1396914028_)
                                          (___match3743137432_
                                           _e1394614355_
                                           _hd1394714359_
                                           _tl1394814362_
                                           _e1394914365_
                                           _hd1395014369_
                                           _tl1395114372_
                                           ___splice3738137382_
                                           _target1396714025_
                                           _tl1396914028_)
                                          (_g1394013998_))))
                                  (_g1394013998_)))))))
                (if (gx#stx-pair? ___stx3737437375_)
                    (let ((_e1394614355_ (gx#syntax-e ___stx3737437375_)))
                      (let ((_tl1394814362_ (##cdr _e1394614355_))
                            (_hd1394714359_ (##car _e1394614355_)))
                        (if (gx#stx-pair? _tl1394814362_)
                            (let ((_e1394914365_ (gx#syntax-e _tl1394814362_)))
                              (let ((_tl1395114372_ (##cdr _e1394914365_))
                                    (_hd1395014369_ (##car _e1394914365_)))
                                (if (gx#stx-pair? _hd1395014369_)
                                    (let ((_e1395214375_
                                           (gx#syntax-e _hd1395014369_)))
                                      (let ((_tl1395414382_
                                             (##cdr _e1395214375_))
                                            (_hd1395314379_
                                             (##car _e1395214375_)))
                                        (if (gx#stx-pair? _tl1395414382_)
                                            (let ((_e1395514385_
                                                   (gx#syntax-e
                                                    _tl1395414382_)))
                                              (let ((_tl1395714392_
                                                     (##cdr _e1395514385_))
                                                    (_hd1395614389_
                                                     (##car _e1395514385_)))
                                                (if (gx#stx-null?
                                                     _tl1395714392_)
                                                    (___match3741137412_
                                                     _e1394614355_
                                                     _hd1394714359_
                                                     _tl1394814362_
                                                     _e1394914365_
                                                     _hd1395014369_
                                                     _tl1395114372_
                                                     _e1395214375_
                                                     _hd1395314379_
                                                     _tl1395414382_
                                                     _e1395514385_
                                                     _hd1395614389_
                                                     _tl1395714392_)
                                                    (if (gx#stx-pair/null?
                                                         _hd1395014369_)
                                                        (let ((___splice3738137382_
                                                               (gx#syntax-split-splice
                                                                _hd1395014369_
                                                                '0)))
                                                          (let ((_tl1396914028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice3738137382_ '1))
                        (_target1396714025_
                         (##vector-ref ___splice3738137382_ '0)))
                    (if (gx#stx-null? _tl1396914028_)
                        (___match3743137432_
                         _e1394614355_
                         _hd1394714359_
                         _tl1394814362_
                         _e1394914365_
                         _hd1395014369_
                         _tl1395114372_
                         ___splice3738137382_
                         _target1396714025_
                         _tl1396914028_)
                        (_g1394013998_))))
                (_g1394013998_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _hd1395014369_)
                                                (let ((___splice3738137382_
                                                       (gx#syntax-split-splice
                                                        _hd1395014369_
                                                        '0)))
                                                  (let ((_tl1396914028_
                                                         (##vector-ref
                                                          ___splice3738137382_
                                                          '1))
                                                        (_target1396714025_
                                                         (##vector-ref
                                                          ___splice3738137382_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl1396914028_)
                                                        (___match3743137432_
                                                         _e1394614355_
                                                         _hd1394714359_
                                                         _tl1394814362_
                                                         _e1394914365_
                                                         _hd1395014369_
                                                         _tl1395114372_
                                                         ___splice3738137382_
                                                         _target1396714025_
                                                         _tl1396914028_)
                                                        (_g1394013998_))))
                                                (_g1394013998_)))))
                                    (if (gx#stx-pair/null? _hd1395014369_)
                                        (let ((___splice3738137382_
                                               (gx#syntax-split-splice
                                                _hd1395014369_
                                                '0)))
                                          (let ((_tl1396914028_
                                                 (##vector-ref
                                                  ___splice3738137382_
                                                  '1))
                                                (_target1396714025_
                                                 (##vector-ref
                                                  ___splice3738137382_
                                                  '0)))
                                            (if (gx#stx-null? _tl1396914028_)
                                                (___match3743137432_
                                                 _e1394614355_
                                                 _hd1394714359_
                                                 _tl1394814362_
                                                 _e1394914365_
                                                 _hd1395014369_
                                                 _tl1395114372_
                                                 ___splice3738137382_
                                                 _target1396714025_
                                                 _tl1396914028_)
                                                (_g1394013998_))))
                                        (_g1394013998_)))))
                            (_g1394013998_))))
                    (_g1394013998_))))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet*|
      (lambda (_$stx14546_)
        (let* ((___stx3743437435_ _$stx14546_)
               (_g1455114596_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3743437435_))))
          (let ((___kont3743737438_
                 (lambda (_L14754_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (begin
                                 '#!void
                                 (foldr (lambda (_g1477014773_ _g1477114776_)
                                          (cons _g1477014773_ _g1477114776_))
                                        '()
                                        _L14754_))))))
                (___kont3744137442_
                 (lambda (_L14663_ _L14665_ _L14666_ _L14667_)
                   (cons (gx#datum->syntax '#f 'alet)
                         (cons (cons _L14666_ '())
                               (cons (cons _L14667_
                                           (cons _L14665_
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g1468814691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1468914694_)
                    (cons _g1468814691_ _g1468914694_))
                  '()
                  _L14663_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((___match3749337494_
                    (lambda (_e1457314603_
                             _hd1457414607_
                             _tl1457514610_
                             _e1457614613_
                             _hd1457714617_
                             _tl1457814620_
                             _e1457914623_
                             _hd1458014627_
                             _tl1458114630_
                             ___splice3744337444_
                             _target1458214633_
                             _tl1458414636_)
                      (letrec ((_loop1458514639_
                                (lambda (_hd1458314643_ _body1458914646_)
                                  (if (gx#stx-pair? _hd1458314643_)
                                      (let ((_e1458614649_
                                             (gx#syntax-e _hd1458314643_)))
                                        (let ((_lp-tl1458814656_
                                               (##cdr _e1458614649_))
                                              (_lp-hd1458714653_
                                               (##car _e1458614649_)))
                                          (_loop1458514639_
                                           _lp-tl1458814656_
                                           (cons _lp-hd1458714653_
                                                 _body1458914646_))))
                                      (let ((_body1459014659_
                                             (reverse _body1458914646_)))
                                        (___kont3744137442_
                                         _body1459014659_
                                         _tl1458114630_
                                         _hd1458014627_
                                         _hd1457414607_))))))
                        (_loop1458514639_ _target1458214633_ '()))))
                   (___match3746737468_
                    (lambda (_e1455414704_
                             _hd1455514708_
                             _tl1455614711_
                             _e1455714714_
                             _hd1455814718_
                             _tl1455914721_
                             ___splice3743937440_
                             _target1456014724_
                             _tl1456214727_)
                      (letrec ((_loop1456314730_
                                (lambda (_hd1456114734_ _body1456714737_)
                                  (if (gx#stx-pair? _hd1456114734_)
                                      (let ((_e1456414740_
                                             (gx#syntax-e _hd1456114734_)))
                                        (let ((_lp-tl1456614747_
                                               (##cdr _e1456414740_))
                                              (_lp-hd1456514744_
                                               (##car _e1456414740_)))
                                          (_loop1456314730_
                                           _lp-tl1456614747_
                                           (cons _lp-hd1456514744_
                                                 _body1456714737_))))
                                      (let ((_body1456814750_
                                             (reverse _body1456714737_)))
                                        (___kont3743737438_
                                         _body1456814750_))))))
                        (_loop1456314730_ _target1456014724_ '())))))
              (if (gx#stx-pair? ___stx3743437435_)
                  (let ((_e1455414704_ (gx#syntax-e ___stx3743437435_)))
                    (let ((_tl1455614711_ (##cdr _e1455414704_))
                          (_hd1455514708_ (##car _e1455414704_)))
                      (if (gx#stx-pair? _tl1455614711_)
                          (let ((_e1455714714_ (gx#syntax-e _tl1455614711_)))
                            (let ((_tl1455914721_ (##cdr _e1455714714_))
                                  (_hd1455814718_ (##car _e1455714714_)))
                              (if (gx#stx-null? _hd1455814718_)
                                  (if (gx#stx-pair/null? _tl1455914721_)
                                      (let ((___splice3743937440_
                                             (gx#syntax-split-splice
                                              _tl1455914721_
                                              '0)))
                                        (let ((_tl1456214727_
                                               (##vector-ref
                                                ___splice3743937440_
                                                '1))
                                              (_target1456014724_
                                               (##vector-ref
                                                ___splice3743937440_
                                                '0)))
                                          (if (gx#stx-null? _tl1456214727_)
                                              (___match3746737468_
                                               _e1455414704_
                                               _hd1455514708_
                                               _tl1455614711_
                                               _e1455714714_
                                               _hd1455814718_
                                               _tl1455914721_
                                               ___splice3743937440_
                                               _target1456014724_
                                               _tl1456214727_)
                                              (_g1455114596_))))
                                      (_g1455114596_))
                                  (if (gx#stx-pair? _hd1455814718_)
                                      (let ((_e1457914623_
                                             (gx#syntax-e _hd1455814718_)))
                                        (let ((_tl1458114630_
                                               (##cdr _e1457914623_))
                                              (_hd1458014627_
                                               (##car _e1457914623_)))
                                          (if (gx#stx-pair/null?
                                               _tl1455914721_)
                                              (let ((___splice3744337444_
                                                     (gx#syntax-split-splice
                                                      _tl1455914721_
                                                      '0)))
                                                (let ((_tl1458414636_
                                                       (##vector-ref
                                                        ___splice3744337444_
                                                        '1))
                                                      (_target1458214633_
                                                       (##vector-ref
                                                        ___splice3744337444_
                                                        '0)))
                                                  (if (gx#stx-null?
                                                       _tl1458414636_)
                                                      (___match3749337494_
                                                       _e1455414704_
                                                       _hd1455514708_
                                                       _tl1455614711_
                                                       _e1455714714_
                                                       _hd1455814718_
                                                       _tl1455914721_
                                                       _e1457914623_
                                                       _hd1458014627_
                                                       _tl1458114630_
                                                       ___splice3744337444_
                                                       _target1458214633_
                                                       _tl1458414636_)
                                                      (_g1455114596_))))
                                              (_g1455114596_))))
                                      (_g1455114596_)))))
                          (_g1455114596_))))
                  (_g1455114596_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#@list|
      (lambda (_$stx14785_)
        (let* ((___stx3749637497_ _$stx14785_)
               (_g1479414852_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3749637497_))))
          (let ((___kont3749937500_
                 (lambda ()
                   (cons (gx#datum->syntax '#f 'quote) (cons '() '()))))
                (___kont3750137502_ (lambda (_L15078_) _L15078_))
                (___kont3750337504_ (lambda (_L15020_ _L15022_) _L15022_))
                (___kont3750537506_
                 (lambda (_L14962_ _L14964_ _L14965_ _L14966_)
                   (cons (gx#datum->syntax '#f 'foldr)
                         (cons (gx#datum->syntax '#f 'cons)
                               (cons (cons _L14966_ _L14962_)
                                     (cons _L14965_ '()))))))
                (___kont3750737508_
                 (lambda (_L14908_ _L14910_ _L14911_)
                   (cons (gx#datum->syntax '#f 'cons)
                         (cons _L14910_ (cons (cons _L14911_ _L14908_) '())))))
                (___kont3750937510_ (lambda (_L14869_) _L14869_)))
            (let* ((___match3758337584_
                    (lambda (_e1482514932_
                             _hd1482614936_
                             _tl1482714939_
                             _e1482814942_
                             _hd1482914946_
                             _tl1483014949_
                             _e1483114952_
                             _hd1483214956_
                             _tl1483314959_)
                      (let ((_L14962_ _tl1483314959_)
                            (_L14964_ _hd1483214956_)
                            (_L14965_ _hd1482914946_)
                            (_L14966_ _hd1482614936_))
                        (if (gx#ellipsis? _L14964_)
                            (___kont3750537506_
                             _L14962_
                             _L14964_
                             _L14965_
                             _L14966_)
                            (___kont3750737508_
                             _tl1483014949_
                             _hd1482914946_
                             _hd1482614936_)))))
                   (___match3756537566_
                    (lambda (_e1481214990_
                             _hd1481314994_
                             _tl1481414997_
                             _e1481515000_
                             _hd1481615004_
                             _tl1481715007_
                             _e1481815010_
                             _hd1481915014_
                             _tl1482015017_)
                      (let ((_L15020_ _hd1481915014_)
                            (_L15022_ _hd1481615004_))
                        (if (gx#ellipsis? _L15020_)
                            (___kont3750337504_ _L15020_ _L15022_)
                            (___match3758337584_
                             _e1481214990_
                             _hd1481314994_
                             _tl1481414997_
                             _e1481515000_
                             _hd1481615004_
                             _tl1481715007_
                             _e1481815010_
                             _hd1481915014_
                             _tl1482015017_))))))
              (if (gx#stx-pair? ___stx3749637497_)
                  (let ((_e1479615101_ (gx#syntax-e ___stx3749637497_)))
                    (let ((_tl1479815108_ (##cdr _e1479615101_))
                          (_hd1479715105_ (##car _e1479615101_)))
                      (if (gx#stx-null? _tl1479815108_)
                          (___kont3749937500_)
                          (if (gx#stx-pair? _tl1479815108_)
                              (let ((_e1480315054_
                                     (gx#syntax-e _tl1479815108_)))
                                (let ((_tl1480515061_ (##cdr _e1480315054_))
                                      (_hd1480415058_ (##car _e1480315054_)))
                                  (if (gx#stx-datum? _hd1480415058_)
                                      (let ((_e1480615064_
                                             (gx#stx-e _hd1480415058_)))
                                        (if (equal? _e1480615064_ '::)
                                            (if (gx#stx-pair? _tl1480515061_)
                                                (let ((_e1480715068_
                                                       (gx#syntax-e
                                                        _tl1480515061_)))
                                                  (let ((_tl1480915075_
                                                         (##cdr _e1480715068_))
                                                        (_hd1480815072_
                                                         (##car _e1480715068_)))
                                                    (if (gx#stx-null?
                                                         _tl1480915075_)
                                                        (___kont3750137502_
                                                         _hd1480815072_)
                                                        (___match3758337584_
                                                         _e1479615101_
                                                         _hd1479715105_
                                                         _tl1479815108_
                                                         _e1480315054_
                                                         _hd1480415058_
                                                         _tl1480515061_
                                                         _e1480715068_
                                                         _hd1480815072_
                                                         _tl1480915075_))))
                                                (___kont3750737508_
                                                 _tl1480515061_
                                                 _hd1480415058_
                                                 _hd1479715105_))
                                            (if (gx#stx-pair? _tl1480515061_)
                                                (let ((_e1481815010_
                                                       (gx#syntax-e
                                                        _tl1480515061_)))
                                                  (let ((_tl1482015017_
                                                         (##cdr _e1481815010_))
                                                        (_hd1481915014_
                                                         (##car _e1481815010_)))
                                                    (if (gx#stx-null?
                                                         _tl1482015017_)
                                                        (___match3756537566_
                                                         _e1479615101_
                                                         _hd1479715105_
                                                         _tl1479815108_
                                                         _e1480315054_
                                                         _hd1480415058_
                                                         _tl1480515061_
                                                         _e1481815010_
                                                         _hd1481915014_
                                                         _tl1482015017_)
                                                        (___match3758337584_
                                                         _e1479615101_
                                                         _hd1479715105_
                                                         _tl1479815108_
                                                         _e1480315054_
                                                         _hd1480415058_
                                                         _tl1480515061_
                                                         _e1481815010_
                                                         _hd1481915014_
                                                         _tl1482015017_))))
                                                (___kont3750737508_
                                                 _tl1480515061_
                                                 _hd1480415058_
                                                 _hd1479715105_))))
                                      (if (gx#stx-pair? _tl1480515061_)
                                          (let ((_e1481815010_
                                                 (gx#syntax-e _tl1480515061_)))
                                            (let ((_tl1482015017_
                                                   (##cdr _e1481815010_))
                                                  (_hd1481915014_
                                                   (##car _e1481815010_)))
                                              (if (gx#stx-null? _tl1482015017_)
                                                  (___match3756537566_
                                                   _e1479615101_
                                                   _hd1479715105_
                                                   _tl1479815108_
                                                   _e1480315054_
                                                   _hd1480415058_
                                                   _tl1480515061_
                                                   _e1481815010_
                                                   _hd1481915014_
                                                   _tl1482015017_)
                                                  (___match3758337584_
                                                   _e1479615101_
                                                   _hd1479715105_
                                                   _tl1479815108_
                                                   _e1480315054_
                                                   _hd1480415058_
                                                   _tl1480515061_
                                                   _e1481815010_
                                                   _hd1481915014_
                                                   _tl1482015017_))))
                                          (___kont3750737508_
                                           _tl1480515061_
                                           _hd1480415058_
                                           _hd1479715105_)))))
                              (___kont3750937510_ _tl1479815108_)))))
                  (_g1479414852_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#quasiquote|
      (lambda (_stx15119_)
        (letrec ((_simple-quote?15122_
                  (lambda (_e15814_)
                    (let* ((___stx3760437605_ _e15814_)
                           (_g1582215859_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3760437605_))))
                      (let ((___kont3760737608_ (lambda () '#f))
                            (___kont3760937610_ (lambda () '#f))
                            (___kont3761137612_
                             (lambda (_L15973_ _L15975_)
                               (if (_simple-quote?15122_ _L15975_)
                                   (_simple-quote?15122_ _L15973_)
                                   '#f)))
                            (___kont3761337614_
                             (lambda (_L15934_)
                               (_simple-quote?15122_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g1594715950_ _g1594815953_)
                                           (cons _g1594715950_ _g1594815953_))
                                         '()
                                         _L15934_)))))
                            (___kont3761737618_
                             (lambda (_L15881_)
                               (_simple-quote?15122_ _L15881_)))
                            (___kont3761937620_ (lambda () '#t)))
                        (let* ((_g1582015893_
                                (lambda ()
                                  (if (gx#stx-box? ___stx3760437605_)
                                      (let ((_e1585315877_
                                             (unbox (gx#syntax-e
                                                     ___stx3760437605_))))
                                        (___kont3761737618_ _e1585315877_))
                                      (___kont3761937620_))))
                               (___match3767537676_
                                (lambda (_e1584215900_
                                         ___splice3761537616_
                                         _target1584315904_
                                         _tl1584515907_)
                                  (letrec ((_loop1584615910_
                                            (lambda (_hd1584415914_
                                                     _e1585015917_)
                                              (if (gx#stx-pair? _hd1584415914_)
                                                  (let ((_e1584715920_
                                                         (gx#syntax-e
                                                          _hd1584415914_)))
                                                    (let ((_lp-tl1584915927_
                                                           (##cdr _e1584715920_))
                                                          (_lp-hd1584815924_
                                                           (##car _e1584715920_)))
                                                      (_loop1584615910_
                                                       _lp-tl1584915927_
                                                       (cons _lp-hd1584815924_
                                                             _e1585015917_))))
                                                  (let ((_e1585115930_
                                                         (reverse _e1585015917_)))
                                                    (___kont3761337614_
                                                     _e1585115930_))))))
                                    (_loop1584615910_
                                     _target1584315904_
                                     '()))))
                               (_g1581915956_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx3760437605_)
                                      (let ((_e1584215900_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx3760437605_))))
                                        (if (gx#stx-pair/null? _e1584215900_)
                                            (let ((___splice3761537616_
                                                   (gx#syntax-split-splice
                                                    _e1584215900_
                                                    '0)))
                                              (let ((_tl1584515907_
                                                     (##vector-ref
                                                      ___splice3761537616_
                                                      '1))
                                                    (_target1584315904_
                                                     (##vector-ref
                                                      ___splice3761537616_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl1584515907_)
                                                    (___match3767537676_
                                                     _e1584215900_
                                                     ___splice3761537616_
                                                     _target1584315904_
                                                     _tl1584515907_)
                                                    (___kont3761937620_))))
                                            (___kont3761937620_)))
                                      (_g1582015893_)))))
                          (if (gx#stx-pair? ___stx3760437605_)
                              (let ((_e1582416024_
                                     (gx#syntax-e ___stx3760437605_)))
                                (let ((_tl1582616031_ (##cdr _e1582416024_))
                                      (_hd1582516028_ (##car _e1582416024_)))
                                  (if (gx#identifier? _hd1582516028_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<sugar>$<sugar:2>[1]#_g41126_|
                                           _hd1582516028_)
                                          (if (gx#stx-pair? _tl1582616031_)
                                              (let ((_e1582716034_
                                                     (gx#syntax-e
                                                      _tl1582616031_)))
                                                (let ((_tl1582916041_
                                                       (##cdr _e1582716034_))
                                                      (_hd1582816038_
                                                       (##car _e1582716034_)))
                                                  (if (gx#stx-null?
                                                       _tl1582916041_)
                                                      (___kont3760737608_)
                                                      (___kont3761137612_
                                                       _tl1582616031_
                                                       _hd1582516028_))))
                                              (___kont3761137612_
                                               _tl1582616031_
                                               _hd1582516028_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g41125_|
                                               _hd1582516028_)
                                              (if (gx#stx-pair? _tl1582616031_)
                                                  (let ((_e1583316003_
                                                         (gx#syntax-e
                                                          _tl1582616031_)))
                                                    (let ((_tl1583516010_
                                                           (##cdr _e1583316003_))
                                                          (_hd1583416007_
                                                           (##car _e1583316003_)))
                                                      (if (gx#stx-null?
                                                           _tl1583516010_)
                                                          (___kont3760937610_)
                                                          (___kont3761137612_
                                                           _tl1582616031_
                                                           _hd1582516028_))))
                                                  (___kont3761137612_
                                                   _tl1582616031_
                                                   _hd1582516028_))
                                              (___kont3761137612_
                                               _tl1582616031_
                                               _hd1582516028_)))
                                      (___kont3761137612_
                                       _tl1582616031_
                                       _hd1582516028_))))
                              (_g1581915956_)))))))
                 (_generate15124_
                  (lambda (_e15186_ _d15188_)
                    (let* ((___stx3768237683_ _e15186_)
                           (_g1519715255_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx3768237683_))))
                      (let ((___kont3768537686_
                             (lambda (_L15766_)
                               (let* ((_g1577915787_
                                       (lambda (_g1578015783_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1578015783_)))
                                      (_g1577815806_
                                       (lambda (_g1578015791_)
                                         ((lambda (_L15794_)
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'list)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons (gx#datum->syntax '#f 'quasiquote) '()))
                  (cons _L15794_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1578015791_))))
                                 (_g1577815806_
                                  (_generate15124_
                                   _L15766_
                                   (fx1+ _d15188_))))))
                            (___kont3768737688_
                             (lambda (_L15695_)
                               (if (fxzero? _d15188_)
                                   _L15695_
                                   (let* ((_g1570815716_
                                           (lambda (_g1570915712_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1570915712_)))
                                          (_g1570715735_
                                           (lambda (_g1570915720_)
                                             ((lambda (_L15723_)
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'list)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote)
                            (cons (gx#datum->syntax '#f 'unquote) '()))
                      (cons _L15723_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1570915720_))))
                                     (_g1570715735_
                                      (_generate15124_
                                       _L15695_
                                       (fx1- _d15188_)))))))
                            (___kont3768937690_
                             (lambda (_L15624_)
                               (if (fxzero? _d15188_)
                                   (cons (gx#datum->syntax '#f 'foldr)
                                         (cons (gx#datum->syntax '#f 'cons)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons '() '()))
                                                     (cons _L15624_ '()))))
                                   (let* ((_g1563715645_
                                           (lambda (_g1563815641_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1563815641_)))
                                          (_g1563615664_
                                           (lambda (_g1563815649_)
                                             ((lambda (_L15652_)
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
                      (cons _L15652_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1563815649_))))
                                     (_g1563615664_
                                      (_generate15124_
                                       _L15624_
                                       (fx1- _d15188_)))))))
                            (___kont3769137692_
                             (lambda (_L15549_ _L15551_)
                               (let* ((_g1556615574_
                                       (lambda (_g1556715570_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1556715570_)))
                                      (_g1556515593_
                                       (lambda (_g1556715578_)
                                         ((lambda (_L15581_)
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'foldr)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'cons)
                                                          (cons _L15581_
                                                                (cons _L15551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g1556715578_))))
                                 (_g1556515593_
                                  (_generate15124_ _L15549_ _d15188_)))))
                            (___kont3769337694_
                             (lambda (_L15435_ _L15437_)
                               (let* ((_g1544815463_
                                       (lambda (_g1544915459_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1544915459_)))
                                      (_g1544715508_
                                       (lambda (_g1544915467_)
                                         (if (gx#stx-pair? _g1544915467_)
                                             (let ((_e1545215470_
                                                    (gx#syntax-e
                                                     _g1544915467_)))
                                               (let ((_hd1545315474_
                                                      (##car _e1545215470_))
                                                     (_tl1545415477_
                                                      (##cdr _e1545215470_)))
                                                 (if (gx#stx-pair?
                                                      _tl1545415477_)
                                                     (let ((_e1545515480_
                                                            (gx#syntax-e
                                                             _tl1545415477_)))
                                                       (let ((_hd1545615484_
                                                              (##car _e1545515480_))
                                                             (_tl1545715487_
                                                              (##cdr _e1545515480_)))
                                                         (if (gx#stx-null?
                                                              _tl1545715487_)
                                                             ((lambda (_L15490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L15492_)
                        (let ()
                          (cons (gx#datum->syntax '#f 'cons)
                                (cons _L15492_ (cons _L15490_ '())))))
                      _hd1545615484_
                      _hd1545315474_)
                     (_g1544815463_ _g1544915467_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1544815463_
                                                      _g1544915467_))))
                                             (_g1544815463_ _g1544915467_)))))
                                 (_g1544715508_
                                  (list (_generate15124_ _L15437_ _d15188_)
                                        (_generate15124_
                                         _L15435_
                                         _d15188_))))))
                            (___kont3769537696_
                             (lambda (_L15365_)
                               (let* ((_g1537915387_
                                       (lambda (_g1538015383_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1538015383_)))
                                      (_g1537815406_
                                       (lambda (_g1538015391_)
                                         ((lambda (_L15394_)
                                            (let ()
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'list->vector)
                                                    (cons _L15394_ '()))))
                                          _g1538015391_))))
                                 (_g1537815406_
                                  (_generate15124_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g1540915412_
                                                     _g1541015415_)
                                              (cons _g1540915412_
                                                    _g1541015415_))
                                            '()
                                            _L15365_))
                                   _d15188_)))))
                            (___kont3769937700_
                             (lambda (_L15283_)
                               (let* ((_g1529315301_
                                       (lambda (_g1529415297_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1529415297_)))
                                      (_g1529215320_
                                       (lambda (_g1529415305_)
                                         ((lambda (_L15308_)
                                            (let ()
                                              (cons (gx#datum->syntax '#f 'box)
                                                    (cons _L15308_ '()))))
                                          _g1529415305_))))
                                 (_g1529215320_
                                  (_generate15124_ _L15283_ _d15188_)))))
                            (___kont3770137702_
                             (lambda (_L15262_)
                               (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L15262_ '())))))
                        (let* ((_g1519515324_
                                (lambda ()
                                  (if (gx#stx-box? ___stx3768237683_)
                                      (let ((_e1524815279_
                                             (unbox (gx#syntax-e
                                                     ___stx3768237683_))))
                                        (___kont3769937700_ _e1524815279_))
                                      (___kont3770137702_ ___stx3768237683_))))
                               (___match3780137802_
                                (lambda (_e1523715331_
                                         ___splice3769737698_
                                         _target1523815335_
                                         _tl1524015338_)
                                  (letrec ((_loop1524115341_
                                            (lambda (_hd1523915345_
                                                     _e1524515348_)
                                              (if (gx#stx-pair? _hd1523915345_)
                                                  (let ((_e1524215351_
                                                         (gx#syntax-e
                                                          _hd1523915345_)))
                                                    (let ((_lp-tl1524415358_
                                                           (##cdr _e1524215351_))
                                                          (_lp-hd1524315355_
                                                           (##car _e1524215351_)))
                                                      (_loop1524115341_
                                                       _lp-tl1524415358_
                                                       (cons _lp-hd1524315355_
                                                             _e1524515348_))))
                                                  (let ((_e1524615361_
                                                         (reverse _e1524515348_)))
                                                    (___kont3769537696_
                                                     _e1524615361_))))))
                                    (_loop1524115341_
                                     _target1523815335_
                                     '()))))
                               (_g1519415418_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx3768237683_)
                                      (let ((_e1523715331_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx3768237683_))))
                                        (if (gx#stx-pair/null? _e1523715331_)
                                            (let ((___splice3769737698_
                                                   (gx#syntax-split-splice
                                                    _e1523715331_
                                                    '0)))
                                              (let ((_tl1524015338_
                                                     (##vector-ref
                                                      ___splice3769737698_
                                                      '1))
                                                    (_target1523815335_
                                                     (##vector-ref
                                                      ___splice3769737698_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl1524015338_)
                                                    (___match3780137802_
                                                     _e1523715331_
                                                     ___splice3769737698_
                                                     _target1523815335_
                                                     _tl1524015338_)
                                                    (___kont3770137702_
                                                     ___stx3768237683_))))
                                            (___kont3770137702_
                                             ___stx3768237683_)))
                                      (_g1519515324_)))))
                          (if (gx#stx-pair? ___stx3768237683_)
                              (let ((_e1520015746_
                                     (gx#syntax-e ___stx3768237683_)))
                                (let ((_tl1520215753_ (##cdr _e1520015746_))
                                      (_hd1520115750_ (##car _e1520015746_)))
                                  (if (gx#identifier? _hd1520115750_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core$<sugar>$<sugar:2>[1]#_g41130_|
                                           _hd1520115750_)
                                          (if (gx#stx-pair? _tl1520215753_)
                                              (let ((_e1520315756_
                                                     (gx#syntax-e
                                                      _tl1520215753_)))
                                                (let ((_tl1520515763_
                                                       (##cdr _e1520315756_))
                                                      (_hd1520415760_
                                                       (##car _e1520315756_)))
                                                  (if (gx#stx-null?
                                                       _tl1520515763_)
                                                      (___kont3768537686_
                                                       _hd1520415760_)
                                                      (___kont3769337694_
                                                       _tl1520215753_
                                                       _hd1520115750_))))
                                              (___kont3769337694_
                                               _tl1520215753_
                                               _hd1520115750_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g41129_|
                                               _hd1520115750_)
                                              (if (gx#stx-pair? _tl1520215753_)
                                                  (let ((_e1521015685_
                                                         (gx#syntax-e
                                                          _tl1520215753_)))
                                                    (let ((_tl1521215692_
                                                           (##cdr _e1521015685_))
                                                          (_hd1521115689_
                                                           (##car _e1521015685_)))
                                                      (if (gx#stx-null?
                                                           _tl1521215692_)
                                                          (___kont3768737688_
                                                           _hd1521115689_)
                                                          (___kont3769337694_
                                                           _tl1520215753_
                                                           _hd1520115750_))))
                                                  (___kont3769337694_
                                                   _tl1520215753_
                                                   _hd1520115750_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:2>[1]#_g41128_|
                                                   _hd1520115750_)
                                                  (if (gx#stx-pair?
                                                       _tl1520215753_)
                                                      (let ((_e1521715614_
                                                             (gx#syntax-e
                                                              _tl1520215753_)))
                                                        (let ((_tl1521915621_
                                                               (##cdr _e1521715614_))
                                                              (_hd1521815618_
                                                               (##car _e1521715614_)))
                                                          (if (gx#stx-null?
                                                               _tl1521915621_)
                                                              (___kont3768937690_
                                                               _hd1521815618_)
                                                              (___kont3769337694_
                                                               _tl1520215753_
                                                               _hd1520115750_))))
                                                      (___kont3769337694_
                                                       _tl1520215753_
                                                       _hd1520115750_))
                                                  (___kont3769337694_
                                                   _tl1520215753_
                                                   _hd1520115750_))))
                                      (if (gx#stx-pair? _hd1520115750_)
                                          (let ((_e1522515529_
                                                 (gx#syntax-e _hd1520115750_)))
                                            (let ((_tl1522715536_
                                                   (##cdr _e1522515529_))
                                                  (_hd1522615533_
                                                   (##car _e1522515529_)))
                                              (if (gx#identifier?
                                                   _hd1522615533_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<sugar>$<sugar:2>[1]#_g41127_|
                                                       _hd1522615533_)
                                                      (if (gx#stx-pair?
                                                           _tl1522715536_)
                                                          (let ((_e1522815539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1522715536_)))
                    (let ((_tl1523015546_ (##cdr _e1522815539_))
                          (_hd1522915543_ (##car _e1522815539_)))
                      (if (gx#stx-null? _tl1523015546_)
                          (if (fxzero? _d15188_)
                              (let ((_L15549_ _tl1520215753_)
                                    (_L15551_ _hd1522915543_))
                                (___kont3769137692_ _L15549_ _L15551_))
                              (___kont3769337694_
                               _tl1520215753_
                               _hd1520115750_))
                          (___kont3769337694_ _tl1520215753_ _hd1520115750_))))
                  (___kont3769337694_ _tl1520215753_ _hd1520115750_))
              (___kont3769337694_ _tl1520215753_ _hd1520115750_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont3769337694_
                                                   _tl1520215753_
                                                   _hd1520115750_))))
                                          (___kont3769337694_
                                           _tl1520215753_
                                           _hd1520115750_)))))
                              (_g1519415418_))))))))
          (let* ((_g1512615140_
                  (lambda (_g1512715136_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1512715136_)))
                 (_g1512515182_
                  (lambda (_g1512715144_)
                    (if (gx#stx-pair? _g1512715144_)
                        (let ((_e1512915147_ (gx#syntax-e _g1512715144_)))
                          (let ((_hd1513015151_ (##car _e1512915147_))
                                (_tl1513115154_ (##cdr _e1512915147_)))
                            (if (gx#stx-pair? _tl1513115154_)
                                (let ((_e1513215157_
                                       (gx#syntax-e _tl1513115154_)))
                                  (let ((_hd1513315161_ (##car _e1513215157_))
                                        (_tl1513415164_ (##cdr _e1513215157_)))
                                    (if (gx#stx-null? _tl1513415164_)
                                        ((lambda (_L15167_)
                                           (if (_simple-quote?15122_ _L15167_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L15167_ '()))
                                               (_generate15124_ _L15167_ '0)))
                                         _hd1513315161_)
                                        (_g1512615140_ _g1512715144_))))
                                (_g1512615140_ _g1512715144_))))
                        (_g1512615140_ _g1512715144_)))))
            (_g1512515182_ _stx15119_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#delay|
      (lambda (_$stx16054_)
        (let* ((___stx3780837809_ _$stx16054_)
               (_g1605916080_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx3780837809_))))
          (let ((___kont3781137812_
                 (lambda (_L16148_)
                   (cons (gx#datum->syntax '#f 'quote) (cons _L16148_ '()))))
                (___kont3781337814_
                 (lambda (_L16107_)
                   (cons (gx#datum->syntax '#f 'make-promise)
                         (cons (cons (gx#datum->syntax '#f 'lambda%)
                                     (cons '() (cons _L16107_ '())))
                               '())))))
            (let ((___match3782937830_
                   (lambda (_e1606216128_
                            _hd1606316132_
                            _tl1606416135_
                            _e1606516138_
                            _hd1606616142_
                            _tl1606716145_)
                     (let ((_L16148_ _hd1606616142_))
                       (if (gx#stx-datum? _L16148_)
                           (___kont3781137812_ _L16148_)
                           (___kont3781337814_ _hd1606616142_))))))
              (if (gx#stx-pair? ___stx3780837809_)
                  (let ((_e1606216128_ (gx#syntax-e ___stx3780837809_)))
                    (let ((_tl1606416135_ (##cdr _e1606216128_))
                          (_hd1606316132_ (##car _e1606216128_)))
                      (if (gx#stx-pair? _tl1606416135_)
                          (let ((_e1606516138_ (gx#syntax-e _tl1606416135_)))
                            (let ((_tl1606716145_ (##cdr _e1606516138_))
                                  (_hd1606616142_ (##car _e1606516138_)))
                              (if (gx#stx-null? _tl1606716145_)
                                  (___match3782937830_
                                   _e1606216128_
                                   _hd1606316132_
                                   _tl1606416135_
                                   _e1606516138_
                                   _hd1606616142_
                                   _tl1606716145_)
                                  (_g1605916080_))))
                          (_g1605916080_))))
                  (_g1605916080_)))))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#cut|
      (lambda (_stx16165_)
        (letrec ((_generate16168_
                  (lambda (_rest16287_)
                    (let _lp16290_ ((_rest16293_ _rest16287_)
                                    (_hd16295_ '())
                                    (_body16296_ '()))
                      (let* ((___stx3786637867_ _rest16293_)
                             (_g1629916311_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 ___stx3786637867_))))
                        (let ((___kont3786937870_
                               (lambda (_L16339_ _L16341_)
                                 (let* ((___stx3784637847_ _L16341_)
                                        (_g1635816365_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            ___stx3784637847_))))
                                   (let ((___kont3784937850_
                                          (lambda ()
                                            (let ((_arg16401_ (gx#genident)))
                                              (_lp16290_
                                               _L16339_
                                               (cons _arg16401_ _hd16295_)
                                               (cons _arg16401_
                                                     _body16296_)))))
                                         (___kont3785137852_
                                          (lambda ()
                                            (if (gx#stx-null? _L16339_)
                                                (let ((_tail16387_
                                                       (gx#genident)))
                                                  (values (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tail16387_
                         _hd16295_)
                  (foldl cons (list _tail16387_) _body16296_)
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx16165_
                                                 _L16341_))))
                                         (___kont3785337854_
                                          (lambda ()
                                            (_lp16290_
                                             _L16339_
                                             _hd16295_
                                             (cons _L16341_ _body16296_)))))
                                     (if (gx#identifier? ___stx3784637847_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core$<sugar>$<sugar:2>[1]#_g41132_|
                                              ___stx3784637847_)
                                             (___kont3784937850_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core$<sugar>$<sugar:2>[1]#_g41131_|
                                                  ___stx3784637847_)
                                                 (___kont3785137852_)
                                                 (___kont3785337854_)))
                                         (___kont3785337854_))))))
                              (___kont3787137872_
                               (lambda ()
                                 (values (reverse _hd16295_)
                                         (reverse _body16296_)
                                         '#f))))
                          (if (gx#stx-pair? ___stx3786637867_)
                              (let ((_e1630316329_
                                     (gx#syntax-e ___stx3786637867_)))
                                (let ((_tl1630516336_ (##cdr _e1630316329_))
                                      (_hd1630416333_ (##car _e1630316329_)))
                                  (___kont3786937870_
                                   _tl1630516336_
                                   _hd1630416333_)))
                              (___kont3787137872_))))))))
          (let* ((_g1617116182_
                  (lambda (_g1617216178_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1617216178_)))
                 (_g1617016283_
                  (lambda (_g1617216186_)
                    (if (gx#stx-pair? _g1617216186_)
                        (let ((_e1617416189_ (gx#syntax-e _g1617216186_)))
                          (let ((_hd1617516193_ (##car _e1617416189_))
                                (_tl1617616196_ (##cdr _e1617416189_)))
                            ((lambda (_L16199_)
                               (if (if (gx#stx-list? _L16199_)
                                       (not (gx#stx-null? _L16199_))
                                       '#f)
                                   (let ((_g41133_ (_generate16168_ _L16199_)))
                                     (begin
                                       (let ((_g41134_
                                              (if (##values? _g41133_)
                                                  (##vector-length _g41133_)
                                                  1)))
                                         (if (not (##fx= _g41134_ 3))
                                             (error "Context expects 3 values"
                                                    _g41134_)))
                                       (let ((_hd16212_
                                              (##vector-ref _g41133_ 0))
                                             (_body16214_
                                              (##vector-ref _g41133_ 1))
                                             (_tail?16215_
                                              (##vector-ref _g41133_ 2)))
                                         (let* ((_g1621716225_
                                                 (lambda (_g1621816221_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1621816221_)))
                                                (_g1621616279_
                                                 (lambda (_g1621816229_)
                                                   ((lambda (_L16232_)
                                                      (let ()
                                                        (let* ((_g1624516253_
                                                                (lambda (_g1624616249_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1624616249_)))
                       (_g1624416275_
                        (lambda (_g1624616257_)
                          ((lambda (_L16260_)
                             (let ()
                               (let ()
                                 (if _tail?16215_
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L16232_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'apply)
                                                             _L16260_)
                                                       '())))
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L16232_
                                                 (cons _L16260_ '())))))))
                           _g1624616257_))))
                  (_g1624416275_ _body16214_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1621816229_))))
                                           (_g1621616279_ _hd16212_)))))
                                   (_g1617116182_ _g1617216186_)))
                             _tl1617616196_)))
                        (_g1617116182_ _g1617216186_)))))
            (_g1617016283_ _stx16165_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<>|
      (lambda (_$stx16413_)
        (let ((_g1641616423_
               (lambda (_g1641716419_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1641716419_))))
          (_g1641616423_ _$stx16413_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<...>|
      (lambda (_$stx16427_)
        (let ((_g1643016437_
               (lambda (_g1643116433_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1643116433_))))
          (_g1643016437_ _$stx16427_))))))
