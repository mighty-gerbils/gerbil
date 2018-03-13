(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g35149_|
    (gx#make-syntax-quote '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g35150_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g35198_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g35199_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g35200_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g35215_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g35216_|
    (gx#make-syntax-quote 'unquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g35219_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g35220_|
    (gx#make-syntax-quote
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g35221_|
    (gx#make-syntax-quote 'unquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g35222_|
    (gx#make-syntax-quote 'quasiquote #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g35223_|
    (gx#make-syntax-quote '<...> #f (gx#current-expander-context) '()))
  (define |gerbil/core$<sugar>$<sugar:2>[1]#_g35224_|
    (gx#make-syntax-quote '<> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#lambda|
      (lambda (_stx4925_)
        (letrec ((_simple-lambda?4928_
                  (lambda (_hd8313_) (gx#stx-andmap gx#identifier? _hd8313_)))
                 (_opt-lambda?4930_
                  (lambda (_hd8165_)
                    (let _lp8168_ ((_rest8171_ _hd8165_) (_opt?8173_ '#f))
                      (let* ((_g81768188_
                              (lambda (_g81778184_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g81778184_)))
                             (_g81758203_
                              (lambda (_g81778192_)
                                ((lambda ()
                                   (if _opt?8173_
                                       (let ((_$e8199_
                                              (gx#stx-null? _rest8171_)))
                                         (if _$e8199_
                                             _$e8199_
                                             (gx#identifier? _rest8171_)))
                                       '#f)))))
                             (_g81748309_
                              (lambda (_g81778207_)
                                (if (gx#stx-pair? _g81778207_)
                                    (let ((_e81808210_
                                           (gx#syntax-e _g81778207_)))
                                      (let ((_hd81818214_ (##car _e81808210_))
                                            (_tl81828217_ (##cdr _e81808210_)))
                                        ((lambda (_L8220_ _L8222_)
                                           (let* ((_g82388252_
                                                   (lambda (_g82398248_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g82398248_)))
                                                  (_g82378263_
                                                   (lambda (_g82398256_)
                                                     ((lambda ()
                                                        (if (gx#identifier?
                                                             _L8222_)
                                                            (if (not _opt?8173_)
                                                                (_lp8168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L8220_
                         '#f)
                        '#f)
                    '#f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g82368305_
                                                   (lambda (_g82398267_)
                                                     (if (gx#stx-pair?
                                                          _g82398267_)
                                                         (let ((_e82418270_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g82398267_)))
                   (let ((_hd82428274_ (##car _e82418270_))
                         (_tl82438277_ (##cdr _e82418270_)))
                     (if (gx#stx-pair? _tl82438277_)
                         (let ((_e82448280_ (gx#syntax-e _tl82438277_)))
                           (let ((_hd82458284_ (##car _e82448280_))
                                 (_tl82468287_ (##cdr _e82448280_)))
                             (if (gx#stx-null? _tl82468287_)
                                 ((lambda (_L8290_)
                                    (if (gx#identifier? _L8290_)
                                        (_lp8168_ _L8220_ '#t)
                                        (_g82378263_ _g82398267_)))
                                  _hd82428274_)
                                 (_g82378263_ _g82398267_))))
                         (_g82378263_ _g82398267_))))
                 (_g82378263_ _g82398267_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g82368305_ _L8222_)))
                                         _tl81828217_
                                         _hd81818214_)))
                                    (_g81758203_ _g81778207_)))))
                        (_g81748309_ _rest8171_)))))
                 (_opt-lambda-split4931_
                  (lambda (_hd8017_)
                    (let _lp8020_ ((_rest8023_ _hd8017_)
                                   (_pre8025_ '())
                                   (_opt8026_ '()))
                      (let* ((_g80298041_
                              (lambda (_g80308037_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g80308037_)))
                             (_g80288052_
                              (lambda (_g80308045_)
                                ((lambda ()
                                   (values (reverse _pre8025_)
                                           (reverse _opt8026_)
                                           (if (gx#identifier? _rest8023_)
                                               (_generate-bind4934_ _rest8023_)
                                               _rest8023_))))))
                             (_g80278161_
                              (lambda (_g80308056_)
                                (if (gx#stx-pair? _g80308056_)
                                    (let ((_e80338059_
                                           (gx#syntax-e _g80308056_)))
                                      (let ((_hd80348063_ (##car _e80338059_))
                                            (_tl80358066_ (##cdr _e80338059_)))
                                        ((lambda (_L8069_ _L8071_)
                                           (let* ((_g80878102_
                                                   (lambda (_g80888098_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g80888098_)))
                                                  (_g80868113_
                                                   (lambda (_g80888106_)
                                                     ((lambda ()
                                                        (_lp8020_
                                                         _L8069_
                                                         (cons (_generate-bind4934_
                                                                _L8071_)
                                                               _pre8025_)
                                                         _opt8026_)))))
                                                  (_g80858157_
                                                   (lambda (_g80888117_)
                                                     (if (gx#stx-pair?
                                                          _g80888117_)
                                                         (let ((_e80918120_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g80888117_)))
                   (let ((_hd80928124_ (##car _e80918120_))
                         (_tl80938127_ (##cdr _e80918120_)))
                     (if (gx#stx-pair? _tl80938127_)
                         (let ((_e80948130_ (gx#syntax-e _tl80938127_)))
                           (let ((_hd80958134_ (##car _e80948130_))
                                 (_tl80968137_ (##cdr _e80948130_)))
                             (if (gx#stx-null? _tl80968137_)
                                 ((lambda (_L8140_ _L8142_)
                                    (_lp8020_
                                     _L8069_
                                     _pre8025_
                                     (cons (cons (_generate-bind4934_ _L8142_)
                                                 _L8140_)
                                           _opt8026_)))
                                  _hd80958134_
                                  _hd80928124_)
                                 (_g80868113_ _g80888117_))))
                         (_g80868113_ _g80888117_))))
                 (_g80868113_ _g80888117_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g80858157_ _L8071_)))
                                         _tl80358066_
                                         _hd80348063_)))
                                    (_g80288052_ _g80308056_)))))
                        (_g80278161_ _rest8023_)))))
                 (_kw-lambda?4932_
                  (lambda (_hd7691_)
                    (let _lp7694_ ((_rest7697_ _hd7691_)
                                   (_opt?7699_ '#f)
                                   (_key?7700_ '#f))
                      (let* ((_g77057734_
                              (lambda (_g77067730_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g77067730_)))
                             (_g77047749_
                              (lambda (_g77067738_)
                                ((lambda ()
                                   (if _key?7700_
                                       (let ((_$e7745_
                                              (gx#stx-null? _rest7697_)))
                                         (if _$e7745_
                                             _$e7745_
                                             (gx#identifier? _rest7697_)))
                                       '#f)))))
                             (_g77037855_
                              (lambda (_g77067753_)
                                (if (gx#stx-pair? _g77067753_)
                                    (let ((_e77267756_
                                           (gx#syntax-e _g77067753_)))
                                      (let ((_hd77277760_ (##car _e77267756_))
                                            (_tl77287763_ (##cdr _e77267756_)))
                                        ((lambda (_L7766_ _L7768_)
                                           (let* ((_g77847798_
                                                   (lambda (_g77857794_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g77857794_)))
                                                  (_g77837809_
                                                   (lambda (_g77857802_)
                                                     ((lambda ()
                                                        (if (gx#identifier?
                                                             _L7768_)
                                                            (if (not _opt?7699_)
                                                                (_lp7694_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L7766_
                         '#f
                         _key?7700_)
                        '#f)
                    '#f)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g77827851_
                                                   (lambda (_g77857813_)
                                                     (if (gx#stx-pair?
                                                          _g77857813_)
                                                         (let ((_e77877816_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g77857813_)))
                   (let ((_hd77887820_ (##car _e77877816_))
                         (_tl77897823_ (##cdr _e77877816_)))
                     (if (gx#stx-pair? _tl77897823_)
                         (let ((_e77907826_ (gx#syntax-e _tl77897823_)))
                           (let ((_hd77917830_ (##car _e77907826_))
                                 (_tl77927833_ (##cdr _e77907826_)))
                             (if (gx#stx-null? _tl77927833_)
                                 ((lambda (_L7836_)
                                    (if (gx#identifier? _L7836_)
                                        (_lp7694_ _L7766_ '#t _key?7700_)
                                        '#f))
                                  _hd77887820_)
                                 (_g77837809_ _g77857813_))))
                         (_g77837809_ _g77857813_))))
                 (_g77837809_ _g77857813_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g77827851_ _L7768_)))
                                         _tl77287763_
                                         _hd77277760_)))
                                    (_g77047749_ _g77067753_))))
                             (_g77027897_
                              (lambda (_g77067859_)
                                (if (gx#stx-pair? _g77067859_)
                                    (let ((_e77187862_
                                           (gx#syntax-e _g77067859_)))
                                      (let ((_hd77197866_ (##car _e77187862_))
                                            (_tl77207869_ (##cdr _e77187862_)))
                                        (if (gx#stx-datum? _hd77197866_)
                                            (if (equal? (gx#stx-e _hd77197866_)
                                                        '#!key)
                                                (if (gx#stx-pair? _tl77207869_)
                                                    (let ((_e77217872_
                                                           (gx#syntax-e
                                                            _tl77207869_)))
                                                      (let ((_hd77227876_
                                                             (##car _e77217872_))
                                                            (_tl77237879_
                                                             (##cdr _e77217872_)))
                                                        ((lambda (_L7882_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7884_)
                   (if (gx#identifier? _L7884_)
                       (_lp7694_ _L7882_ _opt?7699_ '#t)
                       '#f))
                 _tl77237879_
                 _hd77227876_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g77037855_ _g77067859_))
                                                (_g77037855_ _g77067859_))
                                            (_g77037855_ _g77067859_))))
                                    (_g77037855_ _g77067859_))))
                             (_g77018013_
                              (lambda (_g77067901_)
                                (if (gx#stx-pair? _g77067901_)
                                    (let ((_e77107904_
                                           (gx#syntax-e _g77067901_)))
                                      (let ((_hd77117908_ (##car _e77107904_))
                                            (_tl77127911_ (##cdr _e77107904_)))
                                        (if (gx#stx-pair? _tl77127911_)
                                            (let ((_e77137914_
                                                   (gx#syntax-e _tl77127911_)))
                                              (let ((_hd77147918_
                                                     (##car _e77137914_))
                                                    (_tl77157921_
                                                     (##cdr _e77137914_)))
                                                ((lambda (_L7924_
                                                          _L7926_
                                                          _L7927_)
                                                   (if (gx#stx-keyword?
                                                        _L7927_)
                                                       (let* ((_g79427956_
                                                               (lambda (_g79437952_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g79437952_)))
                      (_g79417967_
                       (lambda (_g79437960_)
                         ((lambda ()
                            (if (gx#identifier? _L7926_)
                                (_lp7694_ _L7924_ _opt?7699_ '#t)
                                '#f)))))
                      (_g79408009_
                       (lambda (_g79437971_)
                         (if (gx#stx-pair? _g79437971_)
                             (let ((_e79457974_ (gx#syntax-e _g79437971_)))
                               (let ((_hd79467978_ (##car _e79457974_))
                                     (_tl79477981_ (##cdr _e79457974_)))
                                 (if (gx#stx-pair? _tl79477981_)
                                     (let ((_e79487984_
                                            (gx#syntax-e _tl79477981_)))
                                       (let ((_hd79497988_ (##car _e79487984_))
                                             (_tl79507991_
                                              (##cdr _e79487984_)))
                                         (if (gx#stx-null? _tl79507991_)
                                             ((lambda (_L7994_)
                                                (if (gx#identifier? _L7994_)
                                                    (_lp7694_
                                                     _L7924_
                                                     _opt?7699_
                                                     '#t)
                                                    '#f))
                                              _hd79467978_)
                                             (_g79417967_ _g79437971_))))
                                     (_g79417967_ _g79437971_))))
                             (_g79417967_ _g79437971_)))))
                 (_g79408009_ _L7926_))
               (_g77027897_ _g77067901_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _tl77157921_
                                                 _hd77147918_
                                                 _hd77117908_)))
                                            (_g77027897_ _g77067901_))))
                                    (_g77027897_ _g77067901_)))))
                        (_g77018013_ _rest7697_)))))
                 (_kw-lambda-split4933_
                  (lambda (_hd7430_)
                    (let _lp7433_ ((_rest7436_ _hd7430_)
                                   (_kwvar7438_ '#f)
                                   (_kwargs7439_ '())
                                   (_args7440_ '()))
                      (let* ((_g74457474_
                              (lambda (_g74467470_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g74467470_)))
                             (_g74447485_
                              (lambda (_g74467478_)
                                ((lambda ()
                                   (values _kwvar7438_
                                           (reverse _kwargs7439_)
                                           (foldl cons
                                                  _rest7436_
                                                  _args7440_))))))
                             (_g74437519_
                              (lambda (_g74467489_)
                                (if (gx#stx-pair? _g74467489_)
                                    (let ((_e74667492_
                                           (gx#syntax-e _g74467489_)))
                                      (let ((_hd74677496_ (##car _e74667492_))
                                            (_tl74687499_ (##cdr _e74667492_)))
                                        ((lambda (_L7502_ _L7504_)
                                           (_lp7433_
                                            _L7502_
                                            _kwvar7438_
                                            _kwargs7439_
                                            (cons _L7504_ _args7440_)))
                                         _tl74687499_
                                         _hd74677496_)))
                                    (_g74447485_ _g74467489_))))
                             (_g74427561_
                              (lambda (_g74467523_)
                                (if (gx#stx-pair? _g74467523_)
                                    (let ((_e74587526_
                                           (gx#syntax-e _g74467523_)))
                                      (let ((_hd74597530_ (##car _e74587526_))
                                            (_tl74607533_ (##cdr _e74587526_)))
                                        (if (gx#stx-datum? _hd74597530_)
                                            (if (equal? (gx#stx-e _hd74597530_)
                                                        '#!key)
                                                (if (gx#stx-pair? _tl74607533_)
                                                    (let ((_e74617536_
                                                           (gx#syntax-e
                                                            _tl74607533_)))
                                                      (let ((_hd74627540_
                                                             (##car _e74617536_))
                                                            (_tl74637543_
                                                             (##cdr _e74617536_)))
                                                        ((lambda (_L7546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L7548_)
                   (if _kwvar7438_
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; duplicate #!key argument"
                        _stx4925_
                        _hd7430_
                        _L7548_)
                       (_lp7433_
                        _L7546_
                        (_generate-bind4934_ _L7548_)
                        _kwargs7439_
                        _args7440_)))
                 _tl74637543_
                 _hd74627540_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g74437519_ _g74467523_))
                                                (_g74437519_ _g74467523_))
                                            (_g74437519_ _g74467523_))))
                                    (_g74437519_ _g74467523_))))
                             (_g74417687_
                              (lambda (_g74467565_)
                                (if (gx#stx-pair? _g74467565_)
                                    (let ((_e74507568_
                                           (gx#syntax-e _g74467565_)))
                                      (let ((_hd74517572_ (##car _e74507568_))
                                            (_tl74527575_ (##cdr _e74507568_)))
                                        (if (gx#stx-pair? _tl74527575_)
                                            (let ((_e74537578_
                                                   (gx#syntax-e _tl74527575_)))
                                              (let ((_hd74547582_
                                                     (##car _e74537578_))
                                                    (_tl74557585_
                                                     (##cdr _e74537578_)))
                                                ((lambda (_L7588_
                                                          _L7590_
                                                          _L7591_)
                                                   (if (gx#stx-keyword?
                                                        _L7591_)
                                                       (let ((_key7605_
                                                              (gx#stx-e
                                                               _L7591_)))
                                                         (if (find (lambda (_kwarg7608_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (eq? _key7605_ (car _kwarg7608_)))
                           _kwargs7439_)
                     (gx#raise-syntax-error
                      '#f
                      '"Bad syntax; duplicate keyword argument"
                      _stx4925_
                      _hd7430_
                      _key7605_)
                     (let* ((_g76127627_
                             (lambda (_g76137623_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g76137623_)))
                            (_g76117638_
                             (lambda (_g76137631_)
                               ((lambda ()
                                  (_lp7433_
                                   _L7588_
                                   _kwvar7438_
                                   (cons (list _key7605_
                                               (_generate-bind4934_ _L7590_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'error)
                                                     (cons '"Missing required keyword argument"
                                                           (cons _L7591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _kwargs7439_)
                                   _args7440_)))))
                            (_g76107683_
                             (lambda (_g76137642_)
                               (if (gx#stx-pair? _g76137642_)
                                   (let ((_e76167645_
                                          (gx#syntax-e _g76137642_)))
                                     (let ((_hd76177649_ (##car _e76167645_))
                                           (_tl76187652_ (##cdr _e76167645_)))
                                       (if (gx#stx-pair? _tl76187652_)
                                           (let ((_e76197655_
                                                  (gx#syntax-e _tl76187652_)))
                                             (let ((_hd76207659_
                                                    (##car _e76197655_))
                                                   (_tl76217662_
                                                    (##cdr _e76197655_)))
                                               (if (gx#stx-null? _tl76217662_)
                                                   ((lambda (_L7665_ _L7667_)
                                                      (_lp7433_
                                                       _L7588_
                                                       _kwvar7438_
                                                       (cons (list _key7605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_generate-bind4934_ _L7667_)
                           _L7665_)
                     _kwargs7439_)
               _args7440_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd76207659_
                                                    _hd76177649_)
                                                   (_g76117638_ _g76137642_))))
                                           (_g76117638_ _g76137642_))))
                                   (_g76117638_ _g76137642_)))))
                       (_g76107683_ _L7590_))))
               (_g74427561_ _g74467565_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _tl74557585_
                                                 _hd74547582_
                                                 _hd74517572_)))
                                            (_g74427561_ _g74467565_))))
                                    (_g74427561_ _g74467565_)))))
                        (_g74417687_ _rest7436_)))))
                 (_generate-bind4934_
                  (lambda (_e7427_)
                    (if (gx#underscore? _e7427_)
                        (gx#genident _e7427_)
                        _e7427_)))
                 (_check-duplicate-bindings4935_
                  (lambda (_hd7124_)
                    (letrec ((_cons-id7127_
                              (lambda (_id7423_ _ids7425_)
                                (if (gx#underscore? _id7423_)
                                    _ids7425_
                                    (cons _id7423_ _ids7425_)))))
                      (let _lp7130_ ((_rest7133_ _hd7124_) (_ids7135_ '()))
                        (let* ((_g71387150_
                                (lambda (_g71397146_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g71397146_)))
                               (_g71377161_
                                (lambda (_g71397154_)
                                  ((lambda ()
                                     (gx#check-duplicate-identifiers
                                      (if (gx#stx-null? _rest7133_)
                                          _ids7135_
                                          (_cons-id7127_ _rest7133_ _ids7135_))
                                      _stx4925_)))))
                               (_g71367419_
                                (lambda (_g71397165_)
                                  (if (gx#stx-pair? _g71397165_)
                                      (let ((_e71427168_
                                             (gx#syntax-e _g71397165_)))
                                        (let ((_hd71437172_
                                               (##car _e71427168_))
                                              (_tl71447175_
                                               (##cdr _e71427168_)))
                                          ((lambda (_L7178_ _L7180_)
                                             (if (gx#identifier? _L7180_)
                                                 (_lp7130_
                                                  _L7178_
                                                  (_cons-id7127_
                                                   _L7180_
                                                   _ids7135_))
                                                 (if (gx#stx-pair? _L7180_)
                                                     (let* ((_g71967210_
                                                             (lambda (_g71977206_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g71977206_)))
                                                            (_g71957251_
                                                             (lambda (_g71977214_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g71977214_)
                           (let ((_e71997217_ (gx#syntax-e _g71977214_)))
                             (let ((_hd72007221_ (##car _e71997217_))
                                   (_tl72017224_ (##cdr _e71997217_)))
                               (if (gx#stx-pair? _tl72017224_)
                                   (let ((_e72027227_
                                          (gx#syntax-e _tl72017224_)))
                                     (let ((_hd72037231_ (##car _e72027227_))
                                           (_tl72047234_ (##cdr _e72027227_)))
                                       (if (gx#stx-null? _tl72047234_)
                                           ((lambda (_L7237_)
                                              (_lp7130_
                                               _L7178_
                                               (_cons-id7127_
                                                _L7237_
                                                _ids7135_)))
                                            _hd72007221_)
                                           (_g71967210_ _g71977214_))))
                                   (_g71967210_ _g71977214_))))
                           (_g71967210_ _g71977214_)))))
               (_g71957251_ _L7180_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-keyword?
                                                          _L7180_)
                                                         (let* ((_g72557267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g72567263_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g72567263_)))
                        (_g72547369_
                         (lambda (_g72567271_)
                           (if (gx#stx-pair? _g72567271_)
                               (let ((_e72597274_ (gx#syntax-e _g72567271_)))
                                 (let ((_hd72607278_ (##car _e72597274_))
                                       (_tl72617281_ (##cdr _e72597274_)))
                                   ((lambda (_L7284_ _L7286_)
                                      (let* ((_g72987312_
                                              (lambda (_g72997308_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g72997308_)))
                                             (_g72977323_
                                              (lambda (_g72997316_)
                                                ((lambda ()
                                                   (_lp7130_
                                                    _L7284_
                                                    (_cons-id7127_
                                                     _L7286_
                                                     _ids7135_))))))
                                             (_g72967365_
                                              (lambda (_g72997327_)
                                                (if (gx#stx-pair? _g72997327_)
                                                    (let ((_e73017330_
                                                           (gx#syntax-e
                                                            _g72997327_)))
                                                      (let ((_hd73027334_
                                                             (##car _e73017330_))
                                                            (_tl73037337_
                                                             (##cdr _e73017330_)))
                                                        (if (gx#stx-pair?
                                                             _tl73037337_)
                                                            (let ((_e73047340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl73037337_)))
                      (let ((_hd73057344_ (##car _e73047340_))
                            (_tl73067347_ (##cdr _e73047340_)))
                        (if (gx#stx-null? _tl73067347_)
                            ((lambda (_L7350_)
                               (_lp7130_
                                _L7284_
                                (_cons-id7127_ _L7350_ _ids7135_)))
                             _hd73027334_)
                            (_g72977323_ _g72997327_))))
                    (_g72977323_ _g72997327_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g72977323_
                                                     _g72997327_)))))
                                        (_g72967365_ _L7286_)))
                                    _tl72617281_
                                    _hd72607278_)))
                               (_g72557267_ _g72567271_)))))
                   (_g72547369_ _L7178_))
                 (if (eq? (gx#stx-e _L7180_) '#!key)
                     (let* ((_g73737385_
                             (lambda (_g73747381_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g73747381_)))
                            (_g73727415_
                             (lambda (_g73747389_)
                               (if (gx#stx-pair? _g73747389_)
                                   (let ((_e73777392_
                                          (gx#syntax-e _g73747389_)))
                                     (let ((_hd73787396_ (##car _e73777392_))
                                           (_tl73797399_ (##cdr _e73777392_)))
                                       ((lambda (_L7402_ _L7404_)
                                          (_lp7130_
                                           _L7402_
                                           (_cons-id7127_ _L7404_ _ids7135_)))
                                        _tl73797399_
                                        _hd73787396_)))
                                   (_g73737385_ _g73747389_)))))
                       (_g73727415_ _L7178_))
                     (error '"BUG: check-duplicate-bindings"
                            _stx4925_
                            _rest7133_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _tl71447175_
                                           _hd71437172_)))
                                      (_g71377161_ _g71397165_)))))
                          (_g71367419_ _rest7133_))))))
                 (_generate-opt-primary4936_
                  (lambda (_pre6916_ _opt6918_ _tail6919_ _body6920_)
                    (let* ((_g69226963_
                            (lambda (_g69236959_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g69236959_)))
                           (_g69217120_
                            (lambda (_g69236967_)
                              (if (gx#stx-pair? _g69236967_)
                                  (let ((_e69286970_
                                         (gx#syntax-e _g69236967_)))
                                    (let ((_hd69296974_ (##car _e69286970_))
                                          (_tl69306977_ (##cdr _e69286970_)))
                                      (if (gx#stx-pair/null? _hd69296974_)
                                          (if (fx>= (gx#stx-length
                                                     _hd69296974_)
                                                    '0)
                                              (let ((_g35111_
                                                     (gx#syntax-split-splice
                                                      _hd69296974_
                                                      '0)))
                                                (begin
                                                  (let ((_g35112_
                                                         (if (##values?
                                                              _g35111_)
                                                             (##vector-length
                                                              _g35111_)
                                                             1)))
                                                    (if (not (##fx= _g35112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g35112_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target69316980_
                                                         (##vector-ref
                                                          _g35111_
                                                          0))
                                                        (_tl69336983_
                                                         (##vector-ref
                                                          _g35111_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl69336983_)
                                                        (letrec ((_loop69346986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd69326990_ _pre69386993_)
                            (if (gx#stx-pair? _hd69326990_)
                                (let ((_e69356996_ (gx#syntax-e _hd69326990_)))
                                  (let ((_lp-hd69367000_ (##car _e69356996_))
                                        (_lp-tl69377003_ (##cdr _e69356996_)))
                                    (_loop69346986_
                                     _lp-tl69377003_
                                     (cons _lp-hd69367000_ _pre69386993_))))
                                (let ((_pre69397006_ (reverse _pre69386993_)))
                                  (if (gx#stx-pair? _tl69306977_)
                                      (let ((_e69407010_
                                             (gx#syntax-e _tl69306977_)))
                                        (let ((_hd69417014_
                                               (##car _e69407010_))
                                              (_tl69427017_
                                               (##cdr _e69407010_)))
                                          (if (gx#stx-pair/null? _hd69417014_)
                                              (if (fx>= (gx#stx-length
                                                         _hd69417014_)
                                                        '0)
                                                  (let ((_g35113_
                                                         (gx#syntax-split-splice
                                                          _hd69417014_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35114_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35113_)
                         (##vector-length _g35113_)
                         1)))
                (if (not (##fx= _g35114_ 2))
                    (error "Context expects 2 values" _g35114_)))
              (let ((_target69437020_ (##vector-ref _g35113_ 0))
                    (_tl69457023_ (##vector-ref _g35113_ 1)))
                (if (gx#stx-null? _tl69457023_)
                    (letrec ((_loop69467026_
                              (lambda (_hd69447030_ _opt69507033_)
                                (if (gx#stx-pair? _hd69447030_)
                                    (let ((_e69477036_
                                           (gx#syntax-e _hd69447030_)))
                                      (let ((_lp-hd69487040_
                                             (##car _e69477036_))
                                            (_lp-tl69497043_
                                             (##cdr _e69477036_)))
                                        (_loop69467026_
                                         _lp-tl69497043_
                                         (cons _lp-hd69487040_
                                               _opt69507033_))))
                                    (let ((_opt69517046_
                                           (reverse _opt69507033_)))
                                      (if (gx#stx-pair? _tl69427017_)
                                          (let ((_e69527050_
                                                 (gx#syntax-e _tl69427017_)))
                                            (let ((_hd69537054_
                                                   (##car _e69527050_))
                                                  (_tl69547057_
                                                   (##cdr _e69527050_)))
                                              (if (gx#stx-pair? _tl69547057_)
                                                  (let ((_e69557060_
                                                         (gx#syntax-e
                                                          _tl69547057_)))
                                                    (let ((_hd69567064_
                                                           (##car _e69557060_))
                                                          (_tl69577067_
                                                           (##cdr _e69557060_)))
                                                      (if (gx#stx-null?
                                                           _tl69577067_)
                                                          ((lambda (_L7070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L7072_
                            _L7073_
                            _L7074_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'lambda%)
                             (cons (begin
                                     '#!void
                                     (foldr (lambda (_g71037108_ _g71047111_)
                                              (cons _g71037108_ _g71047111_))
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g71057114_
                                                              _g71067117_)
                                                       (cons _g71057114_
                                                             _g71067117_))
                                                     _L7072_
                                                     _L7073_))
                                            _L7074_))
                                   _L7070_))))
                   _hd69567064_
                   _hd69537054_
                   _opt69517046_
                   _pre69397006_)
                  (_g69226963_ _g69236967_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g69226963_ _g69236967_))))
                                          (_g69226963_ _g69236967_)))))))
                      (_loop69467026_ _target69437020_ '()))
                    (_g69226963_ _g69236967_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g69226963_ _g69236967_))
                                              (_g69226963_ _g69236967_))))
                                      (_g69226963_ _g69236967_)))))))
                  (_loop69346986_ _target69316980_ '()))
                (_g69226963_ _g69236967_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g69226963_ _g69236967_))
                                          (_g69226963_ _g69236967_))))
                                  (_g69226963_ _g69236967_)))))
                      (_g69217120_
                       (list _pre6916_
                             (map car _opt6918_)
                             _tail6919_
                             _body6920_)))))
                 (_generate-opt-dispatch4937_
                  (lambda (_primary6910_ _pre6912_ _opt6913_ _tail6914_)
                    (cons (list _pre6912_
                                (_generate-opt-clause4939_
                                 _primary6910_
                                 _pre6912_
                                 _opt6913_))
                          (_generate-opt-dispatch*4938_
                           _primary6910_
                           _pre6912_
                           _opt6913_
                           _tail6914_))))
                 (_generate-opt-dispatch*4938_
                  (lambda (_primary6467_ _pre6469_ _opt6470_ _tail6471_)
                    (let _recur6473_ ((_opt-rest6476_ _opt6470_)
                                      (_right6478_ '()))
                      (if (pair? _opt-rest6476_)
                          (let* ((_hd6480_ (caar _opt-rest6476_))
                                 (_rest6483_ (cdr _opt-rest6476_))
                                 (_right*6486_ (cons _hd6480_ _right6478_))
                                 (_g64896506_
                                  (lambda (_g64906502_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g64906502_)))
                                 (_g64886689_
                                  (lambda (_g64906510_)
                                    (if (gx#stx-pair/null? _g64906510_)
                                        (if (fx>= (gx#stx-length _g64906510_)
                                                  '0)
                                            (let ((_g35115_
                                                   (gx#syntax-split-splice
                                                    _g64906510_
                                                    '0)))
                                              (begin
                                                (let ((_g35116_
                                                       (if (##values? _g35115_)
                                                           (##vector-length
                                                            _g35115_)
                                                           1)))
                                                  (if (not (##fx= _g35116_ 2))
                                                      (error "Context expects 2 values"
                                                             _g35116_)))
                                                (let ((_target64926513_
                                                       (##vector-ref
                                                        _g35115_
                                                        0))
                                                      (_tl64946516_
                                                       (##vector-ref
                                                        _g35115_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl64946516_)
                                                      (letrec ((_loop64956519_
                                                                (lambda (_hd64936523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _pre-bind64996526_)
                          (if (gx#stx-pair? _hd64936523_)
                              (let ((_e64966529_ (gx#syntax-e _hd64936523_)))
                                (let ((_lp-hd64976533_ (##car _e64966529_))
                                      (_lp-tl64986536_ (##cdr _e64966529_)))
                                  (_loop64956519_
                                   _lp-tl64986536_
                                   (cons _lp-hd64976533_ _pre-bind64996526_))))
                              (let ((_pre-bind65006539_
                                     (reverse _pre-bind64996526_)))
                                ((lambda (_L6543_)
                                   (let ()
                                     (let* ((_g65646581_
                                             (lambda (_g65656577_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g65656577_)))
                                            (_g65636685_
                                             (lambda (_g65656585_)
                                               (if (gx#stx-pair/null?
                                                    _g65656585_)
                                                   (if (fx>= (gx#stx-length
                                                              _g65656585_)
                                                             '0)
                                                       (let ((_g35117_
                                                              (gx#syntax-split-splice
                                                               _g65656585_
                                                               '0)))
                                                         (begin
                                                           (let ((_g35118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (##values? _g35117_)
                              (##vector-length _g35117_)
                              1)))
                     (if (not (##fx= _g35118_ 2))
                         (error "Context expects 2 values" _g35118_)))
                   (let ((_target65676588_ (##vector-ref _g35117_ 0))
                         (_tl65696591_ (##vector-ref _g35117_ 1)))
                     (if (gx#stx-null? _tl65696591_)
                         (letrec ((_loop65706594_
                                   (lambda (_hd65686598_ _opt-bind65746601_)
                                     (if (gx#stx-pair? _hd65686598_)
                                         (let ((_e65716604_
                                                (gx#syntax-e _hd65686598_)))
                                           (let ((_lp-hd65726608_
                                                  (##car _e65716604_))
                                                 (_lp-tl65736611_
                                                  (##cdr _e65716604_)))
                                             (_loop65706594_
                                              _lp-tl65736611_
                                              (cons _lp-hd65726608_
                                                    _opt-bind65746601_))))
                                         (let ((_opt-bind65756614_
                                                (reverse _opt-bind65746601_)))
                                           ((lambda (_L6618_)
                                              (let ()
                                                (let* ((_g66356643_
                                                        (lambda (_g66366639_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g66366639_)))
                                                       (_g66346681_
                                                        (lambda (_g66366647_)
                                                          ((lambda (_L6650_)
                                                             (let ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (list (begin
                                       '#!void
                                       (foldr (lambda (_g66646669_ _g66656672_)
                                                (cons _g66646669_ _g66656672_))
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g66666675_
                                                                _g66676678_)
                                                         (cons _g66666675_
                                                               _g66676678_))
                                                       (cons _L6650_ '())
                                                       _L6618_))
                                              _L6543_))
                                     (_generate-opt-clause4939_
                                      _primary6467_
                                      (foldr cons
                                             (reverse _right*6486_)
                                             _pre6469_)
                                      _rest6483_))
                               (_recur6473_ _rest6483_ _right*6486_)))))
                   _g66366647_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g66346681_ _hd6480_))))
                                            _opt-bind65756614_))))))
                           (_loop65706594_ _target65676588_ '()))
                         (_g65646581_ _g65656585_)))))
               (_g65646581_ _g65656585_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g65646581_
                                                    _g65656585_)))))
                                       (_g65636685_ (reverse _right6478_)))))
                                 _pre-bind65006539_))))))
                (_loop64956519_ _target64926513_ '()))
              (_g64896506_ _g64906510_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g64896506_ _g64906510_))
                                        (_g64896506_ _g64906510_)))))
                            (_g64886689_ _pre6469_))
                          (if (gx#stx-null? _tail6471_)
                              '()
                              (let* ((_g66936734_
                                      (lambda (_g66946730_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g66946730_)))
                                     (_g66926906_
                                      (lambda (_g66946738_)
                                        (if (gx#stx-pair? _g66946738_)
                                            (let ((_e66996741_
                                                   (gx#syntax-e _g66946738_)))
                                              (let ((_hd67006745_
                                                     (##car _e66996741_))
                                                    (_tl67016748_
                                                     (##cdr _e66996741_)))
                                                (if (gx#stx-pair/null?
                                                     _hd67006745_)
                                                    (if (fx>= (gx#stx-length
                                                               _hd67006745_)
                                                              '0)
                                                        (let ((_g35119_
                                                               (gx#syntax-split-splice
                                                                _hd67006745_
                                                                '0)))
                                                          (begin
                                                            (let ((_g35120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g35119_)
                               (##vector-length _g35119_)
                               1)))
                      (if (not (##fx= _g35120_ 2))
                          (error "Context expects 2 values" _g35120_)))
                    (let ((_target67026751_ (##vector-ref _g35119_ 0))
                          (_tl67046754_ (##vector-ref _g35119_ 1)))
                      (if (gx#stx-null? _tl67046754_)
                          (letrec ((_loop67056757_
                                    (lambda (_hd67036761_ _pre67096764_)
                                      (if (gx#stx-pair? _hd67036761_)
                                          (let ((_e67066767_
                                                 (gx#syntax-e _hd67036761_)))
                                            (let ((_lp-hd67076771_
                                                   (##car _e67066767_))
                                                  (_lp-tl67086774_
                                                   (##cdr _e67066767_)))
                                              (_loop67056757_
                                               _lp-tl67086774_
                                               (cons _lp-hd67076771_
                                                     _pre67096764_))))
                                          (let ((_pre67106777_
                                                 (reverse _pre67096764_)))
                                            (if (gx#stx-pair? _tl67016748_)
                                                (let ((_e67116781_
                                                       (gx#syntax-e
                                                        _tl67016748_)))
                                                  (let ((_hd67126785_
                                                         (##car _e67116781_))
                                                        (_tl67136788_
                                                         (##cdr _e67116781_)))
                                                    (if (gx#stx-pair/null?
                                                         _hd67126785_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd67126785_)
                          '0)
                    (let ((_g35121_ (gx#syntax-split-splice _hd67126785_ '0)))
                      (begin
                        (let ((_g35122_
                               (if (##values? _g35121_)
                                   (##vector-length _g35121_)
                                   1)))
                          (if (not (##fx= _g35122_ 2))
                              (error "Context expects 2 values" _g35122_)))
                        (let ((_target67146791_ (##vector-ref _g35121_ 0))
                              (_tl67166794_ (##vector-ref _g35121_ 1)))
                          (if (gx#stx-null? _tl67166794_)
                              (letrec ((_loop67176797_
                                        (lambda (_hd67156801_ _opt67216804_)
                                          (if (gx#stx-pair? _hd67156801_)
                                              (let ((_e67186807_
                                                     (gx#syntax-e
                                                      _hd67156801_)))
                                                (let ((_lp-hd67196811_
                                                       (##car _e67186807_))
                                                      (_lp-tl67206814_
                                                       (##cdr _e67186807_)))
                                                  (_loop67176797_
                                                   _lp-tl67206814_
                                                   (cons _lp-hd67196811_
                                                         _opt67216804_))))
                                              (let ((_opt67226817_
                                                     (reverse _opt67216804_)))
                                                (if (gx#stx-pair? _tl67136788_)
                                                    (let ((_e67236821_
                                                           (gx#syntax-e
                                                            _tl67136788_)))
                                                      (let ((_hd67246825_
                                                             (##car _e67236821_))
                                                            (_tl67256828_
                                                             (##cdr _e67236821_)))
                                                        (if (gx#stx-pair?
                                                             _tl67256828_)
                                                            (let ((_e67266831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl67256828_)))
                      (let ((_hd67276835_ (##car _e67266831_))
                            (_tl67286838_ (##cdr _e67266831_)))
                        (if (gx#stx-null? _tl67286838_)
                            ((lambda (_L6841_ _L6843_ _L6844_ _L6845_)
                               (let ()
                                 (list (list (begin
                                               '#!void
                                               (foldr (lambda (_g68736878_
                                                               _g68746881_)
                                                        (cons _g68736878_
                                                              _g68746881_))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g68756884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g68766887_)
                         (cons _g68756884_ _g68766887_))
                       _L6843_
                       _L6844_))
              _L6845_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (gx#stx-wrap-source
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'apply)
                                                    (cons _L6841_
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g68896894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g68906897_)
                             (cons _g68896894_ _g68906897_))
                           (begin
                             '#!void
                             (foldr (lambda (_g68916900_ _g68926903_)
                                      (cons _g68916900_ _g68926903_))
                                    (cons _L6843_ '())
                                    _L6844_))
                           _L6845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _stx4925_))))))
                             _hd67276835_
                             _hd67246825_
                             _opt67226817_
                             _pre67106777_)
                            (_g66936734_ _g66946738_))))
                    (_g66936734_ _g66946738_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66936734_
                                                     _g66946738_)))))))
                                (_loop67176797_ _target67146791_ '()))
                              (_g66936734_ _g66946738_)))))
                    (_g66936734_ _g66946738_))
                (_g66936734_ _g66946738_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g66936734_ _g66946738_)))))))
                            (_loop67056757_ _target67026751_ '()))
                          (_g66936734_ _g66946738_)))))
                (_g66936734_ _g66946738_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g66936734_
                                                     _g66946738_))))
                                            (_g66936734_ _g66946738_)))))
                                (_g66926906_
                                 (list _pre6469_
                                       (reverse _right6478_)
                                       _tail6471_
                                       _primary6467_))))))))
                 (_generate-opt-clause4939_
                  (lambda (_primary6165_ _pre6167_ _opt6168_)
                    (let _recur6170_ ((_opt-rest6173_ _opt6168_)
                                      (_right6175_ '()))
                      (if (pair? _opt-rest6173_)
                          (let* ((_hd6177_ (car _opt-rest6173_))
                                 (_rest6180_ (cdr _opt-rest6173_))
                                 (_g61836191_
                                  (lambda (_g61846187_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g61846187_)))
                                 (_g61826280_
                                  (lambda (_g61846195_)
                                    ((lambda (_L6198_)
                                       (let ()
                                         (let* ((_g62146222_
                                                 (lambda (_g62156218_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g62156218_)))
                                                (_g62136276_
                                                 (lambda (_g62156226_)
                                                   ((lambda (_L6229_)
                                                      (let ()
                                                        (let* ((_g62426250_
                                                                (lambda (_g62436246_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g62436246_)))
                       (_g62416272_
                        (lambda (_g62436254_)
                          ((lambda (_L6257_)
                             (let ()
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let-values)
                                       (cons (cons (cons (cons _L6198_ '())
                                                         (cons _L6229_ '()))
                                                   '())
                                             (cons _L6257_ '()))))))
                           _g62436254_))))
                  (_g62416272_
                   (_recur6170_ _rest6180_ (cons _L6198_ _right6175_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g62156226_))))
                                           (_g62136276_ (cdr _hd6177_)))))
                                     _g61846195_))))
                            (_g61826280_ (car _hd6177_)))
                          (let* ((_g62846321_
                                  (lambda (_g62856317_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g62856317_)))
                                 (_g62836463_
                                  (lambda (_g62856325_)
                                    (if (gx#stx-pair? _g62856325_)
                                        (let ((_e62896328_
                                               (gx#syntax-e _g62856325_)))
                                          (let ((_hd62906332_
                                                 (##car _e62896328_))
                                                (_tl62916335_
                                                 (##cdr _e62896328_)))
                                            (if (gx#stx-pair/null?
                                                 _hd62906332_)
                                                (if (fx>= (gx#stx-length
                                                           _hd62906332_)
                                                          '0)
                                                    (let ((_g35123_
                                                           (gx#syntax-split-splice
                                                            _hd62906332_
                                                            '0)))
                                                      (begin
                                                        (let ((_g35124_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g35123_)
                           (##vector-length _g35123_)
                           1)))
                  (if (not (##fx= _g35124_ 2))
                      (error "Context expects 2 values" _g35124_)))
                (let ((_target62926338_ (##vector-ref _g35123_ 0))
                      (_tl62946341_ (##vector-ref _g35123_ 1)))
                  (if (gx#stx-null? _tl62946341_)
                      (letrec ((_loop62956344_
                                (lambda (_hd62936348_ _pre62996351_)
                                  (if (gx#stx-pair? _hd62936348_)
                                      (let ((_e62966354_
                                             (gx#syntax-e _hd62936348_)))
                                        (let ((_lp-hd62976358_
                                               (##car _e62966354_))
                                              (_lp-tl62986361_
                                               (##cdr _e62966354_)))
                                          (_loop62956344_
                                           _lp-tl62986361_
                                           (cons _lp-hd62976358_
                                                 _pre62996351_))))
                                      (let ((_pre63006364_
                                             (reverse _pre62996351_)))
                                        (if (gx#stx-pair? _tl62916335_)
                                            (let ((_e63016368_
                                                   (gx#syntax-e _tl62916335_)))
                                              (let ((_hd63026372_
                                                     (##car _e63016368_))
                                                    (_tl63036375_
                                                     (##cdr _e63016368_)))
                                                (if (gx#stx-pair/null?
                                                     _hd63026372_)
                                                    (if (fx>= (gx#stx-length
                                                               _hd63026372_)
                                                              '0)
                                                        (let ((_g35125_
                                                               (gx#syntax-split-splice
                                                                _hd63026372_
                                                                '0)))
                                                          (begin
                                                            (let ((_g35126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g35125_)
                               (##vector-length _g35125_)
                               1)))
                      (if (not (##fx= _g35126_ 2))
                          (error "Context expects 2 values" _g35126_)))
                    (let ((_target63046378_ (##vector-ref _g35125_ 0))
                          (_tl63066381_ (##vector-ref _g35125_ 1)))
                      (if (gx#stx-null? _tl63066381_)
                          (letrec ((_loop63076384_
                                    (lambda (_hd63056388_ _opt63116391_)
                                      (if (gx#stx-pair? _hd63056388_)
                                          (let ((_e63086394_
                                                 (gx#syntax-e _hd63056388_)))
                                            (let ((_lp-hd63096398_
                                                   (##car _e63086394_))
                                                  (_lp-tl63106401_
                                                   (##cdr _e63086394_)))
                                              (_loop63076384_
                                               _lp-tl63106401_
                                               (cons _lp-hd63096398_
                                                     _opt63116391_))))
                                          (let ((_opt63126404_
                                                 (reverse _opt63116391_)))
                                            (if (gx#stx-pair? _tl63036375_)
                                                (let ((_e63136408_
                                                       (gx#syntax-e
                                                        _tl63036375_)))
                                                  (let ((_hd63146412_
                                                         (##car _e63136408_))
                                                        (_tl63156415_
                                                         (##cdr _e63136408_)))
                                                    (if (gx#stx-null?
                                                         _tl63156415_)
                                                        ((lambda (_L6418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L6420_
                          _L6421_)
                   (let ()
                     (gx#stx-wrap-source
                      (cons _L6418_
                            (begin
                              '#!void
                              (foldr (lambda (_g64466451_ _g64476454_)
                                       (cons _g64466451_ _g64476454_))
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g64486457_ _g64496460_)
                                                (cons _g64486457_ _g64496460_))
                                              '()
                                              _L6420_))
                                     _L6421_)))
                      (gx#stx-source _stx4925_))))
                 _hd63146412_
                 _opt63126404_
                 _pre63006364_)
                (_g62846321_ _g62856325_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g62846321_ _g62856325_)))))))
                            (_loop63076384_ _target63046378_ '()))
                          (_g62846321_ _g62856325_)))))
                (_g62846321_ _g62856325_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g62846321_
                                                     _g62856325_))))
                                            (_g62846321_ _g62856325_)))))))
                        (_loop62956344_ _target62926338_ '()))
                      (_g62846321_ _g62856325_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g62846321_ _g62856325_))
                                                (_g62846321_ _g62856325_))))
                                        (_g62846321_ _g62856325_)))))
                            (_g62836463_
                             (list _pre6167_
                                   (reverse _right6175_)
                                   _primary6165_)))))))
                 (_generate-kw-primary4940_
                  (lambda (_key5541_ _kwargs5543_ _args5544_ _body5545_)
                    (letrec ((_make-body5547_
                              (lambda (_kwargs6034_ _kwvals6036_)
                                (if (pair? _kwargs6034_)
                                    (let* ((_kwarg6038_ (car _kwargs6034_))
                                           (_var6041_ (cadr _kwarg6038_))
                                           (_default6044_ (caddr _kwarg6038_))
                                           (_kwval6047_ (car _kwvals6036_))
                                           (_rest-kwargs6050_
                                            (cdr _kwargs6034_))
                                           (_rest-kwvals6053_
                                            (cdr _kwvals6036_)))
                                      (let* ((_g60586081_
                                              (lambda (_g60596077_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g60596077_)))
                                             (_g60576161_
                                              (lambda (_g60596085_)
                                                (if (gx#stx-pair? _g60596085_)
                                                    (let ((_e60646088_
                                                           (gx#syntax-e
                                                            _g60596085_)))
                                                      (let ((_hd60656092_
                                                             (##car _e60646088_))
                                                            (_tl60666095_
                                                             (##cdr _e60646088_)))
                                                        (if (gx#stx-pair?
                                                             _tl60666095_)
                                                            (let ((_e60676098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl60666095_)))
                      (let ((_hd60686102_ (##car _e60676098_))
                            (_tl60696105_ (##cdr _e60676098_)))
                        (if (gx#stx-pair? _tl60696105_)
                            (let ((_e60706108_ (gx#syntax-e _tl60696105_)))
                              (let ((_hd60716112_ (##car _e60706108_))
                                    (_tl60726115_ (##cdr _e60706108_)))
                                (if (gx#stx-pair? _tl60726115_)
                                    (let ((_e60736118_
                                           (gx#syntax-e _tl60726115_)))
                                      (let ((_hd60746122_ (##car _e60736118_))
                                            (_tl60756125_ (##cdr _e60736118_)))
                                        (if (gx#stx-null? _tl60756125_)
                                            ((lambda (_L6128_
                                                      _L6130_
                                                      _L6131_
                                                      _L6132_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'let-values)
                                                       (cons (cons (cons (cons _L6132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (cons (gx#datum->syntax '#f 'if)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'eq?)
                                                         (cons _L6131_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'absent-value)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _L6130_
                                                         (cons _L6131_ '()))))
                                       '()))
                           '())
                     (cons _L6128_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd60746122_
                                             _hd60716112_
                                             _hd60686102_
                                             _hd60656092_)
                                            (_g60586081_ _g60596085_))))
                                    (_g60586081_ _g60596085_))))
                            (_g60586081_ _g60596085_))))
                    (_g60586081_ _g60596085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g60586081_
                                                     _g60596085_)))))
                                        (_g60576161_
                                         (list _var6041_
                                               _kwval6047_
                                               _default6044_
                                               (_make-body5547_
                                                _rest-kwargs6050_
                                                _rest-kwvals6053_)))))
                                    (cons 'begin _body5545_))))
                             (_make-main5549_
                              (lambda ()
                                (let* ((_g58425850_
                                        (lambda (_g58435846_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g58435846_)))
                                       (_g58416026_
                                        (lambda (_g58435854_)
                                          ((lambda (_L5857_)
                                             (let ()
                                               (let* ((_g58695886_
                                                       (lambda (_g58705882_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g58705882_)))
                                                      (_g58686022_
                                                       (lambda (_g58705890_)
                                                         (if (gx#stx-pair/null?
                                                              _g58705890_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g58705890_)
                               '0)
                         (let ((_g35127_
                                (gx#syntax-split-splice _g58705890_ '0)))
                           (begin
                             (let ((_g35128_
                                    (if (##values? _g35127_)
                                        (##vector-length _g35127_)
                                        1)))
                               (if (not (##fx= _g35128_ 2))
                                   (error "Context expects 2 values"
                                          _g35128_)))
                             (let ((_target58725893_ (##vector-ref _g35127_ 0))
                                   (_tl58745896_ (##vector-ref _g35127_ 1)))
                               (if (gx#stx-null? _tl58745896_)
                                   (letrec ((_loop58755899_
                                             (lambda (_hd58735903_
                                                      _kwval58795906_)
                                               (if (gx#stx-pair? _hd58735903_)
                                                   (let ((_e58765909_
                                                          (gx#syntax-e
                                                           _hd58735903_)))
                                                     (let ((_lp-hd58775913_
                                                            (##car _e58765909_))
                                                           (_lp-tl58785916_
                                                            (##cdr _e58765909_)))
                                                       (_loop58755899_
                                                        _lp-tl58785916_
                                                        (cons _lp-hd58775913_
                                                              _kwval58795906_))))
                                                   (let ((_kwval58805919_
                                                          (reverse _kwval58795906_)))
                                                     ((lambda (_L5923_)
                                                        (let ()
                                                          (let* ((_g59405948_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g59415944_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g59415944_)))
                         (_g59396018_
                          (lambda (_g59415952_)
                            ((lambda (_L5955_)
                               (let ()
                                 (let* ((_g59685976_
                                         (lambda (_g59695972_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g59695972_)))
                                        (_g59676006_
                                         (lambda (_g59695980_)
                                           ((lambda (_L5983_)
                                              (let ()
                                                (let ()
                                                  (gx#stx-wrap-source
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons (cons _L5857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (begin
                               '#!void
                               (foldr (lambda (_g59976000_ _g59986003_)
                                        (cons _g59976000_ _g59986003_))
                                      _L5955_
                                      _L5923_)))
                       (cons _L5983_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _stx4925_)))))
                                            _g59695980_))))
                                   (_g59676006_
                                    (_make-body5547_
                                     _kwargs5543_
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g60096012_ _g60106015_)
                                                (cons _g60096012_ _g60106015_))
                                              '()
                                              _L5923_)))))))
                             _g59415952_))))
                    (_g59396018_ _args5544_))))
              _kwval58805919_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop58755899_ _target58725893_ '()))
                                   (_g58695886_ _g58705890_)))))
                         (_g58695886_ _g58705890_))
                     (_g58695886_ _g58705890_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g58686022_
                                                  (gx#gentemps
                                                   (map cadr _kwargs5543_))))))
                                           _g58435854_))))
                                  (_g58416026_
                                   (let ((_$e6030_ _key5541_))
                                     (if _$e6030_ _$e6030_ '_))))))
                             (_make-dispatch5550_
                              (lambda (_main5650_)
                                (let* ((_g56535661_
                                        (lambda (_g56545657_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g56545657_)))
                                       (_g56525832_
                                        (lambda (_g56545665_)
                                          ((lambda (_L5668_)
                                             (let ()
                                               (let* ((_g56805697_
                                                       (lambda (_g56815693_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g56815693_)))
                                                      (_g56795793_
                                                       (lambda (_g56815701_)
                                                         (if (gx#stx-pair/null?
                                                              _g56815701_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g56815701_)
                               '0)
                         (let ((_g35129_
                                (gx#syntax-split-splice _g56815701_ '0)))
                           (begin
                             (let ((_g35130_
                                    (if (##values? _g35129_)
                                        (##vector-length _g35129_)
                                        1)))
                               (if (not (##fx= _g35130_ 2))
                                   (error "Context expects 2 values"
                                          _g35130_)))
                             (let ((_target56835704_ (##vector-ref _g35129_ 0))
                                   (_tl56855707_ (##vector-ref _g35129_ 1)))
                               (if (gx#stx-null? _tl56855707_)
                                   (letrec ((_loop56865710_
                                             (lambda (_hd56845714_
                                                      _get-kw56905717_)
                                               (if (gx#stx-pair? _hd56845714_)
                                                   (let ((_e56875720_
                                                          (gx#syntax-e
                                                           _hd56845714_)))
                                                     (let ((_lp-hd56885724_
                                                            (##car _e56875720_))
                                                           (_lp-tl56895727_
                                                            (##cdr _e56875720_)))
                                                       (_loop56865710_
                                                        _lp-tl56895727_
                                                        (cons _lp-hd56885724_
                                                              _get-kw56905717_))))
                                                   (let ((_get-kw56915730_
                                                          (reverse _get-kw56905717_)))
                                                     ((lambda (_L5734_)
                                                        (let ()
                                                          (let* ((_g57515759_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g57525755_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g57525755_)))
                         (_g57505789_
                          (lambda (_g57525763_)
                            ((lambda (_L5766_)
                               (let ()
                                 (let ()
                                   (gx#stx-wrap-source
                                    (cons (gx#datum->syntax '#f 'lambda)
                                          (cons (cons _L5668_
                                                      (gx#datum->syntax
                                                       '#f
                                                       'args))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'apply)
                                                            (cons _L5766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L5668_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g57805783_ _g57815786_)
                                           (cons _g57805783_ _g57815786_))
                                         (cons (gx#datum->syntax '#f 'args)
                                               '())
                                         _L5734_)))))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (gx#stx-source _stx4925_)))))
                             _g57525763_))))
                    (_g57505789_ _main5650_))))
              _get-kw56915730_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop56865710_ _target56835704_ '()))
                                   (_g56805697_ _g56815701_)))))
                         (_g56805697_ _g56815701_))
                     (_g56805697_ _g56815701_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g56795793_
                                                  (map (lambda (_kwarg5797_)
                                                         (let* ((_g58005808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g58015804_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g58015804_)))
                        (_g57995828_
                         (lambda (_g58015812_)
                           ((lambda (_L5815_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'hash-ref)
                                      (cons _L5668_
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _L5815_ '()))
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'absent-value)
                                                        '()))))))
                            _g58015812_))))
                   (_g57995828_ (car _kwarg5797_))))
               _kwargs5543_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g56545665_))))
                                  (_g56525832_
                                   (let ((_$e5836_ _key5541_))
                                     (if _$e5836_
                                         _$e5836_
                                         (gx#genident 'keys))))))))
                      (let* ((_g55525560_
                              (lambda (_g55535556_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g55535556_)))
                             (_g55515646_
                              (lambda (_g55535564_)
                                ((lambda (_L5567_)
                                   (let ()
                                     (let* ((_g55805588_
                                             (lambda (_g55815584_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g55815584_)))
                                            (_g55795642_
                                             (lambda (_g55815592_)
                                               ((lambda (_L5595_)
                                                  (let ()
                                                    (let* ((_g56085616_
                                                            (lambda (_g56095612_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g56095612_)))
                                                           (_g56075638_
                                                            (lambda (_g56095620_)
                                                              ((lambda (_L5623_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ()
                             (cons (gx#datum->syntax '#f 'let-values)
                                   (cons (cons (cons (cons _L5567_ '())
                                                     (cons _L5623_ '()))
                                               '())
                                         (cons _L5595_ '()))))))
                       _g56095620_))))
              (_g56075638_ (_make-main5549_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g55815592_))))
                                       (_g55795642_
                                        (_make-dispatch5550_ _L5567_)))))
                                 _g55535564_))))
                        (_g55515646_ (gx#genident 'kw-lambda-main))))))
                 (_generate-kw-dispatch4941_
                  (lambda (_primary5454_ _kwargs5456_ _strict?5457_)
                    (let* ((_g54595478_
                            (lambda (_g54605474_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g54605474_)))
                           (_g54585537_
                            (lambda (_g54605482_)
                              (if (gx#stx-pair? _g54605482_)
                                  (let ((_e54645485_
                                         (gx#syntax-e _g54605482_)))
                                    (let ((_hd54655489_ (##car _e54645485_))
                                          (_tl54665492_ (##cdr _e54645485_)))
                                      (if (gx#stx-pair? _tl54665492_)
                                          (let ((_e54675495_
                                                 (gx#syntax-e _tl54665492_)))
                                            (let ((_hd54685499_
                                                   (##car _e54675495_))
                                                  (_tl54695502_
                                                   (##cdr _e54675495_)))
                                              (if (gx#stx-pair? _tl54695502_)
                                                  (let ((_e54705505_
                                                         (gx#syntax-e
                                                          _tl54695502_)))
                                                    (let ((_hd54715509_
                                                           (##car _e54705505_))
                                                          (_tl54725512_
                                                           (##cdr _e54705505_)))
                                                      (if (gx#stx-null?
                                                           _tl54725512_)
                                                          ((lambda (_L5515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L5517_
                            _L5518_)
                     (let ()
                       (cons (gx#datum->syntax '#f 'lambda%)
                             (cons _L5515_
                                   (cons (cons (gx#datum->syntax '#f 'apply)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'keyword-dispatch)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L5518_ '()))
                   (cons _L5517_ (cons _L5515_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                   _hd54715509_
                   _hd54685499_
                   _hd54655489_)
                  (_g54595478_ _g54605482_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g54595478_ _g54605482_))))
                                          (_g54595478_ _g54605482_))))
                                  (_g54595478_ _g54605482_)))))
                      (_g54585537_
                       (list (if _strict?5457_
                                 (_generate-kw-table4942_
                                  (map car _kwargs5456_))
                                 '#f)
                             _primary5454_
                             (gx#genident 'args))))))
                 (_generate-kw-table4942_
                  (lambda (_kws5428_)
                    (let _rehash5431_ ((_pht5434_
                                        (make-vector (length _kws5428_) '#f)))
                      (let _lp5437_ ((_rest5440_ _kws5428_))
                        (if (pair? _rest5440_)
                            (let* ((_key5443_ (car _rest5440_))
                                   (_rest5446_ (cdr _rest5440_))
                                   (_pos5449_
                                    (fxmodulo
                                     (keyword-hash _key5443_)
                                     (vector-length _pht5434_))))
                              (if (vector-ref _pht5434_ _pos5449_)
                                  (if (fx< (vector-length _pht5434_) '8192)
                                      (_rehash5431_
                                       (make-vector
                                        (quotient
                                         (fx* '3 (vector-length _pht5434_))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _kws5428_))
                                  (begin
                                    (vector-set! _pht5434_ _pos5449_ _key5443_)
                                    (_lp5437_ _rest5446_))))
                            _pht5434_))))))
          (let* ((_g49464977_
                  (lambda (_g49474973_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g49474973_)))
                 (_g49455154_
                  (lambda (_g49474981_)
                    (if (gx#stx-pair? _g49474981_)
                        (let ((_e49664984_ (gx#syntax-e _g49474981_)))
                          (let ((_hd49674988_ (##car _e49664984_))
                                (_tl49684991_ (##cdr _e49664984_)))
                            (if (gx#stx-pair? _tl49684991_)
                                (let ((_e49694994_ (gx#syntax-e _tl49684991_)))
                                  (let ((_hd49704998_ (##car _e49694994_))
                                        (_tl49715001_ (##cdr _e49694994_)))
                                    ((lambda (_L5004_ _L5006_)
                                       (if (_kw-lambda?4932_ _L5006_)
                                           (let* ((_g50225029_
                                                   (lambda (_g50235025_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g50235025_)))
                                                  (_g50215150_
                                                   (lambda (_g50235033_)
                                                     ((lambda ()
                                                        (let ()
                                                          (let ((_g35131_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_kw-lambda-split4933_ _L5006_)))
                    (begin
                      (let ((_g35132_
                             (if (##values? _g35131_)
                                 (##vector-length _g35131_)
                                 1)))
                        (if (not (##fx= _g35132_ 3))
                            (error "Context expects 3 values" _g35132_)))
                      (let ((_key5042_ (##vector-ref _g35131_ 0))
                            (_kwargs5044_ (##vector-ref _g35131_ 1))
                            (_args5045_ (##vector-ref _g35131_ 2)))
                        (let* ((_g50475055_
                                (lambda (_g50485051_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g50485051_)))
                               (_g50465146_
                                (lambda (_g50485059_)
                                  ((lambda (_L5062_)
                                     (let ()
                                       (let* ((_g50805088_
                                               (lambda (_g50815084_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g50815084_)))
                                              (_g50795142_
                                               (lambda (_g50815092_)
                                                 ((lambda (_L5095_)
                                                    (let ()
                                                      (let* ((_g51085116_
                                                              (lambda (_g51095112_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g51095112_)))
                     (_g51075138_
                      (lambda (_g51095120_)
                        ((lambda (_L5123_)
                           (let ()
                             (let ()
                               (cons (gx#datum->syntax '#f 'let-values)
                                     (cons (cons (cons (cons _L5062_ '())
                                                       (cons _L5095_ '()))
                                                 '())
                                           (cons _L5123_ '()))))))
                         _g51095120_))))
                (_g51075138_
                 (gx#stx-wrap-source
                  (_generate-kw-dispatch4941_
                   _L5062_
                   _kwargs5044_
                   (not _key5042_))
                  (gx#stx-source _stx4925_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g50815092_))))
                                         (_g50795142_
                                          (gx#stx-wrap-source
                                           (_generate-kw-primary4940_
                                            _key5042_
                                            _kwargs5044_
                                            _args5045_
                                            _L5004_)
                                           (gx#stx-source _stx4925_))))))
                                   _g50485059_))))
                          (_g50465146_ (gx#genident 'kw-lambda))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g50215150_
                                              (_check-duplicate-bindings4935_
                                               _L5006_)))
                                           (_g49464977_ _g49474981_)))
                                     _tl49715001_
                                     _hd49704998_)))
                                (_g49464977_ _g49474981_))))
                        (_g49464977_ _g49474981_))))
                 (_g49445382_
                  (lambda (_g49475158_)
                    (if (gx#stx-pair? _g49475158_)
                        (let ((_e49585161_ (gx#syntax-e _g49475158_)))
                          (let ((_hd49595165_ (##car _e49585161_))
                                (_tl49605168_ (##cdr _e49585161_)))
                            (if (gx#stx-pair? _tl49605168_)
                                (let ((_e49615171_ (gx#syntax-e _tl49605168_)))
                                  (let ((_hd49625175_ (##car _e49615171_))
                                        (_tl49635178_ (##cdr _e49615171_)))
                                    ((lambda (_L5181_ _L5183_)
                                       (if (_opt-lambda?4930_ _L5183_)
                                           (let ((_g35133_
                                                  (_opt-lambda-split4931_
                                                   _L5183_)))
                                             (begin
                                               (let ((_g35134_
                                                      (if (##values? _g35133_)
                                                          (##vector-length
                                                           _g35133_)
                                                          1)))
                                                 (if (not (##fx= _g35134_ 3))
                                                     (error "Context expects 3 values"
                                                            _g35134_)))
                                               (let ((_pre5196_
                                                      (##vector-ref
                                                       _g35133_
                                                       0))
                                                     (_opt5198_
                                                      (##vector-ref
                                                       _g35133_
                                                       1))
                                                     (_tail5199_
                                                      (##vector-ref
                                                       _g35133_
                                                       2)))
                                                 (let* ((_g52015209_
                                                         (lambda (_g52025205_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax"
                                                            _g52025205_)))
                                                        (_g52005378_
                                                         (lambda (_g52025213_)
                                                           ((lambda (_L5216_)
                                                              (let ()
                                                                (let* ((_g52295237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_g52305233_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g52305233_)))
                               (_g52285374_
                                (lambda (_g52305241_)
                                  ((lambda (_L5244_)
                                     (let ()
                                       (let* ((_g52575274_
                                               (lambda (_g52585270_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g52585270_)))
                                              (_g52565370_
                                               (lambda (_g52585278_)
                                                 (if (gx#stx-pair/null?
                                                      _g52585278_)
                                                     (if (fx>= (gx#stx-length
                                                                _g52585278_)
                                                               '0)
                                                         (let ((_g35135_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g52585278_
                         '0)))
                   (begin
                     (let ((_g35136_
                            (if (##values? _g35135_)
                                (##vector-length _g35135_)
                                1)))
                       (if (not (##fx= _g35136_ 2))
                           (error "Context expects 2 values" _g35136_)))
                     (let ((_target52605281_ (##vector-ref _g35135_ 0))
                           (_tl52625284_ (##vector-ref _g35135_ 1)))
                       (if (gx#stx-null? _tl52625284_)
                           (letrec ((_loop52635287_
                                     (lambda (_hd52615291_ _clause52675294_)
                                       (if (gx#stx-pair? _hd52615291_)
                                           (let ((_e52645297_
                                                  (gx#syntax-e _hd52615291_)))
                                             (let ((_lp-hd52655301_
                                                    (##car _e52645297_))
                                                   (_lp-tl52665304_
                                                    (##cdr _e52645297_)))
                                               (_loop52635287_
                                                _lp-tl52665304_
                                                (cons _lp-hd52655301_
                                                      _clause52675294_))))
                                           (let ((_clause52685307_
                                                  (reverse _clause52675294_)))
                                             ((lambda (_L5311_)
                                                (let ()
                                                  (let* ((_g53285336_
                                                          (lambda (_g53295332_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g53295332_)))
                                                         (_g53275358_
                                                          (lambda (_g53295340_)
                                                            ((lambda (_L5343_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (cons (gx#datum->syntax '#f 'let-values)
                                 (cons (cons (cons (cons _L5216_ '())
                                                   (cons _L5244_ '()))
                                             '())
                                       (cons _L5343_ '()))))))
                     _g53295340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g53275358_
                                                     (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'case-lambda)
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g53615364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g53625367_)
                               (cons _g53615364_ _g53625367_))
                             '()
                             _L5311_)))
              (gx#stx-source _stx4925_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _clause52685307_))))))
                             (_loop52635287_ _target52605281_ '()))
                           (_g52575274_ _g52585278_)))))
                 (_g52575274_ _g52585278_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g52575274_
                                                      _g52585278_)))))
                                         (_g52565370_
                                          (_generate-opt-dispatch4937_
                                           _L5216_
                                           _pre5196_
                                           _opt5198_
                                           _tail5199_)))))
                                   _g52305241_))))
                          (_g52285374_
                           (gx#stx-wrap-source
                            (_generate-opt-primary4936_
                             _pre5196_
                             _opt5198_
                             _tail5199_
                             _L5181_)
                            (gx#stx-source _stx4925_))))))
                    _g52025213_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g52005378_
                                                    (gx#genident
                                                     'opt-lambda))))))
                                           (_g49455154_ _g49475158_)))
                                     _tl49635178_
                                     _hd49625175_)))
                                (_g49455154_ _g49475158_))))
                        (_g49455154_ _g49475158_))))
                 (_g49435424_
                  (lambda (_g49475386_)
                    (if (gx#stx-pair? _g49475386_)
                        (let ((_e49505389_ (gx#syntax-e _g49475386_)))
                          (let ((_hd49515393_ (##car _e49505389_))
                                (_tl49525396_ (##cdr _e49505389_)))
                            (if (gx#stx-pair? _tl49525396_)
                                (let ((_e49535399_ (gx#syntax-e _tl49525396_)))
                                  (let ((_hd49545403_ (##car _e49535399_))
                                        (_tl49555406_ (##cdr _e49535399_)))
                                    ((lambda (_L5409_ _L5411_)
                                       (if (_simple-lambda?4928_ _L5411_)
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'lambda%)
                                                 (cons _L5411_ _L5409_))
                                           (_g49445382_ _g49475386_)))
                                     _tl49555406_
                                     _hd49545403_)))
                                (_g49445382_ _g49475386_))))
                        (_g49445382_ _g49475386_)))))
            (_g49435424_ _stx4925_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#def|
      (lambda (_$stx8329_)
        (let* ((_g83348373_
                (lambda (_g83358369_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g83358369_)))
               (_g83338428_
                (lambda (_g83358377_)
                  (if (gx#stx-pair? _g83358377_)
                      (let ((_e83598380_ (gx#syntax-e _g83358377_)))
                        (let ((_hd83608384_ (##car _e83598380_))
                              (_tl83618387_ (##cdr _e83598380_)))
                          (if (gx#stx-pair? _tl83618387_)
                              (let ((_e83628390_ (gx#syntax-e _tl83618387_)))
                                (let ((_hd83638394_ (##car _e83628390_))
                                      (_tl83648397_ (##cdr _e83628390_)))
                                  (if (gx#stx-pair? _tl83648397_)
                                      (let ((_e83658400_
                                             (gx#syntax-e _tl83648397_)))
                                        (let ((_hd83668404_
                                               (##car _e83658400_))
                                              (_tl83678407_
                                               (##cdr _e83658400_)))
                                          (if (gx#stx-null? _tl83678407_)
                                              ((lambda (_L8410_ _L8412_)
                                                 (if (gx#identifier? _L8412_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons (cons _L8412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '())
                         (cons _L8410_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g83348373_
                                                      _g83358377_)))
                                               _hd83668404_
                                               _hd83638394_)
                                              (_g83348373_ _g83358377_))))
                                      (_g83348373_ _g83358377_))))
                              (_g83348373_ _g83358377_))))
                      (_g83348373_ _g83358377_))))
               (_g83328526_
                (lambda (_g83358432_)
                  (if (gx#stx-pair? _g83358432_)
                      (let ((_e83398435_ (gx#syntax-e _g83358432_)))
                        (let ((_hd83408439_ (##car _e83398435_))
                              (_tl83418442_ (##cdr _e83398435_)))
                          (if (gx#stx-pair? _tl83418442_)
                              (let ((_e83428445_ (gx#syntax-e _tl83418442_)))
                                (let ((_hd83438449_ (##car _e83428445_))
                                      (_tl83448452_ (##cdr _e83428445_)))
                                  (if (gx#stx-pair? _hd83438449_)
                                      (let ((_e83458455_
                                             (gx#syntax-e _hd83438449_)))
                                        (let ((_hd83468459_
                                               (##car _e83458455_))
                                              (_tl83478462_
                                               (##cdr _e83458455_)))
                                          (if (gx#stx-pair/null? _tl83448452_)
                                              (if (fx>= (gx#stx-length
                                                         _tl83448452_)
                                                        '0)
                                                  (let ((_g35137_
                                                         (gx#syntax-split-splice
                                                          _tl83448452_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35138_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35137_)
                         (##vector-length _g35137_)
                         1)))
                (if (not (##fx= _g35138_ 2))
                    (error "Context expects 2 values" _g35138_)))
              (let ((_target83488465_ (##vector-ref _g35137_ 0))
                    (_tl83508468_ (##vector-ref _g35137_ 1)))
                (if (gx#stx-null? _tl83508468_)
                    (letrec ((_loop83518471_
                              (lambda (_hd83498475_ _body83558478_)
                                (if (gx#stx-pair? _hd83498475_)
                                    (let ((_e83528481_
                                           (gx#syntax-e _hd83498475_)))
                                      (let ((_lp-hd83538485_
                                             (##car _e83528481_))
                                            (_lp-tl83548488_
                                             (##cdr _e83528481_)))
                                        (_loop83518471_
                                         _lp-tl83548488_
                                         (cons _lp-hd83538485_
                                               _body83558478_))))
                                    (let ((_body83568491_
                                           (reverse _body83558478_)))
                                      ((lambda (_L8495_ _L8497_ _L8498_)
                                         (if (gx#identifier? _L8498_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'define-values)
                                                   (cons (cons _L8498_ '())
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons _L8497_
                                   (begin
                                     '#!void
                                     (foldr (lambda (_g85178520_ _g85188523_)
                                              (cons _g85178520_ _g85188523_))
                                            '()
                                            _L8495_))))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g83338428_ _g83358432_)))
                                       _body83568491_
                                       _tl83478462_
                                       _hd83468459_))))))
                      (_loop83518471_ _target83488465_ '()))
                    (_g83338428_ _g83358432_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g83338428_ _g83358432_))
                                              (_g83338428_ _g83358432_))))
                                      (_g83338428_ _g83358432_))))
                              (_g83338428_ _g83358432_))))
                      (_g83338428_ _g83358432_)))))
          (_g83328526_ _$stx8329_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#def*|
      (lambda (_$stx8531_)
        (let* ((_g85358559_
                (lambda (_g85368555_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g85368555_)))
               (_g85348644_
                (lambda (_g85368563_)
                  (if (gx#stx-pair? _g85368563_)
                      (let ((_e85398566_ (gx#syntax-e _g85368563_)))
                        (let ((_hd85408570_ (##car _e85398566_))
                              (_tl85418573_ (##cdr _e85398566_)))
                          (if (gx#stx-pair? _tl85418573_)
                              (let ((_e85428576_ (gx#syntax-e _tl85418573_)))
                                (let ((_hd85438580_ (##car _e85428576_))
                                      (_tl85448583_ (##cdr _e85428576_)))
                                  (if (gx#stx-pair/null? _tl85448583_)
                                      (if (fx>= (gx#stx-length _tl85448583_)
                                                '0)
                                          (let ((_g35139_
                                                 (gx#syntax-split-splice
                                                  _tl85448583_
                                                  '0)))
                                            (begin
                                              (let ((_g35140_
                                                     (if (##values? _g35139_)
                                                         (##vector-length
                                                          _g35139_)
                                                         1)))
                                                (if (not (##fx= _g35140_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35140_)))
                                              (let ((_target85458586_
                                                     (##vector-ref _g35139_ 0))
                                                    (_tl85478589_
                                                     (##vector-ref
                                                      _g35139_
                                                      1)))
                                                (if (gx#stx-null? _tl85478589_)
                                                    (letrec ((_loop85488592_
                                                              (lambda (_hd85468596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clauses85528599_)
                        (if (gx#stx-pair? _hd85468596_)
                            (let ((_e85498602_ (gx#syntax-e _hd85468596_)))
                              (let ((_lp-hd85508606_ (##car _e85498602_))
                                    (_lp-tl85518609_ (##cdr _e85498602_)))
                                (_loop85488592_
                                 _lp-tl85518609_
                                 (cons _lp-hd85508606_ _clauses85528599_))))
                            (let ((_clauses85538612_
                                   (reverse _clauses85528599_)))
                              ((lambda (_L8616_ _L8618_)
                                 (if (gx#identifier? _L8618_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'define-values)
                                           (cons (cons _L8618_ '())
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'case-lambda)
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g86358638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g86368641_)
                                (cons _g86358638_ _g86368641_))
                              '()
                              _L8616_)))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_g85358559_ _g85368563_)))
                               _clauses85538612_
                               _hd85438580_))))))
              (_loop85488592_ _target85458586_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g85358559_
                                                     _g85368563_)))))
                                          (_g85358559_ _g85368563_))
                                      (_g85358559_ _g85368563_))))
                              (_g85358559_ _g85368563_))))
                      (_g85358559_ _g85368563_)))))
          (_g85348644_ _$stx8531_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#defvalues|
      (lambda (_$stx8649_)
        (let* ((_g86538671_
                (lambda (_g86548667_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g86548667_)))
               (_g86528726_
                (lambda (_g86548675_)
                  (if (gx#stx-pair? _g86548675_)
                      (let ((_e86578678_ (gx#syntax-e _g86548675_)))
                        (let ((_hd86588682_ (##car _e86578678_))
                              (_tl86598685_ (##cdr _e86578678_)))
                          (if (gx#stx-pair? _tl86598685_)
                              (let ((_e86608688_ (gx#syntax-e _tl86598685_)))
                                (let ((_hd86618692_ (##car _e86608688_))
                                      (_tl86628695_ (##cdr _e86608688_)))
                                  (if (gx#stx-pair? _tl86628695_)
                                      (let ((_e86638698_
                                             (gx#syntax-e _tl86628695_)))
                                        (let ((_hd86648702_
                                               (##car _e86638698_))
                                              (_tl86658705_
                                               (##cdr _e86638698_)))
                                          (if (gx#stx-null? _tl86658705_)
                                              ((lambda (_L8708_ _L8710_)
                                                 (if (gx#identifier-list?
                                                      _L8710_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'define-values)
                                                           (cons _L8710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L8708_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g86538671_
                                                      _g86548675_)))
                                               _hd86648702_
                                               _hd86618692_)
                                              (_g86538671_ _g86548675_))))
                                      (_g86538671_ _g86548675_))))
                              (_g86538671_ _g86548675_))))
                      (_g86538671_ _g86548675_)))))
          (_g86528726_ _$stx8649_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#case|
      (lambda (_$stx8730_)
        (let* ((_g87348758_
                (lambda (_g87358754_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g87358754_)))
               (_g87338843_
                (lambda (_g87358762_)
                  (if (gx#stx-pair? _g87358762_)
                      (let ((_e87388765_ (gx#syntax-e _g87358762_)))
                        (let ((_hd87398769_ (##car _e87388765_))
                              (_tl87408772_ (##cdr _e87388765_)))
                          (if (gx#stx-pair? _tl87408772_)
                              (let ((_e87418775_ (gx#syntax-e _tl87408772_)))
                                (let ((_hd87428779_ (##car _e87418775_))
                                      (_tl87438782_ (##cdr _e87418775_)))
                                  (if (gx#stx-pair/null? _tl87438782_)
                                      (if (fx>= (gx#stx-length _tl87438782_)
                                                '0)
                                          (let ((_g35141_
                                                 (gx#syntax-split-splice
                                                  _tl87438782_
                                                  '0)))
                                            (begin
                                              (let ((_g35142_
                                                     (if (##values? _g35141_)
                                                         (##vector-length
                                                          _g35141_)
                                                         1)))
                                                (if (not (##fx= _g35142_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35142_)))
                                              (let ((_target87448785_
                                                     (##vector-ref _g35141_ 0))
                                                    (_tl87468788_
                                                     (##vector-ref
                                                      _g35141_
                                                      1)))
                                                (if (gx#stx-null? _tl87468788_)
                                                    (letrec ((_loop87478791_
                                                              (lambda (_hd87458795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause87518798_)
                        (if (gx#stx-pair? _hd87458795_)
                            (let ((_e87488801_ (gx#syntax-e _hd87458795_)))
                              (let ((_lp-hd87498805_ (##car _e87488801_))
                                    (_lp-tl87508808_ (##cdr _e87488801_)))
                                (_loop87478791_
                                 _lp-tl87508808_
                                 (cons _lp-hd87498805_ _clause87518798_))))
                            (let ((_clause87528811_
                                   (reverse _clause87518798_)))
                              ((lambda (_L8815_ _L8817_)
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (gx#datum->syntax '#f '$e)
                                                   (cons _L8817_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '~case)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '$e)
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr (lambda (_g88348837_ _g88358840_)
                                  (cons _g88348837_ _g88358840_))
                                '()
                                _L8815_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                               _clause87528811_
                               _hd87428779_))))))
              (_loop87478791_ _target87448785_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g87348758_
                                                     _g87358762_)))))
                                          (_g87348758_ _g87358762_))
                                      (_g87348758_ _g87358762_))))
                              (_g87348758_ _g87358762_))))
                      (_g87348758_ _g87358762_)))))
          (_g87338843_ _$stx8730_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case|
      (lambda (_stx8848_)
        (letrec ((_parse-clauses8851_
                  (lambda (_e11314_ _clauses11316_)
                    (let _lp11318_ ((_rest11321_ _clauses11316_)
                                    (_datums11323_ '())
                                    (_dispatch11324_ '())
                                    (_default11325_ '#f))
                      (let* ((_g1132811340_
                              (lambda (_g1132911336_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1132911336_)))
                             (_g1132711355_
                              (lambda (_g1132911344_)
                                (if (gx#stx-null? _g1132911344_)
                                    ((lambda ()
                                       (begin
                                         (_check-duplicate-datums8853_
                                          _datums11323_)
                                         (values (reverse _datums11323_)
                                                 (reverse _dispatch11324_)
                                                 (let ((_$e11351_
                                                        _default11325_))
                                                   (if _$e11351_
                                                       _$e11351_
                                                       '#!void))))))
                                    (_g1132811340_ _g1132911344_))))
                             (_g1132611786_
                              (lambda (_g1132911359_)
                                (if (gx#stx-pair? _g1132911359_)
                                    (let ((_e1133211362_
                                           (gx#syntax-e _g1132911359_)))
                                      (let ((_hd1133311366_
                                             (##car _e1133211362_))
                                            (_tl1133411369_
                                             (##cdr _e1133211362_)))
                                        ((lambda (_L11372_ _L11374_)
                                           (let* ((_g1139111454_
                                                   (lambda (_g1139211450_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1139211450_)))
                                                  (_g1139011577_
                                                   (lambda (_g1139211458_)
                                                     (if (gx#stx-pair?
                                                          _g1139211458_)
                                                         (let ((_e1142811461_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1139211458_)))
                   (let ((_hd1142911465_ (##car _e1142811461_))
                         (_tl1143011468_ (##cdr _e1142811461_)))
                     (if (gx#stx-pair/null? _hd1142911465_)
                         (if (fx>= (gx#stx-length _hd1142911465_) '0)
                             (let ((_g35143_
                                    (gx#syntax-split-splice
                                     _hd1142911465_
                                     '0)))
                               (begin
                                 (let ((_g35144_
                                        (if (##values? _g35143_)
                                            (##vector-length _g35143_)
                                            1)))
                                   (if (not (##fx= _g35144_ 2))
                                       (error "Context expects 2 values"
                                              _g35144_)))
                                 (let ((_target1143111471_
                                        (##vector-ref _g35143_ 0))
                                       (_tl1143311474_
                                        (##vector-ref _g35143_ 1)))
                                   (if (gx#stx-null? _tl1143311474_)
                                       (letrec ((_loop1143411477_
                                                 (lambda (_hd1143211481_
                                                          _datum1143811484_)
                                                   (if (gx#stx-pair?
                                                        _hd1143211481_)
                                                       (let ((_e1143511487_
                                                              (gx#syntax-e
                                                               _hd1143211481_)))
                                                         (let ((_lp-hd1143611491_
                                                                (##car _e1143511487_))
                                                               (_lp-tl1143711494_
                                                                (##cdr _e1143511487_)))
                                                           (_loop1143411477_
                                                            _lp-tl1143711494_
                                                            (cons _lp-hd1143611491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1143811484_))))
               (let ((_datum1143911497_ (reverse _datum1143811484_)))
                 (if (gx#stx-pair/null? _tl1143011468_)
                     (if (fx>= (gx#stx-length _tl1143011468_) '0)
                         (let ((_g35145_
                                (gx#syntax-split-splice _tl1143011468_ '0)))
                           (begin
                             (let ((_g35146_
                                    (if (##values? _g35145_)
                                        (##vector-length _g35145_)
                                        1)))
                               (if (not (##fx= _g35146_ 2))
                                   (error "Context expects 2 values"
                                          _g35146_)))
                             (let ((_target1144011501_
                                    (##vector-ref _g35145_ 0))
                                   (_tl1144211504_ (##vector-ref _g35145_ 1)))
                               (if (gx#stx-null? _tl1144211504_)
                                   (letrec ((_loop1144311507_
                                             (lambda (_hd1144111511_
                                                      _body1144711514_)
                                               (if (gx#stx-pair?
                                                    _hd1144111511_)
                                                   (let ((_e1144411517_
                                                          (gx#syntax-e
                                                           _hd1144111511_)))
                                                     (let ((_lp-hd1144511521_
                                                            (##car _e1144411517_))
                                                           (_lp-tl1144611524_
                                                            (##cdr _e1144411517_)))
                                                       (_loop1144311507_
                                                        _lp-tl1144611524_
                                                        (cons _lp-hd1144511521_
                                                              _body1144711514_))))
                                                   (let ((_body1144811527_
                                                          (reverse _body1144711514_)))
                                                     ((lambda (_L11531_
                                                               _L11533_)
                                                        (if (null? (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#!void
                             (foldr (lambda (_g1155211555_ _g1155311558_)
                                      (cons _g1155211555_ _g1155311558_))
                                    '()
                                    _L11533_)))
                    (_lp11318_
                     _L11372_
                     _datums11323_
                     _dispatch11324_
                     _default11325_)
                    (_lp11318_
                     _L11372_
                     (cons (map gx#stx-e
                                (begin
                                  '#!void
                                  (foldr (lambda (_g1156011563_ _g1156111566_)
                                           (cons _g1156011563_ _g1156111566_))
                                         '()
                                         _L11533_)))
                           _datums11323_)
                     (cons (cons (gx#datum->syntax '#f 'begin)
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1156811571_ _g1156911574_)
                                            (cons _g1156811571_ _g1156911574_))
                                          '()
                                          _L11531_)))
                           _dispatch11324_)
                     _default11325_)))
              _body1144811527_
              _datum1143911497_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1144311507_ _target1144011501_ '()))
                                   (_g1139111454_ _g1139211458_)))))
                         (_g1139111454_ _g1139211458_))
                     (_g1139111454_ _g1139211458_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1143411477_
                                          _target1143111471_
                                          '()))
                                       (_g1139111454_ _g1139211458_)))))
                             (_g1139111454_ _g1139211458_))
                         (_g1139111454_ _g1139211458_))))
                 (_g1139111454_ _g1139211458_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1138911712_
                                                   (lambda (_g1139211581_)
                                                     (if (gx#stx-pair?
                                                          _g1139211581_)
                                                         (let ((_e1140811584_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1139211581_)))
                   (let ((_hd1140911588_ (##car _e1140811584_))
                         (_tl1141011591_ (##cdr _e1140811584_)))
                     (if (gx#stx-pair/null? _hd1140911588_)
                         (if (fx>= (gx#stx-length _hd1140911588_) '0)
                             (let ((_g35147_
                                    (gx#syntax-split-splice
                                     _hd1140911588_
                                     '0)))
                               (begin
                                 (let ((_g35148_
                                        (if (##values? _g35147_)
                                            (##vector-length _g35147_)
                                            1)))
                                   (if (not (##fx= _g35148_ 2))
                                       (error "Context expects 2 values"
                                              _g35148_)))
                                 (let ((_target1141111594_
                                        (##vector-ref _g35147_ 0))
                                       (_tl1141311597_
                                        (##vector-ref _g35147_ 1)))
                                   (if (gx#stx-null? _tl1141311597_)
                                       (letrec ((_loop1141411600_
                                                 (lambda (_hd1141211604_
                                                          _datum1141811607_)
                                                   (if (gx#stx-pair?
                                                        _hd1141211604_)
                                                       (let ((_e1141511610_
                                                              (gx#syntax-e
                                                               _hd1141211604_)))
                                                         (let ((_lp-hd1141611614_
                                                                (##car _e1141511610_))
                                                               (_lp-tl1141711617_
                                                                (##cdr _e1141511610_)))
                                                           (_loop1141411600_
                                                            _lp-tl1141711617_
                                                            (cons _lp-hd1141611614_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1141811607_))))
               (let ((_datum1141911620_ (reverse _datum1141811607_)))
                 (if (gx#stx-pair? _tl1141011591_)
                     (let ((_e1142011624_ (gx#syntax-e _tl1141011591_)))
                       (let ((_hd1142111628_ (##car _e1142011624_))
                             (_tl1142211631_ (##cdr _e1142011624_)))
                         (if (gx#identifier? _hd1142111628_)
                             (if (gx#free-identifier=?
                                  |gerbil/core$<sugar>$<sugar:2>[1]#_g35149_|
                                  _hd1142111628_)
                                 (if (gx#stx-pair? _tl1142211631_)
                                     (let ((_e1142311634_
                                            (gx#syntax-e _tl1142211631_)))
                                       (let ((_hd1142411638_
                                              (##car _e1142311634_))
                                             (_tl1142511641_
                                              (##cdr _e1142311634_)))
                                         (if (gx#stx-null? _tl1142511641_)
                                             ((lambda (_L11644_ _L11646_)
                                                (if (null? (begin
                                                             '#!void
                                                             (foldr (lambda (_g1166411667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1166511670_)
                              (cons _g1166411667_ _g1166511670_))
                            '()
                            _L11646_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_lp11318_
                                                     _L11372_
                                                     _datums11323_
                                                     _dispatch11324_
                                                     _default11325_)
                                                    (let* ((_g1167311681_
                                                            (lambda (_g1167411677_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1167411677_)))
                                                           (_g1167211708_
                                                            (lambda (_g1167411685_)
                                                              ((lambda (_L11688_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (_lp11318_
                            _L11372_
                            (cons (map gx#stx-e
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1169911702_
                                                         _g1170011705_)
                                                  (cons _g1169911702_
                                                        _g1170011705_))
                                                '()
                                                _L11646_)))
                                  _datums11323_)
                            (cons (cons _L11644_ (cons _L11688_ '()))
                                  _dispatch11324_)
                            _default11325_)))
                       _g1167411685_))))
              (_g1167211708_ _e11314_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd1142411638_
                                              _datum1141911620_)
                                             (_g1139011577_ _g1139211581_))))
                                     (_g1139011577_ _g1139211581_))
                                 (_g1139011577_ _g1139211581_))
                             (_g1139011577_ _g1139211581_))))
                     (_g1139011577_ _g1139211581_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_loop1141411600_
                                          _target1141111594_
                                          '()))
                                       (_g1139011577_ _g1139211581_)))))
                             (_g1139011577_ _g1139211581_))
                         (_g1139011577_ _g1139211581_))))
                 (_g1139011577_ _g1139211581_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1138811782_
                                                   (lambda (_g1139211716_)
                                                     (if (gx#stx-pair?
                                                          _g1139211716_)
                                                         (let ((_e1139411719_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1139211716_)))
                   (let ((_hd1139511723_ (##car _e1139411719_))
                         (_tl1139611726_ (##cdr _e1139411719_)))
                     (if (gx#identifier? _hd1139511723_)
                         (if (gx#free-identifier=?
                              |gerbil/core$<sugar>$<sugar:2>[1]#_g35150_|
                              _hd1139511723_)
                             (if (gx#stx-pair/null? _tl1139611726_)
                                 (if (fx>= (gx#stx-length _tl1139611726_) '0)
                                     (let ((_g35151_
                                            (gx#syntax-split-splice
                                             _tl1139611726_
                                             '0)))
                                       (begin
                                         (let ((_g35152_
                                                (if (##values? _g35151_)
                                                    (##vector-length _g35151_)
                                                    1)))
                                           (if (not (##fx= _g35152_ 2))
                                               (error "Context expects 2 values"
                                                      _g35152_)))
                                         (let ((_target1139711729_
                                                (##vector-ref _g35151_ 0))
                                               (_tl1139911732_
                                                (##vector-ref _g35151_ 1)))
                                           (if (gx#stx-null? _tl1139911732_)
                                               (letrec ((_loop1140011735_
                                                         (lambda (_hd1139811739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body1140411742_)
                   (if (gx#stx-pair? _hd1139811739_)
                       (let ((_e1140111745_ (gx#syntax-e _hd1139811739_)))
                         (let ((_lp-hd1140211749_ (##car _e1140111745_))
                               (_lp-tl1140311752_ (##cdr _e1140111745_)))
                           (_loop1140011735_
                            _lp-tl1140311752_
                            (cons _lp-hd1140211749_ _body1140411742_))))
                       (let ((_body1140511755_ (reverse _body1140411742_)))
                         ((lambda (_L11759_)
                            (if (gx#stx-null? _L11372_)
                                (if _default11325_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Duplicate else clause"
                                     _stx8848_
                                     _L11374_)
                                    (_lp11318_
                                     _L11372_
                                     _datums11323_
                                     _dispatch11324_
                                     (cons (gx#datum->syntax '#f 'begin)
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g1177311776_
                                                             _g1177411779_)
                                                      (cons _g1177311776_
                                                            _g1177411779_))
                                                    '()
                                                    _L11759_)))))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Misplaced else clause"
                                 _stx8848_
                                 _L11374_)))
                          _body1140511755_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1140011735_
                                                  _target1139711729_
                                                  '()))
                                               (_g1138911712_
                                                _g1139211716_)))))
                                     (_g1138911712_ _g1139211716_))
                                 (_g1138911712_ _g1139211716_))
                             (_g1138911712_ _g1139211716_))
                         (_g1138911712_ _g1139211716_))))
                 (_g1138911712_ _g1139211716_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1138811782_ _L11374_)))
                                         _tl1133411369_
                                         _hd1133311366_)))
                                    (_g1132711355_ _g1132911359_)))))
                        (_g1132611786_ _rest11321_)))))
                 (_check-duplicate-datums8853_
                  (lambda (_datums11302_)
                    (let ((_ht11305_ (make-hash-table)))
                      (for-each
                       (lambda (_lst11308_)
                         (for-each
                          (lambda (_datum11311_)
                            (if (hash-get _ht11305_ _datum11311_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _stx8848_
                                 _datum11311_)
                                (hash-put! _ht11305_ _datum11311_ '#t)))
                          _lst11308_))
                       _datums11302_))))
                 (_count-datums8854_
                  (lambda (_datums11295_)
                    (foldl (lambda (_lst11298_ _r11300_)
                             (+ (length _lst11298_) _r11300_))
                           '0
                           _datums11295_)))
                 (_symbolic-datums?8855_
                  (lambda (_datums11289_)
                    (andmap (lambda (_lst11292_) (andmap symbol? _lst11292_))
                            _datums11289_)))
                 (_char-datums?8856_
                  (lambda (_datums11283_)
                    (andmap (lambda (_lst11286_) (andmap char? _lst11286_))
                            _datums11283_)))
                 (_fixnum-datums?8857_
                  (lambda (_datums11277_)
                    (andmap (lambda (_lst11280_) (andmap fixnum? _lst11280_))
                            _datums11277_)))
                 (_eq-datums?8858_
                  (lambda (_datums11260_)
                    (andmap (lambda (_lst11263_)
                              (andmap (lambda (_x11266_)
                                        (let ((_$e11269_ (symbol? _x11266_)))
                                          (if _$e11269_
                                              _$e11269_
                                              (let ((_$e11273_
                                                     (keyword? _x11266_)))
                                                (if _$e11273_
                                                    _$e11273_
                                                    (immediate? _x11266_))))))
                                      _lst11263_))
                            _datums11260_)))
                 (_generate-simple-case8859_
                  (lambda (_e11024_
                           _datums11026_
                           _dispatch11027_
                           _default11028_)
                    (let* ((_g1103011038_
                            (lambda (_g1103111034_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1103111034_)))
                           (_g1102911256_
                            (lambda (_g1103111042_)
                              ((lambda (_L11045_)
                                 (let ()
                                   (let _recur11057_ ((_datums11060_
                                                       _datums11026_)
                                                      (_dispatch11062_
                                                       _dispatch11027_))
                                     (let* ((_g1106511086_
                                             (lambda (_g1106611082_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1106611082_)))
                                            (_g1106411097_
                                             (lambda (_g1106611090_)
                                               ((lambda () _default11028_))))
                                            (_g1106311252_
                                             (lambda (_g1106611101_)
                                               (if (gx#stx-pair? _g1106611101_)
                                                   (let ((_e1106911104_
                                                          (gx#syntax-e
                                                           _g1106611101_)))
                                                     (let ((_hd1107011108_
                                                            (##car _e1106911104_))
                                                           (_tl1107111111_
                                                            (##cdr _e1106911104_)))
                                                       (if (gx#stx-pair/null?
                                                            _hd1107011108_)
                                                           (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _hd1107011108_)
                             '0)
                       (let ((_g35153_
                              (gx#syntax-split-splice _hd1107011108_ '0)))
                         (begin
                           (let ((_g35154_
                                  (if (##values? _g35153_)
                                      (##vector-length _g35153_)
                                      1)))
                             (if (not (##fx= _g35154_ 2))
                                 (error "Context expects 2 values" _g35154_)))
                           (let ((_target1107211114_ (##vector-ref _g35153_ 0))
                                 (_tl1107411117_ (##vector-ref _g35153_ 1)))
                             (if (gx#stx-null? _tl1107411117_)
                                 (letrec ((_loop1107511120_
                                           (lambda (_hd1107311124_
                                                    _datum1107911127_)
                                             (if (gx#stx-pair? _hd1107311124_)
                                                 (let ((_e1107611130_
                                                        (gx#syntax-e
                                                         _hd1107311124_)))
                                                   (let ((_lp-hd1107711134_
                                                          (##car _e1107611130_))
                                                         (_lp-tl1107811137_
                                                          (##cdr _e1107611130_)))
                                                     (_loop1107511120_
                                                      _lp-tl1107811137_
                                                      (cons _lp-hd1107711134_
                                                            _datum1107911127_))))
                                                 (let ((_datum1108011140_
                                                        (reverse _datum1107911127_)))
                                                   ((lambda (_L11144_ _L11146_)
                                                      (let* ((_g1116611178_
                                                              (lambda (_g1116711174_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g1116711174_)))
                     (_g1116511248_
                      (lambda (_g1116711182_)
                        (if (gx#stx-pair? _g1116711182_)
                            (let ((_e1117011185_ (gx#syntax-e _g1116711182_)))
                              (let ((_hd1117111189_ (##car _e1117011185_))
                                    (_tl1117211192_ (##cdr _e1117011185_)))
                                ((lambda (_L11195_ _L11197_)
                                   (let* ((_g1120911217_
                                           (lambda (_g1121011213_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1121011213_)))
                                          (_g1120811244_
                                           (lambda (_g1121011221_)
                                             ((lambda (_L11224_)
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'if)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'or)
                            (begin
                              '#!void
                              (foldr (lambda (_g1123511238_ _g1123611241_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '~case-test)
                                                   (cons _g1123511238_
                                                         (cons _L11045_ '())))
                                             _g1123611241_))
                                     '()
                                     _L11146_)))
                      (cons _L11197_ (cons _L11224_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _g1121011221_))))
                                     (_g1120811244_
                                      (_recur11057_ _L11144_ _L11195_))))
                                 _tl1117211192_
                                 _hd1117111189_)))
                            (_g1116611178_ _g1116711182_)))))
                (_g1116511248_ _dispatch11062_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _tl1107111111_
                                                    _datum1108011140_))))))
                                   (_loop1107511120_ _target1107211114_ '()))
                                 (_g1106411097_ _g1106611101_)))))
                       (_g1106411097_ _g1106611101_))
                   (_g1106411097_ _g1106611101_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1106411097_
                                                    _g1106611101_)))))
                                       (_g1106311252_ _datums11060_)))))
                               _g1103111042_))))
                      (_g1102911256_ _e11024_))))
                 (_datum-dispatch-index8860_
                  (lambda (_datums10896_)
                    (let _lp10899_ ((_rest10902_ _datums10896_)
                                    (_ix10904_ '0)
                                    (_r10905_ '()))
                      (let* ((_g1090810929_
                              (lambda (_g1090910925_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1090910925_)))
                             (_g1090710940_
                              (lambda (_g1090910933_) ((lambda () _r10905_))))
                             (_g1090611020_
                              (lambda (_g1090910944_)
                                (if (gx#stx-pair? _g1090910944_)
                                    (let ((_e1091210947_
                                           (gx#syntax-e _g1090910944_)))
                                      (let ((_hd1091310951_
                                             (##car _e1091210947_))
                                            (_tl1091410954_
                                             (##cdr _e1091210947_)))
                                        (if (gx#stx-pair/null? _hd1091310951_)
                                            (if (fx>= (gx#stx-length
                                                       _hd1091310951_)
                                                      '0)
                                                (let ((_g35155_
                                                       (gx#syntax-split-splice
                                                        _hd1091310951_
                                                        '0)))
                                                  (begin
                                                    (let ((_g35156_
                                                           (if (##values?
                                                                _g35155_)
                                                               (##vector-length
                                                                _g35155_)
                                                               1)))
                                                      (if (not (##fx= _g35156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g35156_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1091510957_
                                                           (##vector-ref
                                                            _g35155_
                                                            0))
                                                          (_tl1091710960_
                                                           (##vector-ref
                                                            _g35155_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1091710960_)
                                                          (letrec ((_loop1091810963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1091610967_ _datum1092210970_)
                              (if (gx#stx-pair? _hd1091610967_)
                                  (let ((_e1091910973_
                                         (gx#syntax-e _hd1091610967_)))
                                    (let ((_lp-hd1092010977_
                                           (##car _e1091910973_))
                                          (_lp-tl1092110980_
                                           (##cdr _e1091910973_)))
                                      (_loop1091810963_
                                       _lp-tl1092110980_
                                       (cons _lp-hd1092010977_
                                             _datum1092210970_))))
                                  (let ((_datum1092310983_
                                         (reverse _datum1092210970_)))
                                    ((lambda (_L10987_ _L10989_)
                                       (_lp10899_
                                        _L10987_
                                        (fx1+ _ix10904_)
                                        (foldl (lambda (_x11008_ _r11010_)
                                                 (cons (cons _x11008_
                                                             _ix10904_)
                                                       _r11010_))
                                               _r10905_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1101111014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1101211017_)
                  (cons _g1101111014_ _g1101211017_))
                '()
                _L10989_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _tl1091410954_
                                     _datum1092310983_))))))
                    (_loop1091810963_ _target1091510957_ '()))
                  (_g1090710940_ _g1090910944_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1090710940_ _g1090910944_))
                                            (_g1090710940_ _g1090910944_))))
                                    (_g1090710940_ _g1090910944_)))))
                        (_g1090611020_ _rest10902_)))))
                 (_duplicate-indexes?8861_
                  (lambda (_xs10877_)
                    (let ((_ht10880_ (make-hash-table-eq)))
                      (let _lp10883_ ((_rest10886_ _xs10877_))
                        (if (pair? _rest10886_)
                            (let* ((_ix10889_ (car _rest10886_))
                                   (_$e10892_ (hash-get _ht10880_ _ix10889_)))
                              (if _$e10892_
                                  _$e10892_
                                  (begin
                                    (hash-put! _ht10880_ _ix10889_ '#t)
                                    (_lp10883_ (cdr _rest10886_)))))
                            '#f)))))
                 (_generate-hash-dispatch-table8862_
                  (lambda (_indexes10846_ _hash-e10848_)
                    (let _lp10850_ ((_len10853_
                                     (* '2 (length _indexes10846_))))
                      (let* ((_hs10859_
                              (map (lambda (_x10856_)
                                     (_hash-e10848_ (car _x10856_)))
                                   _indexes10846_))
                             (_xs10865_
                              (map (lambda (_h10862_)
                                     (fxmodulo _h10862_ _len10853_))
                                   _hs10859_)))
                        (if (_duplicate-indexes?8861_ _xs10865_)
                            (if (< _len10853_ '131072)
                                (_lp10850_ (quotient (fx* _len10853_ '3) '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _stx8848_
                                 _indexes10846_))
                            (let ((_tab10870_ (make-vector _len10853_ '#f)))
                              (begin
                                (for-each
                                 (lambda (_entry10873_ _x10875_)
                                   (vector-set!
                                    _tab10870_
                                    _x10875_
                                    _entry10873_))
                                 _indexes10846_
                                 _xs10865_)
                                _tab10870_)))))))
                 (_generate-symbolic-dispatch8863_
                  (lambda (_e10449_
                           _datums10451_
                           _dispatch10452_
                           _default10453_)
                    (let* ((_indexes10455_
                            (_datum-dispatch-index8860_ _datums10451_))
                           (_tab10458_
                            (_generate-hash-dispatch-table8862_
                             _indexes10455_
                             symbol-hash)))
                      (if (= (length _dispatch10452_) '1)
                          (let* ((_tab10466_
                                  (vector-map
                                   (lambda (_x10463_)
                                     (if _x10463_ (car _x10463_) '#f))
                                   _tab10458_))
                                 (_g1046910507_
                                  (lambda (_g1047010503_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1047010503_)))
                                 (_g1046810638_
                                  (lambda (_g1047010511_)
                                    (if (gx#stx-pair? _g1047010511_)
                                        (let ((_e1047810514_
                                               (gx#syntax-e _g1047010511_)))
                                          (let ((_hd1047910518_
                                                 (##car _e1047810514_))
                                                (_tl1048010521_
                                                 (##cdr _e1047810514_)))
                                            (if (gx#stx-pair? _tl1048010521_)
                                                (let ((_e1048110524_
                                                       (gx#syntax-e
                                                        _tl1048010521_)))
                                                  (let ((_hd1048210528_
                                                         (##car _e1048110524_))
                                                        (_tl1048310531_
                                                         (##cdr _e1048110524_)))
                                                    (if (gx#stx-pair?
                                                         _tl1048310531_)
                                                        (let ((_e1048410534_
                                                               (gx#syntax-e
                                                                _tl1048310531_)))
                                                          (let ((_hd1048510538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1048410534_))
                        (_tl1048610541_ (##cdr _e1048410534_)))
                    (if (gx#stx-pair? _tl1048610541_)
                        (let ((_e1048710544_ (gx#syntax-e _tl1048610541_)))
                          (let ((_hd1048810548_ (##car _e1048710544_))
                                (_tl1048910551_ (##cdr _e1048710544_)))
                            (if (gx#stx-pair? _hd1048810548_)
                                (let ((_e1049010554_
                                       (gx#syntax-e _hd1048810548_)))
                                  (let ((_hd1049110558_ (##car _e1049010554_))
                                        (_tl1049210561_ (##cdr _e1049010554_)))
                                    (if (gx#stx-null? _tl1049210561_)
                                        (if (gx#stx-pair? _tl1048910551_)
                                            (let ((_e1049310564_
                                                   (gx#syntax-e
                                                    _tl1048910551_)))
                                              (let ((_hd1049410568_
                                                     (##car _e1049310564_))
                                                    (_tl1049510571_
                                                     (##cdr _e1049310564_)))
                                                (if (gx#stx-pair?
                                                     _tl1049510571_)
                                                    (let ((_e1049610574_
                                                           (gx#syntax-e
                                                            _tl1049510571_)))
                                                      (let ((_hd1049710578_
                                                             (##car _e1049610574_))
                                                            (_tl1049810581_
                                                             (##cdr _e1049610574_)))
                                                        (if (gx#stx-pair?
                                                             _tl1049810581_)
                                                            (let ((_e1049910584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl1049810581_)))
                      (let ((_hd1050010588_ (##car _e1049910584_))
                            (_tl1050110591_ (##cdr _e1049910584_)))
                        (if (gx#stx-null? _tl1050110591_)
                            ((lambda (_L10594_
                                      _L10596_
                                      _L10597_
                                      _L10598_
                                      _L10599_
                                      _L10600_
                                      _L10601_)
                               (let ()
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L10600_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons '() (cons _L10597_ '())))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L10599_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L10596_ '()))
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
                             (cons _L10601_ '()))
                       (cons (cons (gx#datum->syntax '#f 'let*)
                                   (cons (cons (cons (gx#datum->syntax '#f 'h)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##symbol-hash)
                         (cons _L10601_ '()))
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
                                     (cons _L10594_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'q)
                         (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                     (cons _L10599_
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
                         (cons (gx#datum->syntax '#f 'q) (cons _L10601_ '())))
                   (cons _L10598_ (cons (cons _L10600_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons (cons _L10600_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))
                             _hd1050010588_
                             _hd1049710578_
                             _hd1049410568_
                             _hd1049110558_
                             _hd1048510538_
                             _hd1048210528_
                             _hd1047910518_)
                            (_g1046910507_ _g1047010511_))))
                    (_g1046910507_ _g1047010511_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1046910507_
                                                     _g1047010511_))))
                                            (_g1046910507_ _g1047010511_))
                                        (_g1046910507_ _g1047010511_))))
                                (_g1046910507_ _g1047010511_))))
                        (_g1046910507_ _g1047010511_))))
                (_g1046910507_ _g1047010511_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1046910507_
                                                 _g1047010511_))))
                                        (_g1046910507_ _g1047010511_)))))
                            (_g1046810638_
                             (list _e10449_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch10452_
                                   _default10453_
                                   _tab10466_
                                   (vector-length _tab10466_))))
                          (let* ((_g1064210686_
                                  (lambda (_g1064310682_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1064310682_)))
                                 (_g1064110842_
                                  (lambda (_g1064310690_)
                                    (if (gx#stx-pair? _g1064310690_)
                                        (let ((_e1065110693_
                                               (gx#syntax-e _g1064310690_)))
                                          (let ((_hd1065210697_
                                                 (##car _e1065110693_))
                                                (_tl1065310700_
                                                 (##cdr _e1065110693_)))
                                            (if (gx#stx-pair? _tl1065310700_)
                                                (let ((_e1065410703_
                                                       (gx#syntax-e
                                                        _tl1065310700_)))
                                                  (let ((_hd1065510707_
                                                         (##car _e1065410703_))
                                                        (_tl1065610710_
                                                         (##cdr _e1065410703_)))
                                                    (if (gx#stx-pair?
                                                         _tl1065610710_)
                                                        (let ((_e1065710713_
                                                               (gx#syntax-e
                                                                _tl1065610710_)))
                                                          (let ((_hd1065810717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1065710713_))
                        (_tl1065910720_ (##cdr _e1065710713_)))
                    (if (gx#stx-pair? _tl1065910720_)
                        (let ((_e1066010723_ (gx#syntax-e _tl1065910720_)))
                          (let ((_hd1066110727_ (##car _e1066010723_))
                                (_tl1066210730_ (##cdr _e1066010723_)))
                            (if (gx#stx-pair/null? _hd1066110727_)
                                (if (fx>= (gx#stx-length _hd1066110727_) '0)
                                    (let ((_g35157_
                                           (gx#syntax-split-splice
                                            _hd1066110727_
                                            '0)))
                                      (begin
                                        (let ((_g35158_
                                               (if (##values? _g35157_)
                                                   (##vector-length _g35157_)
                                                   1)))
                                          (if (not (##fx= _g35158_ 2))
                                              (error "Context expects 2 values"
                                                     _g35158_)))
                                        (let ((_target1066310733_
                                               (##vector-ref _g35157_ 0))
                                              (_tl1066510736_
                                               (##vector-ref _g35157_ 1)))
                                          (if (gx#stx-null? _tl1066510736_)
                                              (letrec ((_loop1066610739_
                                                        (lambda (_hd1066410743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _dispatch1067010746_)
                  (if (gx#stx-pair? _hd1066410743_)
                      (let ((_e1066710749_ (gx#syntax-e _hd1066410743_)))
                        (let ((_lp-hd1066810753_ (##car _e1066710749_))
                              (_lp-tl1066910756_ (##cdr _e1066710749_)))
                          (_loop1066610739_
                           _lp-tl1066910756_
                           (cons _lp-hd1066810753_ _dispatch1067010746_))))
                      (let ((_dispatch1067110759_
                             (reverse _dispatch1067010746_)))
                        (if (gx#stx-pair? _tl1066210730_)
                            (let ((_e1067210763_ (gx#syntax-e _tl1066210730_)))
                              (let ((_hd1067310767_ (##car _e1067210763_))
                                    (_tl1067410770_ (##cdr _e1067210763_)))
                                (if (gx#stx-pair? _tl1067410770_)
                                    (let ((_e1067510773_
                                           (gx#syntax-e _tl1067410770_)))
                                      (let ((_hd1067610777_
                                             (##car _e1067510773_))
                                            (_tl1067710780_
                                             (##cdr _e1067510773_)))
                                        (if (gx#stx-pair? _tl1067710780_)
                                            (let ((_e1067810783_
                                                   (gx#syntax-e
                                                    _tl1067710780_)))
                                              (let ((_hd1067910787_
                                                     (##car _e1067810783_))
                                                    (_tl1068010790_
                                                     (##cdr _e1067810783_)))
                                                (if (gx#stx-null?
                                                     _tl1068010790_)
                                                    ((lambda (_L10793_
                                                              _L10795_
                                                              _L10796_
                                                              _L10797_
                                                              _L10798_
                                                              _L10799_
                                                              _L10800_)
                                                       (let ()
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _L10799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _L10796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons _L10798_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _L10795_ '()))
                                                     '()))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'symbol?)
                                                     (cons _L10800_ '()))
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
                                                 (cons _L10800_ '()))
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'ix)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##fxmodulo)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'h)
                                                             (cons _L10793_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'q)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##vector-ref)
                                                             (cons _L10798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'ix) '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (gx#datum->syntax '#f 'q)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'eq?)
                           (cons (cons (gx#datum->syntax '#f '##car)
                                       (cons (gx#datum->syntax '#f 'q) '()))
                                 (cons _L10800_ '())))
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
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'x)
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g1083310836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1083410839_)
                            (cons _g1083310836_ _g1083410839_))
                          '()
                          _L10797_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _L10799_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L10799_ '())
                                                       '()))))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _L10799_ '())
                                                           '()))))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1067910787_
                                                     _hd1067610777_
                                                     _hd1067310767_
                                                     _dispatch1067110759_
                                                     _hd1065810717_
                                                     _hd1065510707_
                                                     _hd1065210697_)
                                                    (_g1064210686_
                                                     _g1064310690_))))
                                            (_g1064210686_ _g1064310690_))))
                                    (_g1064210686_ _g1064310690_))))
                            (_g1064210686_ _g1064310690_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1066610739_
                                                 _target1066310733_
                                                 '()))
                                              (_g1064210686_ _g1064310690_)))))
                                    (_g1064210686_ _g1064310690_))
                                (_g1064210686_ _g1064310690_))))
                        (_g1064210686_ _g1064310690_))))
                (_g1064210686_ _g1064310690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1064210686_
                                                 _g1064310690_))))
                                        (_g1064210686_ _g1064310690_)))))
                            (_g1064110842_
                             (list _e10449_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch10452_
                                   _default10453_
                                   _tab10458_
                                   (vector-length _tab10458_))))))))
                 (_max-char8864_
                  (lambda (_datums10438_)
                    (foldl (lambda (_lst10441_ _r10443_)
                             (foldl (lambda (_char10445_ _r10447_)
                                      (max (char->integer _char10445_)
                                           _r10447_))
                                    _r10443_
                                    _lst10441_))
                           '0
                           _datums10438_)))
                 (_generate-char-dispatch-table8865_
                  (lambda (_indexes10417_)
                    (let* ((_ixs10423_
                            (map (lambda (_x10420_)
                                   (char->integer (car _x10420_)))
                                 _indexes10417_))
                           (_len10426_ (fx1+ (foldl max '0 _ixs10423_)))
                           (_vec10429_ (make-vector _len10426_ '#f)))
                      (begin
                        (for-each
                         (lambda (_entry10434_ _x10436_)
                           (vector-set!
                            _vec10429_
                            _x10436_
                            (cdr _entry10434_)))
                         _indexes10417_
                         _ixs10423_)
                        _vec10429_))))
                 (_simple-char-range?8866_
                  (lambda (_tab10393_)
                    (let ((_end10396_ (vector-length _tab10393_)))
                      (let _lp10399_ ((_i10402_ '0))
                        (let ((_ix10405_ (vector-ref _tab10393_ _i10402_)))
                          (if _ix10405_
                              (let _lp210408_ ((_i10411_ (fx1+ _i10402_)))
                                (if (fx< _i10411_ _end10396_)
                                    (let ((_ix*10414_
                                           (vector-ref _tab10393_ _i10411_)))
                                      (if (eq? _ix10405_ _ix*10414_)
                                          (_lp210408_ (fx1+ _i10411_))
                                          '#f))
                                    '#t))
                              (_lp10399_ (fx1+ _i10402_))))))))
                 (_char-range-start8867_
                  (lambda (_tab10384_)
                    (let _lp10387_ ((_i10390_ '0))
                      (if (vector-ref _tab10384_ _i10390_)
                          _i10390_
                          (_lp10387_ (fx1+ _i10390_))))))
                 (_generate-char-dispatch8868_
                  (lambda (_e10007_
                           _datums10009_
                           _dispatch10010_
                           _default10011_)
                    (if (< (_max-char8864_ _datums10009_) '128)
                        (let* ((_indexes10013_
                                (_datum-dispatch-index8860_ _datums10009_))
                               (_tab10016_
                                (_generate-char-dispatch-table8865_
                                 _indexes10013_)))
                          (if (_simple-char-range?8866_ _tab10016_)
                              (let ((_start10021_
                                     (_char-range-start8867_ _tab10016_))
                                    (_end10023_ (vector-length _tab10016_)))
                                (let* ((_g1002510059_
                                        (lambda (_g1002610055_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1002610055_)))
                                       (_g1002410176_
                                        (lambda (_g1002610063_)
                                          (if (gx#stx-pair? _g1002610063_)
                                              (let ((_e1003310066_
                                                     (gx#syntax-e
                                                      _g1002610063_)))
                                                (let ((_hd1003410070_
                                                       (##car _e1003310066_))
                                                      (_tl1003510073_
                                                       (##cdr _e1003310066_)))
                                                  (if (gx#stx-pair?
                                                       _tl1003510073_)
                                                      (let ((_e1003610076_
                                                             (gx#syntax-e
                                                              _tl1003510073_)))
                                                        (let ((_hd1003710080_
                                                               (##car _e1003610076_))
                                                              (_tl1003810083_
                                                               (##cdr _e1003610076_)))
                                                          (if (gx#stx-pair?
                                                               _tl1003810083_)
                                                              (let ((_e1003910086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1003810083_)))
                        (let ((_hd1004010090_ (##car _e1003910086_))
                              (_tl1004110093_ (##cdr _e1003910086_)))
                          (if (gx#stx-pair? _hd1004010090_)
                              (let ((_e1004210096_
                                     (gx#syntax-e _hd1004010090_)))
                                (let ((_hd1004310100_ (##car _e1004210096_))
                                      (_tl1004410103_ (##cdr _e1004210096_)))
                                  (if (gx#stx-null? _tl1004410103_)
                                      (if (gx#stx-pair? _tl1004110093_)
                                          (let ((_e1004510106_
                                                 (gx#syntax-e _tl1004110093_)))
                                            (let ((_hd1004610110_
                                                   (##car _e1004510106_))
                                                  (_tl1004710113_
                                                   (##cdr _e1004510106_)))
                                              (if (gx#stx-pair? _tl1004710113_)
                                                  (let ((_e1004810116_
                                                         (gx#syntax-e
                                                          _tl1004710113_)))
                                                    (let ((_hd1004910120_
                                                           (##car _e1004810116_))
                                                          (_tl1005010123_
                                                           (##cdr _e1004810116_)))
                                                      (if (gx#stx-pair?
                                                           _tl1005010123_)
                                                          (let ((_e1005110126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1005010123_)))
                    (let ((_hd1005210130_ (##car _e1005110126_))
                          (_tl1005310133_ (##cdr _e1005110126_)))
                      (if (gx#stx-null? _tl1005310133_)
                          ((lambda (_L10136_
                                    _L10138_
                                    _L10139_
                                    _L10140_
                                    _L10141_
                                    _L10142_)
                             (let ()
                               (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons _L10141_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L10139_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'char?)
                           (cons _L10142_ '()))
                     (cons (cons (gx#datum->syntax '#f 'let)
                                 (cons (cons (gx#datum->syntax '#f 'ix)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##char->integer)
                                                         (cons _L10142_ '()))
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
                                         (cons _L10138_ '())))
                             (cons (cons (gx#datum->syntax '#f '##fx<)
                                         (cons (gx#datum->syntax '#f 'ix)
                                               (cons _L10136_ '())))
                                   '())))
                 (cons _L10140_ (cons (cons _L10141_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _L10141_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                           _hd1005210130_
                           _hd1004910120_
                           _hd1004610110_
                           _hd1004310100_
                           _hd1003710080_
                           _hd1003410070_)
                          (_g1002510059_ _g1002610063_))))
                  (_g1002510059_ _g1002610063_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1002510059_
                                                   _g1002610063_))))
                                          (_g1002510059_ _g1002610063_))
                                      (_g1002510059_ _g1002610063_))))
                              (_g1002510059_ _g1002610063_))))
                      (_g1002510059_ _g1002610063_))))
              (_g1002510059_ _g1002610063_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1002510059_ _g1002610063_)))))
                                  (_g1002410176_
                                   (list _e10007_
                                         (gx#genident 'default)
                                         _dispatch10010_
                                         _default10011_
                                         _start10021_
                                         _end10023_))))
                              (let* ((_g1018010224_
                                      (lambda (_g1018110220_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g1018110220_)))
                                     (_g1017910380_
                                      (lambda (_g1018110228_)
                                        (if (gx#stx-pair? _g1018110228_)
                                            (let ((_e1018910231_
                                                   (gx#syntax-e
                                                    _g1018110228_)))
                                              (let ((_hd1019010235_
                                                     (##car _e1018910231_))
                                                    (_tl1019110238_
                                                     (##cdr _e1018910231_)))
                                                (if (gx#stx-pair?
                                                     _tl1019110238_)
                                                    (let ((_e1019210241_
                                                           (gx#syntax-e
                                                            _tl1019110238_)))
                                                      (let ((_hd1019310245_
                                                             (##car _e1019210241_))
                                                            (_tl1019410248_
                                                             (##cdr _e1019210241_)))
                                                        (if (gx#stx-pair?
                                                             _tl1019410248_)
                                                            (let ((_e1019510251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl1019410248_)))
                      (let ((_hd1019610255_ (##car _e1019510251_))
                            (_tl1019710258_ (##cdr _e1019510251_)))
                        (if (gx#stx-pair? _tl1019710258_)
                            (let ((_e1019810261_ (gx#syntax-e _tl1019710258_)))
                              (let ((_hd1019910265_ (##car _e1019810261_))
                                    (_tl1020010268_ (##cdr _e1019810261_)))
                                (if (gx#stx-pair/null? _hd1019910265_)
                                    (if (fx>= (gx#stx-length _hd1019910265_)
                                              '0)
                                        (let ((_g35159_
                                               (gx#syntax-split-splice
                                                _hd1019910265_
                                                '0)))
                                          (begin
                                            (let ((_g35160_
                                                   (if (##values? _g35159_)
                                                       (##vector-length
                                                        _g35159_)
                                                       1)))
                                              (if (not (##fx= _g35160_ 2))
                                                  (error "Context expects 2 values"
                                                         _g35160_)))
                                            (let ((_target1020110271_
                                                   (##vector-ref _g35159_ 0))
                                                  (_tl1020310274_
                                                   (##vector-ref _g35159_ 1)))
                                              (if (gx#stx-null? _tl1020310274_)
                                                  (letrec ((_loop1020410277_
                                                            (lambda (_hd1020210281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _dispatch1020810284_)
                      (if (gx#stx-pair? _hd1020210281_)
                          (let ((_e1020510287_ (gx#syntax-e _hd1020210281_)))
                            (let ((_lp-hd1020610291_ (##car _e1020510287_))
                                  (_lp-tl1020710294_ (##cdr _e1020510287_)))
                              (_loop1020410277_
                               _lp-tl1020710294_
                               (cons _lp-hd1020610291_ _dispatch1020810284_))))
                          (let ((_dispatch1020910297_
                                 (reverse _dispatch1020810284_)))
                            (if (gx#stx-pair? _tl1020010268_)
                                (let ((_e1021010301_
                                       (gx#syntax-e _tl1020010268_)))
                                  (let ((_hd1021110305_ (##car _e1021010301_))
                                        (_tl1021210308_ (##cdr _e1021010301_)))
                                    (if (gx#stx-pair? _tl1021210308_)
                                        (let ((_e1021310311_
                                               (gx#syntax-e _tl1021210308_)))
                                          (let ((_hd1021410315_
                                                 (##car _e1021310311_))
                                                (_tl1021510318_
                                                 (##cdr _e1021310311_)))
                                            (if (gx#stx-pair? _tl1021510318_)
                                                (let ((_e1021610321_
                                                       (gx#syntax-e
                                                        _tl1021510318_)))
                                                  (let ((_hd1021710325_
                                                         (##car _e1021610321_))
                                                        (_tl1021810328_
                                                         (##cdr _e1021610321_)))
                                                    (if (gx#stx-null?
                                                         _tl1021810328_)
                                                        ((lambda (_L10331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L10333_
                          _L10334_
                          _L10335_
                          _L10336_
                          _L10337_
                          _L10338_)
                   (let ()
                     (cons (gx#datum->syntax '#f 'let)
                           (cons (cons (cons _L10337_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons '()
                                                               (cons _L10334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                       (cons (cons _L10336_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _L10333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'if)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'char?)
                                                         (cons _L10338_ '()))
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
                                               (cons _L10338_ '()))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '##fx<)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'ix)
                                                           (cons _L10331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'x)
                               (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                           (cons _L10336_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'ix)
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
                                                               (foldr (lambda (_g1037110374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1037210377_)
                                (cons _g1037110374_ _g1037210377_))
                              '()
                              _L10335_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L10337_ '())
                                                       '()))))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _L10337_ '())
                                                           '()))))
                                   '())))
                 (cons (cons _L10337_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                 _hd1021710325_
                 _hd1021410315_
                 _hd1021110305_
                 _dispatch1020910297_
                 _hd1019610255_
                 _hd1019310245_
                 _hd1019010235_)
                (_g1018010224_ _g1018110228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1018010224_
                                                 _g1018110228_))))
                                        (_g1018010224_ _g1018110228_))))
                                (_g1018010224_ _g1018110228_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1020410277_
                                                     _target1020110271_
                                                     '()))
                                                  (_g1018010224_
                                                   _g1018110228_)))))
                                        (_g1018010224_ _g1018110228_))
                                    (_g1018010224_ _g1018110228_))))
                            (_g1018010224_ _g1018110228_))))
                    (_g1018010224_ _g1018110228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1018010224_
                                                     _g1018110228_))))
                                            (_g1018010224_ _g1018110228_)))))
                                (_g1017910380_
                                 (list _e10007_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _dispatch10010_
                                       _default10011_
                                       _tab10016_
                                       (vector-length _tab10016_))))))
                        (_generate-char-dispatch/hash8869_
                         _e10007_
                         _datums10009_
                         _dispatch10010_
                         _default10011_))))
                 (_generate-char-dispatch/hash8869_
                  (lambda (_e9785_ _datums9787_ _dispatch9788_ _default9789_)
                    (let* ((_indexes9791_
                            (_datum-dispatch-index8860_ _datums9787_))
                           (_tab9794_
                            (_generate-hash-dispatch-table8862_
                             _indexes9791_
                             char->integer)))
                      (let* ((_g97999843_
                              (lambda (_g98009839_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g98009839_)))
                             (_g979810003_
                              (lambda (_g98009847_)
                                (if (gx#stx-pair? _g98009847_)
                                    (let ((_e98089850_
                                           (gx#syntax-e _g98009847_)))
                                      (let ((_hd98099854_ (##car _e98089850_))
                                            (_tl98109857_ (##cdr _e98089850_)))
                                        (if (gx#stx-pair? _tl98109857_)
                                            (let ((_e98119860_
                                                   (gx#syntax-e _tl98109857_)))
                                              (let ((_hd98129864_
                                                     (##car _e98119860_))
                                                    (_tl98139867_
                                                     (##cdr _e98119860_)))
                                                (if (gx#stx-pair? _tl98139867_)
                                                    (let ((_e98149870_
                                                           (gx#syntax-e
                                                            _tl98139867_)))
                                                      (let ((_hd98159874_
                                                             (##car _e98149870_))
                                                            (_tl98169877_
                                                             (##cdr _e98149870_)))
                                                        (if (gx#stx-pair?
                                                             _tl98169877_)
                                                            (let ((_e98179880_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl98169877_)))
                      (let ((_hd98189884_ (##car _e98179880_))
                            (_tl98199887_ (##cdr _e98179880_)))
                        (if (gx#stx-pair/null? _hd98189884_)
                            (if (fx>= (gx#stx-length _hd98189884_) '0)
                                (let ((_g35161_
                                       (gx#syntax-split-splice
                                        _hd98189884_
                                        '0)))
                                  (begin
                                    (let ((_g35162_
                                           (if (##values? _g35161_)
                                               (##vector-length _g35161_)
                                               1)))
                                      (if (not (##fx= _g35162_ 2))
                                          (error "Context expects 2 values"
                                                 _g35162_)))
                                    (let ((_target98209890_
                                           (##vector-ref _g35161_ 0))
                                          (_tl98229893_
                                           (##vector-ref _g35161_ 1)))
                                      (if (gx#stx-null? _tl98229893_)
                                          (letrec ((_loop98239896_
                                                    (lambda (_hd98219900_
                                                             _dispatch98279903_)
                                                      (if (gx#stx-pair?
                                                           _hd98219900_)
                                                          (let ((_e98249906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd98219900_)))
                    (let ((_lp-hd98259910_ (##car _e98249906_))
                          (_lp-tl98269913_ (##cdr _e98249906_)))
                      (_loop98239896_
                       _lp-tl98269913_
                       (cons _lp-hd98259910_ _dispatch98279903_))))
                  (let ((_dispatch98289916_ (reverse _dispatch98279903_)))
                    (if (gx#stx-pair? _tl98199887_)
                        (let ((_e98299920_ (gx#syntax-e _tl98199887_)))
                          (let ((_hd98309924_ (##car _e98299920_))
                                (_tl98319927_ (##cdr _e98299920_)))
                            (if (gx#stx-pair? _tl98319927_)
                                (let ((_e98329930_ (gx#syntax-e _tl98319927_)))
                                  (let ((_hd98339934_ (##car _e98329930_))
                                        (_tl98349937_ (##cdr _e98329930_)))
                                    (if (gx#stx-pair? _tl98349937_)
                                        (let ((_e98359940_
                                               (gx#syntax-e _tl98349937_)))
                                          (let ((_hd98369944_
                                                 (##car _e98359940_))
                                                (_tl98379947_
                                                 (##cdr _e98359940_)))
                                            (if (gx#stx-null? _tl98379947_)
                                                ((lambda (_L9950_
                                                          _L9952_
                                                          _L9953_
                                                          _L9954_
                                                          _L9955_
                                                          _L9956_
                                                          _L9957_)
                                                   (let ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _L9956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '() (cons _L9953_ '())))
                                           '()))
                               (cons (cons _L9955_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L9952_ '()))
                                                 '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax '#f 'char?)
                                                 (cons _L9957_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let*)
                                                       (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'h)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '##char->integer)
                                             (cons _L9957_ '()))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'ix)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##fxmodulo)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'h)
                                                         (cons _L9950_ '())))
                                             '()))
                                 (cons (cons (gx#datum->syntax '#f 'q)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '##vector-ref)
                                                         (cons _L9955_
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
                             (cons _L9957_ '())))
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
                                                       (foldr (lambda (_g99949997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g999510000_)
                        (cons _g99949997_ _g999510000_))
                      '()
                      _L9954_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _L9956_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L9956_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L9956_ '())
                                                       '()))))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd98369944_
                                                 _hd98339934_
                                                 _hd98309924_
                                                 _dispatch98289916_
                                                 _hd98159874_
                                                 _hd98129864_
                                                 _hd98099854_)
                                                (_g97999843_ _g98009847_))))
                                        (_g97999843_ _g98009847_))))
                                (_g97999843_ _g98009847_))))
                        (_g97999843_ _g98009847_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop98239896_
                                             _target98209890_
                                             '()))
                                          (_g97999843_ _g98009847_)))))
                                (_g97999843_ _g98009847_))
                            (_g97999843_ _g98009847_))))
                    (_g97999843_ _g98009847_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g97999843_
                                                     _g98009847_))))
                                            (_g97999843_ _g98009847_))))
                                    (_g97999843_ _g98009847_)))))
                        (_g979810003_
                         (list _e9785_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch9788_
                               _default9789_
                               _tab9794_
                               (vector-length _tab9794_)))))))
                 (_min-fixnum8870_
                  (lambda (_datums9778_)
                    (foldl (lambda (_lst9781_ _r9783_)
                             (foldl min _r9783_ _lst9781_))
                           ##max-fixnum
                           _datums9778_)))
                 (_max-fixnum8871_
                  (lambda (_datums9771_)
                    (foldl (lambda (_lst9774_ _r9776_)
                             (foldl max _r9776_ _lst9774_))
                           ##min-fixnum
                           _datums9771_)))
                 (_generate-fixnum-dispatch-table8872_
                  (lambda (_indexes9753_)
                    (let* ((_ixs9756_ (map car _indexes9753_))
                           (_len9759_ (fx1+ (foldl max '0 _ixs9756_)))
                           (_vec9762_ (make-vector _len9759_ '#f)))
                      (begin
                        (for-each
                         (lambda (_entry9767_ _x9769_)
                           (vector-set! _vec9762_ _x9769_ (cdr _entry9767_)))
                         _indexes9753_
                         _ixs9756_)
                        _vec9762_))))
                 (_generate-fixnum-dispatch8873_
                  (lambda (_e9487_ _datums9489_ _dispatch9490_ _default9491_)
                    (if (if (>= (_min-fixnum8870_ _datums9489_) '0)
                            (< (_max-fixnum8871_ _datums9489_) '1024)
                            '#f)
                        (let* ((_indexes9493_
                                (_datum-dispatch-index8860_ _datums9489_))
                               (_tab9496_
                                (_generate-fixnum-dispatch-table8872_
                                 _indexes9493_))
                               (_dense?9499_
                                (andmap values (vector->list _tab9496_))))
                          (let* ((_g95049548_
                                  (lambda (_g95059544_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g95059544_)))
                                 (_g95039749_
                                  (lambda (_g95059552_)
                                    (if (gx#stx-pair? _g95059552_)
                                        (let ((_e95139555_
                                               (gx#syntax-e _g95059552_)))
                                          (let ((_hd95149559_
                                                 (##car _e95139555_))
                                                (_tl95159562_
                                                 (##cdr _e95139555_)))
                                            (if (gx#stx-pair? _tl95159562_)
                                                (let ((_e95169565_
                                                       (gx#syntax-e
                                                        _tl95159562_)))
                                                  (let ((_hd95179569_
                                                         (##car _e95169565_))
                                                        (_tl95189572_
                                                         (##cdr _e95169565_)))
                                                    (if (gx#stx-pair?
                                                         _tl95189572_)
                                                        (let ((_e95199575_
                                                               (gx#syntax-e
                                                                _tl95189572_)))
                                                          (let ((_hd95209579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e95199575_))
                        (_tl95219582_ (##cdr _e95199575_)))
                    (if (gx#stx-pair? _tl95219582_)
                        (let ((_e95229585_ (gx#syntax-e _tl95219582_)))
                          (let ((_hd95239589_ (##car _e95229585_))
                                (_tl95249592_ (##cdr _e95229585_)))
                            (if (gx#stx-pair/null? _hd95239589_)
                                (if (fx>= (gx#stx-length _hd95239589_) '0)
                                    (let ((_g35163_
                                           (gx#syntax-split-splice
                                            _hd95239589_
                                            '0)))
                                      (begin
                                        (let ((_g35164_
                                               (if (##values? _g35163_)
                                                   (##vector-length _g35163_)
                                                   1)))
                                          (if (not (##fx= _g35164_ 2))
                                              (error "Context expects 2 values"
                                                     _g35164_)))
                                        (let ((_target95259595_
                                               (##vector-ref _g35163_ 0))
                                              (_tl95279598_
                                               (##vector-ref _g35163_ 1)))
                                          (if (gx#stx-null? _tl95279598_)
                                              (letrec ((_loop95289601_
                                                        (lambda (_hd95269605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _dispatch95329608_)
                  (if (gx#stx-pair? _hd95269605_)
                      (let ((_e95299611_ (gx#syntax-e _hd95269605_)))
                        (let ((_lp-hd95309615_ (##car _e95299611_))
                              (_lp-tl95319618_ (##cdr _e95299611_)))
                          (_loop95289601_
                           _lp-tl95319618_
                           (cons _lp-hd95309615_ _dispatch95329608_))))
                      (let ((_dispatch95339621_ (reverse _dispatch95329608_)))
                        (if (gx#stx-pair? _tl95249592_)
                            (let ((_e95349625_ (gx#syntax-e _tl95249592_)))
                              (let ((_hd95359629_ (##car _e95349625_))
                                    (_tl95369632_ (##cdr _e95349625_)))
                                (if (gx#stx-pair? _tl95369632_)
                                    (let ((_e95379635_
                                           (gx#syntax-e _tl95369632_)))
                                      (let ((_hd95389639_ (##car _e95379635_))
                                            (_tl95399642_ (##cdr _e95379635_)))
                                        (if (gx#stx-pair? _tl95399642_)
                                            (let ((_e95409645_
                                                   (gx#syntax-e _tl95399642_)))
                                              (let ((_hd95419649_
                                                     (##car _e95409645_))
                                                    (_tl95429652_
                                                     (##cdr _e95409645_)))
                                                (if (gx#stx-null? _tl95429652_)
                                                    ((lambda (_L9655_
                                                              _L9657_
                                                              _L9658_
                                                              _L9659_
                                                              _L9660_
                                                              _L9661_
                                                              _L9662_)
                                                       (let ()
                                                         (let* ((_g97019709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g97029705_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g97029705_)))
                        (_g97009729_
                         (lambda (_g97029713_)
                           ((lambda (_L9716_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'let)
                                      (cons (cons (cons _L9661_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons '() (cons _L9658_ '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons _L9660_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'quote)
                                  (cons _L9657_ '()))
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'if)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'fixnum?)
                            (cons _L9662_ '()))
                      (cons (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f 'and)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx>=)
                                                          (cons _L9662_
                                                                (cons '0 '())))
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fx<)
                        (cons _L9662_ (cons _L9655_ '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons (gx#datum->syntax '#f 'let)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'x)
                        (cons (cons (gx#datum->syntax '#f '##vector-ref)
                                    (cons _L9660_ (cons _L9662_ '())))
                              '()))
                  (cons _L9716_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons (cons _L9661_ '()) '()))))
                            (cons (cons _L9661_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                            _g97029713_))))
                   (_g97009729_
                    (if _dense?9499_
                        (cons (gx#datum->syntax '#f '~case-dispatch)
                              (cons (gx#datum->syntax '#f 'x)
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g97329735_ _g97339738_)
                                               (cons _g97329735_ _g97339738_))
                                             '()
                                             _L9659_))))
                        (cons (gx#datum->syntax '#f 'if)
                              (cons (gx#datum->syntax '#f 'x)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 '~case-dispatch)
                                                (cons (gx#datum->syntax '#f 'x)
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g97409743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g97419746_)
                         (cons _g97409743_ _g97419746_))
                       '()
                       _L9659_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons _L9661_ '()) '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd95419649_
                                                     _hd95389639_
                                                     _hd95359629_
                                                     _dispatch95339621_
                                                     _hd95209579_
                                                     _hd95179569_
                                                     _hd95149559_)
                                                    (_g95049548_
                                                     _g95059552_))))
                                            (_g95049548_ _g95059552_))))
                                    (_g95049548_ _g95059552_))))
                            (_g95049548_ _g95059552_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop95289601_
                                                 _target95259595_
                                                 '()))
                                              (_g95049548_ _g95059552_)))))
                                    (_g95049548_ _g95059552_))
                                (_g95049548_ _g95059552_))))
                        (_g95049548_ _g95059552_))))
                (_g95049548_ _g95059552_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g95049548_ _g95059552_))))
                                        (_g95049548_ _g95059552_)))))
                            (_g95039749_
                             (list _e9487_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch9490_
                                   _default9491_
                                   _tab9496_
                                   (vector-length _tab9496_)))))
                        (_generate-fixnum-dispatch/hash8874_
                         _e9487_
                         _datums9489_
                         _dispatch9490_
                         _default9491_))))
                 (_generate-fixnum-dispatch/hash8874_
                  (lambda (_e9265_ _datums9267_ _dispatch9268_ _default9269_)
                    (let* ((_indexes9271_
                            (_datum-dispatch-index8860_ _datums9267_))
                           (_tab9274_
                            (_generate-hash-dispatch-table8862_
                             _indexes9271_
                             values)))
                      (let* ((_g92799323_
                              (lambda (_g92809319_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g92809319_)))
                             (_g92789483_
                              (lambda (_g92809327_)
                                (if (gx#stx-pair? _g92809327_)
                                    (let ((_e92889330_
                                           (gx#syntax-e _g92809327_)))
                                      (let ((_hd92899334_ (##car _e92889330_))
                                            (_tl92909337_ (##cdr _e92889330_)))
                                        (if (gx#stx-pair? _tl92909337_)
                                            (let ((_e92919340_
                                                   (gx#syntax-e _tl92909337_)))
                                              (let ((_hd92929344_
                                                     (##car _e92919340_))
                                                    (_tl92939347_
                                                     (##cdr _e92919340_)))
                                                (if (gx#stx-pair? _tl92939347_)
                                                    (let ((_e92949350_
                                                           (gx#syntax-e
                                                            _tl92939347_)))
                                                      (let ((_hd92959354_
                                                             (##car _e92949350_))
                                                            (_tl92969357_
                                                             (##cdr _e92949350_)))
                                                        (if (gx#stx-pair?
                                                             _tl92969357_)
                                                            (let ((_e92979360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl92969357_)))
                      (let ((_hd92989364_ (##car _e92979360_))
                            (_tl92999367_ (##cdr _e92979360_)))
                        (if (gx#stx-pair/null? _hd92989364_)
                            (if (fx>= (gx#stx-length _hd92989364_) '0)
                                (let ((_g35165_
                                       (gx#syntax-split-splice
                                        _hd92989364_
                                        '0)))
                                  (begin
                                    (let ((_g35166_
                                           (if (##values? _g35165_)
                                               (##vector-length _g35165_)
                                               1)))
                                      (if (not (##fx= _g35166_ 2))
                                          (error "Context expects 2 values"
                                                 _g35166_)))
                                    (let ((_target93009370_
                                           (##vector-ref _g35165_ 0))
                                          (_tl93029373_
                                           (##vector-ref _g35165_ 1)))
                                      (if (gx#stx-null? _tl93029373_)
                                          (letrec ((_loop93039376_
                                                    (lambda (_hd93019380_
                                                             _dispatch93079383_)
                                                      (if (gx#stx-pair?
                                                           _hd93019380_)
                                                          (let ((_e93049386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd93019380_)))
                    (let ((_lp-hd93059390_ (##car _e93049386_))
                          (_lp-tl93069393_ (##cdr _e93049386_)))
                      (_loop93039376_
                       _lp-tl93069393_
                       (cons _lp-hd93059390_ _dispatch93079383_))))
                  (let ((_dispatch93089396_ (reverse _dispatch93079383_)))
                    (if (gx#stx-pair? _tl92999367_)
                        (let ((_e93099400_ (gx#syntax-e _tl92999367_)))
                          (let ((_hd93109404_ (##car _e93099400_))
                                (_tl93119407_ (##cdr _e93099400_)))
                            (if (gx#stx-pair? _tl93119407_)
                                (let ((_e93129410_ (gx#syntax-e _tl93119407_)))
                                  (let ((_hd93139414_ (##car _e93129410_))
                                        (_tl93149417_ (##cdr _e93129410_)))
                                    (if (gx#stx-pair? _tl93149417_)
                                        (let ((_e93159420_
                                               (gx#syntax-e _tl93149417_)))
                                          (let ((_hd93169424_
                                                 (##car _e93159420_))
                                                (_tl93179427_
                                                 (##cdr _e93159420_)))
                                            (if (gx#stx-null? _tl93179427_)
                                                ((lambda (_L9430_
                                                          _L9432_
                                                          _L9433_
                                                          _L9434_
                                                          _L9435_
                                                          _L9436_
                                                          _L9437_)
                                                   (let ()
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _L9436_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '() (cons _L9433_ '())))
                                           '()))
                               (cons (cons _L9435_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L9432_ '()))
                                                 '()))
                                     '()))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'fixnum?)
                                                 (cons _L9437_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'let*)
                                                       (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'ix)
                                 (cons (cons (gx#datum->syntax '#f '##fxmodulo)
                                             (cons _L9437_ (cons _L9430_ '())))
                                       '()))
                           (cons (cons (gx#datum->syntax '#f 'q)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '##vector-ref)
                                                   (cons _L9435_
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
                             (cons _L9437_ '())))
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
                                                       (foldr (lambda (_g94749477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g94759480_)
                        (cons _g94749477_ _g94759480_))
                      '()
                      _L9434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))
                       (cons (cons _L9436_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L9436_ '()) '()))))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L9436_ '())
                                                       '()))))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd93169424_
                                                 _hd93139414_
                                                 _hd93109404_
                                                 _dispatch93089396_
                                                 _hd92959354_
                                                 _hd92929344_
                                                 _hd92899334_)
                                                (_g92799323_ _g92809327_))))
                                        (_g92799323_ _g92809327_))))
                                (_g92799323_ _g92809327_))))
                        (_g92799323_ _g92809327_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop93039376_
                                             _target93009370_
                                             '()))
                                          (_g92799323_ _g92809327_)))))
                                (_g92799323_ _g92809327_))
                            (_g92799323_ _g92809327_))))
                    (_g92799323_ _g92809327_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g92799323_
                                                     _g92809327_))))
                                            (_g92799323_ _g92809327_))))
                                    (_g92799323_ _g92809327_)))))
                        (_g92789483_
                         (list _e9265_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch9268_
                               _default9269_
                               _tab9274_
                               (vector-length _tab9274_)))))))
                 (_generate-generic-dispatch8875_
                  (lambda (_e9001_ _datums9003_ _dispatch9004_ _default9005_)
                    (let ((_g35167_
                           (if (_eq-datums?8858_ _datums9003_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_hash-e9007_ (##vector-ref _g35167_ 0))
                              (_hashf9009_ (##vector-ref _g35167_ 1))
                              (_eqf9010_ (##vector-ref _g35167_ 2)))
                          (let* ((_indexes9012_
                                  (_datum-dispatch-index8860_ _datums9003_))
                                 (_tab9015_
                                  (_generate-hash-dispatch-table8862_
                                   _indexes9012_
                                   _hash-e9007_)))
                            (let* ((_g90209072_
                                    (lambda (_g90219068_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g90219068_)))
                                   (_g90199261_
                                    (lambda (_g90219076_)
                                      (if (gx#stx-pair? _g90219076_)
                                          (let ((_e90319079_
                                                 (gx#syntax-e _g90219076_)))
                                            (let ((_hd90329083_
                                                   (##car _e90319079_))
                                                  (_tl90339086_
                                                   (##cdr _e90319079_)))
                                              (if (gx#stx-pair? _tl90339086_)
                                                  (let ((_e90349089_
                                                         (gx#syntax-e
                                                          _tl90339086_)))
                                                    (let ((_hd90359093_
                                                           (##car _e90349089_))
                                                          (_tl90369096_
                                                           (##cdr _e90349089_)))
                                                      (if (gx#stx-pair?
                                                           _tl90369096_)
                                                          (let ((_e90379099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl90369096_)))
                    (let ((_hd90389103_ (##car _e90379099_))
                          (_tl90399106_ (##cdr _e90379099_)))
                      (if (gx#stx-pair? _tl90399106_)
                          (let ((_e90409109_ (gx#syntax-e _tl90399106_)))
                            (let ((_hd90419113_ (##car _e90409109_))
                                  (_tl90429116_ (##cdr _e90409109_)))
                              (if (gx#stx-pair/null? _hd90419113_)
                                  (if (fx>= (gx#stx-length _hd90419113_) '0)
                                      (let ((_g35168_
                                             (gx#syntax-split-splice
                                              _hd90419113_
                                              '0)))
                                        (begin
                                          (let ((_g35169_
                                                 (if (##values? _g35168_)
                                                     (##vector-length _g35168_)
                                                     1)))
                                            (if (not (##fx= _g35169_ 2))
                                                (error "Context expects 2 values"
                                                       _g35169_)))
                                          (let ((_target90439119_
                                                 (##vector-ref _g35168_ 0))
                                                (_tl90459122_
                                                 (##vector-ref _g35168_ 1)))
                                            (if (gx#stx-null? _tl90459122_)
                                                (letrec ((_loop90469125_
                                                          (lambda (_hd90449129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _dispatch90509132_)
                    (if (gx#stx-pair? _hd90449129_)
                        (let ((_e90479135_ (gx#syntax-e _hd90449129_)))
                          (let ((_lp-hd90489139_ (##car _e90479135_))
                                (_lp-tl90499142_ (##cdr _e90479135_)))
                            (_loop90469125_
                             _lp-tl90499142_
                             (cons _lp-hd90489139_ _dispatch90509132_))))
                        (let ((_dispatch90519145_
                               (reverse _dispatch90509132_)))
                          (if (gx#stx-pair? _tl90429116_)
                              (let ((_e90529149_ (gx#syntax-e _tl90429116_)))
                                (let ((_hd90539153_ (##car _e90529149_))
                                      (_tl90549156_ (##cdr _e90529149_)))
                                  (if (gx#stx-pair? _tl90549156_)
                                      (let ((_e90559159_
                                             (gx#syntax-e _tl90549156_)))
                                        (let ((_hd90569163_
                                               (##car _e90559159_))
                                              (_tl90579166_
                                               (##cdr _e90559159_)))
                                          (if (gx#stx-pair? _tl90579166_)
                                              (let ((_e90589169_
                                                     (gx#syntax-e
                                                      _tl90579166_)))
                                                (let ((_hd90599173_
                                                       (##car _e90589169_))
                                                      (_tl90609176_
                                                       (##cdr _e90589169_)))
                                                  (if (gx#stx-pair?
                                                       _tl90609176_)
                                                      (let ((_e90619179_
                                                             (gx#syntax-e
                                                              _tl90609176_)))
                                                        (let ((_hd90629183_
                                                               (##car _e90619179_))
                                                              (_tl90639186_
                                                               (##cdr _e90619179_)))
                                                          (if (gx#stx-pair?
                                                               _tl90639186_)
                                                              (let ((_e90649189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl90639186_)))
                        (let ((_hd90659193_ (##car _e90649189_))
                              (_tl90669196_ (##cdr _e90649189_)))
                          (if (gx#stx-null? _tl90669196_)
                              ((lambda (_L9199_
                                        _L9201_
                                        _L9202_
                                        _L9203_
                                        _L9204_
                                        _L9205_
                                        _L9206_
                                        _L9207_
                                        _L9208_)
                                 (let ()
                                   (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _L9207_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'lambda)
                               (cons '() (cons _L9204_ '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons _L9206_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L9203_ '()))
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
                                     (cons (cons _L9201_ (cons _L9208_ '()))
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'ix)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '##fxmodulo)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'h)
                                                             (cons _L9202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f 'q)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##vector-ref)
                                                             (cons _L9206_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#datum->syntax '#f 'ix) '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         (cons (cons (gx#datum->syntax '#f 'if)
                                     (cons (gx#datum->syntax '#f 'q)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons _L9199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f '##car)
                                       (cons (gx#datum->syntax '#f 'q) '()))
                                 (cons _L9208_ '())))
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
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'x)
                                                         (begin
                                                           '#!void
                                                           (foldr (lambda (_g92529255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g92539258_)
                            (cons _g92529255_ _g92539258_))
                          '()
                          _L9205_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (cons (cons _L9207_ '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L9207_ '())
                                                       '()))))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                               _hd90659193_
                               _hd90629183_
                               _hd90599173_
                               _hd90569163_
                               _hd90539153_
                               _dispatch90519145_
                               _hd90389103_
                               _hd90359093_
                               _hd90329083_)
                              (_g90209072_ _g90219076_))))
                      (_g90209072_ _g90219076_))))
              (_g90209072_ _g90219076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g90209072_ _g90219076_))))
                                      (_g90209072_ _g90219076_))))
                              (_g90209072_ _g90219076_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop90469125_
                                                   _target90439119_
                                                   '()))
                                                (_g90209072_ _g90219076_)))))
                                      (_g90209072_ _g90219076_))
                                  (_g90209072_ _g90219076_))))
                          (_g90209072_ _g90219076_))))
                  (_g90209072_ _g90219076_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g90209072_ _g90219076_))))
                                          (_g90209072_ _g90219076_)))))
                              (_g90199261_
                               (list _e9001_
                                     (gx#genident 'default)
                                     (gx#genident 'table)
                                     _dispatch9004_
                                     _default9005_
                                     _tab9015_
                                     (vector-length _tab9015_)
                                     _hashf9009_
                                     _eqf9010_))))))))))
          (let* ((_g88778901_
                  (lambda (_g88788897_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g88788897_)))
                 (_g88768997_
                  (lambda (_g88788905_)
                    (if (gx#stx-pair? _g88788905_)
                        (let ((_e88818908_ (gx#syntax-e _g88788905_)))
                          (let ((_hd88828912_ (##car _e88818908_))
                                (_tl88838915_ (##cdr _e88818908_)))
                            (if (gx#stx-pair? _tl88838915_)
                                (let ((_e88848918_ (gx#syntax-e _tl88838915_)))
                                  (let ((_hd88858922_ (##car _e88848918_))
                                        (_tl88868925_ (##cdr _e88848918_)))
                                    (if (gx#stx-pair/null? _tl88868925_)
                                        (if (fx>= (gx#stx-length _tl88868925_)
                                                  '0)
                                            (let ((_g35170_
                                                   (gx#syntax-split-splice
                                                    _tl88868925_
                                                    '0)))
                                              (begin
                                                (let ((_g35171_
                                                       (if (##values? _g35170_)
                                                           (##vector-length
                                                            _g35170_)
                                                           1)))
                                                  (if (not (##fx= _g35171_ 2))
                                                      (error "Context expects 2 values"
                                                             _g35171_)))
                                                (let ((_target88878928_
                                                       (##vector-ref
                                                        _g35170_
                                                        0))
                                                      (_tl88898931_
                                                       (##vector-ref
                                                        _g35170_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl88898931_)
                                                      (letrec ((_loop88908934_
                                                                (lambda (_hd88888938_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _clause88948941_)
                          (if (gx#stx-pair? _hd88888938_)
                              (let ((_e88918944_ (gx#syntax-e _hd88888938_)))
                                (let ((_lp-hd88928948_ (##car _e88918944_))
                                      (_lp-tl88938951_ (##cdr _e88918944_)))
                                  (_loop88908934_
                                   _lp-tl88938951_
                                   (cons _lp-hd88928948_ _clause88948941_))))
                              (let ((_clause88958954_
                                     (reverse _clause88948941_)))
                                ((lambda (_L8958_ _L8960_)
                                   (let ((_g35172_
                                          (_parse-clauses8851_
                                           _L8960_
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g89788981_
                                                             _g89798984_)
                                                      (cons _g89788981_
                                                            _g89798984_))
                                                    '()
                                                    _L8958_)))))
                                     (begin
                                       (let ((_g35173_
                                              (if (##values? _g35172_)
                                                  (##vector-length _g35172_)
                                                  1)))
                                         (if (not (##fx= _g35173_ 3))
                                             (error "Context expects 3 values"
                                                    _g35173_)))
                                       (let ((_datums8987_
                                              (##vector-ref _g35172_ 0))
                                             (_dispatch8989_
                                              (##vector-ref _g35172_ 1))
                                             (_default8990_
                                              (##vector-ref _g35172_ 2)))
                                         (let ((_datum-count8992_
                                                (_count-datums8854_
                                                 _datums8987_)))
                                           (if (< _datum-count8992_ '6)
                                               (_generate-simple-case8859_
                                                _L8960_
                                                _datums8987_
                                                _dispatch8989_
                                                _default8990_)
                                               (if (_char-datums?8856_
                                                    _datums8987_)
                                                   (_generate-char-dispatch8868_
                                                    _L8960_
                                                    _datums8987_
                                                    _dispatch8989_
                                                    _default8990_)
                                                   (if (_fixnum-datums?8857_
                                                        _datums8987_)
                                                       (_generate-fixnum-dispatch8873_
                                                        _L8960_
                                                        _datums8987_
                                                        _dispatch8989_
                                                        _default8990_)
                                                       (if (< _datum-count8992_
                                                              '12)
                                                           (_generate-simple-case8859_
                                                            _L8960_
                                                            _datums8987_
                                                            _dispatch8989_
                                                            _default8990_)
                                                           (if (_symbolic-datums?8855_
                                                                _datums8987_)
                                                               (_generate-symbolic-dispatch8863_
                                                                _L8960_
                                                                _datums8987_
                                                                _dispatch8989_
                                                                _default8990_)
                                                               (_generate-generic-dispatch8875_
                                                                _L8960_
                                                                _datums8987_
                                                                _dispatch8989_
                                                                _default8990_)))))))))))
                                 _clause88958954_
                                 _hd88858922_))))))
                (_loop88908934_ _target88878928_ '()))
              (_g88778901_ _g88788905_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g88778901_ _g88788905_))
                                        (_g88778901_ _g88788905_))))
                                (_g88778901_ _g88788905_))))
                        (_g88778901_ _g88788905_)))))
            (_g88768997_ _stx8848_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-test|
      (lambda (_stx11805_)
        (let* ((_g1180811826_
                (lambda (_g1180911822_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1180911822_)))
               (_g1180711892_
                (lambda (_g1180911830_)
                  (if (gx#stx-pair? _g1180911830_)
                      (let ((_e1181211833_ (gx#syntax-e _g1180911830_)))
                        (let ((_hd1181311837_ (##car _e1181211833_))
                              (_tl1181411840_ (##cdr _e1181211833_)))
                          (if (gx#stx-pair? _tl1181411840_)
                              (let ((_e1181511843_
                                     (gx#syntax-e _tl1181411840_)))
                                (let ((_hd1181611847_ (##car _e1181511843_))
                                      (_tl1181711850_ (##cdr _e1181511843_)))
                                  (if (gx#stx-pair? _tl1181711850_)
                                      (let ((_e1181811853_
                                             (gx#syntax-e _tl1181711850_)))
                                        (let ((_hd1181911857_
                                               (##car _e1181811853_))
                                              (_tl1182011860_
                                               (##cdr _e1181811853_)))
                                          (if (gx#stx-null? _tl1182011860_)
                                              ((lambda (_L11863_ _L11865_)
                                                 (let ((_datum-e11881_
                                                        (gx#stx-e _L11865_)))
                                                   (if (let ((_$e11884_
                                                              (symbol? _datum-e11881_)))
                                                         (if _$e11884_
                                                             _$e11884_
                                                             (let ((_$e11888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (keyword? _datum-e11881_)))
                       (if _$e11888_ _$e11888_ (immediate? _datum-e11881_)))))
               (cons (gx#datum->syntax '#f 'eq?)
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons _L11865_ '()))
                           (cons _L11863_ '())))
               (if (number? _datum-e11881_)
                   (cons (gx#datum->syntax '#f 'eqv?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L11865_ '()))
                               (cons _L11863_ '())))
                   (cons (gx#datum->syntax '#f 'equal?)
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L11865_ '()))
                               (cons _L11863_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd1181911857_
                                               _hd1181611847_)
                                              (_g1180811826_ _g1180911830_))))
                                      (_g1180811826_ _g1180911830_))))
                              (_g1180811826_ _g1180911830_))))
                      (_g1180811826_ _g1180911830_)))))
          (_g1180711892_ _stx11805_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch|
      (lambda (_$stx11896_)
        (let* ((_g1190011924_
                (lambda (_g1190111920_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1190111920_)))
               (_g1189912009_
                (lambda (_g1190111928_)
                  (if (gx#stx-pair? _g1190111928_)
                      (let ((_e1190411931_ (gx#syntax-e _g1190111928_)))
                        (let ((_hd1190511935_ (##car _e1190411931_))
                              (_tl1190611938_ (##cdr _e1190411931_)))
                          (if (gx#stx-pair? _tl1190611938_)
                              (let ((_e1190711941_
                                     (gx#syntax-e _tl1190611938_)))
                                (let ((_hd1190811945_ (##car _e1190711941_))
                                      (_tl1190911948_ (##cdr _e1190711941_)))
                                  (if (gx#stx-pair/null? _tl1190911948_)
                                      (if (fx>= (gx#stx-length _tl1190911948_)
                                                '0)
                                          (let ((_g35174_
                                                 (gx#syntax-split-splice
                                                  _tl1190911948_
                                                  '0)))
                                            (begin
                                              (let ((_g35175_
                                                     (if (##values? _g35174_)
                                                         (##vector-length
                                                          _g35174_)
                                                         1)))
                                                (if (not (##fx= _g35175_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35175_)))
                                              (let ((_target1191011951_
                                                     (##vector-ref _g35174_ 0))
                                                    (_tl1191211954_
                                                     (##vector-ref
                                                      _g35174_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl1191211954_)
                                                    (letrec ((_loop1191311957_
                                                              (lambda (_hd1191111961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _K1191711964_)
                        (if (gx#stx-pair? _hd1191111961_)
                            (let ((_e1191411967_ (gx#syntax-e _hd1191111961_)))
                              (let ((_lp-hd1191511971_ (##car _e1191411967_))
                                    (_lp-tl1191611974_ (##cdr _e1191411967_)))
                                (_loop1191311957_
                                 _lp-tl1191611974_
                                 (cons _lp-hd1191511971_ _K1191711964_))))
                            (let ((_K1191811977_ (reverse _K1191711964_)))
                              ((lambda (_L11981_ _L11983_)
                                 (cons (gx#datum->syntax '#f '~case-dispatch*)
                                       (cons '0
                                             (cons _L11983_
                                                   (begin
                                                     '#!void
                                                     (foldr (lambda (_g1200012003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1200112006_)
                      (cons _g1200012003_ _g1200112006_))
                    '()
                    _L11981_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _K1191811977_
                               _hd1190811945_))))))
              (_loop1191311957_ _target1191011951_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1190011924_
                                                     _g1190111928_)))))
                                          (_g1190011924_ _g1190111928_))
                                      (_g1190011924_ _g1190111928_))))
                              (_g1190011924_ _g1190111928_))))
                      (_g1190011924_ _g1190111928_)))))
          (_g1189912009_ _$stx11896_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch*|
      (lambda (_stx12014_)
        (let* ((_g1202112117_
                (lambda (_g1202212113_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1202212113_)))
               (_g1202012216_
                (lambda (_g1202212121_)
                  (if (gx#stx-pair? _g1202212121_)
                      (let ((_e1209412124_ (gx#syntax-e _g1202212121_)))
                        (let ((_hd1209512128_ (##car _e1209412124_))
                              (_tl1209612131_ (##cdr _e1209412124_)))
                          (if (gx#stx-pair? _tl1209612131_)
                              (let ((_e1209712134_
                                     (gx#syntax-e _tl1209612131_)))
                                (let ((_hd1209812138_ (##car _e1209712134_))
                                      (_tl1209912141_ (##cdr _e1209712134_)))
                                  (if (gx#stx-pair? _tl1209912141_)
                                      (let ((_e1210012144_
                                             (gx#syntax-e _tl1209912141_)))
                                        (let ((_hd1210112148_
                                               (##car _e1210012144_))
                                              (_tl1210212151_
                                               (##cdr _e1210012144_)))
                                          (if (gx#stx-pair/null?
                                               _tl1210212151_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1210212151_)
                                                        '0)
                                                  (let ((_g35176_
                                                         (gx#syntax-split-splice
                                                          _tl1210212151_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35177_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35176_)
                         (##vector-length _g35176_)
                         1)))
                (if (not (##fx= _g35177_ 2))
                    (error "Context expects 2 values" _g35177_)))
              (let ((_target1210312154_ (##vector-ref _g35176_ 0))
                    (_tl1210512157_ (##vector-ref _g35176_ 1)))
                (if (gx#stx-null? _tl1210512157_)
                    (letrec ((_loop1210612160_
                              (lambda (_hd1210412164_ _K1211012167_)
                                (if (gx#stx-pair? _hd1210412164_)
                                    (let ((_e1210712170_
                                           (gx#syntax-e _hd1210412164_)))
                                      (let ((_lp-hd1210812174_
                                             (##car _e1210712170_))
                                            (_lp-tl1210912177_
                                             (##cdr _e1210712170_)))
                                        (_loop1210612160_
                                         _lp-tl1210912177_
                                         (cons _lp-hd1210812174_
                                               _K1211012167_))))
                                    (let ((_K1211112180_
                                           (reverse _K1211012167_)))
                                      ((lambda (_L12184_ _L12186_ _L12187_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                '~case-dispatch-bsearch)
                                               (cons _L12187_
                                                     (cons _L12186_
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g1220712210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1220812213_)
                              (cons _g1220712210_ _g1220812213_))
                            '()
                            _L12184_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _K1211112180_
                                       _hd1210112148_
                                       _hd1209812138_))))))
                      (_loop1210612160_ _target1210312154_ '()))
                    (_g1202112117_ _g1202212121_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1202112117_
                                                   _g1202212121_))
                                              (_g1202112117_ _g1202212121_))))
                                      (_g1202112117_ _g1202212121_))))
                              (_g1202112117_ _g1202212121_))))
                      (_g1202112117_ _g1202212121_))))
               (_g1201912376_
                (lambda (_g1202212220_)
                  (if (gx#stx-pair? _g1202212220_)
                      (let ((_e1207312223_ (gx#syntax-e _g1202212220_)))
                        (let ((_hd1207412227_ (##car _e1207312223_))
                              (_tl1207512230_ (##cdr _e1207312223_)))
                          (if (gx#stx-pair? _tl1207512230_)
                              (let ((_e1207612233_
                                     (gx#syntax-e _tl1207512230_)))
                                (let ((_hd1207712237_ (##car _e1207612233_))
                                      (_tl1207812240_ (##cdr _e1207612233_)))
                                  (if (gx#stx-pair? _tl1207812240_)
                                      (let ((_e1207912243_
                                             (gx#syntax-e _tl1207812240_)))
                                        (let ((_hd1208012247_
                                               (##car _e1207912243_))
                                              (_tl1208112250_
                                               (##cdr _e1207912243_)))
                                          (if (gx#stx-pair? _tl1208112250_)
                                              (let ((_e1208212253_
                                                     (gx#syntax-e
                                                      _tl1208112250_)))
                                                (let ((_hd1208312257_
                                                       (##car _e1208212253_))
                                                      (_tl1208412260_
                                                       (##cdr _e1208212253_)))
                                                  (if (gx#stx-pair?
                                                       _tl1208412260_)
                                                      (let ((_e1208512263_
                                                             (gx#syntax-e
                                                              _tl1208412260_)))
                                                        (let ((_hd1208612267_
                                                               (##car _e1208512263_))
                                                              (_tl1208712270_
                                                               (##cdr _e1208512263_)))
                                                          (if (gx#stx-pair?
                                                               _tl1208712270_)
                                                              (let ((_e1208812273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1208712270_)))
                        (let ((_hd1208912277_ (##car _e1208812273_))
                              (_tl1209012280_ (##cdr _e1208812273_)))
                          (if (gx#stx-null? _tl1209012280_)
                              ((lambda (_L12283_
                                        _L12285_
                                        _L12286_
                                        _L12287_
                                        _L12288_)
                                 (let* ((_g1231212327_
                                         (lambda (_g1231312323_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1231312323_)))
                                        (_g1231112372_
                                         (lambda (_g1231312331_)
                                           (if (gx#stx-pair? _g1231312331_)
                                               (let ((_e1231612334_
                                                      (gx#syntax-e
                                                       _g1231312331_)))
                                                 (let ((_hd1231712338_
                                                        (##car _e1231612334_))
                                                       (_tl1231812341_
                                                        (##cdr _e1231612334_)))
                                                   (if (gx#stx-pair?
                                                        _tl1231812341_)
                                                       (let ((_e1231912344_
                                                              (gx#syntax-e
                                                               _tl1231812341_)))
                                                         (let ((_hd1232012348_
                                                                (##car _e1231912344_))
                                                               (_tl1232112351_
                                                                (##cdr _e1231912344_)))
                                                           (if (gx#stx-null?
                                                                _tl1232112351_)
                                                               ((lambda (_L12354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L12356_)
                          (let ()
                            (cons (gx#datum->syntax '#f 'if)
                                  (cons (cons (gx#datum->syntax '#f '##fx=)
                                              (cons _L12287_
                                                    (cons _L12356_ '())))
                                        (cons _L12286_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'if)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons _L12287_ (cons _L12354_ '())))
                        (cons _L12285_ (cons _L12283_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))
                        _hd1232012348_
                        _hd1231712338_)
                       (_g1231212327_ _g1231312331_))))
               (_g1231212327_ _g1231312331_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1231212327_
                                                _g1231312331_)))))
                                   (_g1231112372_
                                    (list (gx#stx-e _L12288_)
                                          (fx1+ (gx#stx-e _L12288_))))))
                               _hd1208912277_
                               _hd1208612267_
                               _hd1208312257_
                               _hd1208012247_
                               _hd1207712237_)
                              (_g1202012216_ _g1202212220_))))
                      (_g1202012216_ _g1202212220_))))
              (_g1202012216_ _g1202212220_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1202012216_ _g1202212220_))))
                                      (_g1202012216_ _g1202212220_))))
                              (_g1202012216_ _g1202212220_))))
                      (_g1202012216_ _g1202212220_))))
               (_g1201812489_
                (lambda (_g1202212380_)
                  (if (gx#stx-pair? _g1202212380_)
                      (let ((_e1205312383_ (gx#syntax-e _g1202212380_)))
                        (let ((_hd1205412387_ (##car _e1205312383_))
                              (_tl1205512390_ (##cdr _e1205312383_)))
                          (if (gx#stx-pair? _tl1205512390_)
                              (let ((_e1205612393_
                                     (gx#syntax-e _tl1205512390_)))
                                (let ((_hd1205712397_ (##car _e1205612393_))
                                      (_tl1205812400_ (##cdr _e1205612393_)))
                                  (if (gx#stx-pair? _tl1205812400_)
                                      (let ((_e1205912403_
                                             (gx#syntax-e _tl1205812400_)))
                                        (let ((_hd1206012407_
                                               (##car _e1205912403_))
                                              (_tl1206112410_
                                               (##cdr _e1205912403_)))
                                          (if (gx#stx-pair? _tl1206112410_)
                                              (let ((_e1206212413_
                                                     (gx#syntax-e
                                                      _tl1206112410_)))
                                                (let ((_hd1206312417_
                                                       (##car _e1206212413_))
                                                      (_tl1206412420_
                                                       (##cdr _e1206212413_)))
                                                  (if (gx#stx-pair?
                                                       _tl1206412420_)
                                                      (let ((_e1206512423_
                                                             (gx#syntax-e
                                                              _tl1206412420_)))
                                                        (let ((_hd1206612427_
                                                               (##car _e1206512423_))
                                                              (_tl1206712430_
                                                               (##cdr _e1206512423_)))
                                                          (if (gx#stx-null?
                                                               _tl1206712430_)
                                                              ((lambda (_L12433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L12435_
                                _L12436_
                                _L12437_)
                         (let* ((_g1245812466_
                                 (lambda (_g1245912462_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1245912462_)))
                                (_g1245712485_
                                 (lambda (_g1245912470_)
                                   ((lambda (_L12473_)
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '##fx=)
                                                          (cons _L12436_
                                                                (cons _L12473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _L12435_
                                                          (cons _L12433_
                                                                '()))))))
                                    _g1245912470_))))
                           (_g1245712485_ (gx#stx-e _L12437_))))
                       _hd1206612427_
                       _hd1206312417_
                       _hd1206012407_
                       _hd1205712397_)
                      (_g1201912376_ _g1202212380_))))
              (_g1201912376_ _g1202212380_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1201912376_ _g1202212380_))))
                                      (_g1201912376_ _g1202212380_))))
                              (_g1201912376_ _g1202212380_))))
                      (_g1201912376_ _g1202212380_))))
               (_g1201712557_
                (lambda (_g1202212493_)
                  (if (gx#stx-pair? _g1202212493_)
                      (let ((_e1203712496_ (gx#syntax-e _g1202212493_)))
                        (let ((_hd1203812500_ (##car _e1203712496_))
                              (_tl1203912503_ (##cdr _e1203712496_)))
                          (if (gx#stx-pair? _tl1203912503_)
                              (let ((_e1204012506_
                                     (gx#syntax-e _tl1203912503_)))
                                (let ((_hd1204112510_ (##car _e1204012506_))
                                      (_tl1204212513_ (##cdr _e1204012506_)))
                                  (if (gx#stx-pair? _tl1204212513_)
                                      (let ((_e1204312516_
                                             (gx#syntax-e _tl1204212513_)))
                                        (let ((_hd1204412520_
                                               (##car _e1204312516_))
                                              (_tl1204512523_
                                               (##cdr _e1204312516_)))
                                          (if (gx#stx-pair? _tl1204512523_)
                                              (let ((_e1204612526_
                                                     (gx#syntax-e
                                                      _tl1204512523_)))
                                                (let ((_hd1204712530_
                                                       (##car _e1204612526_))
                                                      (_tl1204812533_
                                                       (##cdr _e1204612526_)))
                                                  (if (gx#stx-null?
                                                       _tl1204812533_)
                                                      ((lambda (_L12536_
                                                                _L12538_
                                                                _L12539_)
                                                         _L12536_)
                                                       _hd1204712530_
                                                       _hd1204412520_
                                                       _hd1204112510_)
                                                      (_g1201812489_
                                                       _g1202212493_))))
                                              (_g1201812489_ _g1202212493_))))
                                      (_g1201812489_ _g1202212493_))))
                              (_g1201812489_ _g1202212493_))))
                      (_g1201812489_ _g1202212493_))))
               (_g1201612611_
                (lambda (_g1202212561_)
                  (if (gx#stx-pair? _g1202212561_)
                      (let ((_e1202512564_ (gx#syntax-e _g1202212561_)))
                        (let ((_hd1202612568_ (##car _e1202512564_))
                              (_tl1202712571_ (##cdr _e1202512564_)))
                          (if (gx#stx-pair? _tl1202712571_)
                              (let ((_e1202812574_
                                     (gx#syntax-e _tl1202712571_)))
                                (let ((_hd1202912578_ (##car _e1202812574_))
                                      (_tl1203012581_ (##cdr _e1202812574_)))
                                  (if (gx#stx-pair? _tl1203012581_)
                                      (let ((_e1203112584_
                                             (gx#syntax-e _tl1203012581_)))
                                        (let ((_hd1203212588_
                                               (##car _e1203112584_))
                                              (_tl1203312591_
                                               (##cdr _e1203112584_)))
                                          (if (gx#stx-null? _tl1203312591_)
                                              ((lambda (_L12594_ _L12596_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons '#!void '())))
                                               _hd1203212588_
                                               _hd1202912578_)
                                              (_g1201712557_ _g1202212561_))))
                                      (_g1201712557_ _g1202212561_))))
                              (_g1201712557_ _g1202212561_))))
                      (_g1201712557_ _g1202212561_)))))
          (_g1201612611_ _stx12014_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#~case-dispatch-bsearch|
      (lambda (_stx12616_)
        (letrec ((_split12619_
                  (lambda (_lst12980_ _mid12982_)
                    (let _lp12984_ ((_i12987_ '0)
                                    (_rest12989_ _lst12980_)
                                    (_left12990_ '()))
                      (if (fx< _i12987_ _mid12982_)
                          (_lp12984_
                           (fx1+ _i12987_)
                           (cdr _rest12989_)
                           (cons (car _rest12989_) _left12990_))
                          (values (reverse _left12990_) _rest12989_))))))
          (let* ((_g1262212650_
                  (lambda (_g1262312646_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1262312646_)))
                 (_g1262112976_
                  (lambda (_g1262312654_)
                    (if (gx#stx-pair? _g1262312654_)
                        (let ((_e1262712657_ (gx#syntax-e _g1262312654_)))
                          (let ((_hd1262812661_ (##car _e1262712657_))
                                (_tl1262912664_ (##cdr _e1262712657_)))
                            (if (gx#stx-pair? _tl1262912664_)
                                (let ((_e1263012667_
                                       (gx#syntax-e _tl1262912664_)))
                                  (let ((_hd1263112671_ (##car _e1263012667_))
                                        (_tl1263212674_ (##cdr _e1263012667_)))
                                    (if (gx#stx-pair? _tl1263212674_)
                                        (let ((_e1263312677_
                                               (gx#syntax-e _tl1263212674_)))
                                          (let ((_hd1263412681_
                                                 (##car _e1263312677_))
                                                (_tl1263512684_
                                                 (##cdr _e1263312677_)))
                                            (if (gx#stx-pair/null?
                                                 _tl1263512684_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1263512684_)
                                                          '0)
                                                    (let ((_g35178_
                                                           (gx#syntax-split-splice
                                                            _tl1263512684_
                                                            '0)))
                                                      (begin
                                                        (let ((_g35179_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g35178_)
                           (##vector-length _g35178_)
                           1)))
                  (if (not (##fx= _g35179_ 2))
                      (error "Context expects 2 values" _g35179_)))
                (let ((_target1263612687_ (##vector-ref _g35178_ 0))
                      (_tl1263812690_ (##vector-ref _g35178_ 1)))
                  (if (gx#stx-null? _tl1263812690_)
                      (letrec ((_loop1263912693_
                                (lambda (_hd1263712697_ _K1264312700_)
                                  (if (gx#stx-pair? _hd1263712697_)
                                      (let ((_e1264012703_
                                             (gx#syntax-e _hd1263712697_)))
                                        (let ((_lp-hd1264112707_
                                               (##car _e1264012703_))
                                              (_lp-tl1264212710_
                                               (##cdr _e1264012703_)))
                                          (_loop1263912693_
                                           _lp-tl1264212710_
                                           (cons _lp-hd1264112707_
                                                 _K1264312700_))))
                                      (let ((_K1264412713_
                                             (reverse _K1264312700_)))
                                        ((lambda (_L12717_ _L12719_ _L12720_)
                                           (let* ((_len12750_
                                                   (length (begin
                                                             '#!void
                                                             (foldr (lambda (_g1274112744_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1274212747_)
                              (cons _g1274112744_ _g1274212747_))
                            '()
                            _L12717_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_mid12753_
                                                   (quotient _len12750_ '2))
                                                  (_g35180_
                                                   (_split12619_
                                                    (begin
                                                      '#!void
                                                      (foldr (lambda (_g1275512758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1275612761_)
                       (cons _g1275512758_ _g1275612761_))
                     '()
                     _L12717_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _mid12753_)))
                                             (begin
                                               (let ((_g35181_
                                                      (if (##values? _g35180_)
                                                          (##vector-length
                                                           _g35180_)
                                                          1)))
                                                 (if (not (##fx= _g35181_ 2))
                                                     (error "Context expects 2 values"
                                                            _g35181_)))
                                               (let ((_left12764_
                                                      (##vector-ref
                                                       _g35180_
                                                       0))
                                                     (_right12766_
                                                      (##vector-ref
                                                       _g35180_
                                                       1)))
                                                 (let ()
                                                   (let* ((_g1277012811_
                                                           (lambda (_g1277112807_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1277112807_)))
                                                          (_g1276912972_
                                                           (lambda (_g1277112815_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1277112815_)
                         (let ((_e1277612818_ (gx#syntax-e _g1277112815_)))
                           (let ((_hd1277712822_ (##car _e1277612818_))
                                 (_tl1277812825_ (##cdr _e1277612818_)))
                             (if (gx#stx-pair? _tl1277812825_)
                                 (let ((_e1277912828_
                                        (gx#syntax-e _tl1277812825_)))
                                   (let ((_hd1278012832_ (##car _e1277912828_))
                                         (_tl1278112835_
                                          (##cdr _e1277912828_)))
                                     (if (gx#stx-pair/null? _hd1278012832_)
                                         (if (fx>= (gx#stx-length
                                                    _hd1278012832_)
                                                   '0)
                                             (let ((_g35182_
                                                    (gx#syntax-split-splice
                                                     _hd1278012832_
                                                     '0)))
                                               (begin
                                                 (let ((_g35183_
                                                        (if (##values?
                                                             _g35182_)
                                                            (##vector-length
                                                             _g35182_)
                                                            1)))
                                                   (if (not (##fx= _g35183_ 2))
                                                       (error "Context expects 2 values"
                                                              _g35183_)))
                                                 (let ((_target1278212838_
                                                        (##vector-ref
                                                         _g35182_
                                                         0))
                                                       (_tl1278412841_
                                                        (##vector-ref
                                                         _g35182_
                                                         1)))
                                                   (if (gx#stx-null?
                                                        _tl1278412841_)
                                                       (letrec ((_loop1278512844_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_hd1278312848_ _K-left1278912851_)
                           (if (gx#stx-pair? _hd1278312848_)
                               (let ((_e1278612854_
                                      (gx#syntax-e _hd1278312848_)))
                                 (let ((_lp-hd1278712858_
                                        (##car _e1278612854_))
                                       (_lp-tl1278812861_
                                        (##cdr _e1278612854_)))
                                   (_loop1278512844_
                                    _lp-tl1278812861_
                                    (cons _lp-hd1278712858_
                                          _K-left1278912851_))))
                               (let ((_K-left1279012864_
                                      (reverse _K-left1278912851_)))
                                 (if (gx#stx-pair? _tl1278112835_)
                                     (let ((_e1279112868_
                                            (gx#syntax-e _tl1278112835_)))
                                       (let ((_hd1279212872_
                                              (##car _e1279112868_))
                                             (_tl1279312875_
                                              (##cdr _e1279112868_)))
                                         (if (gx#stx-pair/null? _hd1279212872_)
                                             (if (fx>= (gx#stx-length
                                                        _hd1279212872_)
                                                       '0)
                                                 (let ((_g35184_
                                                        (gx#syntax-split-splice
                                                         _hd1279212872_
                                                         '0)))
                                                   (begin
                                                     (let ((_g35185_
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g35184_)
                        (##vector-length _g35184_)
                        1)))
               (if (not (##fx= _g35185_ 2))
                   (error "Context expects 2 values" _g35185_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1279412878_
                                                            (##vector-ref
                                                             _g35184_
                                                             0))
                                                           (_tl1279612881_
                                                            (##vector-ref
                                                             _g35184_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1279612881_)
                                                           (letrec ((_loop1279712884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1279512888_ _K-right1280112891_)
                               (if (gx#stx-pair? _hd1279512888_)
                                   (let ((_e1279812894_
                                          (gx#syntax-e _hd1279512888_)))
                                     (let ((_lp-hd1279912898_
                                            (##car _e1279812894_))
                                           (_lp-tl1280012901_
                                            (##cdr _e1279812894_)))
                                       (_loop1279712884_
                                        _lp-tl1280012901_
                                        (cons _lp-hd1279912898_
                                              _K-right1280112891_))))
                                   (let ((_K-right1280212904_
                                          (reverse _K-right1280112891_)))
                                     (if (gx#stx-pair? _tl1279312875_)
                                         (let ((_e1280312908_
                                                (gx#syntax-e _tl1279312875_)))
                                           (let ((_hd1280412912_
                                                  (##car _e1280312908_))
                                                 (_tl1280512915_
                                                  (##cdr _e1280312908_)))
                                             (if (gx#stx-null? _tl1280512915_)
                                                 ((lambda (_L12918_
                                                           _L12920_
                                                           _L12921_
                                                           _L12922_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '##fx<)
                                (cons _L12719_ (cons _L12918_ '())))
                          (cons (cons (gx#datum->syntax '#f '~case-dispatch*)
                                      (cons _L12720_
                                            (cons _L12719_
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1295512960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1295612963_)
                     (cons _g1295512960_ _g1295612963_))
                   '()
                   _L12921_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             '~case-dispatch*)
                                            (cons _L12918_
                                                  (cons _L12719_
                                                        (begin
                                                          '#!void
                                                          (foldr (lambda (_g1295712966_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g1295812969_)
                           (cons _g1295712966_ _g1295812969_))
                         '()
                         _L12920_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1280412912_
                                                  _K-right1280212904_
                                                  _K-left1279012864_
                                                  _hd1277712822_)
                                                 (_g1277012811_
                                                  _g1277112815_))))
                                         (_g1277012811_ _g1277112815_)))))))
                     (_loop1279712884_ _target1279412878_ '()))
                   (_g1277012811_ _g1277112815_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1277012811_ _g1277112815_))
                                             (_g1277012811_ _g1277112815_))))
                                     (_g1277012811_ _g1277112815_)))))))
                 (_loop1278512844_ _target1278212838_ '()))
               (_g1277012811_ _g1277112815_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1277012811_ _g1277112815_))
                                         (_g1277012811_ _g1277112815_))))
                                 (_g1277012811_ _g1277112815_))))
                         (_g1277012811_ _g1277112815_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1276912972_
                                                      (list _mid12753_
                                                            _left12764_
                                                            _right12766_
                                                            (fx+ _mid12753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _L12720_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _K1264412713_
                                         _hd1263412681_
                                         _hd1263112671_))))))
                        (_loop1263912693_ _target1263612687_ '()))
                      (_g1262212650_ _g1262312654_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1262212650_
                                                     _g1262312654_))
                                                (_g1262212650_
                                                 _g1262312654_))))
                                        (_g1262212650_ _g1262312654_))))
                                (_g1262212650_ _g1262312654_))))
                        (_g1262212650_ _g1262312654_)))))
            (_g1262112976_ _stx12616_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#do|
      (lambda (_$stx12996_)
        (let* ((_g1300013071_
                (lambda (_g1300113067_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1300113067_)))
               (_g1299913360_
                (lambda (_g1300113075_)
                  (if (gx#stx-pair? _g1300113075_)
                      (let ((_e1300813078_ (gx#syntax-e _g1300113075_)))
                        (let ((_hd1300913082_ (##car _e1300813078_))
                              (_tl1301013085_ (##cdr _e1300813078_)))
                          (if (gx#stx-pair? _tl1301013085_)
                              (let ((_e1301113088_
                                     (gx#syntax-e _tl1301013085_)))
                                (let ((_hd1301213092_ (##car _e1301113088_))
                                      (_tl1301313095_ (##cdr _e1301113088_)))
                                  (if (gx#stx-pair/null? _hd1301213092_)
                                      (if (fx>= (gx#stx-length _hd1301213092_)
                                                '0)
                                          (let ((_g35186_
                                                 (gx#syntax-split-splice
                                                  _hd1301213092_
                                                  '0)))
                                            (begin
                                              (let ((_g35187_
                                                     (if (##values? _g35186_)
                                                         (##vector-length
                                                          _g35186_)
                                                         1)))
                                                (if (not (##fx= _g35187_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35187_)))
                                              (let ((_target1301413098_
                                                     (##vector-ref _g35186_ 0))
                                                    (_tl1301613101_
                                                     (##vector-ref
                                                      _g35186_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl1301613101_)
                                                    (letrec ((_loop1301713104_
                                                              (lambda (_hd1301513108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _step1302113111_
                               _init1302213113_
                               _var1302313115_)
                        (if (gx#stx-pair? _hd1301513108_)
                            (let ((_e1301813118_ (gx#syntax-e _hd1301513108_)))
                              (let ((_lp-hd1301913122_ (##car _e1301813118_))
                                    (_lp-tl1302013125_ (##cdr _e1301813118_)))
                                (if (gx#stx-pair? _lp-hd1301913122_)
                                    (let ((_e1302713128_
                                           (gx#syntax-e _lp-hd1301913122_)))
                                      (let ((_hd1302813132_
                                             (##car _e1302713128_))
                                            (_tl1302913135_
                                             (##cdr _e1302713128_)))
                                        (if (gx#stx-pair? _tl1302913135_)
                                            (let ((_e1303013138_
                                                   (gx#syntax-e
                                                    _tl1302913135_)))
                                              (let ((_hd1303113142_
                                                     (##car _e1303013138_))
                                                    (_tl1303213145_
                                                     (##cdr _e1303013138_)))
                                                (if (gx#stx-pair/null?
                                                     _tl1303213145_)
                                                    (if (fx>= (gx#stx-length
                                                               _tl1303213145_)
                                                              '0)
                                                        (let ((_g35188_
                                                               (gx#syntax-split-splice
                                                                _tl1303213145_
                                                                '0)))
                                                          (begin
                                                            (let ((_g35189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (##values? _g35188_)
                               (##vector-length _g35188_)
                               1)))
                      (if (not (##fx= _g35189_ 2))
                          (error "Context expects 2 values" _g35189_)))
                    (let ((_target1303313148_ (##vector-ref _g35188_ 0))
                          (_tl1303513151_ (##vector-ref _g35188_ 1)))
                      (if (gx#stx-null? _tl1303513151_)
                          (letrec ((_loop1303613154_
                                    (lambda (_hd1303413158_ _step1304013161_)
                                      (if (gx#stx-pair? _hd1303413158_)
                                          (let ((_e1303713164_
                                                 (gx#syntax-e _hd1303413158_)))
                                            (let ((_lp-hd1303813168_
                                                   (##car _e1303713164_))
                                                  (_lp-tl1303913171_
                                                   (##cdr _e1303713164_)))
                                              (_loop1303613154_
                                               _lp-tl1303913171_
                                               (cons _lp-hd1303813168_
                                                     _step1304013161_))))
                                          (let ((_step1304113174_
                                                 (reverse _step1304013161_)))
                                            (_loop1301713104_
                                             _lp-tl1302013125_
                                             (cons _step1304113174_
                                                   _step1302113111_)
                                             (cons _hd1303113142_
                                                   _init1302213113_)
                                             (cons _hd1302813132_
                                                   _var1302313115_)))))))
                            (_loop1303613154_ _target1303313148_ '()))
                          (_g1300013071_ _g1300113075_)))))
                (_g1300013071_ _g1300113075_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1300013071_
                                                     _g1300113075_))))
                                            (_g1300013071_ _g1300113075_))))
                                    (_g1300013071_ _g1300113075_))))
                            (let ((_step1302413178_ (reverse _step1302113111_))
                                  (_init1302513181_ (reverse _init1302213113_))
                                  (_var1302613183_ (reverse _var1302313115_)))
                              (if (gx#stx-pair? _tl1301313095_)
                                  (let ((_e1304213186_
                                         (gx#syntax-e _tl1301313095_)))
                                    (let ((_hd1304313190_
                                           (##car _e1304213186_))
                                          (_tl1304413193_
                                           (##cdr _e1304213186_)))
                                      (if (gx#stx-pair? _hd1304313190_)
                                          (let ((_e1304513196_
                                                 (gx#syntax-e _hd1304313190_)))
                                            (let ((_hd1304613200_
                                                   (##car _e1304513196_))
                                                  (_tl1304713203_
                                                   (##cdr _e1304513196_)))
                                              (if (gx#stx-pair/null?
                                                   _tl1304713203_)
                                                  (if (fx>= (gx#stx-length
                                                             _tl1304713203_)
                                                            '0)
                                                      (let ((_g35190_
                                                             (gx#syntax-split-splice
                                                              _tl1304713203_
                                                              '0)))
                                                        (begin
                                                          (let ((_g35191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g35190_)
                             (##vector-length _g35190_)
                             1)))
                    (if (not (##fx= _g35191_ 2))
                        (error "Context expects 2 values" _g35191_)))
                  (let ((_target1304813206_ (##vector-ref _g35190_ 0))
                        (_tl1305013209_ (##vector-ref _g35190_ 1)))
                    (if (gx#stx-null? _tl1305013209_)
                        (letrec ((_loop1305113212_
                                  (lambda (_hd1304913216_ _fini1305513219_)
                                    (if (gx#stx-pair? _hd1304913216_)
                                        (let ((_e1305213222_
                                               (gx#syntax-e _hd1304913216_)))
                                          (let ((_lp-hd1305313226_
                                                 (##car _e1305213222_))
                                                (_lp-tl1305413229_
                                                 (##cdr _e1305213222_)))
                                            (_loop1305113212_
                                             _lp-tl1305413229_
                                             (cons _lp-hd1305313226_
                                                   _fini1305513219_))))
                                        (let ((_fini1305613232_
                                               (reverse _fini1305513219_)))
                                          (if (gx#stx-pair/null?
                                               _tl1304413193_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1304413193_)
                                                        '0)
                                                  (let ((_g35192_
                                                         (gx#syntax-split-splice
                                                          _tl1304413193_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35193_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35192_)
                         (##vector-length _g35192_)
                         1)))
                (if (not (##fx= _g35193_ 2))
                    (error "Context expects 2 values" _g35193_)))
              (let ((_target1305713236_ (##vector-ref _g35192_ 0))
                    (_tl1305913239_ (##vector-ref _g35192_ 1)))
                (if (gx#stx-null? _tl1305913239_)
                    (letrec ((_loop1306013242_
                              (lambda (_hd1305813246_ _body1306413249_)
                                (if (gx#stx-pair? _hd1305813246_)
                                    (let ((_e1306113252_
                                           (gx#syntax-e _hd1305813246_)))
                                      (let ((_lp-hd1306213256_
                                             (##car _e1306113252_))
                                            (_lp-tl1306313259_
                                             (##cdr _e1306113252_)))
                                        (_loop1306013242_
                                         _lp-tl1306313259_
                                         (cons _lp-hd1306213256_
                                               _body1306413249_))))
                                    (let ((_body1306513262_
                                           (reverse _body1306413249_)))
                                      ((lambda (_L13266_
                                                _L13268_
                                                _L13269_
                                                _L13270_
                                                _L13271_
                                                _L13272_)
                                         (if (gx#stx-andmap
                                              gx#identifier?
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g1330513308_
                                                                _g1330613311_)
                                                         (cons _g1330513308_
                                                               _g1330613311_))
                                                       '()
                                                       _L13272_)))
                                             (cons (gx#datum->syntax '#f 'let)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$loop)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets _L13271_ _L13272_)
                         (foldr (lambda (_g1331313326_
                                         _g1331413329_
                                         _g1331513331_)
                                  (cons (cons _g1331413329_
                                              (cons _g1331313326_ '()))
                                        _g1331513331_))
                                '()
                                _L13271_
                                _L13272_))
                       (cons (cons (gx#datum->syntax '#f 'if)
                                   (cons _L13269_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'begin)
                                                     (cons '#!void
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g1331613334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1331713337_)
                              (cons _g1331613334_ _g1331713337_))
                            '()
                            _L13268_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'begin)
                                                           (begin
                                                             '#!void
                                                             (foldr (lambda (_g1331813340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1331913343_)
                              (cons _g1331813340_ _g1331913343_))
                            (cons (cons (gx#datum->syntax '#f '$loop)
                                        (begin
                                          (gx#syntax-check-splice-targets
                                           _L13270_
                                           _L13272_)
                                          (foldr (lambda (_g1332013346_
                                                          _g1332113349_
                                                          _g1332213351_)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _g1332113349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (begin
                               '#!void
                               (foldr (lambda (_g1332313354_ _g1332413357_)
                                        (cons _g1332313354_ _g1332413357_))
                                      '()
                                      _g1332013346_))))
                 _g1332213351_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L13270_
                                                 _L13272_)))
                                  '())
                            _L13266_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1300013071_ _g1300113075_)))
                                       _body1306513262_
                                       _fini1305613232_
                                       _hd1304613200_
                                       _step1302413178_
                                       _init1302513181_
                                       _var1302613183_))))))
                      (_loop1306013242_ _target1305713236_ '()))
                    (_g1300013071_ _g1300113075_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1300013071_
                                                   _g1300113075_))
                                              (_g1300013071_
                                               _g1300113075_)))))))
                          (_loop1305113212_ _target1304813206_ '()))
                        (_g1300013071_ _g1300113075_)))))
              (_g1300013071_ _g1300113075_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1300013071_
                                                   _g1300113075_))))
                                          (_g1300013071_ _g1300113075_))))
                                  (_g1300013071_ _g1300113075_)))))))
              (_loop1301713104_ _target1301413098_ '() '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1300013071_
                                                     _g1300113075_)))))
                                          (_g1300013071_ _g1300113075_))
                                      (_g1300013071_ _g1300113075_))))
                              (_g1300013071_ _g1300113075_))))
                      (_g1300013071_ _g1300113075_)))))
          (_g1299913360_ _$stx12996_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#do-while|
      (lambda (_$stx13368_)
        (let* ((_g1337213395_
                (lambda (_g1337313391_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1337313391_)))
               (_g1337113466_
                (lambda (_g1337313399_)
                  (if (gx#stx-pair? _g1337313399_)
                      (let ((_e1337813402_ (gx#syntax-e _g1337313399_)))
                        (let ((_hd1337913406_ (##car _e1337813402_))
                              (_tl1338013409_ (##cdr _e1337813402_)))
                          (if (gx#stx-pair? _tl1338013409_)
                              (let ((_e1338113412_
                                     (gx#syntax-e _tl1338013409_)))
                                (let ((_hd1338213416_ (##car _e1338113412_))
                                      (_tl1338313419_ (##cdr _e1338113412_)))
                                  (if (gx#stx-pair? _tl1338313419_)
                                      (let ((_e1338413422_
                                             (gx#syntax-e _tl1338313419_)))
                                        (let ((_hd1338513426_
                                               (##car _e1338413422_))
                                              (_tl1338613429_
                                               (##cdr _e1338413422_)))
                                          (if (gx#stx-pair? _hd1338513426_)
                                              (let ((_e1338713432_
                                                     (gx#syntax-e
                                                      _hd1338513426_)))
                                                (let ((_hd1338813436_
                                                       (##car _e1338713432_))
                                                      (_tl1338913439_
                                                       (##cdr _e1338713432_)))
                                                  ((lambda (_L13442_
                                                            _L13444_
                                                            _L13445_
                                                            _L13446_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'do)
                                                           (cons _L13446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (gx#datum->syntax '#f 'not)
                                           (cons _L13445_ '()))
                                     _L13444_)
                               _L13442_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl1338613429_
                                                   _tl1338913439_
                                                   _hd1338813436_
                                                   _hd1338213416_)))
                                              (_g1337213395_ _g1337313399_))))
                                      (_g1337213395_ _g1337313399_))))
                              (_g1337213395_ _g1337313399_))))
                      (_g1337213395_ _g1337313399_)))))
          (_g1337113466_ _$stx13368_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#begin0|
      (lambda (_$stx13470_)
        (let* ((_g1347513506_
                (lambda (_g1347613502_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1347613502_)))
               (_g1347413591_
                (lambda (_g1347613510_)
                  (if (gx#stx-pair? _g1347613510_)
                      (let ((_e1348613513_ (gx#syntax-e _g1347613510_)))
                        (let ((_hd1348713517_ (##car _e1348613513_))
                              (_tl1348813520_ (##cdr _e1348613513_)))
                          (if (gx#stx-pair? _tl1348813520_)
                              (let ((_e1348913523_
                                     (gx#syntax-e _tl1348813520_)))
                                (let ((_hd1349013527_ (##car _e1348913523_))
                                      (_tl1349113530_ (##cdr _e1348913523_)))
                                  (if (gx#stx-pair/null? _tl1349113530_)
                                      (if (fx>= (gx#stx-length _tl1349113530_)
                                                '0)
                                          (let ((_g35194_
                                                 (gx#syntax-split-splice
                                                  _tl1349113530_
                                                  '0)))
                                            (begin
                                              (let ((_g35195_
                                                     (if (##values? _g35194_)
                                                         (##vector-length
                                                          _g35194_)
                                                         1)))
                                                (if (not (##fx= _g35195_ 2))
                                                    (error "Context expects 2 values"
                                                           _g35195_)))
                                              (let ((_target1349213533_
                                                     (##vector-ref _g35194_ 0))
                                                    (_tl1349413536_
                                                     (##vector-ref
                                                      _g35194_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl1349413536_)
                                                    (letrec ((_loop1349513539_
                                                              (lambda (_hd1349313543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _rest1349913546_)
                        (if (gx#stx-pair? _hd1349313543_)
                            (let ((_e1349613549_ (gx#syntax-e _hd1349313543_)))
                              (let ((_lp-hd1349713553_ (##car _e1349613549_))
                                    (_lp-tl1349813556_ (##cdr _e1349613549_)))
                                (_loop1349513539_
                                 _lp-tl1349813556_
                                 (cons _lp-hd1349713553_ _rest1349913546_))))
                            (let ((_rest1350013559_
                                   (reverse _rest1349913546_)))
                              ((lambda (_L13563_ _L13565_)
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (gx#datum->syntax '#f '$r)
                                                   (cons _L13565_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '%#expression)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'begin)
                             (begin
                               '#!void
                               (foldr (lambda (_g1358213585_ _g1358313588_)
                                        (cons _g1358213585_ _g1358313588_))
                                      '()
                                      _L13563_)))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$r)
                                                         '())))))
                               _rest1350013559_
                               _hd1349013527_))))))
              (_loop1349513539_ _target1349213533_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1347513506_
                                                     _g1347613510_)))))
                                          (_g1347513506_ _g1347613510_))
                                      (_g1347513506_ _g1347613510_))))
                              (_g1347513506_ _g1347613510_))))
                      (_g1347513506_ _g1347613510_))))
               (_g1347313631_
                (lambda (_g1347613595_)
                  (if (gx#stx-pair? _g1347613595_)
                      (let ((_e1347813598_ (gx#syntax-e _g1347613595_)))
                        (let ((_hd1347913602_ (##car _e1347813598_))
                              (_tl1348013605_ (##cdr _e1347813598_)))
                          (if (gx#stx-pair? _tl1348013605_)
                              (let ((_e1348113608_
                                     (gx#syntax-e _tl1348013605_)))
                                (let ((_hd1348213612_ (##car _e1348113608_))
                                      (_tl1348313615_ (##cdr _e1348113608_)))
                                  (if (gx#stx-null? _tl1348313615_)
                                      ((lambda (_L13618_) _L13618_)
                                       _hd1348213612_)
                                      (_g1347413591_ _g1347613595_))))
                              (_g1347413591_ _g1347613595_))))
                      (_g1347413591_ _g1347613595_)))))
          (_g1347313631_ _$stx13470_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#rec|
      (lambda (_$stx13636_)
        (let* ((_g1364213695_
                (lambda (_g1364313691_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1364313691_)))
               (_g1364113794_
                (lambda (_g1364313699_)
                  (if (gx#stx-pair? _g1364313699_)
                      (let ((_e1367213702_ (gx#syntax-e _g1364313699_)))
                        (let ((_hd1367313706_ (##car _e1367213702_))
                              (_tl1367413709_ (##cdr _e1367213702_)))
                          (if (gx#stx-pair? _tl1367413709_)
                              (let ((_e1367513712_
                                     (gx#syntax-e _tl1367413709_)))
                                (let ((_hd1367613716_ (##car _e1367513712_))
                                      (_tl1367713719_ (##cdr _e1367513712_)))
                                  (if (gx#stx-pair? _hd1367613716_)
                                      (let ((_e1367813722_
                                             (gx#syntax-e _hd1367613716_)))
                                        (let ((_hd1367913726_
                                               (##car _e1367813722_))
                                              (_tl1368013729_
                                               (##cdr _e1367813722_)))
                                          (if (gx#stx-pair/null?
                                               _tl1367713719_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1367713719_)
                                                        '0)
                                                  (let ((_g35196_
                                                         (gx#syntax-split-splice
                                                          _tl1367713719_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35197_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35196_)
                         (##vector-length _g35196_)
                         1)))
                (if (not (##fx= _g35197_ 2))
                    (error "Context expects 2 values" _g35197_)))
              (let ((_target1368113732_ (##vector-ref _g35196_ 0))
                    (_tl1368313735_ (##vector-ref _g35196_ 1)))
                (if (gx#stx-null? _tl1368313735_)
                    (letrec ((_loop1368413738_
                              (lambda (_hd1368213742_ _body1368813745_)
                                (if (gx#stx-pair? _hd1368213742_)
                                    (let ((_e1368513748_
                                           (gx#syntax-e _hd1368213742_)))
                                      (let ((_lp-hd1368613752_
                                             (##car _e1368513748_))
                                            (_lp-tl1368713755_
                                             (##cdr _e1368513748_)))
                                        (_loop1368413738_
                                         _lp-tl1368713755_
                                         (cons _lp-hd1368613752_
                                               _body1368813745_))))
                                    (let ((_body1368913758_
                                           (reverse _body1368813745_)))
                                      ((lambda (_L13762_ _L13764_ _L13765_)
                                         (if (gx#identifier? _L13765_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _L13765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _L13764_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1378513788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1378613791_)
                  (cons _g1378513788_ _g1378613791_))
                '()
                _L13762_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '()))
                       '())
                 (cons _L13765_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1364213695_ _g1364313699_)))
                                       _body1368913758_
                                       _tl1368013729_
                                       _hd1367913726_))))))
                      (_loop1368413738_ _target1368113732_ '()))
                    (_g1364213695_ _g1364313699_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1364213695_
                                                   _g1364313699_))
                                              (_g1364213695_ _g1364313699_))))
                                      (_g1364213695_ _g1364313699_))))
                              (_g1364213695_ _g1364313699_))))
                      (_g1364213695_ _g1364313699_))))
               (_g1364013860_
                (lambda (_g1364313798_)
                  (if (gx#stx-pair? _g1364313798_)
                      (let ((_e1365713801_ (gx#syntax-e _g1364313798_)))
                        (let ((_hd1365813805_ (##car _e1365713801_))
                              (_tl1365913808_ (##cdr _e1365713801_)))
                          (if (gx#stx-pair? _tl1365913808_)
                              (let ((_e1366013811_
                                     (gx#syntax-e _tl1365913808_)))
                                (let ((_hd1366113815_ (##car _e1366013811_))
                                      (_tl1366213818_ (##cdr _e1366013811_)))
                                  (if (gx#stx-pair? _hd1366113815_)
                                      (let ((_e1366313821_
                                             (gx#syntax-e _hd1366113815_)))
                                        (let ((_hd1366413825_
                                               (##car _e1366313821_))
                                              (_tl1366513828_
                                               (##cdr _e1366313821_)))
                                          (if (gx#identifier? _hd1366413825_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core$<sugar>$<sugar:2>[1]#_g35198_|
                                                   _hd1366413825_)
                                                  (if (gx#stx-pair?
                                                       _tl1366213818_)
                                                      (let ((_e1366613831_
                                                             (gx#syntax-e
                                                              _tl1366213818_)))
                                                        (let ((_hd1366713835_
                                                               (##car _e1366613831_))
                                                              (_tl1366813838_
                                                               (##cdr _e1366613831_)))
                                                          (if (gx#stx-null?
                                                               _tl1366813838_)
                                                              ((lambda (_L13841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L13843_)
                         (if (gx#identifier-list? _L13843_)
                             (cons (gx#datum->syntax '#f 'letrec-values)
                                   (cons (cons (cons _L13843_
                                                     (cons _L13841_ '()))
                                               '())
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'values)
                                                     _L13843_)
                                               '())))
                             (_g1364113794_ _g1364313798_)))
                       _hd1366713835_
                       _tl1366513828_)
                      (_g1364113794_ _g1364313798_))))
              (_g1364113794_ _g1364313798_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1364113794_
                                                   _g1364313798_))
                                              (_g1364113794_ _g1364313798_))))
                                      (_g1364113794_ _g1364313798_))))
                              (_g1364113794_ _g1364313798_))))
                      (_g1364113794_ _g1364313798_))))
               (_g1363913914_
                (lambda (_g1364313864_)
                  (if (gx#stx-pair? _g1364313864_)
                      (let ((_e1364613867_ (gx#syntax-e _g1364313864_)))
                        (let ((_hd1364713871_ (##car _e1364613867_))
                              (_tl1364813874_ (##cdr _e1364613867_)))
                          (if (gx#stx-pair? _tl1364813874_)
                              (let ((_e1364913877_
                                     (gx#syntax-e _tl1364813874_)))
                                (let ((_hd1365013881_ (##car _e1364913877_))
                                      (_tl1365113884_ (##cdr _e1364913877_)))
                                  (if (gx#stx-pair? _tl1365113884_)
                                      (let ((_e1365213887_
                                             (gx#syntax-e _tl1365113884_)))
                                        (let ((_hd1365313891_
                                               (##car _e1365213887_))
                                              (_tl1365413894_
                                               (##cdr _e1365213887_)))
                                          (if (gx#stx-null? _tl1365413894_)
                                              ((lambda (_L13897_ _L13899_)
                                                 (if (gx#identifier? _L13899_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'letrec)
                                                           (cons (cons (cons _L13899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons _L13897_ '()))
                               '())
                         (cons _L13899_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1364013860_
                                                      _g1364313864_)))
                                               _hd1365313891_
                                               _hd1365013881_)
                                              (_g1364013860_ _g1364313864_))))
                                      (_g1364013860_ _g1364313864_))))
                              (_g1364013860_ _g1364313864_))))
                      (_g1364013860_ _g1364313864_)))))
          (_g1363913914_ _$stx13636_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet|
      (lambda (_stx13919_)
        (letrec ((_let-head?13922_
                  (lambda (_x14469_)
                    (let* ((_g1447314484_
                            (lambda (_g1447414480_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1447414480_)))
                           (_g1447214495_
                            (lambda (_g1447414488_)
                              ((lambda () (gx#identifier? _x14469_)))))
                           (_g1447114525_
                            (lambda (_g1447414499_)
                              (if (gx#stx-pair? _g1447414499_)
                                  (let ((_e1447614502_
                                         (gx#syntax-e _g1447414499_)))
                                    (let ((_hd1447714506_
                                           (##car _e1447614502_))
                                          (_tl1447814509_
                                           (##cdr _e1447614502_)))
                                      (if (gx#identifier? _hd1447714506_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g35199_|
                                               _hd1447714506_)
                                              ((lambda (_L14512_)
                                                 (gx#stx-andmap
                                                  gx#identifier?
                                                  _L14512_))
                                               _tl1447814509_)
                                              (_g1447214495_ _g1447414499_))
                                          (_g1447214495_ _g1447414499_))))
                                  (_g1447214495_ _g1447414499_)))))
                      (_g1447114525_ _x14469_))))
                 (_let-head13924_
                  (lambda (_x14409_)
                    (let* ((_g1441314424_
                            (lambda (_g1441414420_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1441414420_)))
                           (_g1441214435_
                            (lambda (_g1441414428_)
                              ((lambda () (list _x14409_)))))
                           (_g1441114465_
                            (lambda (_g1441414439_)
                              (if (gx#stx-pair? _g1441414439_)
                                  (let ((_e1441614442_
                                         (gx#syntax-e _g1441414439_)))
                                    (let ((_hd1441714446_
                                           (##car _e1441614442_))
                                          (_tl1441814449_
                                           (##cdr _e1441614442_)))
                                      (if (gx#identifier? _hd1441714446_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g35200_|
                                               _hd1441714446_)
                                              ((lambda (_L14452_) _L14452_)
                                               _tl1441814449_)
                                              (_g1441214435_ _g1441414439_))
                                          (_g1441214435_ _g1441414439_))))
                                  (_g1441214435_ _g1441414439_)))))
                      (_g1441114465_ _x14409_)))))
          (let* ((_g1392713985_
                  (lambda (_g1392813981_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1392813981_)))
                 (_g1392614335_
                  (lambda (_g1392813989_)
                    (if (gx#stx-pair? _g1392813989_)
                        (let ((_e1394813992_ (gx#syntax-e _g1392813989_)))
                          (let ((_hd1394913996_ (##car _e1394813992_))
                                (_tl1395013999_ (##cdr _e1394813992_)))
                            (if (gx#stx-pair? _tl1395013999_)
                                (let ((_e1395114002_
                                       (gx#syntax-e _tl1395013999_)))
                                  (let ((_hd1395214006_ (##car _e1395114002_))
                                        (_tl1395314009_ (##cdr _e1395114002_)))
                                    (if (gx#stx-pair/null? _hd1395214006_)
                                        (if (fx>= (gx#stx-length
                                                   _hd1395214006_)
                                                  '0)
                                            (let ((_g35201_
                                                   (gx#syntax-split-splice
                                                    _hd1395214006_
                                                    '0)))
                                              (begin
                                                (let ((_g35202_
                                                       (if (##values? _g35201_)
                                                           (##vector-length
                                                            _g35201_)
                                                           1)))
                                                  (if (not (##fx= _g35202_ 2))
                                                      (error "Context expects 2 values"
                                                             _g35202_)))
                                                (let ((_target1395414012_
                                                       (##vector-ref
                                                        _g35201_
                                                        0))
                                                      (_tl1395614015_
                                                       (##vector-ref
                                                        _g35201_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1395614015_)
                                                      (letrec ((_loop1395714018_
                                                                (lambda (_hd1395514022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _e1396114025_
                                 _hd1396214027_)
                          (if (gx#stx-pair? _hd1395514022_)
                              (let ((_e1395814030_
                                     (gx#syntax-e _hd1395514022_)))
                                (let ((_lp-hd1395914034_ (##car _e1395814030_))
                                      (_lp-tl1396014037_
                                       (##cdr _e1395814030_)))
                                  (if (gx#stx-pair? _lp-hd1395914034_)
                                      (let ((_e1396514040_
                                             (gx#syntax-e _lp-hd1395914034_)))
                                        (let ((_hd1396614044_
                                               (##car _e1396514040_))
                                              (_tl1396714047_
                                               (##cdr _e1396514040_)))
                                          (if (gx#stx-pair? _tl1396714047_)
                                              (let ((_e1396814050_
                                                     (gx#syntax-e
                                                      _tl1396714047_)))
                                                (let ((_hd1396914054_
                                                       (##car _e1396814050_))
                                                      (_tl1397014057_
                                                       (##cdr _e1396814050_)))
                                                  (if (gx#stx-null?
                                                       _tl1397014057_)
                                                      (_loop1395714018_
                                                       _lp-tl1396014037_
                                                       (cons _hd1396914054_
                                                             _e1396114025_)
                                                       (cons _hd1396614044_
                                                             _hd1396214027_))
                                                      (_g1392713985_
                                                       _g1392813989_))))
                                              (_g1392713985_ _g1392813989_))))
                                      (_g1392713985_ _g1392813989_))))
                              (let ((_e1396314060_ (reverse _e1396114025_))
                                    (_hd1396414063_ (reverse _hd1396214027_)))
                                (if (gx#stx-pair/null? _tl1395314009_)
                                    (if (fx>= (gx#stx-length _tl1395314009_)
                                              '0)
                                        (let ((_g35203_
                                               (gx#syntax-split-splice
                                                _tl1395314009_
                                                '0)))
                                          (begin
                                            (let ((_g35204_
                                                   (if (##values? _g35203_)
                                                       (##vector-length
                                                        _g35203_)
                                                       1)))
                                              (if (not (##fx= _g35204_ 2))
                                                  (error "Context expects 2 values"
                                                         _g35204_)))
                                            (let ((_target1397114066_
                                                   (##vector-ref _g35203_ 0))
                                                  (_tl1397314069_
                                                   (##vector-ref _g35203_ 1)))
                                              (if (gx#stx-null? _tl1397314069_)
                                                  (letrec ((_loop1397414072_
                                                            (lambda (_hd1397214076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _body1397814079_)
                      (if (gx#stx-pair? _hd1397214076_)
                          (let ((_e1397514082_ (gx#syntax-e _hd1397214076_)))
                            (let ((_lp-hd1397614086_ (##car _e1397514082_))
                                  (_lp-tl1397714089_ (##cdr _e1397514082_)))
                              (_loop1397414072_
                               _lp-tl1397714089_
                               (cons _lp-hd1397614086_ _body1397814079_))))
                          (let ((_body1397914092_ (reverse _body1397814079_)))
                            ((lambda (_L14096_ _L14098_ _L14099_)
                               (if (gx#stx-andmap
                                    _let-head?13922_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1412214125_
                                                      _g1412314128_)
                                               (cons _g1412214125_
                                                     _g1412314128_))
                                             '()
                                             _L14099_)))
                                   (let* ((_g1413114164_
                                           (lambda (_g1413214160_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1413214160_)))
                                          (_g1413014315_
                                           (lambda (_g1413214168_)
                                             (if (gx#stx-pair? _g1413214168_)
                                                 (let ((_e1413514171_
                                                        (gx#syntax-e
                                                         _g1413214168_)))
                                                   (let ((_hd1413614175_
                                                          (##car _e1413514171_))
                                                         (_tl1413714178_
                                                          (##cdr _e1413514171_)))
                                                     (if (gx#stx-pair/null?
                                                          _hd1413614175_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd1413614175_)
                           '0)
                     (let ((_g35205_
                            (gx#syntax-split-splice _hd1413614175_ '0)))
                       (begin
                         (let ((_g35206_
                                (if (##values? _g35205_)
                                    (##vector-length _g35205_)
                                    1)))
                           (if (not (##fx= _g35206_ 2))
                               (error "Context expects 2 values" _g35206_)))
                         (let ((_target1413814181_ (##vector-ref _g35205_ 0))
                               (_tl1414014184_ (##vector-ref _g35205_ 1)))
                           (if (gx#stx-null? _tl1414014184_)
                               (letrec ((_loop1414114187_
                                         (lambda (_hd1413914191_
                                                  _$e1414514194_)
                                           (if (gx#stx-pair? _hd1413914191_)
                                               (let ((_e1414214197_
                                                      (gx#syntax-e
                                                       _hd1413914191_)))
                                                 (let ((_lp-hd1414314201_
                                                        (##car _e1414214197_))
                                                       (_lp-tl1414414204_
                                                        (##cdr _e1414214197_)))
                                                   (_loop1414114187_
                                                    _lp-tl1414414204_
                                                    (cons _lp-hd1414314201_
                                                          _$e1414514194_))))
                                               (let ((_$e1414614207_
                                                      (reverse _$e1414514194_)))
                                                 (if (gx#stx-pair?
                                                      _tl1413714178_)
                                                     (let ((_e1414714211_
                                                            (gx#syntax-e
                                                             _tl1413714178_)))
                                                       (let ((_hd1414814215_
                                                              (##car _e1414714211_))
                                                             (_tl1414914218_
                                                              (##cdr _e1414714211_)))
                                                         (if (gx#stx-pair/null?
                                                              _hd1414814215_)
                                                             (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _hd1414814215_)
                               '0)
                         (let ((_g35207_
                                (gx#syntax-split-splice _hd1414814215_ '0)))
                           (begin
                             (let ((_g35208_
                                    (if (##values? _g35207_)
                                        (##vector-length _g35207_)
                                        1)))
                               (if (not (##fx= _g35208_ 2))
                                   (error "Context expects 2 values"
                                          _g35208_)))
                             (let ((_target1415014221_
                                    (##vector-ref _g35207_ 0))
                                   (_tl1415214224_ (##vector-ref _g35207_ 1)))
                               (if (gx#stx-null? _tl1415214224_)
                                   (letrec ((_loop1415314227_
                                             (lambda (_hd1415114231_
                                                      _hd-bind1415714234_)
                                               (if (gx#stx-pair?
                                                    _hd1415114231_)
                                                   (let ((_e1415414237_
                                                          (gx#syntax-e
                                                           _hd1415114231_)))
                                                     (let ((_lp-hd1415514241_
                                                            (##car _e1415414237_))
                                                           (_lp-tl1415614244_
                                                            (##cdr _e1415414237_)))
                                                       (_loop1415314227_
                                                        _lp-tl1415614244_
                                                        (cons _lp-hd1415514241_
                                                              _hd-bind1415714234_))))
                                                   (let ((_hd-bind1415814247_
                                                          (reverse _hd-bind1415714234_)))
                                                     (if (gx#stx-null?
                                                          _tl1414914218_)
                                                         ((lambda (_L14251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L14253_)
                    (let ()
                      (cons (gx#datum->syntax '#f 'let-values)
                            (cons (begin
                                    (gx#syntax-check-splice-targets
                                     _L14098_
                                     _L14253_)
                                    (foldr (lambda (_g1427614287_
                                                    _g1427714290_
                                                    _g1427814292_)
                                             (cons (cons (cons _g1427714290_
                                                               '())
                                                         (cons _g1427614287_
                                                               '()))
                                                   _g1427814292_))
                                           '()
                                           _L14098_
                                           _L14253_))
                                  (cons (cons (gx#datum->syntax '#f 'and)
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g1427914295_
                                                                _g1428014298_)
                                                         (cons _g1427914295_
                                                               _g1428014298_))
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let-values)
                           (cons (begin
                                   (gx#syntax-check-splice-targets
                                    _L14253_
                                    _L14251_)
                                   (foldr (lambda (_g1428114301_
                                                   _g1428214304_
                                                   _g1428314306_)
                                            (cons (cons _g1428214304_
                                                        (cons _g1428114301_
                                                              '()))
                                                  _g1428314306_))
                                          '()
                                          _L14253_
                                          _L14251_))
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1428414309_ _g1428514312_)
                                            (cons _g1428414309_ _g1428514312_))
                                          '()
                                          _L14096_))))
                     '())
               _L14253_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
                  _hd-bind1415814247_
                  _$e1414614207_)
                 (_g1413114164_ _g1413214168_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_loop1415314227_ _target1415014221_ '()))
                                   (_g1413114164_ _g1413214168_)))))
                         (_g1413114164_ _g1413214168_))
                     (_g1413114164_ _g1413214168_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1413114164_
                                                      _g1413214168_)))))))
                                 (_loop1414114187_ _target1413814181_ '()))
                               (_g1413114164_ _g1413214168_)))))
                     (_g1413114164_ _g1413214168_))
                 (_g1413114164_ _g1413214168_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1413114164_
                                                  _g1413214168_)))))
                                     (_g1413014315_
                                      (list (gx#gentemps
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g1431814321_
                                                               _g1431914324_)
                                                        (cons _g1431814321_
                                                              _g1431914324_))
                                                      '()
                                                      _L14099_)))
                                            (gx#stx-map
                                             _let-head13924_
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g1432614329_
                                                               _g1432714332_)
                                                        (cons _g1432614329_
                                                              _g1432714332_))
                                                      '()
                                                      _L14099_))))))
                                   (_g1392713985_ _g1392813989_)))
                             _body1397914092_
                             _e1396314060_
                             _hd1396414063_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1397414072_
                                                     _target1397114066_
                                                     '()))
                                                  (_g1392713985_
                                                   _g1392813989_)))))
                                        (_g1392713985_ _g1392813989_))
                                    (_g1392713985_ _g1392813989_)))))))
                (_loop1395714018_ _target1395414012_ '() '()))
              (_g1392713985_ _g1392813989_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1392713985_ _g1392813989_))
                                        (_g1392713985_ _g1392813989_))))
                                (_g1392713985_ _g1392813989_))))
                        (_g1392713985_ _g1392813989_))))
                 (_g1392514405_
                  (lambda (_g1392814339_)
                    (if (gx#stx-pair? _g1392814339_)
                        (let ((_e1393314342_ (gx#syntax-e _g1392814339_)))
                          (let ((_hd1393414346_ (##car _e1393314342_))
                                (_tl1393514349_ (##cdr _e1393314342_)))
                            (if (gx#stx-pair? _tl1393514349_)
                                (let ((_e1393614352_
                                       (gx#syntax-e _tl1393514349_)))
                                  (let ((_hd1393714356_ (##car _e1393614352_))
                                        (_tl1393814359_ (##cdr _e1393614352_)))
                                    (if (gx#stx-pair? _hd1393714356_)
                                        (let ((_e1393914362_
                                               (gx#syntax-e _hd1393714356_)))
                                          (let ((_hd1394014366_
                                                 (##car _e1393914362_))
                                                (_tl1394114369_
                                                 (##cdr _e1393914362_)))
                                            (if (gx#stx-pair? _tl1394114369_)
                                                (let ((_e1394214372_
                                                       (gx#syntax-e
                                                        _tl1394114369_)))
                                                  (let ((_hd1394314376_
                                                         (##car _e1394214372_))
                                                        (_tl1394414379_
                                                         (##cdr _e1394214372_)))
                                                    (if (gx#stx-null?
                                                         _tl1394414379_)
                                                        ((lambda (_L14382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L14384_
                          _L14385_
                          _L14386_)
                   (if (_let-head?13922_ _L14385_)
                       (cons _L14386_
                             (cons (cons (cons _L14385_ (cons _L14384_ '()))
                                         '())
                                   _L14382_))
                       (_g1392614335_ _g1392814339_)))
                 _tl1393814359_
                 _hd1394314376_
                 _hd1394014366_
                 _hd1393414346_)
                (_g1392614335_ _g1392814339_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1392614335_
                                                 _g1392814339_))))
                                        (_g1392614335_ _g1392814339_))))
                                (_g1392614335_ _g1392814339_))))
                        (_g1392614335_ _g1392814339_)))))
            (_g1392514405_ _stx13919_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#alet*|
      (lambda (_$stx14533_)
        (let* ((_g1453814583_
                (lambda (_g1453914579_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1453914579_)))
               (_g1453714684_
                (lambda (_g1453914587_)
                  (if (gx#stx-pair? _g1453914587_)
                      (let ((_e1456014590_ (gx#syntax-e _g1453914587_)))
                        (let ((_hd1456114594_ (##car _e1456014590_))
                              (_tl1456214597_ (##cdr _e1456014590_)))
                          (if (gx#stx-pair? _tl1456214597_)
                              (let ((_e1456314600_
                                     (gx#syntax-e _tl1456214597_)))
                                (let ((_hd1456414604_ (##car _e1456314600_))
                                      (_tl1456514607_ (##cdr _e1456314600_)))
                                  (if (gx#stx-pair? _hd1456414604_)
                                      (let ((_e1456614610_
                                             (gx#syntax-e _hd1456414604_)))
                                        (let ((_hd1456714614_
                                               (##car _e1456614610_))
                                              (_tl1456814617_
                                               (##cdr _e1456614610_)))
                                          (if (gx#stx-pair/null?
                                               _tl1456514607_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1456514607_)
                                                        '0)
                                                  (let ((_g35209_
                                                         (gx#syntax-split-splice
                                                          _tl1456514607_
                                                          '0)))
                                                    (begin
                                                      (let ((_g35210_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g35209_)
                         (##vector-length _g35209_)
                         1)))
                (if (not (##fx= _g35210_ 2))
                    (error "Context expects 2 values" _g35210_)))
              (let ((_target1456914620_ (##vector-ref _g35209_ 0))
                    (_tl1457114623_ (##vector-ref _g35209_ 1)))
                (if (gx#stx-null? _tl1457114623_)
                    (letrec ((_loop1457214626_
                              (lambda (_hd1457014630_ _body1457614633_)
                                (if (gx#stx-pair? _hd1457014630_)
                                    (let ((_e1457314636_
                                           (gx#syntax-e _hd1457014630_)))
                                      (let ((_lp-hd1457414640_
                                             (##car _e1457314636_))
                                            (_lp-tl1457514643_
                                             (##cdr _e1457314636_)))
                                        (_loop1457214626_
                                         _lp-tl1457514643_
                                         (cons _lp-hd1457414640_
                                               _body1457614633_))))
                                    (let ((_body1457714646_
                                           (reverse _body1457614633_)))
                                      ((lambda (_L14650_
                                                _L14652_
                                                _L14653_
                                                _L14654_)
                                         (cons (gx#datum->syntax '#f 'alet)
                                               (cons (cons _L14653_ '())
                                                     (cons (cons _L14654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L14652_
                               (begin
                                 '#!void
                                 (foldr (lambda (_g1467514678_ _g1467614681_)
                                          (cons _g1467514678_ _g1467614681_))
                                        '()
                                        _L14650_))))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _body1457714646_
                                       _tl1456814617_
                                       _hd1456714614_
                                       _hd1456114594_))))))
                      (_loop1457214626_ _target1456914620_ '()))
                    (_g1453814583_ _g1453914587_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1453814583_
                                                   _g1453914587_))
                                              (_g1453814583_ _g1453914587_))))
                                      (_g1453814583_ _g1453914587_))))
                              (_g1453814583_ _g1453914587_))))
                      (_g1453814583_ _g1453914587_))))
               (_g1453614766_
                (lambda (_g1453914688_)
                  (if (gx#stx-pair? _g1453914688_)
                      (let ((_e1454114691_ (gx#syntax-e _g1453914688_)))
                        (let ((_hd1454214695_ (##car _e1454114691_))
                              (_tl1454314698_ (##cdr _e1454114691_)))
                          (if (gx#stx-pair? _tl1454314698_)
                              (let ((_e1454414701_
                                     (gx#syntax-e _tl1454314698_)))
                                (let ((_hd1454514705_ (##car _e1454414701_))
                                      (_tl1454614708_ (##cdr _e1454414701_)))
                                  (if (gx#stx-null? _hd1454514705_)
                                      (if (gx#stx-pair/null? _tl1454614708_)
                                          (if (fx>= (gx#stx-length
                                                     _tl1454614708_)
                                                    '0)
                                              (let ((_g35211_
                                                     (gx#syntax-split-splice
                                                      _tl1454614708_
                                                      '0)))
                                                (begin
                                                  (let ((_g35212_
                                                         (if (##values?
                                                              _g35211_)
                                                             (##vector-length
                                                              _g35211_)
                                                             1)))
                                                    (if (not (##fx= _g35212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                (error "Context expects 2 values" _g35212_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1454714711_
                                                         (##vector-ref
                                                          _g35211_
                                                          0))
                                                        (_tl1454914714_
                                                         (##vector-ref
                                                          _g35211_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl1454914714_)
                                                        (letrec ((_loop1455014717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1454814721_ _body1455414724_)
                            (if (gx#stx-pair? _hd1454814721_)
                                (let ((_e1455114727_
                                       (gx#syntax-e _hd1454814721_)))
                                  (let ((_lp-hd1455214731_
                                         (##car _e1455114727_))
                                        (_lp-tl1455314734_
                                         (##cdr _e1455114727_)))
                                    (_loop1455014717_
                                     _lp-tl1455314734_
                                     (cons _lp-hd1455214731_
                                           _body1455414724_))))
                                (let ((_body1455514737_
                                       (reverse _body1455414724_)))
                                  ((lambda (_L14741_)
                                     (cons (gx#datum->syntax '#f 'let)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g1475714760_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1475814763_)
                    (cons _g1475714760_ _g1475814763_))
                  '()
                  _L14741_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body1455514737_))))))
                  (_loop1455014717_ _target1454714711_ '()))
                (_g1453714684_ _g1453914688_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1453714684_ _g1453914688_))
                                          (_g1453714684_ _g1453914688_))
                                      (_g1453714684_ _g1453914688_))))
                              (_g1453714684_ _g1453914688_))))
                      (_g1453714684_ _g1453914688_)))))
          (_g1453614766_ _$stx14533_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#@list|
      (lambda (_$stx14772_)
        (let* ((_g1478114838_
                (lambda (_g1478214834_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1478214834_)))
               (_g1478014867_
                (lambda (_g1478214842_)
                  (if (gx#stx-pair? _g1478214842_)
                      (let ((_e1483014845_ (gx#syntax-e _g1478214842_)))
                        (let ((_hd1483114849_ (##car _e1483014845_))
                              (_tl1483214852_ (##cdr _e1483014845_)))
                          ((lambda (_L14855_) _L14855_) _tl1483214852_)))
                      (_g1478114838_ _g1478214842_))))
               (_g1477914911_
                (lambda (_g1478214871_)
                  (if (gx#stx-pair? _g1478214871_)
                      (let ((_e1482314874_ (gx#syntax-e _g1478214871_)))
                        (let ((_hd1482414878_ (##car _e1482314874_))
                              (_tl1482514881_ (##cdr _e1482314874_)))
                          (if (gx#stx-pair? _tl1482514881_)
                              (let ((_e1482614884_
                                     (gx#syntax-e _tl1482514881_)))
                                (let ((_hd1482714888_ (##car _e1482614884_))
                                      (_tl1482814891_ (##cdr _e1482614884_)))
                                  ((lambda (_L14894_ _L14896_ _L14897_)
                                     (cons (gx#datum->syntax '#f 'cons)
                                           (cons _L14896_
                                                 (cons (cons _L14897_ _L14894_)
                                                       '()))))
                                   _tl1482814891_
                                   _hd1482714888_
                                   _hd1482414878_)))
                              (_g1478014867_ _g1478214871_))))
                      (_g1478014867_ _g1478214871_))))
               (_g1477814969_
                (lambda (_g1478214915_)
                  (if (gx#stx-pair? _g1478214915_)
                      (let ((_e1481114918_ (gx#syntax-e _g1478214915_)))
                        (let ((_hd1481214922_ (##car _e1481114918_))
                              (_tl1481314925_ (##cdr _e1481114918_)))
                          (if (gx#stx-pair? _tl1481314925_)
                              (let ((_e1481414928_
                                     (gx#syntax-e _tl1481314925_)))
                                (let ((_hd1481514932_ (##car _e1481414928_))
                                      (_tl1481614935_ (##cdr _e1481414928_)))
                                  (if (gx#stx-pair? _tl1481614935_)
                                      (let ((_e1481714938_
                                             (gx#syntax-e _tl1481614935_)))
                                        (let ((_hd1481814942_
                                               (##car _e1481714938_))
                                              (_tl1481914945_
                                               (##cdr _e1481714938_)))
                                          ((lambda (_L14948_
                                                    _L14950_
                                                    _L14951_
                                                    _L14952_)
                                             (if (gx#ellipsis? _L14950_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'foldr)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'cons)
                                                             (cons (cons _L14952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _L14948_)
                           (cons _L14951_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1477914911_
                                                  _g1478214915_)))
                                           _tl1481914945_
                                           _hd1481814942_
                                           _hd1481514932_
                                           _hd1481214922_)))
                                      (_g1477914911_ _g1478214915_))))
                              (_g1477914911_ _g1478214915_))))
                      (_g1477914911_ _g1478214915_))))
               (_g1477715023_
                (lambda (_g1478214973_)
                  (if (gx#stx-pair? _g1478214973_)
                      (let ((_e1479814976_ (gx#syntax-e _g1478214973_)))
                        (let ((_hd1479914980_ (##car _e1479814976_))
                              (_tl1480014983_ (##cdr _e1479814976_)))
                          (if (gx#stx-pair? _tl1480014983_)
                              (let ((_e1480114986_
                                     (gx#syntax-e _tl1480014983_)))
                                (let ((_hd1480214990_ (##car _e1480114986_))
                                      (_tl1480314993_ (##cdr _e1480114986_)))
                                  (if (gx#stx-pair? _tl1480314993_)
                                      (let ((_e1480414996_
                                             (gx#syntax-e _tl1480314993_)))
                                        (let ((_hd1480515000_
                                               (##car _e1480414996_))
                                              (_tl1480615003_
                                               (##cdr _e1480414996_)))
                                          (if (gx#stx-null? _tl1480615003_)
                                              ((lambda (_L15006_ _L15008_)
                                                 (if (gx#ellipsis? _L15006_)
                                                     _L15008_
                                                     (_g1477814969_
                                                      _g1478214973_)))
                                               _hd1480515000_
                                               _hd1480214990_)
                                              (_g1477814969_ _g1478214973_))))
                                      (_g1477814969_ _g1478214973_))))
                              (_g1477814969_ _g1478214973_))))
                      (_g1477814969_ _g1478214973_))))
               (_g1477615075_
                (lambda (_g1478215027_)
                  (if (gx#stx-pair? _g1478215027_)
                      (let ((_e1478715030_ (gx#syntax-e _g1478215027_)))
                        (let ((_hd1478815034_ (##car _e1478715030_))
                              (_tl1478915037_ (##cdr _e1478715030_)))
                          (if (gx#stx-pair? _tl1478915037_)
                              (let ((_e1479015040_
                                     (gx#syntax-e _tl1478915037_)))
                                (let ((_hd1479115044_ (##car _e1479015040_))
                                      (_tl1479215047_ (##cdr _e1479015040_)))
                                  (if (gx#stx-datum? _hd1479115044_)
                                      (if (equal? (gx#stx-e _hd1479115044_)
                                                  '::)
                                          (if (gx#stx-pair? _tl1479215047_)
                                              (let ((_e1479315050_
                                                     (gx#syntax-e
                                                      _tl1479215047_)))
                                                (let ((_hd1479415054_
                                                       (##car _e1479315050_))
                                                      (_tl1479515057_
                                                       (##cdr _e1479315050_)))
                                                  (if (gx#stx-null?
                                                       _tl1479515057_)
                                                      ((lambda (_L15060_)
                                                         _L15060_)
                                                       _hd1479415054_)
                                                      (_g1477715023_
                                                       _g1478215027_))))
                                              (_g1477715023_ _g1478215027_))
                                          (_g1477715023_ _g1478215027_))
                                      (_g1477715023_ _g1478215027_))))
                              (_g1477715023_ _g1478215027_))))
                      (_g1477715023_ _g1478215027_))))
               (_g1477515096_
                (lambda (_g1478215079_)
                  (if (gx#stx-pair? _g1478215079_)
                      (let ((_e1478315082_ (gx#syntax-e _g1478215079_)))
                        (let ((_hd1478415086_ (##car _e1478315082_))
                              (_tl1478515089_ (##cdr _e1478315082_)))
                          (if (gx#stx-null? _tl1478515089_)
                              ((lambda ()
                                 (cons (gx#datum->syntax '#f 'quote)
                                       (cons '() '()))))
                              (_g1477615075_ _g1478215079_))))
                      (_g1477615075_ _g1478215079_)))))
          (_g1477515096_ _$stx14772_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#quasiquote|
      (lambda (_stx15100_)
        (letrec ((_simple-quote?15103_
                  (lambda (_e15795_)
                    (let* ((_g1580315840_
                            (lambda (_g1580415836_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1580415836_)))
                           (_g1580215851_
                            (lambda (_g1580415844_) ((lambda () '#t))))
                           (_g1580115874_
                            (lambda (_g1580415855_)
                              (if (gx#stx-box? _g1580415855_)
                                  (let ((_e1583415858_
                                         (unbox (gx#syntax-e _g1580415855_))))
                                    ((lambda (_L15862_)
                                       (_simple-quote?15103_ _L15862_))
                                     _e1583415858_))
                                  (_g1580215851_ _g1580415855_))))
                           (_g1580015937_
                            (lambda (_g1580415878_)
                              (if (gx#stx-vector? _g1580415878_)
                                  (let ((_e1582315881_
                                         (vector->list
                                          (gx#syntax-e _g1580415878_))))
                                    (if (gx#stx-pair/null? _e1582315881_)
                                        (if (fx>= (gx#stx-length _e1582315881_)
                                                  '0)
                                            (let ((_g35213_
                                                   (gx#syntax-split-splice
                                                    _e1582315881_
                                                    '0)))
                                              (begin
                                                (let ((_g35214_
                                                       (if (##values? _g35213_)
                                                           (##vector-length
                                                            _g35213_)
                                                           1)))
                                                  (if (not (##fx= _g35214_ 2))
                                                      (error "Context expects 2 values"
                                                             _g35214_)))
                                                (let ((_target1582415885_
                                                       (##vector-ref
                                                        _g35213_
                                                        0))
                                                      (_tl1582615888_
                                                       (##vector-ref
                                                        _g35213_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1582615888_)
                                                      (letrec ((_loop1582715891_
                                                                (lambda (_hd1582515895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _e1583115898_)
                          (if (gx#stx-pair? _hd1582515895_)
                              (let ((_e1582815901_
                                     (gx#syntax-e _hd1582515895_)))
                                (let ((_lp-hd1582915905_ (##car _e1582815901_))
                                      (_lp-tl1583015908_
                                       (##cdr _e1582815901_)))
                                  (_loop1582715891_
                                   _lp-tl1583015908_
                                   (cons _lp-hd1582915905_ _e1583115898_))))
                              (let ((_e1583215911_ (reverse _e1583115898_)))
                                ((lambda (_L15915_)
                                   (_simple-quote?15103_
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g1592815931_
                                                      _g1592915934_)
                                               (cons _g1592815931_
                                                     _g1592915934_))
                                             '()
                                             _L15915_))))
                                 _e1583215911_))))))
                (_loop1582715891_ _target1582415885_ '()))
              (_g1580115874_ _g1580415878_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1580115874_ _g1580415878_))
                                        (_g1580115874_ _g1580415878_)))
                                  (_g1580115874_ _g1580415878_))))
                           (_g1579915967_
                            (lambda (_g1580415941_)
                              (if (gx#stx-pair? _g1580415941_)
                                  (let ((_e1581915944_
                                         (gx#syntax-e _g1580415941_)))
                                    (let ((_hd1582015948_
                                           (##car _e1581915944_))
                                          (_tl1582115951_
                                           (##cdr _e1581915944_)))
                                      ((lambda (_L15954_ _L15956_)
                                         (if (_simple-quote?15103_ _L15956_)
                                             (_simple-quote?15103_ _L15954_)
                                             '#f))
                                       _tl1582115951_
                                       _hd1582015948_)))
                                  (_g1580015937_ _g1580415941_))))
                           (_g1579815998_
                            (lambda (_g1580415971_)
                              (if (gx#stx-pair? _g1580415971_)
                                  (let ((_e1581115974_
                                         (gx#syntax-e _g1580415971_)))
                                    (let ((_hd1581215978_
                                           (##car _e1581115974_))
                                          (_tl1581315981_
                                           (##cdr _e1581115974_)))
                                      (if (gx#identifier? _hd1581215978_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g35215_|
                                               _hd1581215978_)
                                              (if (gx#stx-pair? _tl1581315981_)
                                                  (let ((_e1581415984_
                                                         (gx#syntax-e
                                                          _tl1581315981_)))
                                                    (let ((_hd1581515988_
                                                           (##car _e1581415984_))
                                                          (_tl1581615991_
                                                           (##cdr _e1581415984_)))
                                                      (if (gx#stx-null?
                                                           _tl1581615991_)
                                                          ((lambda () '#f))
                                                          (_g1579915967_
                                                           _g1580415971_))))
                                                  (_g1579915967_
                                                   _g1580415971_))
                                              (_g1579915967_ _g1580415971_))
                                          (_g1579915967_ _g1580415971_))))
                                  (_g1579915967_ _g1580415971_))))
                           (_g1579716029_
                            (lambda (_g1580416002_)
                              (if (gx#stx-pair? _g1580416002_)
                                  (let ((_e1580516005_
                                         (gx#syntax-e _g1580416002_)))
                                    (let ((_hd1580616009_
                                           (##car _e1580516005_))
                                          (_tl1580716012_
                                           (##cdr _e1580516005_)))
                                      (if (gx#identifier? _hd1580616009_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g35216_|
                                               _hd1580616009_)
                                              (if (gx#stx-pair? _tl1580716012_)
                                                  (let ((_e1580816015_
                                                         (gx#syntax-e
                                                          _tl1580716012_)))
                                                    (let ((_hd1580916019_
                                                           (##car _e1580816015_))
                                                          (_tl1581016022_
                                                           (##cdr _e1580816015_)))
                                                      (if (gx#stx-null?
                                                           _tl1581016022_)
                                                          ((lambda () '#f))
                                                          (_g1579815998_
                                                           _g1580416002_))))
                                                  (_g1579815998_
                                                   _g1580416002_))
                                              (_g1579815998_ _g1580416002_))
                                          (_g1579815998_ _g1580416002_))))
                                  (_g1579815998_ _g1580416002_)))))
                      (_g1579716029_ _e15795_))))
                 (_generate15105_
                  (lambda (_e15167_ _d15169_)
                    (let* ((_g1517815236_
                            (lambda (_g1517915232_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1517915232_)))
                           (_g1517715253_
                            (lambda (_g1517915240_)
                              ((lambda (_L15243_)
                                 (cons (gx#datum->syntax '#f 'quote)
                                       (cons _L15243_ '())))
                               _g1517915240_)))
                           (_g1517615305_
                            (lambda (_g1517915257_)
                              (if (gx#stx-box? _g1517915257_)
                                  (let ((_e1522915260_
                                         (unbox (gx#syntax-e _g1517915257_))))
                                    ((lambda (_L15264_)
                                       (let* ((_g1527415282_
                                               (lambda (_g1527515278_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1527515278_)))
                                              (_g1527315301_
                                               (lambda (_g1527515286_)
                                                 ((lambda (_L15289_)
                                                    (let ()
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'box)
                                                            (cons _L15289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1527515286_))))
                                         (_g1527315301_
                                          (_generate15105_
                                           _L15264_
                                           _d15169_))))
                                     _e1522915260_))
                                  (_g1517715253_ _g1517915257_))))
                           (_g1517515399_
                            (lambda (_g1517915309_)
                              (if (gx#stx-vector? _g1517915309_)
                                  (let ((_e1521815312_
                                         (vector->list
                                          (gx#syntax-e _g1517915309_))))
                                    (if (gx#stx-pair/null? _e1521815312_)
                                        (if (fx>= (gx#stx-length _e1521815312_)
                                                  '0)
                                            (let ((_g35217_
                                                   (gx#syntax-split-splice
                                                    _e1521815312_
                                                    '0)))
                                              (begin
                                                (let ((_g35218_
                                                       (if (##values? _g35217_)
                                                           (##vector-length
                                                            _g35217_)
                                                           1)))
                                                  (if (not (##fx= _g35218_ 2))
                                                      (error "Context expects 2 values"
                                                             _g35218_)))
                                                (let ((_target1521915316_
                                                       (##vector-ref
                                                        _g35217_
                                                        0))
                                                      (_tl1522115319_
                                                       (##vector-ref
                                                        _g35217_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1522115319_)
                                                      (letrec ((_loop1522215322_
                                                                (lambda (_hd1522015326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _e1522615329_)
                          (if (gx#stx-pair? _hd1522015326_)
                              (let ((_e1522315332_
                                     (gx#syntax-e _hd1522015326_)))
                                (let ((_lp-hd1522415336_ (##car _e1522315332_))
                                      (_lp-tl1522515339_
                                       (##cdr _e1522315332_)))
                                  (_loop1522215322_
                                   _lp-tl1522515339_
                                   (cons _lp-hd1522415336_ _e1522615329_))))
                              (let ((_e1522715342_ (reverse _e1522615329_)))
                                ((lambda (_L15346_)
                                   (let* ((_g1536015368_
                                           (lambda (_g1536115364_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g1536115364_)))
                                          (_g1535915387_
                                           (lambda (_g1536115372_)
                                             ((lambda (_L15375_)
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'list->vector)
                                                        (cons _L15375_ '()))))
                                              _g1536115372_))))
                                     (_g1535915387_
                                      (_generate15105_
                                       (begin
                                         '#!void
                                         (foldr (lambda (_g1539015393_
                                                         _g1539115396_)
                                                  (cons _g1539015393_
                                                        _g1539115396_))
                                                '()
                                                _L15346_))
                                       _d15169_))))
                                 _e1522715342_))))))
                (_loop1522215322_ _target1521915316_ '()))
              (_g1517615305_ _g1517915309_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1517615305_ _g1517915309_))
                                        (_g1517615305_ _g1517915309_)))
                                  (_g1517615305_ _g1517915309_))))
                           (_g1517415493_
                            (lambda (_g1517915403_)
                              (if (gx#stx-pair? _g1517915403_)
                                  (let ((_e1521415406_
                                         (gx#syntax-e _g1517915403_)))
                                    (let ((_hd1521515410_
                                           (##car _e1521415406_))
                                          (_tl1521615413_
                                           (##cdr _e1521415406_)))
                                      ((lambda (_L15416_ _L15418_)
                                         (let* ((_g1542915444_
                                                 (lambda (_g1543015440_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1543015440_)))
                                                (_g1542815489_
                                                 (lambda (_g1543015448_)
                                                   (if (gx#stx-pair?
                                                        _g1543015448_)
                                                       (let ((_e1543315451_
                                                              (gx#syntax-e
                                                               _g1543015448_)))
                                                         (let ((_hd1543415455_
                                                                (##car _e1543315451_))
                                                               (_tl1543515458_
                                                                (##cdr _e1543315451_)))
                                                           (if (gx#stx-pair?
                                                                _tl1543515458_)
                                                               (let ((_e1543615461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1543515458_)))
                         (let ((_hd1543715465_ (##car _e1543615461_))
                               (_tl1543815468_ (##cdr _e1543615461_)))
                           (if (gx#stx-null? _tl1543815468_)
                               ((lambda (_L15471_ _L15473_)
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'cons)
                                          (cons _L15473_
                                                (cons _L15471_ '())))))
                                _hd1543715465_
                                _hd1543415455_)
                               (_g1542915444_ _g1543015448_))))
                       (_g1542915444_ _g1543015448_))))
               (_g1542915444_ _g1543015448_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1542815489_
                                            (list (_generate15105_
                                                   _L15418_
                                                   _d15169_)
                                                  (_generate15105_
                                                   _L15416_
                                                   _d15169_)))))
                                       _tl1521615413_
                                       _hd1521515410_)))
                                  (_g1517515399_ _g1517915403_))))
                           (_g1517315578_
                            (lambda (_g1517915497_)
                              (if (gx#stx-pair? _g1517915497_)
                                  (let ((_e1520315500_
                                         (gx#syntax-e _g1517915497_)))
                                    (let ((_hd1520415504_
                                           (##car _e1520315500_))
                                          (_tl1520515507_
                                           (##cdr _e1520315500_)))
                                      (if (gx#stx-pair? _hd1520415504_)
                                          (let ((_e1520615510_
                                                 (gx#syntax-e _hd1520415504_)))
                                            (let ((_hd1520715514_
                                                   (##car _e1520615510_))
                                                  (_tl1520815517_
                                                   (##cdr _e1520615510_)))
                                              (if (gx#identifier?
                                                   _hd1520715514_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core$<sugar>$<sugar:2>[1]#_g35219_|
                                                       _hd1520715514_)
                                                      (if (gx#stx-pair?
                                                           _tl1520815517_)
                                                          (let ((_e1520915520_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1520815517_)))
                    (let ((_hd1521015524_ (##car _e1520915520_))
                          (_tl1521115527_ (##cdr _e1520915520_)))
                      (if (gx#stx-null? _tl1521115527_)
                          ((lambda (_L15530_ _L15532_)
                             (if (fxzero? _d15169_)
                                 (let* ((_g1554715555_
                                         (lambda (_g1554815551_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1554815551_)))
                                        (_g1554615574_
                                         (lambda (_g1554815559_)
                                           ((lambda (_L15562_)
                                              (let ()
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'foldr)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'cons)
                                                            (cons _L15562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L15532_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g1554815559_))))
                                   (_g1554615574_
                                    (_generate15105_ _L15530_ _d15169_)))
                                 (_g1517415493_ _g1517915497_)))
                           _tl1520515507_
                           _hd1521015524_)
                          (_g1517415493_ _g1517915497_))))
                  (_g1517415493_ _g1517915497_))
              (_g1517415493_ _g1517915497_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1517415493_
                                                   _g1517915497_))))
                                          (_g1517415493_ _g1517915497_))))
                                  (_g1517415493_ _g1517915497_))))
                           (_g1517215649_
                            (lambda (_g1517915582_)
                              (if (gx#stx-pair? _g1517915582_)
                                  (let ((_e1519515585_
                                         (gx#syntax-e _g1517915582_)))
                                    (let ((_hd1519615589_
                                           (##car _e1519515585_))
                                          (_tl1519715592_
                                           (##cdr _e1519515585_)))
                                      (if (gx#identifier? _hd1519615589_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g35220_|
                                               _hd1519615589_)
                                              (if (gx#stx-pair? _tl1519715592_)
                                                  (let ((_e1519815595_
                                                         (gx#syntax-e
                                                          _tl1519715592_)))
                                                    (let ((_hd1519915599_
                                                           (##car _e1519815595_))
                                                          (_tl1520015602_
                                                           (##cdr _e1519815595_)))
                                                      (if (gx#stx-null?
                                                           _tl1520015602_)
                                                          ((lambda (_L15605_)
                                                             (if (fxzero? _d15169_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'foldr)
                               (cons (gx#datum->syntax '#f 'cons)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons '() '()))
                                           (cons _L15605_ '()))))
                         (let* ((_g1561815626_
                                 (lambda (_g1561915622_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1561915622_)))
                                (_g1561715645_
                                 (lambda (_g1561915630_)
                                   ((lambda (_L15633_)
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'list)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'unquote-splicing)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _L15633_ '())))))
                                    _g1561915630_))))
                           (_g1561715645_
                            (_generate15105_ _L15605_ (fx1- _d15169_))))))
                   _hd1519915599_)
                  (_g1517315578_ _g1517915582_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1517315578_
                                                   _g1517915582_))
                                              (_g1517315578_ _g1517915582_))
                                          (_g1517315578_ _g1517915582_))))
                                  (_g1517315578_ _g1517915582_))))
                           (_g1517115720_
                            (lambda (_g1517915653_)
                              (if (gx#stx-pair? _g1517915653_)
                                  (let ((_e1518815656_
                                         (gx#syntax-e _g1517915653_)))
                                    (let ((_hd1518915660_
                                           (##car _e1518815656_))
                                          (_tl1519015663_
                                           (##cdr _e1518815656_)))
                                      (if (gx#identifier? _hd1518915660_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g35221_|
                                               _hd1518915660_)
                                              (if (gx#stx-pair? _tl1519015663_)
                                                  (let ((_e1519115666_
                                                         (gx#syntax-e
                                                          _tl1519015663_)))
                                                    (let ((_hd1519215670_
                                                           (##car _e1519115666_))
                                                          (_tl1519315673_
                                                           (##cdr _e1519115666_)))
                                                      (if (gx#stx-null?
                                                           _tl1519315673_)
                                                          ((lambda (_L15676_)
                                                             (if (fxzero? _d15169_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L15676_
                         (let* ((_g1568915697_
                                 (lambda (_g1569015693_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1569015693_)))
                                (_g1568815716_
                                 (lambda (_g1569015701_)
                                   ((lambda (_L15704_)
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'list)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'unquote)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _L15704_ '())))))
                                    _g1569015701_))))
                           (_g1568815716_
                            (_generate15105_ _L15676_ (fx1- _d15169_))))))
                   _hd1519215670_)
                  (_g1517215649_ _g1517915653_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1517215649_
                                                   _g1517915653_))
                                              (_g1517215649_ _g1517915653_))
                                          (_g1517215649_ _g1517915653_))))
                                  (_g1517215649_ _g1517915653_))))
                           (_g1517015791_
                            (lambda (_g1517915724_)
                              (if (gx#stx-pair? _g1517915724_)
                                  (let ((_e1518115727_
                                         (gx#syntax-e _g1517915724_)))
                                    (let ((_hd1518215731_
                                           (##car _e1518115727_))
                                          (_tl1518315734_
                                           (##cdr _e1518115727_)))
                                      (if (gx#identifier? _hd1518215731_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core$<sugar>$<sugar:2>[1]#_g35222_|
                                               _hd1518215731_)
                                              (if (gx#stx-pair? _tl1518315734_)
                                                  (let ((_e1518415737_
                                                         (gx#syntax-e
                                                          _tl1518315734_)))
                                                    (let ((_hd1518515741_
                                                           (##car _e1518415737_))
                                                          (_tl1518615744_
                                                           (##cdr _e1518415737_)))
                                                      (if (gx#stx-null?
                                                           _tl1518615744_)
                                                          ((lambda (_L15747_)
                                                             (let* ((_g1576015768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1576115764_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1576115764_)))
                            (_g1575915787_
                             (lambda (_g1576115772_)
                               ((lambda (_L15775_)
                                  (let ()
                                    (cons (gx#datum->syntax '#f 'list)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'quasiquote)
                                                            '()))
                                                (cons _L15775_ '())))))
                                _g1576115772_))))
                       (_g1575915787_
                        (_generate15105_ _L15747_ (fx1+ _d15169_)))))
                   _hd1518515741_)
                  (_g1517115720_ _g1517915724_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1517115720_
                                                   _g1517915724_))
                                              (_g1517115720_ _g1517915724_))
                                          (_g1517115720_ _g1517915724_))))
                                  (_g1517115720_ _g1517915724_)))))
                      (_g1517015791_ _e15167_)))))
          (let* ((_g1510715121_
                  (lambda (_g1510815117_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1510815117_)))
                 (_g1510615163_
                  (lambda (_g1510815125_)
                    (if (gx#stx-pair? _g1510815125_)
                        (let ((_e1511015128_ (gx#syntax-e _g1510815125_)))
                          (let ((_hd1511115132_ (##car _e1511015128_))
                                (_tl1511215135_ (##cdr _e1511015128_)))
                            (if (gx#stx-pair? _tl1511215135_)
                                (let ((_e1511315138_
                                       (gx#syntax-e _tl1511215135_)))
                                  (let ((_hd1511415142_ (##car _e1511315138_))
                                        (_tl1511515145_ (##cdr _e1511315138_)))
                                    (if (gx#stx-null? _tl1511515145_)
                                        ((lambda (_L15148_)
                                           (if (_simple-quote?15103_ _L15148_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _L15148_ '()))
                                               (_generate15105_ _L15148_ '0)))
                                         _hd1511415142_)
                                        (_g1510715121_ _g1510815125_))))
                                (_g1510715121_ _g1510815125_))))
                        (_g1510715121_ _g1510815125_)))))
            (_g1510615163_ _stx15100_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#delay|
      (lambda (_$stx16035_)
        (let* ((_g1604016061_
                (lambda (_g1604116057_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1604116057_)))
               (_g1603916102_
                (lambda (_g1604116065_)
                  (if (gx#stx-pair? _g1604116065_)
                      (let ((_e1605016068_ (gx#syntax-e _g1604116065_)))
                        (let ((_hd1605116072_ (##car _e1605016068_))
                              (_tl1605216075_ (##cdr _e1605016068_)))
                          (if (gx#stx-pair? _tl1605216075_)
                              (let ((_e1605316078_
                                     (gx#syntax-e _tl1605216075_)))
                                (let ((_hd1605416082_ (##car _e1605316078_))
                                      (_tl1605516085_ (##cdr _e1605316078_)))
                                  (if (gx#stx-null? _tl1605516085_)
                                      ((lambda (_L16088_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'make-promise)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda%)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L16088_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _hd1605416082_)
                                      (_g1604016061_ _g1604116065_))))
                              (_g1604016061_ _g1604116065_))))
                      (_g1604016061_ _g1604116065_))))
               (_g1603816142_
                (lambda (_g1604116106_)
                  (if (gx#stx-pair? _g1604116106_)
                      (let ((_e1604316109_ (gx#syntax-e _g1604116106_)))
                        (let ((_hd1604416113_ (##car _e1604316109_))
                              (_tl1604516116_ (##cdr _e1604316109_)))
                          (if (gx#stx-pair? _tl1604516116_)
                              (let ((_e1604616119_
                                     (gx#syntax-e _tl1604516116_)))
                                (let ((_hd1604716123_ (##car _e1604616119_))
                                      (_tl1604816126_ (##cdr _e1604616119_)))
                                  (if (gx#stx-null? _tl1604816126_)
                                      ((lambda (_L16129_)
                                         (if (gx#stx-datum? _L16129_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _L16129_ '()))
                                             (_g1603916102_ _g1604116106_)))
                                       _hd1604716123_)
                                      (_g1603916102_ _g1604116106_))))
                              (_g1603916102_ _g1604116106_))))
                      (_g1603916102_ _g1604116106_)))))
          (_g1603816142_ _$stx16035_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#cut|
      (lambda (_stx16146_)
        (letrec ((_generate16149_
                  (lambda (_rest16268_)
                    (let _lp16271_ ((_rest16274_ _rest16268_)
                                    (_hd16276_ '())
                                    (_body16277_ '()))
                      (let* ((_g1628016292_
                              (lambda (_g1628116288_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1628116288_)))
                             (_g1627916303_
                              (lambda (_g1628116296_)
                                ((lambda ()
                                   (values (reverse _hd16276_)
                                           (reverse _body16277_)
                                           '#f)))))
                             (_g1627816389_
                              (lambda (_g1628116307_)
                                (if (gx#stx-pair? _g1628116307_)
                                    (let ((_e1628416310_
                                           (gx#syntax-e _g1628116307_)))
                                      (let ((_hd1628516314_
                                             (##car _e1628416310_))
                                            (_tl1628616317_
                                             (##cdr _e1628416310_)))
                                        ((lambda (_L16320_ _L16322_)
                                           (let* ((_g1633916346_
                                                   (lambda (_g1634016342_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g1634016342_)))
                                                  (_g1633816357_
                                                   (lambda (_g1634016350_)
                                                     ((lambda ()
                                                        (_lp16271_
                                                         _L16320_
                                                         _hd16276_
                                                         (cons _L16322_
                                                               _body16277_))))))
                                                  (_g1633716371_
                                                   (lambda (_g1634016361_)
                                                     (if (gx#identifier?
                                                          _g1634016361_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core$<sugar>$<sugar:2>[1]#_g35223_|
                                                              _g1634016361_)
                                                             ((lambda ()
                                                                (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L16320_)
                            (let ((_tail16368_ (gx#genident)))
                              (values (foldl cons _tail16368_ _hd16276_)
                                      (foldl cons
                                             (list _tail16368_)
                                             _body16277_)
                                      '#t))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _stx16146_
                             _L16322_))))
                     (_g1633816357_ _g1634016361_))
                 (_g1633816357_ _g1634016361_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1633616385_
                                                   (lambda (_g1634016375_)
                                                     (if (gx#identifier?
                                                          _g1634016375_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core$<sugar>$<sugar:2>[1]#_g35224_|
                                                              _g1634016375_)
                                                             ((lambda ()
                                                                (let ((_arg16382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#genident)))
                          (_lp16271_
                           _L16320_
                           (cons _arg16382_ _hd16276_)
                           (cons _arg16382_ _body16277_)))))
                     (_g1633716371_ _g1634016375_))
                 (_g1633716371_ _g1634016375_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1633616385_ _L16322_)))
                                         _tl1628616317_
                                         _hd1628516314_)))
                                    (_g1627916303_ _g1628116307_)))))
                        (_g1627816389_ _rest16274_))))))
          (let* ((_g1615216163_
                  (lambda (_g1615316159_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1615316159_)))
                 (_g1615116264_
                  (lambda (_g1615316167_)
                    (if (gx#stx-pair? _g1615316167_)
                        (let ((_e1615516170_ (gx#syntax-e _g1615316167_)))
                          (let ((_hd1615616174_ (##car _e1615516170_))
                                (_tl1615716177_ (##cdr _e1615516170_)))
                            ((lambda (_L16180_)
                               (if (if (gx#stx-list? _L16180_)
                                       (not (gx#stx-null? _L16180_))
                                       '#f)
                                   (let ((_g35225_ (_generate16149_ _L16180_)))
                                     (begin
                                       (let ((_g35226_
                                              (if (##values? _g35225_)
                                                  (##vector-length _g35225_)
                                                  1)))
                                         (if (not (##fx= _g35226_ 3))
                                             (error "Context expects 3 values"
                                                    _g35226_)))
                                       (let ((_hd16193_
                                              (##vector-ref _g35225_ 0))
                                             (_body16195_
                                              (##vector-ref _g35225_ 1))
                                             (_tail?16196_
                                              (##vector-ref _g35225_ 2)))
                                         (let* ((_g1619816206_
                                                 (lambda (_g1619916202_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1619916202_)))
                                                (_g1619716260_
                                                 (lambda (_g1619916210_)
                                                   ((lambda (_L16213_)
                                                      (let ()
                                                        (let* ((_g1622616234_
                                                                (lambda (_g1622716230_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1622716230_)))
                       (_g1622516256_
                        (lambda (_g1622716238_)
                          ((lambda (_L16241_)
                             (let ()
                               (let ()
                                 (if _tail?16196_
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L16213_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'apply)
                                                             _L16241_)
                                                       '())))
                                     (cons (gx#datum->syntax '#f 'lambda%)
                                           (cons _L16213_
                                                 (cons _L16241_ '())))))))
                           _g1622716238_))))
                  (_g1622516256_ _body16195_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1619916210_))))
                                           (_g1619716260_ _hd16193_)))))
                                   (_g1615216163_ _g1615316167_)))
                             _tl1615716177_)))
                        (_g1615216163_ _g1615316167_)))))
            (_g1615116264_ _stx16146_)))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<>|
      (lambda (_$stx16394_)
        (let ((_g1639716404_
               (lambda (_g1639816400_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1639816400_))))
          (_g1639716404_ _$stx16394_))))
    (define |gerbil/core$<sugar>$<sugar:2>[:0:]#<...>|
      (lambda (_$stx16408_)
        (let ((_g1641116418_
               (lambda (_g1641216414_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g1641216414_))))
          (_g1641116418_ _$stx16408_))))))
