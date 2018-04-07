(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx50444_)
      (let* ((_g5044850466_
              (lambda (_g5044950462_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5044950462_)))
             (_g5044750521_
              (lambda (_g5044950470_)
                (if (gx#stx-pair? _g5044950470_)
                    (let ((_e5045250473_ (gx#syntax-e _g5044950470_)))
                      (let ((_hd5045350477_ (##car _e5045250473_))
                            (_tl5045450480_ (##cdr _e5045250473_)))
                        (if (gx#stx-pair? _tl5045450480_)
                            (let ((_e5045550483_ (gx#syntax-e _tl5045450480_)))
                              (let ((_hd5045650487_ (##car _e5045550483_))
                                    (_tl5045750490_ (##cdr _e5045550483_)))
                                (if (gx#stx-pair? _tl5045750490_)
                                    (let ((_e5045850493_
                                           (gx#syntax-e _tl5045750490_)))
                                      (let ((_hd5045950497_
                                             (##car _e5045850493_))
                                            (_tl5046050500_
                                             (##cdr _e5045850493_)))
                                        (if (gx#stx-null? _tl5046050500_)
                                            ((lambda (_L50503_ _L50505_)
                                               (if (gx#identifier? _L50505_)
                                                   (cons (gx#datum->syntax__0
                                                          '#f
                                                          'optimizer-declare-type!)
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L50505_ '()))
                       (cons _L50503_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g5044850466_
                                                    _g5044950470_)))
                                             _hd5045950497_
                                             _hd5045650487_)
                                            (_g5044850466_ _g5044950470_))))
                                    (_g5044850466_ _g5044950470_))))
                            (_g5044850466_ _g5044950470_))))
                    (_g5044850466_ _g5044950470_)))))
        (_g5044750521_ _$stx50444_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx50525_)
      (let* ((_g5052950558_
              (lambda (_g5053050554_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5053050554_)))
             (_g5052850658_
              (lambda (_g5053050562_)
                (if (gx#stx-pair? _g5053050562_)
                    (let ((_e5053350565_ (gx#syntax-e _g5053050562_)))
                      (let ((_hd5053450569_ (##car _e5053350565_))
                            (_tl5053550572_ (##cdr _e5053350565_)))
                        (if (gx#stx-pair/null? _tl5053550572_)
                            (let ((_g53675_
                                   (gx#syntax-split-splice _tl5053550572_ '0)))
                              (begin
                                (let ((_g53676_
                                       (if (##values? _g53675_)
                                           (##vector-length _g53675_)
                                           1)))
                                  (if (not (##fx= _g53676_ 2))
                                      (error "Context expects 2 values"
                                             _g53676_)))
                                (let ((_target5053650575_
                                       (##vector-ref _g53675_ 0))
                                      (_tl5053850578_
                                       (##vector-ref _g53675_ 1)))
                                  (if (gx#stx-null? _tl5053850578_)
                                      (letrec ((_loop5053950581_
                                                (lambda (_hd5053750585_
                                                         _type5054350588_
                                                         _symbol5054450590_)
                                                  (if (gx#stx-pair?
                                                       _hd5053750585_)
                                                      (let ((_e5054050593_
                                                             (gx#syntax-e
                                                              _hd5053750585_)))
                                                        (let ((_lp-hd5054150597_
                                                               (##car _e5054050593_))
                                                              (_lp-tl5054250600_
                                                               (##cdr _e5054050593_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5054150597_)
                                                              (let ((_e5054750603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5054150597_)))
                        (let ((_hd5054850607_ (##car _e5054750603_))
                              (_tl5054950610_ (##cdr _e5054750603_)))
                          (if (gx#stx-pair? _tl5054950610_)
                              (let ((_e5055050613_
                                     (gx#syntax-e _tl5054950610_)))
                                (let ((_hd5055150617_ (##car _e5055050613_))
                                      (_tl5055250620_ (##cdr _e5055050613_)))
                                  (if (gx#stx-null? _tl5055250620_)
                                      (_loop5053950581_
                                       _lp-tl5054250600_
                                       (cons _hd5055150617_ _type5054350588_)
                                       (cons _hd5054850607_
                                             _symbol5054450590_))
                                      (_g5052950558_ _g5053050562_))))
                              (_g5052950558_ _g5053050562_))))
                      (_g5052950558_ _g5053050562_))))
              (let ((_type5054550623_ (reverse _type5054350588_))
                    (_symbol5054650626_ (reverse _symbol5054450590_)))
                ((lambda (_L50629_ _L50631_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L50629_ _L50631_)
                           (foldr2 (lambda (_g5064650650_
                                            _g5064750653_
                                            _g5064850655_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type)
                                                 (cons _g5064750653_
                                                       (cons _g5064650650_
                                                             '())))
                                           _g5064850655_))
                                   '()
                                   _L50629_
                                   _L50631_))))
                 _type5054550623_
                 _symbol5054650626_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5053950581_
                                         _target5053650575_
                                         '()
                                         '()))
                                      (_g5052950558_ _g5053050562_)))))
                            (_g5052950558_ _g5053050562_))))
                    (_g5052950558_ _g5053050562_)))))
        (_g5052850658_ _$stx50525_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx50663_)
      (let* ((___stx5316653167_ _$stx50663_)
             (_g5066850710_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5316653167_))))
        (let ((___kont5316953170_
               (lambda (_L50838_ _L50840_ _L50841_ _L50842_)
                 (cons (gx#datum->syntax__0 '#f 'optimizer-declare-method!)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50842_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L50841_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L50840_ '()))
                                         (cons _L50838_ '())))))))
              (___kont5317153172_
               (lambda (_L50757_ _L50759_ _L50760_ _L50761_)
                 (cons _L50761_
                       (cons _L50760_
                             (cons _L50759_
                                   (cons _L50757_
                                         (cons (gx#datum->syntax__0
                                                '#f
                                                'rebind?)
                                               '()))))))))
          (let ((___match5320553206_
                 (lambda (_e5067450788_
                          _hd5067550792_
                          _tl5067650795_
                          _e5067750798_
                          _hd5067850802_
                          _tl5067950805_
                          _e5068050808_
                          _hd5068150812_
                          _tl5068250815_
                          _e5068350818_
                          _hd5068450822_
                          _tl5068550825_
                          _e5068650828_
                          _hd5068750832_
                          _tl5068850835_)
                   (let ((_L50838_ _hd5068750832_)
                         (_L50840_ _hd5068450822_)
                         (_L50841_ _hd5068150812_)
                         (_L50842_ _hd5067850802_))
                     (if (if (gx#identifier? _L50842_)
                             (if (gx#identifier? _L50841_)
                                 (gx#identifier? _L50840_)
                                 '#f)
                             '#f)
                         (___kont5316953170_
                          _L50838_
                          _L50840_
                          _L50841_
                          _L50842_)
                         (_g5066850710_))))))
            (if (gx#stx-pair? ___stx5316653167_)
                (let ((_e5067450788_ (gx#syntax-e ___stx5316653167_)))
                  (let ((_tl5067650795_ (##cdr _e5067450788_))
                        (_hd5067550792_ (##car _e5067450788_)))
                    (if (gx#stx-pair? _tl5067650795_)
                        (let ((_e5067750798_ (gx#syntax-e _tl5067650795_)))
                          (let ((_tl5067950805_ (##cdr _e5067750798_))
                                (_hd5067850802_ (##car _e5067750798_)))
                            (if (gx#stx-pair? _tl5067950805_)
                                (let ((_e5068050808_
                                       (gx#syntax-e _tl5067950805_)))
                                  (let ((_tl5068250815_ (##cdr _e5068050808_))
                                        (_hd5068150812_ (##car _e5068050808_)))
                                    (if (gx#stx-pair? _tl5068250815_)
                                        (let ((_e5068350818_
                                               (gx#syntax-e _tl5068250815_)))
                                          (let ((_tl5068550825_
                                                 (##cdr _e5068350818_))
                                                (_hd5068450822_
                                                 (##car _e5068350818_)))
                                            (if (gx#stx-pair? _tl5068550825_)
                                                (let ((_e5068650828_
                                                       (gx#syntax-e
                                                        _tl5068550825_)))
                                                  (let ((_tl5068850835_
                                                         (##cdr _e5068650828_))
                                                        (_hd5068750832_
                                                         (##car _e5068650828_)))
                                                    (if (gx#stx-null?
                                                         _tl5068850835_)
                                                        (___match5320553206_
                                                         _e5067450788_
                                                         _hd5067550792_
                                                         _tl5067650795_
                                                         _e5067750798_
                                                         _hd5067850802_
                                                         _tl5067950805_
                                                         _e5068050808_
                                                         _hd5068150812_
                                                         _tl5068250815_
                                                         _e5068350818_
                                                         _hd5068450822_
                                                         _tl5068550825_
                                                         _e5068650828_
                                                         _hd5068750832_
                                                         _tl5068850835_)
                                                        (_g5066850710_))))
                                                (if (gx#stx-null?
                                                     _tl5068550825_)
                                                    (___kont5317153172_
                                                     _hd5068450822_
                                                     _hd5068150812_
                                                     _hd5067850802_
                                                     _hd5067550792_)
                                                    (_g5066850710_)))))
                                        (_g5066850710_))))
                                (_g5066850710_))))
                        (_g5066850710_))))
                (_g5066850710_)))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx50867_)
      (let* ((_g5087150906_
              (lambda (_g5087250902_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5087250902_)))
             (_g5087051025_
              (lambda (_g5087250910_)
                (if (gx#stx-pair? _g5087250910_)
                    (let ((_e5087650913_ (gx#syntax-e _g5087250910_)))
                      (let ((_hd5087750917_ (##car _e5087650913_))
                            (_tl5087850920_ (##cdr _e5087650913_)))
                        (if (gx#stx-pair/null? _tl5087850920_)
                            (let ((_g53677_
                                   (gx#syntax-split-splice _tl5087850920_ '0)))
                              (begin
                                (let ((_g53678_
                                       (if (##values? _g53677_)
                                           (##vector-length _g53677_)
                                           1)))
                                  (if (not (##fx= _g53678_ 2))
                                      (error "Context expects 2 values"
                                             _g53678_)))
                                (let ((_target5087950923_
                                       (##vector-ref _g53677_ 0))
                                      (_tl5088150926_
                                       (##vector-ref _g53677_ 1)))
                                  (if (gx#stx-null? _tl5088150926_)
                                      (letrec ((_loop5088250929_
                                                (lambda (_hd5088050933_
                                                         _symbol5088650936_
                                                         _method5088750938_
                                                         _type-t5088850940_)
                                                  (if (gx#stx-pair?
                                                       _hd5088050933_)
                                                      (let ((_e5088350943_
                                                             (gx#syntax-e
                                                              _hd5088050933_)))
                                                        (let ((_lp-hd5088450947_
                                                               (##car _e5088350943_))
                                                              (_lp-tl5088550950_
                                                               (##cdr _e5088350943_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5088450947_)
                                                              (let ((_e5089250953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5088450947_)))
                        (let ((_hd5089350957_ (##car _e5089250953_))
                              (_tl5089450960_ (##cdr _e5089250953_)))
                          (if (gx#stx-pair? _tl5089450960_)
                              (let ((_e5089550963_
                                     (gx#syntax-e _tl5089450960_)))
                                (let ((_hd5089650967_ (##car _e5089550963_))
                                      (_tl5089750970_ (##cdr _e5089550963_)))
                                  (if (gx#stx-pair? _tl5089750970_)
                                      (let ((_e5089850973_
                                             (gx#syntax-e _tl5089750970_)))
                                        (let ((_hd5089950977_
                                               (##car _e5089850973_))
                                              (_tl5090050980_
                                               (##cdr _e5089850973_)))
                                          (if (gx#stx-null? _tl5090050980_)
                                              (_loop5088250929_
                                               _lp-tl5088550950_
                                               (cons _hd5089950977_
                                                     _symbol5088650936_)
                                               (cons _hd5089650967_
                                                     _method5088750938_)
                                               (cons _hd5089350957_
                                                     _type-t5088850940_))
                                              (_g5087150906_ _g5087250910_))))
                                      (_g5087150906_ _g5087250910_))))
                              (_g5087150906_ _g5087250910_))))
                      (_g5087150906_ _g5087250910_))))
              (let ((_symbol5088950983_ (reverse _symbol5088650936_))
                    (_method5089050986_ (reverse _method5088750938_))
                    (_type-t5089150988_ (reverse _type-t5088850940_)))
                ((lambda (_L50991_ _L50993_ _L50994_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _L50991_
                            _L50993_
                            _L50994_)
                           (foldr (lambda (_g5101051015_
                                           _g5101151018_
                                           _g5101251020_
                                           _g5101351022_)
                                    (cons (cons (gx#datum->syntax__0
                                                 '#f
                                                 'declare-method)
                                                (cons _g5101251020_
                                                      (cons _g5101151018_
                                                            (cons _g5101051015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g5101351022_))
                                  '()
                                  _L50991_
                                  _L50993_
                                  _L50994_))))
                 _symbol5088950983_
                 _method5089050986_
                 _type-t5089150988_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5088250929_
                                         _target5087950923_
                                         '()
                                         '()
                                         '()))
                                      (_g5087150906_ _g5087250910_)))))
                            (_g5087150906_ _g5087250910_))))
                    (_g5087150906_ _g5087250910_)))))
        (_g5087051025_ _$stx50867_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx51030_)
      (let* ((_g5103451067_
              (lambda (_g5103551063_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5103551063_)))
             (_g5103351181_
              (lambda (_g5103551071_)
                (if (gx#stx-pair? _g5103551071_)
                    (let ((_e5103951074_ (gx#syntax-e _g5103551071_)))
                      (let ((_hd5104051078_ (##car _e5103951074_))
                            (_tl5104151081_ (##cdr _e5103951074_)))
                        (if (gx#stx-pair? _tl5104151081_)
                            (let ((_e5104251084_ (gx#syntax-e _tl5104151081_)))
                              (let ((_hd5104351088_ (##car _e5104251084_))
                                    (_tl5104451091_ (##cdr _e5104251084_)))
                                (if (gx#stx-pair/null? _tl5104451091_)
                                    (let ((_g53679_
                                           (gx#syntax-split-splice
                                            _tl5104451091_
                                            '0)))
                                      (begin
                                        (let ((_g53680_
                                               (if (##values? _g53679_)
                                                   (##vector-length _g53679_)
                                                   1)))
                                          (if (not (##fx= _g53680_ 2))
                                              (error "Context expects 2 values"
                                                     _g53680_)))
                                        (let ((_target5104551094_
                                               (##vector-ref _g53679_ 0))
                                              (_tl5104751097_
                                               (##vector-ref _g53679_ 1)))
                                          (if (gx#stx-null? _tl5104751097_)
                                              (letrec ((_loop5104851100_
                                                        (lambda (_hd5104651104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol5105251107_
                         _method5105351109_)
                  (if (gx#stx-pair? _hd5104651104_)
                      (let ((_e5104951112_ (gx#syntax-e _hd5104651104_)))
                        (let ((_lp-hd5105051116_ (##car _e5104951112_))
                              (_lp-tl5105151119_ (##cdr _e5104951112_)))
                          (if (gx#stx-pair? _lp-hd5105051116_)
                              (let ((_e5105651122_
                                     (gx#syntax-e _lp-hd5105051116_)))
                                (let ((_hd5105751126_ (##car _e5105651122_))
                                      (_tl5105851129_ (##cdr _e5105651122_)))
                                  (if (gx#stx-pair? _tl5105851129_)
                                      (let ((_e5105951132_
                                             (gx#syntax-e _tl5105851129_)))
                                        (let ((_hd5106051136_
                                               (##car _e5105951132_))
                                              (_tl5106151139_
                                               (##cdr _e5105951132_)))
                                          (if (gx#stx-null? _tl5106151139_)
                                              (_loop5104851100_
                                               _lp-tl5105151119_
                                               (cons _hd5106051136_
                                                     _symbol5105251107_)
                                               (cons _hd5105751126_
                                                     _method5105351109_))
                                              (_g5103451067_ _g5103551071_))))
                                      (_g5103451067_ _g5103551071_))))
                              (_g5103451067_ _g5103551071_))))
                      (let ((_symbol5105451142_ (reverse _symbol5105251107_))
                            (_method5105551145_ (reverse _method5105351109_)))
                        ((lambda (_L51148_ _L51150_ _L51151_)
                           (cons (gx#datum->syntax__0 '#f 'begin)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _L51148_
                                    _L51150_)
                                   (foldr2 (lambda (_g5116951173_
                                                    _g5117051176_
                                                    _g5117151178_)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method)
                                                         (cons _L51151_
                                                               (cons _g5117051176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _g5116951173_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g5117151178_))
                                           '()
                                           _L51148_
                                           _L51150_))))
                         _symbol5105451142_
                         _method5105551145_
                         _hd5104351088_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop5104851100_
                                                 _target5104551094_
                                                 '()
                                                 '()))
                                              (_g5103451067_ _g5103551071_)))))
                                    (_g5103451067_ _g5103551071_))))
                            (_g5103451067_ _g5103551071_))))
                    (_g5103451067_ _g5103551071_)))))
        (_g5103351181_ _$stx51030_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx51186_)
      (let* ((_g5119051204_
              (lambda (_g5119151200_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5119151200_)))
             (_g5118951245_
              (lambda (_g5119151208_)
                (if (gx#stx-pair? _g5119151208_)
                    (let ((_e5119351211_ (gx#syntax-e _g5119151208_)))
                      (let ((_hd5119451215_ (##car _e5119351211_))
                            (_tl5119551218_ (##cdr _e5119351211_)))
                        (if (gx#stx-pair? _tl5119551218_)
                            (let ((_e5119651221_ (gx#syntax-e _tl5119551218_)))
                              (let ((_hd5119751225_ (##car _e5119651221_))
                                    (_tl5119851228_ (##cdr _e5119651221_)))
                                (if (gx#stx-null? _tl5119851228_)
                                    ((lambda (_L51231_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!alias)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L51231_ '()))
                                                   '())))
                                     _hd5119751225_)
                                    (_g5119051204_ _g5119151208_))))
                            (_g5119051204_ _g5119151208_))))
                    (_g5119051204_ _g5119151208_)))))
        (_g5118951245_ _$stx51186_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx51249_)
      (let* ((___stx5323453235_ _$stx51249_)
             (_g5125551321_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5323453235_))))
        (let ((___kont5323753238_
               (lambda (_L51543_ _L51545_ _L51546_ _L51547_ _L51548_)
                 (cons (gx#datum->syntax__0 '#f '@make-struct-type)
                       (cons _L51548_
                             (cons _L51547_
                                   (cons _L51546_
                                         (cons _L51545_
                                               (cons _L51543_ '()))))))))
              (___kont5323953240_
               (lambda (_L51453_ _L51455_ _L51456_ _L51457_)
                 (cons _L51457_
                       (cons _L51456_
                             (cons _L51455_
                                   (cons _L51453_
                                         (cons '#f (cons '#f '()))))))))
              (___kont5324153242_
               (lambda (_L51378_ _L51380_ _L51381_ _L51382_ _L51383_)
                 (cons _L51383_
                       (cons (gx#datum->syntax__0 '#f 'type)
                             (cons _L51381_
                                   (cons _L51380_
                                         (cons _L51378_ (cons '#f '())))))))))
          (if (gx#stx-pair? ___stx5323453235_)
              (let ((_e5126251483_ (gx#syntax-e ___stx5323453235_)))
                (let ((_tl5126451490_ (##cdr _e5126251483_))
                      (_hd5126351487_ (##car _e5126251483_)))
                  (if (gx#stx-pair? _tl5126451490_)
                      (let ((_e5126551493_ (gx#syntax-e _tl5126451490_)))
                        (let ((_tl5126751500_ (##cdr _e5126551493_))
                              (_hd5126651497_ (##car _e5126551493_)))
                          (if (gx#stx-pair? _tl5126751500_)
                              (let ((_e5126851503_
                                     (gx#syntax-e _tl5126751500_)))
                                (let ((_tl5127051510_ (##cdr _e5126851503_))
                                      (_hd5126951507_ (##car _e5126851503_)))
                                  (if (gx#stx-pair? _tl5127051510_)
                                      (let ((_e5127151513_
                                             (gx#syntax-e _tl5127051510_)))
                                        (let ((_tl5127351520_
                                               (##cdr _e5127151513_))
                                              (_hd5127251517_
                                               (##car _e5127151513_)))
                                          (if (gx#stx-pair? _tl5127351520_)
                                              (let ((_e5127451523_
                                                     (gx#syntax-e
                                                      _tl5127351520_)))
                                                (let ((_tl5127651530_
                                                       (##cdr _e5127451523_))
                                                      (_hd5127551527_
                                                       (##car _e5127451523_)))
                                                  (if (gx#stx-pair?
                                                       _tl5127651530_)
                                                      (let ((_e5127751533_
                                                             (gx#syntax-e
                                                              _tl5127651530_)))
                                                        (let ((_tl5127951540_
                                                               (##cdr _e5127751533_))
                                                              (_hd5127851537_
                                                               (##car _e5127751533_)))
                                                          (if (gx#stx-null?
                                                               _tl5127951540_)
                                                              (___kont5323753238_
                                                               _hd5127851537_
                                                               _hd5127551527_
                                                               _hd5127251517_
                                                               _hd5126951507_
                                                               _hd5126651497_)
                                                              (_g5125551321_))))
                                                      (if (gx#stx-null?
                                                           _tl5127651530_)
                                                          (___kont5324153242_
                                                           _hd5127551527_
                                                           _hd5127251517_
                                                           _hd5126951507_
                                                           _hd5126651497_
                                                           _hd5126351487_)
                                                          (_g5125551321_)))))
                                              (if (gx#stx-null? _tl5127351520_)
                                                  (___kont5323953240_
                                                   _hd5127251517_
                                                   _hd5126951507_
                                                   _hd5126651497_
                                                   _hd5126351487_)
                                                  (_g5125551321_)))))
                                      (_g5125551321_))))
                              (_g5125551321_))))
                      (_g5125551321_))))
              (_g5125551321_))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx51576_)
      (let* ((___stx5334253343_ _$stx51576_)
             (_g5158151634_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5334253343_))))
        (let ((___kont5334553346_
               (lambda (_L51802_ _L51804_ _L51805_ _L51806_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-type)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L51806_ '()))
                             (cons '#f
                                   (cons _L51805_
                                         (cons '0
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L51804_ '()))
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L51802_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (___kont5334753348_
               (lambda (_L51701_ _L51703_ _L51704_ _L51705_ _L51706_)
                 (cons (gx#datum->syntax__0 '#f 'let*)
                       (cons (cons (cons (gx#datum->syntax__0 '#f 'super-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'optimizer-resolve-type)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L51705_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (gx#datum->syntax__0
                                                '#f
                                                'xfields)
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'and)
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'super-type)
                         (cons (cons (gx#datum->syntax__0 '#f 'alet)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'xfields)
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '!struct-type-xfields)
                                                             (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'super-type)
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        'fx+)
                                                       (cons (gx#datum->syntax__0
                                                              '#f
                                                              'xfields)
                                                             (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '!struct-type-fields)
                                 (cons (gx#datum->syntax__0 '#f 'super-type)
                                       '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'xtor)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'or)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L51703_ '()))
                               (cons (cons (gx#datum->syntax__0 '#f 'if)
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  'super-type)
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '!struct-type-ctor)
                                                             (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'super-type)
                           '()))
               (cons '#!void '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons (cons (gx#datum->syntax__0
                                          '#f
                                          'make-!struct-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'quote)
                                                     (cons _L51706_ '()))
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L51705_ '()))
                                                     (cons _L51704_
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'xfields)
                         (cons (gx#datum->syntax__0 '#f 'xtor)
                               (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                           (cons _L51701_ '()))
                                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '()))))))
          (if (gx#stx-pair? ___stx5334253343_)
              (let ((_e5158751738_ (gx#syntax-e ___stx5334253343_)))
                (let ((_tl5158951745_ (##cdr _e5158751738_))
                      (_hd5158851742_ (##car _e5158751738_)))
                  (if (gx#stx-pair? _tl5158951745_)
                      (let ((_e5159051748_ (gx#syntax-e _tl5158951745_)))
                        (let ((_tl5159251755_ (##cdr _e5159051748_))
                              (_hd5159151752_ (##car _e5159051748_)))
                          (if (gx#stx-pair? _tl5159251755_)
                              (let ((_e5159351758_
                                     (gx#syntax-e _tl5159251755_)))
                                (let ((_tl5159551765_ (##cdr _e5159351758_))
                                      (_hd5159451762_ (##car _e5159351758_)))
                                  (if (gx#stx-datum? _hd5159451762_)
                                      (let ((_e5159651768_
                                             (gx#stx-e _hd5159451762_)))
                                        (if (equal? _e5159651768_ '#f)
                                            (if (gx#stx-pair? _tl5159551765_)
                                                (let ((_e5159751772_
                                                       (gx#syntax-e
                                                        _tl5159551765_)))
                                                  (let ((_tl5159951779_
                                                         (##cdr _e5159751772_))
                                                        (_hd5159851776_
                                                         (##car _e5159751772_)))
                                                    (if (gx#stx-pair?
                                                         _tl5159951779_)
                                                        (let ((_e5160051782_
                                                               (gx#syntax-e
                                                                _tl5159951779_)))
                                                          (let ((_tl5160251789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e5160051782_))
                        (_hd5160151786_ (##car _e5160051782_)))
                    (if (gx#stx-pair? _tl5160251789_)
                        (let ((_e5160351792_ (gx#syntax-e _tl5160251789_)))
                          (let ((_tl5160551799_ (##cdr _e5160351792_))
                                (_hd5160451796_ (##car _e5160351792_)))
                            (if (gx#stx-null? _tl5160551799_)
                                (___kont5334553346_
                                 _hd5160451796_
                                 _hd5160151786_
                                 _hd5159851776_
                                 _hd5159151752_)
                                (_g5158151634_))))
                        (_g5158151634_))))
                (_g5158151634_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g5158151634_))
                                            (if (gx#stx-pair? _tl5159551765_)
                                                (let ((_e5162051671_
                                                       (gx#syntax-e
                                                        _tl5159551765_)))
                                                  (let ((_tl5162251678_
                                                         (##cdr _e5162051671_))
                                                        (_hd5162151675_
                                                         (##car _e5162051671_)))
                                                    (if (gx#stx-pair?
                                                         _tl5162251678_)
                                                        (let ((_e5162351681_
                                                               (gx#syntax-e
                                                                _tl5162251678_)))
                                                          (let ((_tl5162551688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e5162351681_))
                        (_hd5162451685_ (##car _e5162351681_)))
                    (if (gx#stx-pair? _tl5162551688_)
                        (let ((_e5162651691_ (gx#syntax-e _tl5162551688_)))
                          (let ((_tl5162851698_ (##cdr _e5162651691_))
                                (_hd5162751695_ (##car _e5162651691_)))
                            (if (gx#stx-null? _tl5162851698_)
                                (___kont5334753348_
                                 _hd5162751695_
                                 _hd5162451685_
                                 _hd5162151675_
                                 _hd5159451762_
                                 _hd5159151752_)
                                (_g5158151634_))))
                        (_g5158151634_))))
                (_g5158151634_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g5158151634_))))
                                      (if (gx#stx-pair? _tl5159551765_)
                                          (let ((_e5162051671_
                                                 (gx#syntax-e _tl5159551765_)))
                                            (let ((_tl5162251678_
                                                   (##cdr _e5162051671_))
                                                  (_hd5162151675_
                                                   (##car _e5162051671_)))
                                              (if (gx#stx-pair? _tl5162251678_)
                                                  (let ((_e5162351681_
                                                         (gx#syntax-e
                                                          _tl5162251678_)))
                                                    (let ((_tl5162551688_
                                                           (##cdr _e5162351681_))
                                                          (_hd5162451685_
                                                           (##car _e5162351681_)))
                                                      (if (gx#stx-pair?
                                                           _tl5162551688_)
                                                          (let ((_e5162651691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl5162551688_)))
                    (let ((_tl5162851698_ (##cdr _e5162651691_))
                          (_hd5162751695_ (##car _e5162651691_)))
                      (if (gx#stx-null? _tl5162851698_)
                          (___kont5334753348_
                           _hd5162751695_
                           _hd5162451685_
                           _hd5162151675_
                           _hd5159451762_
                           _hd5159151752_)
                          (_g5158151634_))))
                  (_g5158151634_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g5158151634_))))
                                          (_g5158151634_)))))
                              (_g5158151634_))))
                      (_g5158151634_))))
              (_g5158151634_))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx51834_)
      (let* ((_g5183851852_
              (lambda (_g5183951848_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5183951848_)))
             (_g5183751893_
              (lambda (_g5183951856_)
                (if (gx#stx-pair? _g5183951856_)
                    (let ((_e5184151859_ (gx#syntax-e _g5183951856_)))
                      (let ((_hd5184251863_ (##car _e5184151859_))
                            (_tl5184351866_ (##cdr _e5184151859_)))
                        (if (gx#stx-pair? _tl5184351866_)
                            (let ((_e5184451869_ (gx#syntax-e _tl5184351866_)))
                              (let ((_hd5184551873_ (##car _e5184451869_))
                                    (_tl5184651876_ (##cdr _e5184451869_)))
                                (if (gx#stx-null? _tl5184651876_)
                                    ((lambda (_L51879_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-pred)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L51879_ '()))
                                                   '())))
                                     _hd5184551873_)
                                    (_g5183851852_ _g5183951856_))))
                            (_g5183851852_ _g5183951856_))))
                    (_g5183851852_ _g5183951856_)))))
        (_g5183751893_ _$stx51834_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx51897_)
      (let* ((_g5190151915_
              (lambda (_g5190251911_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5190251911_)))
             (_g5190051956_
              (lambda (_g5190251919_)
                (if (gx#stx-pair? _g5190251919_)
                    (let ((_e5190451922_ (gx#syntax-e _g5190251919_)))
                      (let ((_hd5190551926_ (##car _e5190451922_))
                            (_tl5190651929_ (##cdr _e5190451922_)))
                        (if (gx#stx-pair? _tl5190651929_)
                            (let ((_e5190751932_ (gx#syntax-e _tl5190651929_)))
                              (let ((_hd5190851936_ (##car _e5190751932_))
                                    (_tl5190951939_ (##cdr _e5190751932_)))
                                (if (gx#stx-null? _tl5190951939_)
                                    ((lambda (_L51942_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-cons)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L51942_ '()))
                                                   '())))
                                     _hd5190851936_)
                                    (_g5190151915_ _g5190251919_))))
                            (_g5190151915_ _g5190251919_))))
                    (_g5190151915_ _g5190251919_)))))
        (_g5190051956_ _$stx51897_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx51960_)
      (let* ((___stx5343453435_ _$stx51960_)
             (_g5196551998_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5343453435_))))
        (let ((___kont5343753438_
               (lambda (_L52100_ _L52102_ _L52103_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L52103_ '()))
                             (cons _L52102_ (cons _L52100_ '()))))))
              (___kont5343953440_
               (lambda (_L52035_ _L52037_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L52037_ '()))
                             (cons _L52035_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5343453435_)
              (let ((_e5197052060_ (gx#syntax-e ___stx5343453435_)))
                (let ((_tl5197252067_ (##cdr _e5197052060_))
                      (_hd5197152064_ (##car _e5197052060_)))
                  (if (gx#stx-pair? _tl5197252067_)
                      (let ((_e5197352070_ (gx#syntax-e _tl5197252067_)))
                        (let ((_tl5197552077_ (##cdr _e5197352070_))
                              (_hd5197452074_ (##car _e5197352070_)))
                          (if (gx#stx-pair? _tl5197552077_)
                              (let ((_e5197652080_
                                     (gx#syntax-e _tl5197552077_)))
                                (let ((_tl5197852087_ (##cdr _e5197652080_))
                                      (_hd5197752084_ (##car _e5197652080_)))
                                  (if (gx#stx-pair? _tl5197852087_)
                                      (let ((_e5197952090_
                                             (gx#syntax-e _tl5197852087_)))
                                        (let ((_tl5198152097_
                                               (##cdr _e5197952090_))
                                              (_hd5198052094_
                                               (##car _e5197952090_)))
                                          (if (gx#stx-null? _tl5198152097_)
                                              (___kont5343753438_
                                               _hd5198052094_
                                               _hd5197752084_
                                               _hd5197452074_)
                                              (_g5196551998_))))
                                      (if (gx#stx-null? _tl5197852087_)
                                          (___kont5343953440_
                                           _hd5197752084_
                                           _hd5197452074_)
                                          (_g5196551998_)))))
                              (_g5196551998_))))
                      (_g5196551998_))))
              (_g5196551998_))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx52125_)
      (let* ((___stx5349053491_ _$stx52125_)
             (_g5213052163_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5349053491_))))
        (let ((___kont5349353494_
               (lambda (_L52265_ _L52267_ _L52268_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L52268_ '()))
                             (cons _L52267_ (cons _L52265_ '()))))))
              (___kont5349553496_
               (lambda (_L52200_ _L52202_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L52202_ '()))
                             (cons _L52200_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5349053491_)
              (let ((_e5213552225_ (gx#syntax-e ___stx5349053491_)))
                (let ((_tl5213752232_ (##cdr _e5213552225_))
                      (_hd5213652229_ (##car _e5213552225_)))
                  (if (gx#stx-pair? _tl5213752232_)
                      (let ((_e5213852235_ (gx#syntax-e _tl5213752232_)))
                        (let ((_tl5214052242_ (##cdr _e5213852235_))
                              (_hd5213952239_ (##car _e5213852235_)))
                          (if (gx#stx-pair? _tl5214052242_)
                              (let ((_e5214152245_
                                     (gx#syntax-e _tl5214052242_)))
                                (let ((_tl5214352252_ (##cdr _e5214152245_))
                                      (_hd5214252249_ (##car _e5214152245_)))
                                  (if (gx#stx-pair? _tl5214352252_)
                                      (let ((_e5214452255_
                                             (gx#syntax-e _tl5214352252_)))
                                        (let ((_tl5214652262_
                                               (##cdr _e5214452255_))
                                              (_hd5214552259_
                                               (##car _e5214452255_)))
                                          (if (gx#stx-null? _tl5214652262_)
                                              (___kont5349353494_
                                               _hd5214552259_
                                               _hd5214252249_
                                               _hd5213952239_)
                                              (_g5213052163_))))
                                      (if (gx#stx-null? _tl5214352252_)
                                          (___kont5349553496_
                                           _hd5214252249_
                                           _hd5213952239_)
                                          (_g5213052163_)))))
                              (_g5213052163_))))
                      (_g5213052163_))))
              (_g5213052163_))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx52290_)
      (let* ((___stx5354653547_ _$stx52290_)
             (_g5229652337_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5354653547_))))
        (let ((___kont5354953550_
               (lambda (_L52485_ _L52487_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L52487_ '()))
                                   (cons '#f
                                         (cons _L52485_
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L52485_ '()))
                                                     '()))))))))
              (___kont5355153552_
               (lambda (_L52417_ _L52419_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L52419_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L52417_ '()))
                                         '()))))))
              (___kont5355353554_
               (lambda (_L52364_ _L52366_)
                 (cons _L52366_ (cons _L52364_ (cons '#f '()))))))
          (if (gx#stx-pair? ___stx5354653547_)
              (let ((_e5230052441_ (gx#syntax-e ___stx5354653547_)))
                (let ((_tl5230252448_ (##cdr _e5230052441_))
                      (_hd5230152445_ (##car _e5230052441_)))
                  (if (gx#stx-pair? _tl5230252448_)
                      (let ((_e5230352451_ (gx#syntax-e _tl5230252448_)))
                        (let ((_tl5230552458_ (##cdr _e5230352451_))
                              (_hd5230452455_ (##car _e5230352451_)))
                          (if (gx#stx-pair? _tl5230552458_)
                              (let ((_e5230652461_
                                     (gx#syntax-e _tl5230552458_)))
                                (let ((_tl5230852468_ (##cdr _e5230652461_))
                                      (_hd5230752465_ (##car _e5230652461_)))
                                  (if (gx#stx-datum? _hd5230752465_)
                                      (let ((_e5230952471_
                                             (gx#stx-e _hd5230752465_)))
                                        (if (equal? _e5230952471_ 'inline:)
                                            (if (gx#stx-pair? _tl5230852468_)
                                                (let ((_e5231052475_
                                                       (gx#syntax-e
                                                        _tl5230852468_)))
                                                  (let ((_tl5231252482_
                                                         (##cdr _e5231052475_))
                                                        (_hd5231152479_
                                                         (##car _e5231052475_)))
                                                    (if (gx#stx-null?
                                                         _tl5231252482_)
                                                        (___kont5354953550_
                                                         _hd5231152479_
                                                         _hd5230452455_)
                                                        (_g5229652337_))))
                                                (if (gx#stx-null?
                                                     _tl5230852468_)
                                                    (___kont5355153552_
                                                     _hd5230752465_
                                                     _hd5230452455_)
                                                    (_g5229652337_)))
                                            (if (gx#stx-null? _tl5230852468_)
                                                (___kont5355153552_
                                                 _hd5230752465_
                                                 _hd5230452455_)
                                                (_g5229652337_))))
                                      (if (gx#stx-null? _tl5230852468_)
                                          (___kont5355153552_
                                           _hd5230752465_
                                           _hd5230452455_)
                                          (_g5229652337_)))))
                              (if (gx#stx-null? _tl5230552458_)
                                  (___kont5355353554_
                                   _hd5230452455_
                                   _hd5230152445_)
                                  (_g5229652337_)))))
                      (_g5229652337_))))
              (_g5229652337_))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx52509_)
      (let* ((_g5251352542_
              (lambda (_g5251452538_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5251452538_)))
             (_g5251252642_
              (lambda (_g5251452546_)
                (if (gx#stx-pair? _g5251452546_)
                    (let ((_e5251752549_ (gx#syntax-e _g5251452546_)))
                      (let ((_hd5251852553_ (##car _e5251752549_))
                            (_tl5251952556_ (##cdr _e5251752549_)))
                        (if (gx#stx-pair/null? _tl5251952556_)
                            (let ((_g53681_
                                   (gx#syntax-split-splice _tl5251952556_ '0)))
                              (begin
                                (let ((_g53682_
                                       (if (##values? _g53681_)
                                           (##vector-length _g53681_)
                                           1)))
                                  (if (not (##fx= _g53682_ 2))
                                      (error "Context expects 2 values"
                                             _g53682_)))
                                (let ((_target5252052559_
                                       (##vector-ref _g53681_ 0))
                                      (_tl5252252562_
                                       (##vector-ref _g53681_ 1)))
                                  (if (gx#stx-null? _tl5252252562_)
                                      (letrec ((_loop5252352565_
                                                (lambda (_hd5252152569_
                                                         _dispatch5252752572_
                                                         _arity5252852574_)
                                                  (if (gx#stx-pair?
                                                       _hd5252152569_)
                                                      (let ((_e5252452577_
                                                             (gx#syntax-e
                                                              _hd5252152569_)))
                                                        (let ((_lp-hd5252552581_
                                                               (##car _e5252452577_))
                                                              (_lp-tl5252652584_
                                                               (##cdr _e5252452577_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5252552581_)
                                                              (let ((_e5253152587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5252552581_)))
                        (let ((_hd5253252591_ (##car _e5253152587_))
                              (_tl5253352594_ (##cdr _e5253152587_)))
                          (if (gx#stx-pair? _tl5253352594_)
                              (let ((_e5253452597_
                                     (gx#syntax-e _tl5253352594_)))
                                (let ((_hd5253552601_ (##car _e5253452597_))
                                      (_tl5253652604_ (##cdr _e5253452597_)))
                                  (if (gx#stx-null? _tl5253652604_)
                                      (_loop5252352565_
                                       _lp-tl5252652584_
                                       (cons _hd5253552601_
                                             _dispatch5252752572_)
                                       (cons _hd5253252591_ _arity5252852574_))
                                      (_g5251352542_ _g5251452546_))))
                              (_g5251352542_ _g5251452546_))))
                      (_g5251352542_ _g5251452546_))))
              (let ((_dispatch5252952607_ (reverse _dispatch5252752572_))
                    (_arity5253052610_ (reverse _arity5252852574_)))
                ((lambda (_L52613_ _L52615_)
                   (cons (gx#datum->syntax__0 '#f 'make-!case-lambda)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons (gx#datum->syntax__0
                                            '#f
                                            'case-lambda)
                                           '()))
                               (cons (cons (gx#datum->syntax__0 '#f '@list)
                                           (begin
                                             (gx#syntax-check-splice-targets
                                              _L52613_
                                              _L52615_)
                                             (foldr2 (lambda (_g5263052634_
                                                              _g5263152637_
                                                              _g5263252639_)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@lambda)
                           (cons _g5263152637_ (cons _g5263052634_ '())))
                     _g5263252639_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _L52613_
                                                     _L52615_)))
                                     '()))))
                 _dispatch5252952607_
                 _arity5253052610_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5252352565_
                                         _target5252052559_
                                         '()
                                         '()))
                                      (_g5251352542_ _g5251452546_)))))
                            (_g5251352542_ _g5251452546_))))
                    (_g5251352542_ _g5251452546_)))))
        (_g5251252642_ _$stx52509_))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx52647_)
      (let* ((_g5265152669_
              (lambda (_g5265252665_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5265252665_)))
             (_g5265052724_
              (lambda (_g5265252673_)
                (if (gx#stx-pair? _g5265252673_)
                    (let ((_e5265552676_ (gx#syntax-e _g5265252673_)))
                      (let ((_hd5265652680_ (##car _e5265552676_))
                            (_tl5265752683_ (##cdr _e5265552676_)))
                        (if (gx#stx-pair? _tl5265752683_)
                            (let ((_e5265852686_ (gx#syntax-e _tl5265752683_)))
                              (let ((_hd5265952690_ (##car _e5265852686_))
                                    (_tl5266052693_ (##cdr _e5265852686_)))
                                (if (gx#stx-pair? _tl5266052693_)
                                    (let ((_e5266152696_
                                           (gx#syntax-e _tl5266052693_)))
                                      (let ((_hd5266252700_
                                             (##car _e5266152696_))
                                            (_tl5266352703_
                                             (##cdr _e5266152696_)))
                                        (if (gx#stx-null? _tl5266352703_)
                                            ((lambda (_L52706_ _L52708_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda) '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L52708_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L52706_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5266252700_
                                             _hd5265952690_)
                                            (_g5265152669_ _g5265252673_))))
                                    (_g5265152669_ _g5265252673_))))
                            (_g5265152669_ _g5265252673_))))
                    (_g5265152669_ _g5265252673_)))))
        (_g5265052724_ _$stx52647_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx52728_)
      (let* ((_g5273252750_
              (lambda (_g5273352746_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5273352746_)))
             (_g5273152805_
              (lambda (_g5273352754_)
                (if (gx#stx-pair? _g5273352754_)
                    (let ((_e5273652757_ (gx#syntax-e _g5273352754_)))
                      (let ((_hd5273752761_ (##car _e5273652757_))
                            (_tl5273852764_ (##cdr _e5273652757_)))
                        (if (gx#stx-pair? _tl5273852764_)
                            (let ((_e5273952767_ (gx#syntax-e _tl5273852764_)))
                              (let ((_hd5274052771_ (##car _e5273952767_))
                                    (_tl5274152774_ (##cdr _e5273952767_)))
                                (if (gx#stx-pair? _tl5274152774_)
                                    (let ((_e5274252777_
                                           (gx#syntax-e _tl5274152774_)))
                                      (let ((_hd5274352781_
                                             (##car _e5274252777_))
                                            (_tl5274452784_
                                             (##cdr _e5274252777_)))
                                        (if (gx#stx-null? _tl5274452784_)
                                            ((lambda (_L52787_ _L52789_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda-primary)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda-dispatch)
                               '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L52789_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L52787_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5274352781_
                                             _hd5274052771_)
                                            (_g5273252750_ _g5273352754_))))
                                    (_g5273252750_ _g5273352754_))))
                            (_g5273252750_ _g5273352754_))))
                    (_g5273252750_ _g5273352754_)))))
        (_g5273152805_ _$stx52728_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx52809_)
      (let* ((___stx5362453625_ _$stx52809_)
             (_g5281452849_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5362453625_))))
        (let ((___kont5362753628_
               (lambda (_L52971_ _L52973_)
                 (cons (gx#datum->syntax__0 '#f 'declare-type)
                       (cons _L52973_
                             (cons (cons (gx#datum->syntax__0 '#f '@lambda)
                                         (cons _L52971_ '()))
                                   '())))))
              (___kont5362953630_
               (lambda (_L52906_ _L52908_)
                 (cons (gx#datum->syntax__0 '#f 'declare-type)
                       (cons _L52908_
                             (cons (cons (gx#datum->syntax__0
                                          '#f
                                          '@case-lambda)
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g5292552928_
                                                            _g5292652931_)
                                                     (cons (cons _g5292552928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '#f '()))
                   _g5292652931_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _L52906_)))
                                   '()))))))
          (let ((___match5367353674_
                 (lambda (_e5282952856_
                          _hd5283052860_
                          _tl5283152863_
                          _e5283252866_
                          _hd5283352870_
                          _tl5283452873_
                          ___splice5363153632_
                          _target5283552876_
                          _tl5283752879_)
                   (letrec ((_loop5283852882_
                             (lambda (_hd5283652886_ _arity5284252889_)
                               (if (gx#stx-pair? _hd5283652886_)
                                   (let ((_e5283952892_
                                          (gx#syntax-e _hd5283652886_)))
                                     (let ((_lp-tl5284152899_
                                            (##cdr _e5283952892_))
                                           (_lp-hd5284052896_
                                            (##car _e5283952892_)))
                                       (_loop5283852882_
                                        _lp-tl5284152899_
                                        (cons _lp-hd5284052896_
                                              _arity5284252889_))))
                                   (let ((_arity5284352902_
                                          (reverse _arity5284252889_)))
                                     (___kont5362953630_
                                      _arity5284352902_
                                      _hd5283352870_))))))
                     (_loop5283852882_ _target5283552876_ '())))))
            (if (gx#stx-pair? ___stx5362453625_)
                (let ((_e5281852941_ (gx#syntax-e ___stx5362453625_)))
                  (let ((_tl5282052948_ (##cdr _e5281852941_))
                        (_hd5281952945_ (##car _e5281852941_)))
                    (if (gx#stx-pair? _tl5282052948_)
                        (let ((_e5282152951_ (gx#syntax-e _tl5282052948_)))
                          (let ((_tl5282352958_ (##cdr _e5282152951_))
                                (_hd5282252955_ (##car _e5282152951_)))
                            (if (gx#stx-pair? _tl5282352958_)
                                (let ((_e5282452961_
                                       (gx#syntax-e _tl5282352958_)))
                                  (let ((_tl5282652968_ (##cdr _e5282452961_))
                                        (_hd5282552965_ (##car _e5282452961_)))
                                    (if (gx#stx-null? _tl5282652968_)
                                        (___kont5362753628_
                                         _hd5282552965_
                                         _hd5282252955_)
                                        (if (gx#stx-pair/null? _tl5282352958_)
                                            (let ((___splice5363153632_
                                                   (gx#syntax-split-splice
                                                    _tl5282352958_
                                                    '0)))
                                              (let ((_tl5283752879_
                                                     (##vector-ref
                                                      ___splice5363153632_
                                                      '1))
                                                    (_target5283552876_
                                                     (##vector-ref
                                                      ___splice5363153632_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl5283752879_)
                                                    (___match5367353674_
                                                     _e5281852941_
                                                     _hd5281952945_
                                                     _tl5282052948_
                                                     _e5282152951_
                                                     _hd5282252955_
                                                     _tl5282352958_
                                                     ___splice5363153632_
                                                     _target5283552876_
                                                     _tl5283752879_)
                                                    (_g5281452849_))))
                                            (_g5281452849_)))))
                                (if (gx#stx-pair/null? _tl5282352958_)
                                    (let ((___splice5363153632_
                                           (gx#syntax-split-splice
                                            _tl5282352958_
                                            '0)))
                                      (let ((_tl5283752879_
                                             (##vector-ref
                                              ___splice5363153632_
                                              '1))
                                            (_target5283552876_
                                             (##vector-ref
                                              ___splice5363153632_
                                              '0)))
                                        (if (gx#stx-null? _tl5283752879_)
                                            (___match5367353674_
                                             _e5281852941_
                                             _hd5281952945_
                                             _tl5282052948_
                                             _e5282152951_
                                             _hd5282252955_
                                             _tl5282352958_
                                             ___splice5363153632_
                                             _target5283552876_
                                             _tl5283752879_)
                                            (_g5281452849_))))
                                    (_g5281452849_)))))
                        (_g5281452849_))))
                (_g5281452849_)))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx52993_)
      (let* ((_g5299753032_
              (lambda (_g5299853028_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5299853028_)))
             (_g5299653160_
              (lambda (_g5299853036_)
                (if (gx#stx-pair? _g5299853036_)
                    (let ((_e5300153039_ (gx#syntax-e _g5299853036_)))
                      (let ((_hd5300253043_ (##car _e5300153039_))
                            (_tl5300353046_ (##cdr _e5300153039_)))
                        (if (gx#stx-pair/null? _tl5300353046_)
                            (let ((_g53683_
                                   (gx#syntax-split-splice _tl5300353046_ '0)))
                              (begin
                                (let ((_g53684_
                                       (if (##values? _g53683_)
                                           (##vector-length _g53683_)
                                           1)))
                                  (if (not (##fx= _g53684_ 2))
                                      (error "Context expects 2 values"
                                             _g53684_)))
                                (let ((_target5300453049_
                                       (##vector-ref _g53683_ 0))
                                      (_tl5300653052_
                                       (##vector-ref _g53683_ 1)))
                                  (if (gx#stx-null? _tl5300653052_)
                                      (letrec ((_loop5300753055_
                                                (lambda (_hd5300553059_
                                                         _arity5301153062_
                                                         _prim5301253064_)
                                                  (if (gx#stx-pair?
                                                       _hd5300553059_)
                                                      (let ((_e5300853067_
                                                             (gx#syntax-e
                                                              _hd5300553059_)))
                                                        (let ((_lp-hd5300953071_
                                                               (##car _e5300853067_))
                                                              (_lp-tl5301053074_
                                                               (##cdr _e5300853067_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5300953071_)
                                                              (let ((_e5301553077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5300953071_)))
                        (let ((_hd5301653081_ (##car _e5301553077_))
                              (_tl5301753084_ (##cdr _e5301553077_)))
                          (if (gx#stx-pair/null? _tl5301753084_)
                              (let ((_g53685_
                                     (gx#syntax-split-splice
                                      _tl5301753084_
                                      '0)))
                                (begin
                                  (let ((_g53686_
                                         (if (##values? _g53685_)
                                             (##vector-length _g53685_)
                                             1)))
                                    (if (not (##fx= _g53686_ 2))
                                        (error "Context expects 2 values"
                                               _g53686_)))
                                  (let ((_target5301853087_
                                         (##vector-ref _g53685_ 0))
                                        (_tl5302053090_
                                         (##vector-ref _g53685_ 1)))
                                    (if (gx#stx-null? _tl5302053090_)
                                        (letrec ((_loop5302153093_
                                                  (lambda (_hd5301953097_
                                                           _arity5302553100_)
                                                    (if (gx#stx-pair?
                                                         _hd5301953097_)
                                                        (let ((_e5302253103_
                                                               (gx#syntax-e
                                                                _hd5301953097_)))
                                                          (let ((_lp-hd5302353107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e5302253103_))
                        (_lp-tl5302453110_ (##cdr _e5302253103_)))
                    (_loop5302153093_
                     _lp-tl5302453110_
                     (cons _lp-hd5302353107_ _arity5302553100_))))
                (let ((_arity5302653113_ (reverse _arity5302553100_)))
                  (_loop5300753055_
                   _lp-tl5301053074_
                   (cons _arity5302653113_ _arity5301153062_)
                   (cons _hd5301653081_ _prim5301253064_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop5302153093_
                                           _target5301853087_
                                           '()))
                                        (_g5299753032_ _g5299853036_)))))
                              (_g5299753032_ _g5299853036_))))
                      (_g5299753032_ _g5299853036_))))
              (let ((_arity5301353117_ (reverse _arity5301153062_))
                    (_prim5301453120_ (reverse _prim5301253064_)))
                ((lambda (_L53123_ _L53125_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L53123_ _L53125_)
                           (foldr2 (lambda (_g5314053146_
                                            _g5314153149_
                                            _g5314253151_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-primitive)
                                                 (cons _g5314153149_
                                                       (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g5314353154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g5314453157_)
                           (cons _g5314353154_ _g5314453157_))
                         '()
                         _g5314053146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g5314253151_))
                                   '()
                                   _L53123_
                                   _L53125_))))
                 _arity5301353117_
                 _prim5301453120_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5300753055_
                                         _target5300453049_
                                         '()
                                         '()))
                                      (_g5299753032_ _g5299853036_)))))
                            (_g5299753032_ _g5299853036_))))
                    (_g5299753032_ _g5299853036_)))))
        (_g5299653160_ _$stx52993_)))))
