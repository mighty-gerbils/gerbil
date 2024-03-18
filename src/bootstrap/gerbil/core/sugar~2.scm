(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar~Sugar-2[1]#_g27496_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g27497_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g27498_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g28413_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g28416_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g28417_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g28490_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g28491_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g28493_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g28494_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g28539_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g28540_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g28541_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g28542_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g28554_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar~Sugar-2[1]#_g28555_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/sugar~Sugar-2[:0:]#lambda|
      (lambda (_stx11572_)
        (letrec ((_simple-lambda?11575_
                  (lambda (_hd14972_)
                    (gx#stx-andmap gx#identifier? _hd14972_)))
                 (_opt-lambda?11577_
                  (lambda (_hd14824_)
                    (let _lp14827_ ((_rest14830_ _hd14824_) (_opt?14832_ '#f))
                      (let* ((___stx2533525336_ _rest14830_)
                             (_g1483514847_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2533525336_))))
                        (let ((___kont2533825339_
                               (lambda (_L14879_ _L14881_)
                                 (let* ((___stx2531125312_ _L14881_)
                                        (_g1489714911_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2531125312_))))
                                   (let ((___kont2531425315_
                                          (lambda (_L14949_)
                                            (_lp14827_ _L14879_ '#t)))
                                         (___kont2531625317_
                                          (lambda ()
                                            (if (gx#identifier? _L14881_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (not _opt?14832_))
                                                    (_lp14827_ _L14879_ '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((___match2533225333_
                                            (lambda (_e1490214929_
                                                     _hd1490114933_
                                                     _tl1490014936_
                                                     _e1490514939_
                                                     _hd1490414943_
                                                     _tl1490314946_)
                                              (let ((_L14949_ _hd1490114933_))
                                                (if (gx#identifier? _L14949_)
                                                    (___kont2531425315_
                                                     _L14949_)
                                                    (___kont2531625317_))))))
                                       (if (gx#stx-pair? ___stx2531125312_)
                                           (let ((_e1490214929_
                                                  (gx#syntax-e
                                                   ___stx2531125312_)))
                                             (let ((_tl1490014936_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e1490214929_)))
                                                   (_hd1490114933_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e1490214929_))))
                                               (if (gx#stx-pair?
                                                    _tl1490014936_)
                                                   (let ((_e1490514939_
                                                          (gx#syntax-e
                                                           _tl1490014936_)))
                                                     (let ((_tl1490314946_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e1490514939_)))
                                                           (_hd1490414943_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e1490514939_))))
                                                       (if (gx#stx-null?
                                                            _tl1490314946_)
                                                           (___match2533225333_
                                                            _e1490214929_
                                                            _hd1490114933_
                                                            _tl1490014936_
                                                            _e1490514939_
                                                            _hd1490414943_
                                                            _tl1490314946_)
                                                           (___kont2531625317_))))
                                                   (___kont2531625317_))))
                                           (___kont2531625317_)))))))
                              (___kont2534025341_
                               (lambda ()
                                 (if _opt?14832_
                                     (let ((_$e14858_
                                            (gx#stx-null? _rest14830_)))
                                       (if _$e14858_
                                           _$e14858_
                                           (gx#identifier? _rest14830_)))
                                     '#f))))
                          (if (gx#stx-pair? ___stx2533525336_)
                              (let ((_e1484114869_
                                     (gx#syntax-e ___stx2533525336_)))
                                (let ((_tl1483914876_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1484114869_)))
                                      (_hd1484014873_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1484114869_))))
                                  (___kont2533825339_
                                   _tl1483914876_
                                   _hd1484014873_)))
                              (___kont2534025341_)))))))
                 (_opt-lambda-split11578_
                  (lambda (_hd14676_)
                    (let _lp14679_ ((_rest14682_ _hd14676_)
                                    (_pre14684_ '())
                                    (_opt14685_ '()))
                      (let* ((___stx2537525376_ _rest14682_)
                             (_g1468814700_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2537525376_))))
                        (let ((___kont2537825379_
                               (lambda (_L14728_ _L14730_)
                                 (let* ((___stx2535125352_ _L14730_)
                                        (_g1474614761_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2535125352_))))
                                   (let ((___kont2535425355_
                                          (lambda (_L14799_ _L14801_)
                                            (_lp14679_
                                             _L14728_
                                             _pre14684_
                                             (let ((__tmp27272
                                                    (let ((__tmp27273
                                                           (_generate-bind11581_
                                                            _L14801_)))
                                                      (declare (not safe))
                                                      (cons __tmp27273
                                                            _L14799_))))
                                               (declare (not safe))
                                               (cons __tmp27272 _opt14685_)))))
                                         (___kont2535625357_
                                          (lambda ()
                                            (_lp14679_
                                             _L14728_
                                             (let ((__tmp27274
                                                    (_generate-bind11581_
                                                     _L14730_)))
                                               (declare (not safe))
                                               (cons __tmp27274 _pre14684_))
                                             _opt14685_))))
                                     (if (gx#stx-pair? ___stx2535125352_)
                                         (let ((_e1475214779_
                                                (gx#syntax-e
                                                 ___stx2535125352_)))
                                           (let ((_tl1475014786_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1475214779_)))
                                                 (_hd1475114783_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1475214779_))))
                                             (if (gx#stx-pair? _tl1475014786_)
                                                 (let ((_e1475514789_
                                                        (gx#syntax-e
                                                         _tl1475014786_)))
                                                   (let ((_tl1475314796_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1475514789_)))
                                                         (_hd1475414793_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1475514789_))))
                                                     (if (gx#stx-null?
                                                          _tl1475314796_)
                                                         (___kont2535425355_
                                                          _hd1475414793_
                                                          _hd1475114783_)
                                                         (___kont2535625357_))))
                                                 (___kont2535625357_))))
                                         (___kont2535625357_))))))
                              (___kont2538025381_
                               (lambda ()
                                 (values (reverse _pre14684_)
                                         (reverse _opt14685_)
                                         (if (gx#identifier? _rest14682_)
                                             (_generate-bind11581_ _rest14682_)
                                             _rest14682_)))))
                          (if (gx#stx-pair? ___stx2537525376_)
                              (let ((_e1469414718_
                                     (gx#syntax-e ___stx2537525376_)))
                                (let ((_tl1469214725_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1469414718_)))
                                      (_hd1469314722_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1469414718_))))
                                  (___kont2537825379_
                                   _tl1469214725_
                                   _hd1469314722_)))
                              (___kont2538025381_)))))))
                 (_kw-lambda?11579_
                  (lambda (_hd14344_)
                    (let _lp14347_ ((_rest14350_ _hd14344_)
                                    (_opt?14352_ '#f)
                                    (_key?14353_ '#f))
                      (let* ((___stx2543925440_ _rest14350_)
                             (_g1435814388_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2543925440_))))
                        (let ((___kont2544225443_
                               (lambda (_L14583_ _L14585_ _L14586_)
                                 (let* ((___stx2541525416_ _L14585_)
                                        (_g1460114615_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2541525416_))))
                                   (let ((___kont2541825419_
                                          (lambda (_L14653_)
                                            (if (gx#identifier? _L14653_)
                                                (_lp14347_
                                                 _L14583_
                                                 _opt?14352_
                                                 '#t)
                                                '#f)))
                                         (___kont2542025421_
                                          (lambda ()
                                            (if (gx#identifier? _L14585_)
                                                (_lp14347_
                                                 _L14583_
                                                 _opt?14352_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx2541525416_)
                                         (let ((_e1460614633_
                                                (gx#syntax-e
                                                 ___stx2541525416_)))
                                           (let ((_tl1460414640_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1460614633_)))
                                                 (_hd1460514637_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1460614633_))))
                                             (if (gx#stx-pair? _tl1460414640_)
                                                 (let ((_e1460914643_
                                                        (gx#syntax-e
                                                         _tl1460414640_)))
                                                   (let ((_tl1460714650_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1460914643_)))
                                                         (_hd1460814647_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1460914643_))))
                                                     (if (gx#stx-null?
                                                          _tl1460714650_)
                                                         (___kont2541825419_
                                                          _hd1460514637_)
                                                         (___kont2542025421_))))
                                                 (___kont2542025421_))))
                                         (___kont2542025421_))))))
                              (___kont2544425445_
                               (lambda (_L14540_ _L14542_)
                                 (if (gx#identifier? _L14542_)
                                     (_lp14347_ _L14540_ _opt?14352_ '#t)
                                     '#f)))
                              (___kont2544625447_
                               (lambda (_L14420_ _L14422_)
                                 (let* ((___stx2539125392_ _L14422_)
                                        (_g1443814452_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2539125392_))))
                                   (let ((___kont2539425395_
                                          (lambda (_L14490_)
                                            (if (gx#identifier? _L14490_)
                                                (_lp14347_
                                                 _L14420_
                                                 '#t
                                                 _key?14353_)
                                                '#f)))
                                         (___kont2539625397_
                                          (lambda ()
                                            (if (gx#identifier? _L14422_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (not _opt?14352_))
                                                    (_lp14347_
                                                     _L14420_
                                                     '#f
                                                     _key?14353_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx2539125392_)
                                         (let ((_e1444314470_
                                                (gx#syntax-e
                                                 ___stx2539125392_)))
                                           (let ((_tl1444114477_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1444314470_)))
                                                 (_hd1444214474_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1444314470_))))
                                             (if (gx#stx-pair? _tl1444114477_)
                                                 (let ((_e1444614480_
                                                        (gx#syntax-e
                                                         _tl1444114477_)))
                                                   (let ((_tl1444414487_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1444614480_)))
                                                         (_hd1444514484_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1444614480_))))
                                                     (if (gx#stx-null?
                                                          _tl1444414487_)
                                                         (___kont2539425395_
                                                          _hd1444214474_)
                                                         (___kont2539625397_))))
                                                 (___kont2539625397_))))
                                         (___kont2539625397_))))))
                              (___kont2544825449_
                               (lambda ()
                                 (if _key?14353_
                                     (let ((_$e14399_
                                            (gx#stx-null? _rest14350_)))
                                       (if _$e14399_
                                           _$e14399_
                                           (gx#identifier? _rest14350_)))
                                     '#f))))
                          (let ((___match2546225463_
                                 (lambda (_e1436514563_
                                          _hd1436414567_
                                          _tl1436314570_
                                          _e1436814573_
                                          _hd1436714577_
                                          _tl1436614580_)
                                   (let ((_L14583_ _tl1436614580_)
                                         (_L14585_ _hd1436714577_)
                                         (_L14586_ _hd1436414567_))
                                     (if (gx#stx-keyword? _L14586_)
                                         (___kont2544225443_
                                          _L14583_
                                          _L14585_
                                          _L14586_)
                                         (if (gx#stx-datum? _hd1436414567_)
                                             (let ((_e1437414526_
                                                    (gx#stx-e _hd1436414567_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (equal? _e1437414526_
                                                             '#!key))
                                                   (___kont2544425445_
                                                    _tl1436614580_
                                                    _hd1436714577_)
                                                   (___kont2544625447_
                                                    _tl1436314570_
                                                    _hd1436414567_)))
                                             (___kont2544625447_
                                              _tl1436314570_
                                              _hd1436414567_)))))))
                            (if (gx#stx-pair? ___stx2543925440_)
                                (let ((_e1436514563_
                                       (gx#syntax-e ___stx2543925440_)))
                                  (let ((_tl1436314570_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1436514563_)))
                                        (_hd1436414567_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1436514563_))))
                                    (if (gx#stx-pair? _tl1436314570_)
                                        (let ((_e1436814573_
                                               (gx#syntax-e _tl1436314570_)))
                                          (let ((_tl1436614580_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1436814573_)))
                                                (_hd1436714577_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1436814573_))))
                                            (___match2546225463_
                                             _e1436514563_
                                             _hd1436414567_
                                             _tl1436314570_
                                             _e1436814573_
                                             _hd1436714577_
                                             _tl1436614580_)))
                                        (if (gx#stx-datum? _hd1436414567_)
                                            (let ((_e1437414526_
                                                   (gx#stx-e _hd1436414567_)))
                                              (___kont2544625447_
                                               _tl1436314570_
                                               _hd1436414567_))
                                            (___kont2544625447_
                                             _tl1436314570_
                                             _hd1436414567_)))))
                                (___kont2544825449_))))))))
                 (_kw-lambda-split11580_
                  (lambda (_hd14077_)
                    (let _lp14080_ ((_rest14083_ _hd14077_)
                                    (_kwvar14085_ '#f)
                                    (_kwargs14086_ '())
                                    (_args14087_ '()))
                      (let* ((___stx2551325514_ _rest14083_)
                             (_g1409214122_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2551325514_))))
                        (let ((___kont2551625517_
                               (lambda (_L14241_ _L14243_ _L14244_)
                                 (let ((_key14258_ (gx#stx-e _L14244_)))
                                   (if (let ((__tmp27280
                                              (lambda (_kwarg14261_)
                                                (let ((__tmp27281
                                                       (car _kwarg14261_)))
                                                  (declare (not safe))
                                                  (eq? _key14258_
                                                       __tmp27281)))))
                                         (declare (not safe))
                                         (find __tmp27280 _kwargs14086_))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"bad syntax; duplicate keyword argument"
                                        _stx11572_
                                        _hd14077_
                                        _key14258_)
                                       (let* ((___stx2548925490_ _L14243_)
                                              (_g1426514280_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  ___stx2548925490_))))
                                         (let ((___kont2549225493_
                                                (lambda (_L14318_ _L14320_)
                                                  (_lp14080_
                                                   _L14241_
                                                   _kwvar14085_
                                                   (let ((__tmp27275
                                                          (list _key14258_
                                                                (_generate-bind11581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L14320_)
                        _L14318_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp27275
                                                           _kwargs14086_))
                                                   _args14087_)))
                                               (___kont2549425495_
                                                (lambda ()
                                                  (_lp14080_
                                                   _L14241_
                                                   _kwvar14085_
                                                   (let ((__tmp27276
                                                          (list _key14258_
                                                                (_generate-bind11581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L14243_)
                        (let ((__tmp27279 (gx#datum->syntax '#f 'error))
                              (__tmp27277
                               (let ((__tmp27278
                                      (let ()
                                        (declare (not safe))
                                        (cons _L14244_ '()))))
                                 (declare (not safe))
                                 (cons '"Missing required keyword argument"
                                       __tmp27278))))
                          (declare (not safe))
                          (cons __tmp27279 __tmp27277)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp27276
                                                           _kwargs14086_))
                                                   _args14087_))))
                                           (if (gx#stx-pair? ___stx2548925490_)
                                               (let ((_e1427114298_
                                                      (gx#syntax-e
                                                       ___stx2548925490_)))
                                                 (let ((_tl1426914305_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1427114298_)))
                                                       (_hd1427014302_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1427114298_))))
                                                   (if (gx#stx-pair?
                                                        _tl1426914305_)
                                                       (let ((_e1427414308_
                                                              (gx#syntax-e
                                                               _tl1426914305_)))
                                                         (let ((_tl1427214315_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e1427414308_)))
                       (_hd1427314312_
                        (let () (declare (not safe)) (##car _e1427414308_))))
                   (if (gx#stx-null? _tl1427214315_)
                       (___kont2549225493_ _hd1427314312_ _hd1427014302_)
                       (___kont2549425495_))))
               (___kont2549425495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2549425495_))))))))
                              (___kont2551825519_
                               (lambda (_L14198_ _L14200_)
                                 (if _kwvar14085_
                                     (gx#raise-syntax-error
                                      '#f
                                      '"bad syntax; duplicate #!key argument"
                                      _stx11572_
                                      _hd14077_
                                      _L14200_)
                                     (_lp14080_
                                      _L14198_
                                      (_generate-bind11581_ _L14200_)
                                      _kwargs14086_
                                      _args14087_))))
                              (___kont2552025521_
                               (lambda (_L14150_ _L14152_)
                                 (_lp14080_
                                  _L14150_
                                  _kwvar14085_
                                  _kwargs14086_
                                  (let ()
                                    (declare (not safe))
                                    (cons _L14152_ _args14087_)))))
                              (___kont2552225523_
                               (lambda ()
                                 (values _kwvar14085_
                                         (reverse _kwargs14086_)
                                         (let ()
                                           (declare (not safe))
                                           (foldl1 cons
                                                   _rest14083_
                                                   _args14087_))))))
                          (let ((___match2553625537_
                                 (lambda (_e1409914221_
                                          _hd1409814225_
                                          _tl1409714228_
                                          _e1410214231_
                                          _hd1410114235_
                                          _tl1410014238_)
                                   (let ((_L14241_ _tl1410014238_)
                                         (_L14243_ _hd1410114235_)
                                         (_L14244_ _hd1409814225_))
                                     (if (gx#stx-keyword? _L14244_)
                                         (___kont2551625517_
                                          _L14241_
                                          _L14243_
                                          _L14244_)
                                         (if (gx#stx-datum? _hd1409814225_)
                                             (let ((_e1410814184_
                                                    (gx#stx-e _hd1409814225_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (equal? _e1410814184_
                                                             '#!key))
                                                   (___kont2551825519_
                                                    _tl1410014238_
                                                    _hd1410114235_)
                                                   (___kont2552025521_
                                                    _tl1409714228_
                                                    _hd1409814225_)))
                                             (___kont2552025521_
                                              _tl1409714228_
                                              _hd1409814225_)))))))
                            (if (gx#stx-pair? ___stx2551325514_)
                                (let ((_e1409914221_
                                       (gx#syntax-e ___stx2551325514_)))
                                  (let ((_tl1409714228_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1409914221_)))
                                        (_hd1409814225_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1409914221_))))
                                    (if (gx#stx-pair? _tl1409714228_)
                                        (let ((_e1410214231_
                                               (gx#syntax-e _tl1409714228_)))
                                          (let ((_tl1410014238_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1410214231_)))
                                                (_hd1410114235_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1410214231_))))
                                            (___match2553625537_
                                             _e1409914221_
                                             _hd1409814225_
                                             _tl1409714228_
                                             _e1410214231_
                                             _hd1410114235_
                                             _tl1410014238_)))
                                        (if (gx#stx-datum? _hd1409814225_)
                                            (let ((_e1410814184_
                                                   (gx#stx-e _hd1409814225_)))
                                              (___kont2552025521_
                                               _tl1409714228_
                                               _hd1409814225_))
                                            (___kont2552025521_
                                             _tl1409714228_
                                             _hd1409814225_)))))
                                (___kont2552225523_))))))))
                 (_generate-bind11581_
                  (lambda (_e14074_)
                    (if (gx#underscore? _e14074_)
                        (gx#genident _e14074_)
                        _e14074_)))
                 (_check-duplicate-bindings11582_
                  (lambda (_hd13771_)
                    (letrec ((_cons-id13774_
                              (lambda (_id14070_ _ids14072_)
                                (if (gx#underscore? _id14070_)
                                    _ids14072_
                                    (let ()
                                      (declare (not safe))
                                      (cons _id14070_ _ids14072_))))))
                      (let _lp13777_ ((_rest13780_ _hd13771_) (_ids13782_ '()))
                        (let* ((___stx2558725588_ _rest13780_)
                               (_g1378513797_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx2558725588_))))
                          (let ((___kont2559025591_
                                 (lambda (_L13825_ _L13827_)
                                   (if (gx#identifier? _L13827_)
                                       (_lp13777_
                                        _L13825_
                                        (_cons-id13774_ _L13827_ _ids13782_))
                                       (if (gx#stx-pair? _L13827_)
                                           (let* ((_g1384313857_
                                                   (lambda (_g1384413853_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g1384413853_)))
                                                  (_g1384213898_
                                                   (lambda (_g1384413861_)
                                                     (if (gx#stx-pair?
                                                          _g1384413861_)
                                                         (let ((_e1384813864_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1384413861_)))
                   (let ((_hd1384713868_
                          (let () (declare (not safe)) (##car _e1384813864_)))
                         (_tl1384613871_
                          (let () (declare (not safe)) (##cdr _e1384813864_))))
                     (if (gx#stx-pair? _tl1384613871_)
                         (let ((_e1385113874_ (gx#syntax-e _tl1384613871_)))
                           (let ((_hd1385013878_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e1385113874_)))
                                 (_tl1384913881_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e1385113874_))))
                             (if (gx#stx-null? _tl1384913881_)
                                 ((lambda (_L13884_)
                                    (_lp13777_
                                     _L13825_
                                     (_cons-id13774_ _L13884_ _ids13782_)))
                                  _hd1384713868_)
                                 (_g1384313857_ _g1384413861_))))
                         (_g1384313857_ _g1384413861_))))
                 (_g1384313857_ _g1384413861_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1384213898_ _L13827_))
                                           (if (gx#stx-keyword? _L13827_)
                                               (let* ((_g1390213914_
                                                       (lambda (_g1390313910_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1390313910_)))
                                                      (_g1390114016_
                                                       (lambda (_g1390313918_)
                                                         (if (gx#stx-pair?
                                                              _g1390313918_)
                                                             (let ((_e1390813921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1390313918_)))
                       (let ((_hd1390713925_
                              (let ()
                                (declare (not safe))
                                (##car _e1390813921_)))
                             (_tl1390613928_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1390813921_))))
                         ((lambda (_L13931_ _L13933_)
                            (let* ((___stx2556325564_ _L13933_)
                                   (_g1394513959_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       ___stx2556325564_))))
                              (let ((___kont2556625567_
                                     (lambda (_L13997_)
                                       (_lp13777_
                                        _L13931_
                                        (_cons-id13774_ _L13997_ _ids13782_))))
                                    (___kont2556825569_
                                     (lambda ()
                                       (_lp13777_
                                        _L13931_
                                        (_cons-id13774_
                                         _L13933_
                                         _ids13782_)))))
                                (if (gx#stx-pair? ___stx2556325564_)
                                    (let ((_e1395013977_
                                           (gx#syntax-e ___stx2556325564_)))
                                      (let ((_tl1394813984_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1395013977_)))
                                            (_hd1394913981_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1395013977_))))
                                        (if (gx#stx-pair? _tl1394813984_)
                                            (let ((_e1395313987_
                                                   (gx#syntax-e
                                                    _tl1394813984_)))
                                              (let ((_tl1395113994_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1395313987_)))
                                                    (_hd1395213991_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1395313987_))))
                                                (if (gx#stx-null?
                                                     _tl1395113994_)
                                                    (___kont2556625567_
                                                     _hd1394913981_)
                                                    (___kont2556825569_))))
                                            (___kont2556825569_))))
                                    (___kont2556825569_)))))
                          _tl1390613928_
                          _hd1390713925_)))
                     (_g1390213914_ _g1390313918_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1390114016_ _L13825_))
                                               (if (let ((__tmp27282
                                                          (gx#stx-e _L13827_)))
                                                     (declare (not safe))
                                                     (eq? __tmp27282 '#!key))
                                                   (let* ((_g1402014032_
                                                           (lambda (_g1402114028_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g1402114028_)))
                                                          (_g1401914062_
                                                           (lambda (_g1402114036_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1402114036_)
                         (let ((_e1402614039_ (gx#syntax-e _g1402114036_)))
                           (let ((_hd1402514043_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e1402614039_)))
                                 (_tl1402414046_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e1402614039_))))
                             ((lambda (_L14049_ _L14051_)
                                (_lp13777_
                                 _L14049_
                                 (_cons-id13774_ _L14051_ _ids13782_)))
                              _tl1402414046_
                              _hd1402514043_)))
                         (_g1402014032_ _g1402114036_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1401914062_ _L13825_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"BUG: check-duplicate-bindings"
                                                            _stx11572_
                                                            _rest13780_))))))))
                                (___kont2559225593_
                                 (lambda ()
                                   (gx#check-duplicate-identifiers
                                    (if (gx#stx-null? _rest13780_)
                                        _ids13782_
                                        (_cons-id13774_
                                         _rest13780_
                                         _ids13782_))
                                    _stx11572_))))
                            (if (gx#stx-pair? ___stx2558725588_)
                                (let ((_e1379113815_
                                       (gx#syntax-e ___stx2558725588_)))
                                  (let ((_tl1378913822_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1379113815_)))
                                        (_hd1379013819_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1379113815_))))
                                    (___kont2559025591_
                                     _tl1378913822_
                                     _hd1379013819_)))
                                (___kont2559225593_))))))))
                 (_generate-opt-primary11583_
                  (lambda (_pre13563_ _opt13565_ _tail13566_ _body13567_)
                    (let* ((_g1356913610_
                            (lambda (_g1357013606_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g1357013606_)))
                           (_g1356813767_
                            (lambda (_g1357013614_)
                              (if (gx#stx-pair? _g1357013614_)
                                  (let ((_e1357713617_
                                         (gx#syntax-e _g1357013614_)))
                                    (let ((_hd1357613621_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1357713617_)))
                                          (_tl1357513624_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1357713617_))))
                                      (if (gx#stx-pair/null? _hd1357613621_)
                                          (let ((_g27283_
                                                 (gx#syntax-split-splice
                                                  _hd1357613621_
                                                  '0)))
                                            (begin
                                              (let ((_g27284_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g27283_)
                                                           (##vector-length
                                                            _g27283_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g27284_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g27284_)))
                                              (let ((_target1357813627_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g27283_
                                                        0)))
                                                    (_tl1358013630_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g27283_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl1358013630_)
                                                    (letrec ((_loop1358113633_
                                                              (lambda (_hd1357913637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _pre1358513640_)
                        (if (gx#stx-pair? _hd1357913637_)
                            (let ((_e1358213643_ (gx#syntax-e _hd1357913637_)))
                              (let ((_lp-hd1358313647_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1358213643_)))
                                    (_lp-tl1358413650_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1358213643_))))
                                (_loop1358113633_
                                 _lp-tl1358413650_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd1358313647_ _pre1358513640_)))))
                            (let ((_pre1358613653_ (reverse _pre1358513640_)))
                              (if (gx#stx-pair? _tl1357513624_)
                                  (let ((_e1358913657_
                                         (gx#syntax-e _tl1357513624_)))
                                    (let ((_hd1358813661_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1358913657_)))
                                          (_tl1358713664_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1358913657_))))
                                      (if (gx#stx-pair/null? _hd1358813661_)
                                          (let ((_g27285_
                                                 (gx#syntax-split-splice
                                                  _hd1358813661_
                                                  '0)))
                                            (begin
                                              (let ((_g27286_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g27285_)
                                                           (##vector-length
                                                            _g27285_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g27286_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g27286_)))
                                              (let ((_target1359013667_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g27285_
                                                        0)))
                                                    (_tl1359213670_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g27285_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl1359213670_)
                                                    (letrec ((_loop1359313673_
                                                              (lambda (_hd1359113677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _opt1359713680_)
                        (if (gx#stx-pair? _hd1359113677_)
                            (let ((_e1359413683_ (gx#syntax-e _hd1359113677_)))
                              (let ((_lp-hd1359513687_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1359413683_)))
                                    (_lp-tl1359613690_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1359413683_))))
                                (_loop1359313673_
                                 _lp-tl1359613690_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd1359513687_ _opt1359713680_)))))
                            (let ((_opt1359813693_ (reverse _opt1359713680_)))
                              (if (gx#stx-pair? _tl1358713664_)
                                  (let ((_e1360113697_
                                         (gx#syntax-e _tl1358713664_)))
                                    (let ((_hd1360013701_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1360113697_)))
                                          (_tl1359913704_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1360113697_))))
                                      (if (gx#stx-pair? _tl1359913704_)
                                          (let ((_e1360413707_
                                                 (gx#syntax-e _tl1359913704_)))
                                            (let ((_hd1360313711_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1360413707_)))
                                                  (_tl1360213714_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1360413707_))))
                                              (if (gx#stx-null? _tl1360213714_)
                                                  ((lambda (_L13717_
                                                            _L13719_
                                                            _L13720_
                                                            _L13721_)
                                                     (let ()
                                                       (let ((__tmp27292
                                                              (gx#datum->syntax
                                                               '#f
                                                               'lambda%))
                                                             (__tmp27287
                                                              (let ((__tmp27288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp27291
                                    (lambda (_g1375013755_ _g1375113758_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g1375013755_ _g1375113758_))))
                                   (__tmp27289
                                    (let ((__tmp27290
                                           (lambda (_g1375213761_
                                                    _g1375313764_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g1375213761_
                                                     _g1375313764_)))))
                                      (declare (not safe))
                                      (foldr1 __tmp27290 _L13719_ _L13720_))))
                               (declare (not safe))
                               (foldr1 __tmp27291 __tmp27289 _L13721_))))
                        (declare (not safe))
                        (cons __tmp27288 _L13717_))))
                 (declare (not safe))
                 (cons __tmp27292 __tmp27287))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd1360313711_
                                                   _hd1360013701_
                                                   _opt1359813693_
                                                   _pre1358613653_)
                                                  (_g1356913610_
                                                   _g1357013614_))))
                                          (_g1356913610_ _g1357013614_))))
                                  (_g1356913610_ _g1357013614_)))))))
              (_loop1359313673_ _target1359013667_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1356913610_
                                                     _g1357013614_)))))
                                          (_g1356913610_ _g1357013614_))))
                                  (_g1356913610_ _g1357013614_)))))))
              (_loop1358113633_ _target1357813627_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1356913610_
                                                     _g1357013614_)))))
                                          (_g1356913610_ _g1357013614_))))
                                  (_g1356913610_ _g1357013614_)))))
                      (_g1356813767_
                       (list _pre13563_
                             (map car _opt13565_)
                             _tail13566_
                             _body13567_)))))
                 (_generate-opt-dispatch11584_
                  (lambda (_primary13557_ _pre13559_ _opt13560_ _tail13561_)
                    (let ((__tmp27294
                           (list _pre13559_
                                 (_generate-opt-clause11586_
                                  _primary13557_
                                  _pre13559_
                                  _opt13560_)))
                          (__tmp27293
                           (_generate-opt-dispatch*11585_
                            _primary13557_
                            _pre13559_
                            _opt13560_
                            _tail13561_)))
                      (declare (not safe))
                      (cons __tmp27294 __tmp27293))))
                 (_generate-opt-dispatch*11585_
                  (lambda (_primary13114_ _pre13116_ _opt13117_ _tail13118_)
                    (let _recur13120_ ((_opt-rest13123_ _opt13117_)
                                       (_right13125_ '()))
                      (if (let () (declare (not safe)) (pair? _opt-rest13123_))
                          (let* ((_hd13127_ (caar _opt-rest13123_))
                                 (_rest13130_ (cdr _opt-rest13123_))
                                 (_right*13133_
                                  (let ()
                                    (declare (not safe))
                                    (cons _hd13127_ _right13125_)))
                                 (_g1313613153_
                                  (lambda (_g1313713149_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1313713149_)))
                                 (_g1313513336_
                                  (lambda (_g1313713157_)
                                    (if (gx#stx-pair/null? _g1313713157_)
                                        (let ((_g27309_
                                               (gx#syntax-split-splice
                                                _g1313713157_
                                                '0)))
                                          (begin
                                            (let ((_g27310_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g27309_)
                                                         (##vector-length
                                                          _g27309_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g27310_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g27310_)))
                                            (let ((_target1313913160_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g27309_
                                                      0)))
                                                  (_tl1314113163_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g27309_
                                                      1))))
                                              (if (gx#stx-null? _tl1314113163_)
                                                  (letrec ((_loop1314213166_
                                                            (lambda (_hd1314013170_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-bind1314613173_)
                      (if (gx#stx-pair? _hd1314013170_)
                          (let ((_e1314313176_ (gx#syntax-e _hd1314013170_)))
                            (let ((_lp-hd1314413180_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1314313176_)))
                                  (_lp-tl1314513183_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1314313176_))))
                              (_loop1314213166_
                               _lp-tl1314513183_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd1314413180_
                                       _pre-bind1314613173_)))))
                          (let ((_pre-bind1314713186_
                                 (reverse _pre-bind1314613173_)))
                            ((lambda (_L13190_)
                               (let ()
                                 (let* ((_g1321113228_
                                         (lambda (_g1321213224_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g1321213224_)))
                                        (_g1321013332_
                                         (lambda (_g1321213232_)
                                           (if (gx#stx-pair/null?
                                                _g1321213232_)
                                               (let ((_g27311_
                                                      (gx#syntax-split-splice
                                                       _g1321213232_
                                                       '0)))
                                                 (begin
                                                   (let ((_g27312_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g27311_)
                        (##vector-length _g27311_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g27312_ 2)))
                 (error "Context expects 2 values" _g27312_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target1321413235_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g27311_
                                                             0)))
                                                         (_tl1321613238_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g27311_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl1321613238_)
                                                         (letrec ((_loop1321713241_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd1321513245_ _opt-bind1322113248_)
                             (if (gx#stx-pair? _hd1321513245_)
                                 (let ((_e1321813251_
                                        (gx#syntax-e _hd1321513245_)))
                                   (let ((_lp-hd1321913255_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e1321813251_)))
                                         (_lp-tl1322013258_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e1321813251_))))
                                     (_loop1321713241_
                                      _lp-tl1322013258_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd1321913255_
                                              _opt-bind1322113248_)))))
                                 (let ((_opt-bind1322213261_
                                        (reverse _opt-bind1322113248_)))
                                   ((lambda (_L13265_)
                                      (let ()
                                        (let* ((_g1328213290_
                                                (lambda (_g1328313286_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g1328313286_)))
                                               (_g1328113328_
                                                (lambda (_g1328313294_)
                                                  ((lambda (_L13297_)
                                                     (let ()
                                                       (let ()
                                                         (let ((__tmp27314
                                                                (list (let ((__tmp27318
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (lambda (_g1331113316_ _g1331213319_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g1331113316_ _g1331213319_))))
                                    (__tmp27315
                                     (let ((__tmp27317
                                            (lambda (_g1331313322_
                                                     _g1331413325_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g1331313322_
                                                      _g1331413325_))))
                                           (__tmp27316
                                            (let ()
                                              (declare (not safe))
                                              (cons _L13297_ '()))))
                                       (declare (not safe))
                                       (foldr1 __tmp27317
                                               __tmp27316
                                               _L13265_))))
                                (declare (not safe))
                                (foldr1 __tmp27318 __tmp27315 _L13190_))
                              (_generate-opt-clause11586_
                               _primary13114_
                               (let ((__tmp27319 (reverse _right*13133_)))
                                 (declare (not safe))
                                 (foldr1 cons __tmp27319 _pre13116_))
                               _rest13130_)))
                       (__tmp27313 (_recur13120_ _rest13130_ _right*13133_)))
                   (declare (not safe))
                   (cons __tmp27314 __tmp27313)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1328313294_))))
                                          (_g1328113328_ _hd13127_))))
                                    _opt-bind1322213261_))))))
                   (_loop1321713241_ _target1321413235_ '()))
                 (_g1321113228_ _g1321213232_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1321113228_
                                                _g1321213232_)))))
                                   (_g1321013332_ (reverse _right13125_)))))
                             _pre-bind1314713186_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1314213166_
                                                     _target1313913160_
                                                     '()))
                                                  (_g1313613153_
                                                   _g1313713157_)))))
                                        (_g1313613153_ _g1313713157_)))))
                            (_g1313513336_ _pre13116_))
                          (if (gx#stx-null? _tail13118_)
                              '()
                              (let* ((_g1334013381_
                                      (lambda (_g1334113377_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g1334113377_)))
                                     (_g1333913553_
                                      (lambda (_g1334113385_)
                                        (if (gx#stx-pair? _g1334113385_)
                                            (let ((_e1334813388_
                                                   (gx#syntax-e
                                                    _g1334113385_)))
                                              (let ((_hd1334713392_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1334813388_)))
                                                    (_tl1334613395_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1334813388_))))
                                                (if (gx#stx-pair/null?
                                                     _hd1334713392_)
                                                    (let ((_g27295_
                                                           (gx#syntax-split-splice
                                                            _hd1334713392_
                                                            '0)))
                                                      (begin
                                                        (let ((_g27296_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g27295_)
                             (##vector-length _g27295_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g27296_ 2)))
                      (error "Context expects 2 values" _g27296_)))
                (let ((_target1334913398_
                       (let () (declare (not safe)) (##vector-ref _g27295_ 0)))
                      (_tl1335113401_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g27295_ 1))))
                  (if (gx#stx-null? _tl1335113401_)
                      (letrec ((_loop1335213404_
                                (lambda (_hd1335013408_ _pre1335613411_)
                                  (if (gx#stx-pair? _hd1335013408_)
                                      (let ((_e1335313414_
                                             (gx#syntax-e _hd1335013408_)))
                                        (let ((_lp-hd1335413418_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1335313414_)))
                                              (_lp-tl1335513421_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1335313414_))))
                                          (_loop1335213404_
                                           _lp-tl1335513421_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1335413418_
                                                   _pre1335613411_)))))
                                      (let ((_pre1335713424_
                                             (reverse _pre1335613411_)))
                                        (if (gx#stx-pair? _tl1334613395_)
                                            (let ((_e1336013428_
                                                   (gx#syntax-e
                                                    _tl1334613395_)))
                                              (let ((_hd1335913432_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1336013428_)))
                                                    (_tl1335813435_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1336013428_))))
                                                (if (gx#stx-pair/null?
                                                     _hd1335913432_)
                                                    (let ((_g27297_
                                                           (gx#syntax-split-splice
                                                            _hd1335913432_
                                                            '0)))
                                                      (begin
                                                        (let ((_g27298_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g27297_)
                             (##vector-length _g27297_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g27298_ 2)))
                      (error "Context expects 2 values" _g27298_)))
                (let ((_target1336113438_
                       (let () (declare (not safe)) (##vector-ref _g27297_ 0)))
                      (_tl1336313441_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g27297_ 1))))
                  (if (gx#stx-null? _tl1336313441_)
                      (letrec ((_loop1336413444_
                                (lambda (_hd1336213448_ _opt1336813451_)
                                  (if (gx#stx-pair? _hd1336213448_)
                                      (let ((_e1336513454_
                                             (gx#syntax-e _hd1336213448_)))
                                        (let ((_lp-hd1336613458_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1336513454_)))
                                              (_lp-tl1336713461_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1336513454_))))
                                          (_loop1336413444_
                                           _lp-tl1336713461_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1336613458_
                                                   _opt1336813451_)))))
                                      (let ((_opt1336913464_
                                             (reverse _opt1336813451_)))
                                        (if (gx#stx-pair? _tl1335813435_)
                                            (let ((_e1337213468_
                                                   (gx#syntax-e
                                                    _tl1335813435_)))
                                              (let ((_hd1337113472_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1337213468_)))
                                                    (_tl1337013475_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1337213468_))))
                                                (if (gx#stx-pair?
                                                     _tl1337013475_)
                                                    (let ((_e1337513478_
                                                           (gx#syntax-e
                                                            _tl1337013475_)))
                                                      (let ((_hd1337413482_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1337513478_)))
                    (_tl1337313485_
                     (let () (declare (not safe)) (##cdr _e1337513478_))))
                (if (gx#stx-null? _tl1337313485_)
                    ((lambda (_L13488_ _L13490_ _L13491_ _L13492_)
                       (let ()
                         (list (list (let ((__tmp27301
                                            (lambda (_g1352013525_
                                                     _g1352113528_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g1352013525_
                                                      _g1352113528_))))
                                           (__tmp27299
                                            (let ((__tmp27300
                                                   (lambda (_g1352213531_
                                                            _g1352313534_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1352213531_
                                                             _g1352313534_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp27300
                                                      _L13490_
                                                      _L13491_))))
                                       (declare (not safe))
                                       (foldr1 __tmp27301 __tmp27299 _L13492_))
                                     (gx#stx-wrap-source
                                      (let ((__tmp27308
                                             (gx#datum->syntax '#f 'apply))
                                            (__tmp27302
                                             (let ((__tmp27303
                                                    (let ((__tmp27307
                                                           (lambda (_g1353613541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1353713544_)
                     (let ()
                       (declare (not safe))
                       (cons _g1353613541_ _g1353713544_))))
                  (__tmp27304
                   (let ((__tmp27306
                          (lambda (_g1353813547_ _g1353913550_)
                            (let ()
                              (declare (not safe))
                              (cons _g1353813547_ _g1353913550_))))
                         (__tmp27305
                          (let () (declare (not safe)) (cons _L13490_ '()))))
                     (declare (not safe))
                     (foldr1 __tmp27306 __tmp27305 _L13491_))))
              (declare (not safe))
              (foldr1 __tmp27307 __tmp27304 _L13492_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L13488_ __tmp27303))))
                                        (declare (not safe))
                                        (cons __tmp27308 __tmp27302))
                                      (gx#stx-source _stx11572_))))))
                     _hd1337413482_
                     _hd1337113472_
                     _opt1336913464_
                     _pre1335713424_)
                    (_g1334013381_ _g1334113385_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1334013381_
                                                     _g1334113385_))))
                                            (_g1334013381_ _g1334113385_)))))))
                        (_loop1336413444_ _target1336113438_ '()))
                      (_g1334013381_ _g1334113385_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1334013381_
                                                     _g1334113385_))))
                                            (_g1334013381_ _g1334113385_)))))))
                        (_loop1335213404_ _target1334913398_ '()))
                      (_g1334013381_ _g1334113385_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1334013381_
                                                     _g1334113385_))))
                                            (_g1334013381_ _g1334113385_)))))
                                (_g1333913553_
                                 (list _pre13116_
                                       (reverse _right13125_)
                                       _tail13118_
                                       _primary13114_))))))))
                 (_generate-opt-clause11586_
                  (lambda (_primary12812_ _pre12814_ _opt12815_)
                    (let _recur12817_ ((_opt-rest12820_ _opt12815_)
                                       (_right12822_ '()))
                      (if (let () (declare (not safe)) (pair? _opt-rest12820_))
                          (let* ((_hd12824_ (car _opt-rest12820_))
                                 (_rest12827_ (cdr _opt-rest12820_))
                                 (_g1283012838_
                                  (lambda (_g1283112834_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1283112834_)))
                                 (_g1282912927_
                                  (lambda (_g1283112842_)
                                    ((lambda (_L12845_)
                                       (let ()
                                         (let* ((_g1286112869_
                                                 (lambda (_g1286212865_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g1286212865_)))
                                                (_g1286012923_
                                                 (lambda (_g1286212873_)
                                                   ((lambda (_L12876_)
                                                      (let ()
                                                        (let* ((_g1288912897_
                                                                (lambda (_g1289012893_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g1289012893_)))
                       (_g1288812919_
                        (lambda (_g1289012901_)
                          ((lambda (_L12904_)
                             (let ()
                               (let ()
                                 (let ((__tmp27334
                                        (gx#datum->syntax '#f 'let-values))
                                       (__tmp27328
                                        (let ((__tmp27330
                                               (let ((__tmp27331
                                                      (let ((__tmp27333
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L12845_ '())))
                    (__tmp27332
                     (let () (declare (not safe)) (cons _L12876_ '()))))
                (declare (not safe))
                (cons __tmp27333 __tmp27332))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp27331 '())))
                                              (__tmp27329
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L12904_ '()))))
                                          (declare (not safe))
                                          (cons __tmp27330 __tmp27329))))
                                   (declare (not safe))
                                   (cons __tmp27334 __tmp27328)))))
                           _g1289012901_))))
                  (_g1288812919_
                   (_recur12817_
                    _rest12827_
                    (let ()
                      (declare (not safe))
                      (cons _L12845_ _right12822_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1286212873_))))
                                           (_g1286012923_ (cdr _hd12824_)))))
                                     _g1283112842_))))
                            (_g1282912927_ (car _hd12824_)))
                          (let* ((_g1293112968_
                                  (lambda (_g1293212964_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1293212964_)))
                                 (_g1293013110_
                                  (lambda (_g1293212972_)
                                    (if (gx#stx-pair? _g1293212972_)
                                        (let ((_e1293812975_
                                               (gx#syntax-e _g1293212972_)))
                                          (let ((_hd1293712979_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1293812975_)))
                                                (_tl1293612982_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1293812975_))))
                                            (if (gx#stx-pair/null?
                                                 _hd1293712979_)
                                                (let ((_g27320_
                                                       (gx#syntax-split-splice
                                                        _hd1293712979_
                                                        '0)))
                                                  (begin
                                                    (let ((_g27321_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g27320_)
                         (##vector-length _g27320_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g27321_ 2)))
                  (error "Context expects 2 values" _g27321_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1293912985_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g27320_
                                                              0)))
                                                          (_tl1294112988_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g27320_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1294112988_)
                                                          (letrec ((_loop1294212991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1294012995_ _pre1294612998_)
                              (if (gx#stx-pair? _hd1294012995_)
                                  (let ((_e1294313001_
                                         (gx#syntax-e _hd1294012995_)))
                                    (let ((_lp-hd1294413005_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1294313001_)))
                                          (_lp-tl1294513008_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1294313001_))))
                                      (_loop1294212991_
                                       _lp-tl1294513008_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1294413005_
                                               _pre1294612998_)))))
                                  (let ((_pre1294713011_
                                         (reverse _pre1294612998_)))
                                    (if (gx#stx-pair? _tl1293612982_)
                                        (let ((_e1295013015_
                                               (gx#syntax-e _tl1293612982_)))
                                          (let ((_hd1294913019_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1295013015_)))
                                                (_tl1294813022_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1295013015_))))
                                            (if (gx#stx-pair/null?
                                                 _hd1294913019_)
                                                (let ((_g27322_
                                                       (gx#syntax-split-splice
                                                        _hd1294913019_
                                                        '0)))
                                                  (begin
                                                    (let ((_g27323_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g27322_)
                         (##vector-length _g27322_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g27323_ 2)))
                  (error "Context expects 2 values" _g27323_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1295113025_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g27322_
                                                              0)))
                                                          (_tl1295313028_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g27322_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1295313028_)
                                                          (letrec ((_loop1295413031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1295213035_ _opt1295813038_)
                              (if (gx#stx-pair? _hd1295213035_)
                                  (let ((_e1295513041_
                                         (gx#syntax-e _hd1295213035_)))
                                    (let ((_lp-hd1295613045_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1295513041_)))
                                          (_lp-tl1295713048_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1295513041_))))
                                      (_loop1295413031_
                                       _lp-tl1295713048_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1295613045_
                                               _opt1295813038_)))))
                                  (let ((_opt1295913051_
                                         (reverse _opt1295813038_)))
                                    (if (gx#stx-pair? _tl1294813022_)
                                        (let ((_e1296213055_
                                               (gx#syntax-e _tl1294813022_)))
                                          (let ((_hd1296113059_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1296213055_)))
                                                (_tl1296013062_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1296213055_))))
                                            (if (gx#stx-null? _tl1296013062_)
                                                ((lambda (_L13065_
                                                          _L13067_
                                                          _L13068_)
                                                   (let ()
                                                     (gx#stx-wrap-source
                                                      (let ((__tmp27324
                                                             (let ((__tmp27327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g1309313098_ _g1309413101_)
                              (let ()
                                (declare (not safe))
                                (cons _g1309313098_ _g1309413101_))))
                           (__tmp27325
                            (let ((__tmp27326
                                   (lambda (_g1309513104_ _g1309613107_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g1309513104_ _g1309613107_)))))
                              (declare (not safe))
                              (foldr1 __tmp27326 '() _L13067_))))
                       (declare (not safe))
                       (foldr1 __tmp27327 __tmp27325 _L13068_))))
                (declare (not safe))
                (cons _L13065_ __tmp27324))
              (gx#stx-source _stx11572_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1296113059_
                                                 _opt1295913051_
                                                 _pre1294713011_)
                                                (_g1293112968_
                                                 _g1293212972_))))
                                        (_g1293112968_ _g1293212972_)))))))
                    (_loop1295413031_ _target1295113025_ '()))
                  (_g1293112968_ _g1293212972_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1293112968_
                                                 _g1293212972_))))
                                        (_g1293112968_ _g1293212972_)))))))
                    (_loop1294212991_ _target1293912985_ '()))
                  (_g1293112968_ _g1293212972_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1293112968_
                                                 _g1293212972_))))
                                        (_g1293112968_ _g1293212972_)))))
                            (_g1293013110_
                             (list _pre12814_
                                   (reverse _right12822_)
                                   _primary12812_)))))))
                 (_generate-kw-primary11587_
                  (lambda (_key12188_ _kwargs12190_ _args12191_ _body12192_)
                    (letrec ((_make-body12194_
                              (lambda (_kwargs12681_ _kwvals12683_)
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _kwargs12681_))
                                    (let* ((_kwarg12685_ (car _kwargs12681_))
                                           (_var12688_ (cadr _kwarg12685_))
                                           (_default12691_
                                            (caddr _kwarg12685_))
                                           (_kwval12694_ (car _kwvals12683_))
                                           (_rest-kwargs12697_
                                            (cdr _kwargs12681_))
                                           (_rest-kwvals12700_
                                            (cdr _kwvals12683_)))
                                      (let* ((_g1270512728_
                                              (lambda (_g1270612724_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _g1270612724_)))
                                             (_g1270412808_
                                              (lambda (_g1270612732_)
                                                (if (gx#stx-pair?
                                                     _g1270612732_)
                                                    (let ((_e1271312735_
                                                           (gx#syntax-e
                                                            _g1270612732_)))
                                                      (let ((_hd1271212739_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1271312735_)))
                    (_tl1271112742_
                     (let () (declare (not safe)) (##cdr _e1271312735_))))
                (if (gx#stx-pair? _tl1271112742_)
                    (let ((_e1271612745_ (gx#syntax-e _tl1271112742_)))
                      (let ((_hd1271512749_
                             (let ()
                               (declare (not safe))
                               (##car _e1271612745_)))
                            (_tl1271412752_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1271612745_))))
                        (if (gx#stx-pair? _tl1271412752_)
                            (let ((_e1271912755_ (gx#syntax-e _tl1271412752_)))
                              (let ((_hd1271812759_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1271912755_)))
                                    (_tl1271712762_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1271912755_))))
                                (if (gx#stx-pair? _tl1271712762_)
                                    (let ((_e1272212765_
                                           (gx#syntax-e _tl1271712762_)))
                                      (let ((_hd1272112769_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1272212765_)))
                                            (_tl1272012772_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1272212765_))))
                                        (if (gx#stx-null? _tl1272012772_)
                                            ((lambda (_L12775_
                                                      _L12777_
                                                      _L12778_
                                                      _L12779_)
                                               (let ()
                                                 (let ((__tmp27351
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let-values))
                                                       (__tmp27335
                                                        (let ((__tmp27337
                                                               (let ((__tmp27338
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp27350
                                     (let ()
                                       (declare (not safe))
                                       (cons _L12779_ '())))
                                    (__tmp27339
                                     (let ((__tmp27340
                                            (let ((__tmp27349
                                                   (gx#datum->syntax '#f 'if))
                                                  (__tmp27341
                                                   (let ((__tmp27344
                                                          (let ((__tmp27348
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'eq?))
                        (__tmp27345
                         (let ((__tmp27346
                                (let ((__tmp27347
                                       (gx#datum->syntax '#f 'absent-value)))
                                  (declare (not safe))
                                  (cons __tmp27347 '()))))
                           (declare (not safe))
                           (cons _L12778_ __tmp27346))))
                    (declare (not safe))
                    (cons __tmp27348 __tmp27345)))
                 (__tmp27342
                  (let ((__tmp27343
                         (let () (declare (not safe)) (cons _L12778_ '()))))
                    (declare (not safe))
                    (cons _L12777_ __tmp27343))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp27344
                                                           __tmp27342))))
                                              (declare (not safe))
                                              (cons __tmp27349 __tmp27341))))
                                       (declare (not safe))
                                       (cons __tmp27340 '()))))
                                (declare (not safe))
                                (cons __tmp27350 __tmp27339))))
                         (declare (not safe))
                         (cons __tmp27338 '())))
                      (__tmp27336
                       (let () (declare (not safe)) (cons _L12775_ '()))))
                  (declare (not safe))
                  (cons __tmp27337 __tmp27336))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp27351
                                                         __tmp27335))))
                                             _hd1272112769_
                                             _hd1271812759_
                                             _hd1271512749_
                                             _hd1271212739_)
                                            (_g1270512728_ _g1270612732_))))
                                    (_g1270512728_ _g1270612732_))))
                            (_g1270512728_ _g1270612732_))))
                    (_g1270512728_ _g1270612732_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1270512728_
                                                     _g1270612732_)))))
                                        (_g1270412808_
                                         (list _var12688_
                                               _kwval12694_
                                               _default12691_
                                               (_make-body12194_
                                                _rest-kwargs12697_
                                                _rest-kwvals12700_)))))
                                    (let ()
                                      (declare (not safe))
                                      (cons 'begin _body12192_)))))
                             (_make-main12196_
                              (lambda ()
                                (let* ((_g1248912497_
                                        (lambda (_g1249012493_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g1249012493_)))
                                       (_g1248812673_
                                        (lambda (_g1249012501_)
                                          ((lambda (_L12504_)
                                             (let ()
                                               (let* ((_g1251612533_
                                                       (lambda (_g1251712529_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1251712529_)))
                                                      (_g1251512669_
                                                       (lambda (_g1251712537_)
                                                         (if (gx#stx-pair/null?
                                                              _g1251712537_)
                                                             (let ((_g27352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g1251712537_ '0)))
                       (begin
                         (let ((_g27353_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g27352_)
                                      (##vector-length _g27352_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g27353_ 2)))
                               (error "Context expects 2 values" _g27353_)))
                         (let ((_target1251912540_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g27352_ 0)))
                               (_tl1252112543_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g27352_ 1))))
                           (if (gx#stx-null? _tl1252112543_)
                               (letrec ((_loop1252212546_
                                         (lambda (_hd1252012550_
                                                  _kwval1252612553_)
                                           (if (gx#stx-pair? _hd1252012550_)
                                               (let ((_e1252312556_
                                                      (gx#syntax-e
                                                       _hd1252012550_)))
                                                 (let ((_lp-hd1252412560_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1252312556_)))
                                                       (_lp-tl1252512563_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1252312556_))))
                                                   (_loop1252212546_
                                                    _lp-tl1252512563_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd1252412560_
                                                            _kwval1252612553_)))))
                                               (let ((_kwval1252712566_
                                                      (reverse _kwval1252612553_)))
                                                 ((lambda (_L12570_)
                                                    (let ()
                                                      (let* ((_g1258712595_
                                                              (lambda (_g1258812591_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g1258812591_)))
                     (_g1258612665_
                      (lambda (_g1258812599_)
                        ((lambda (_L12602_)
                           (let ()
                             (let* ((_g1261512623_
                                     (lambda (_g1261612619_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g1261612619_)))
                                    (_g1261412653_
                                     (lambda (_g1261612627_)
                                       ((lambda (_L12630_)
                                          (let ()
                                            (let ()
                                              (gx#stx-wrap-source
                                               (let ((__tmp27359
                                                      (gx#datum->syntax
                                                       '#f
                                                       'lambda))
                                                     (__tmp27354
                                                      (let ((__tmp27356
                                                             (let ((__tmp27357
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp27358
                                   (lambda (_g1264412647_ _g1264512650_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g1264412647_ _g1264512650_)))))
                              (declare (not safe))
                              (foldr1 __tmp27358 _L12602_ _L12570_))))
                       (declare (not safe))
                       (cons _L12504_ __tmp27357)))
                    (__tmp27355
                     (let () (declare (not safe)) (cons _L12630_ '()))))
                (declare (not safe))
                (cons __tmp27356 __tmp27355))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp27359 __tmp27354))
                                               (gx#stx-source _stx11572_)))))
                                        _g1261612627_))))
                               (_g1261412653_
                                (_make-body12194_
                                 _kwargs12190_
                                 (let ((__tmp27360
                                        (lambda (_g1265612659_ _g1265712662_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g1265612659_
                                                  _g1265712662_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp27360 '() _L12570_)))))))
                         _g1258812599_))))
                (_g1258612665_ _args12191_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _kwval1252712566_))))))
                                 (_loop1252212546_ _target1251912540_ '()))
                               (_g1251612533_ _g1251712537_)))))
                     (_g1251612533_ _g1251712537_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1251512669_
                                                  (gx#gentemps
                                                   (map cadr
                                                        _kwargs12190_))))))
                                           _g1249012501_))))
                                  (_g1248812673_
                                   (let ((_$e12677_ _key12188_))
                                     (if _$e12677_ _$e12677_ '_))))))
                             (_make-dispatch12197_
                              (lambda (_main12297_)
                                (let* ((_g1230012308_
                                        (lambda (_g1230112304_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g1230112304_)))
                                       (_g1229912479_
                                        (lambda (_g1230112312_)
                                          ((lambda (_L12315_)
                                             (let ()
                                               (let* ((_g1232712344_
                                                       (lambda (_g1232812340_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1232812340_)))
                                                      (_g1232612440_
                                                       (lambda (_g1232812348_)
                                                         (if (gx#stx-pair/null?
                                                              _g1232812348_)
                                                             (let ((_g27361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g1232812348_ '0)))
                       (begin
                         (let ((_g27362_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g27361_)
                                      (##vector-length _g27361_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g27362_ 2)))
                               (error "Context expects 2 values" _g27362_)))
                         (let ((_target1233012351_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g27361_ 0)))
                               (_tl1233212354_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g27361_ 1))))
                           (if (gx#stx-null? _tl1233212354_)
                               (letrec ((_loop1233312357_
                                         (lambda (_hd1233112361_
                                                  _get-kw1233712364_)
                                           (if (gx#stx-pair? _hd1233112361_)
                                               (let ((_e1233412367_
                                                      (gx#syntax-e
                                                       _hd1233112361_)))
                                                 (let ((_lp-hd1233512371_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1233412367_)))
                                                       (_lp-tl1233612374_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1233412367_))))
                                                   (_loop1233312357_
                                                    _lp-tl1233612374_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd1233512371_
                                                            _get-kw1233712364_)))))
                                               (let ((_get-kw1233812377_
                                                      (reverse _get-kw1233712364_)))
                                                 ((lambda (_L12381_)
                                                    (let ()
                                                      (let* ((_g1239812406_
                                                              (lambda (_g1239912402_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g1239912402_)))
                     (_g1239712436_
                      (lambda (_g1239912410_)
                        ((lambda (_L12413_)
                           (let ()
                             (let ()
                               (gx#stx-wrap-source
                                (let ((__tmp27375
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp27363
                                       (let ((__tmp27373
                                              (let ((__tmp27374
                                                     (gx#datum->syntax
                                                      '#f
                                                      'args)))
                                                (declare (not safe))
                                                (cons _L12315_ __tmp27374)))
                                             (__tmp27364
                                              (let ((__tmp27365
                                                     (let ((__tmp27372
                                                            (gx#datum->syntax
                                                             '#f
                                                             'apply))
                                                           (__tmp27366
                                                            (let ((__tmp27367
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp27368
                                  (let ((__tmp27371
                                         (lambda (_g1242712430_ _g1242812433_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g1242712430_
                                                   _g1242812433_))))
                                        (__tmp27369
                                         (let ((__tmp27370
                                                (gx#datum->syntax '#f 'args)))
                                           (declare (not safe))
                                           (cons __tmp27370 '()))))
                                    (declare (not safe))
                                    (foldr1 __tmp27371 __tmp27369 _L12381_))))
                             (declare (not safe))
                             (cons _L12315_ __tmp27368))))
                      (declare (not safe))
                      (cons _L12413_ __tmp27367))))
               (declare (not safe))
               (cons __tmp27372 __tmp27366))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp27365 '()))))
                                         (declare (not safe))
                                         (cons __tmp27373 __tmp27364))))
                                  (declare (not safe))
                                  (cons __tmp27375 __tmp27363))
                                (gx#stx-source _stx11572_)))))
                         _g1239912410_))))
                (_g1239712436_ _main12297_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _get-kw1233812377_))))))
                                 (_loop1233312357_ _target1233012351_ '()))
                               (_g1232712344_ _g1232812348_)))))
                     (_g1232712344_ _g1232812348_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1232612440_
                                                  (map (lambda (_kwarg12444_)
                                                         (let* ((_g1244712455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1244812451_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g1244812451_)))
                        (_g1244612475_
                         (lambda (_g1244812459_)
                           ((lambda (_L12462_)
                              (let ()
                                (let ((__tmp27383
                                       (gx#datum->syntax
                                        '#f
                                        'symbolic-table-ref))
                                      (__tmp27376
                                       (let ((__tmp27377
                                              (let ((__tmp27380
                                                     (let ((__tmp27382
                                                            (gx#datum->syntax
                                                             '#f
                                                             'quote))
                                                           (__tmp27381
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L12462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp27382 __tmp27381)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp27378
                                                     (let ((__tmp27379
                                                            (gx#datum->syntax
                                                             '#f
                                                             'absent-value)))
                                                       (declare (not safe))
                                                       (cons __tmp27379 '()))))
                                                (declare (not safe))
                                                (cons __tmp27380 __tmp27378))))
                                         (declare (not safe))
                                         (cons _L12315_ __tmp27377))))
                                  (declare (not safe))
                                  (cons __tmp27383 __tmp27376))))
                            _g1244812459_))))
                   (_g1244612475_ (car _kwarg12444_))))
               _kwargs12190_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g1230112312_))))
                                  (_g1229912479_
                                   (let ((_$e12483_ _key12188_))
                                     (if _$e12483_
                                         _$e12483_
                                         (gx#genident 'keys))))))))
                      (let* ((_g1219912207_
                              (lambda (_g1220012203_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g1220012203_)))
                             (_g1219812293_
                              (lambda (_g1220012211_)
                                ((lambda (_L12214_)
                                   (let ()
                                     (let* ((_g1222712235_
                                             (lambda (_g1222812231_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g1222812231_)))
                                            (_g1222612289_
                                             (lambda (_g1222812239_)
                                               ((lambda (_L12242_)
                                                  (let ()
                                                    (let* ((_g1225512263_
                                                            (lambda (_g1225612259_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g1225612259_)))
                                                           (_g1225412285_
                                                            (lambda (_g1225612267_)
                                                              ((lambda (_L12270_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ()
                             (let ((__tmp27390
                                    (gx#datum->syntax '#f 'let-values))
                                   (__tmp27384
                                    (let ((__tmp27386
                                           (let ((__tmp27387
                                                  (let ((__tmp27389
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L12214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp27388 (let () (declare (not safe)) (cons _L12270_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp27389
                                                          __tmp27388))))
                                             (declare (not safe))
                                             (cons __tmp27387 '())))
                                          (__tmp27385
                                           (let ()
                                             (declare (not safe))
                                             (cons _L12242_ '()))))
                                      (declare (not safe))
                                      (cons __tmp27386 __tmp27385))))
                               (declare (not safe))
                               (cons __tmp27390 __tmp27384)))))
                       _g1225612267_))))
              (_g1225412285_ (_make-main12196_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1222812239_))))
                                       (_g1222612289_
                                        (_make-dispatch12197_ _L12214_)))))
                                 _g1220012211_))))
                        (_g1219812293_ (gx#genident 'kw-lambda-main))))))
                 (_generate-kw-dispatch11588_
                  (lambda (_primary12101_ _kwargs12103_ _strict?12104_)
                    (let* ((_g1210612125_
                            (lambda (_g1210712121_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g1210712121_)))
                           (_g1210512184_
                            (lambda (_g1210712129_)
                              (if (gx#stx-pair? _g1210712129_)
                                  (let ((_e1211312132_
                                         (gx#syntax-e _g1210712129_)))
                                    (let ((_hd1211212136_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1211312132_)))
                                          (_tl1211112139_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1211312132_))))
                                      (if (gx#stx-pair? _tl1211112139_)
                                          (let ((_e1211612142_
                                                 (gx#syntax-e _tl1211112139_)))
                                            (let ((_hd1211512146_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1211612142_)))
                                                  (_tl1211412149_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1211612142_))))
                                              (if (gx#stx-pair? _tl1211412149_)
                                                  (let ((_e1211912152_
                                                         (gx#syntax-e
                                                          _tl1211412149_)))
                                                    (let ((_hd1211812156_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1211912152_)))
                                                          (_tl1211712159_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1211912152_))))
                                                      (if (gx#stx-null?
                                                           _tl1211712159_)
                                                          ((lambda (_L12162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L12164_
                            _L12165_)
                     (let ()
                       (let ((__tmp27403 (gx#datum->syntax '#f 'lambda%))
                             (__tmp27391
                              (let ((__tmp27392
                                     (let ((__tmp27393
                                            (let ((__tmp27402
                                                   (gx#datum->syntax
                                                    '#f
                                                    'apply))
                                                  (__tmp27394
                                                   (let ((__tmp27401
                                                          (gx#datum->syntax
                                                           '#f
                                                           'keyword-dispatch))
                                                         (__tmp27395
                                                          (let ((__tmp27398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp27400 (gx#datum->syntax '#f 'quote))
                               (__tmp27399
                                (let ()
                                  (declare (not safe))
                                  (cons _L12165_ '()))))
                           (declare (not safe))
                           (cons __tmp27400 __tmp27399)))
                        (__tmp27396
                         (let ((__tmp27397
                                (let ()
                                  (declare (not safe))
                                  (cons _L12162_ '()))))
                           (declare (not safe))
                           (cons _L12164_ __tmp27397))))
                    (declare (not safe))
                    (cons __tmp27398 __tmp27396))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp27401
                                                           __tmp27395))))
                                              (declare (not safe))
                                              (cons __tmp27402 __tmp27394))))
                                       (declare (not safe))
                                       (cons __tmp27393 '()))))
                                (declare (not safe))
                                (cons _L12162_ __tmp27392))))
                         (declare (not safe))
                         (cons __tmp27403 __tmp27391))))
                   _hd1211812156_
                   _hd1211512146_
                   _hd1211212136_)
                  (_g1210612125_ _g1210712129_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1210612125_
                                                   _g1210712129_))))
                                          (_g1210612125_ _g1210712129_))))
                                  (_g1210612125_ _g1210712129_)))))
                      (_g1210512184_
                       (list (if _strict?12104_
                                 (_generate-kw-table11589_
                                  (map car _kwargs12103_))
                                 '#f)
                             _primary12101_
                             (gx#genident 'args))))))
                 (_generate-kw-table11589_
                  (lambda (_kws12075_)
                    (let _rehash12078_ ((_pht12081_
                                         (make-vector
                                          (length _kws12075_)
                                          '#f)))
                      (let _lp12084_ ((_rest12087_ _kws12075_))
                        (if (let () (declare (not safe)) (pair? _rest12087_))
                            (let* ((_key12090_ (car _rest12087_))
                                   (_rest12093_ (cdr _rest12087_))
                                   (_pos12096_
                                    (fxmodulo
                                     (keyword-hash _key12090_)
                                     (vector-length _pht12081_))))
                              (if (vector-ref _pht12081_ _pos12096_)
                                  (if (fx< (vector-length _pht12081_) '8192)
                                      (_rehash12078_
                                       (make-vector
                                        (quotient
                                         (fx* '3 (vector-length _pht12081_))
                                         '2)
                                        '#f))
                                      (let ()
                                        (declare (not safe))
                                        (error '"Unresolvable keyword collision"
                                               _kws12075_)))
                                  (begin
                                    (vector-set!
                                     _pht12081_
                                     _pos12096_
                                     _key12090_)
                                    (_lp12084_ _rest12093_))))
                            _pht12081_))))))
          (let* ((___stx2560325604_ _stx11572_)
                 (_g1159311624_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx2560325604_))))
            (let ((___kont2560625607_
                   (lambda (_L12056_ _L12058_)
                     (let ((__tmp27405 (gx#datum->syntax '#f 'lambda%))
                           (__tmp27404
                            (let ()
                              (declare (not safe))
                              (cons _L12058_ _L12056_))))
                       (declare (not safe))
                       (cons __tmp27405 __tmp27404))))
                  (___kont2560825609_
                   (lambda (_L11828_ _L11830_)
                     (let ((_g27406_ (_opt-lambda-split11578_ _L11830_)))
                       (begin
                         (let ((_g27407_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g27406_)
                                      (##vector-length _g27406_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g27407_ 3)))
                               (error "Context expects 3 values" _g27407_)))
                         (let ((_pre11843_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g27406_ 0)))
                               (_opt11845_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g27406_ 1)))
                               (_tail11846_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g27406_ 2))))
                           (let* ((_g1184811856_
                                   (lambda (_g1184911852_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g1184911852_)))
                                  (_g1184712025_
                                   (lambda (_g1184911860_)
                                     ((lambda (_L11863_)
                                        (let ()
                                          (let* ((_g1187611884_
                                                  (lambda (_g1187711880_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g1187711880_)))
                                                 (_g1187512021_
                                                  (lambda (_g1187711888_)
                                                    ((lambda (_L11891_)
                                                       (let ()
                                                         (let* ((_g1190411921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1190511917_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g1190511917_)))
                        (_g1190312017_
                         (lambda (_g1190511925_)
                           (if (gx#stx-pair/null? _g1190511925_)
                               (let ((_g27408_
                                      (gx#syntax-split-splice
                                       _g1190511925_
                                       '0)))
                                 (begin
                                   (let ((_g27409_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g27408_)
                                                (##vector-length _g27408_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g27409_ 2)))
                                         (error "Context expects 2 values"
                                                _g27409_)))
                                   (let ((_target1190711928_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g27408_ 0)))
                                         (_tl1190911931_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g27408_ 1))))
                                     (if (gx#stx-null? _tl1190911931_)
                                         (letrec ((_loop1191011934_
                                                   (lambda (_hd1190811938_
                                                            _clause1191411941_)
                                                     (if (gx#stx-pair?
                                                          _hd1190811938_)
                                                         (let ((_e1191111944_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1190811938_)))
                   (let ((_lp-hd1191211948_
                          (let () (declare (not safe)) (##car _e1191111944_)))
                         (_lp-tl1191311951_
                          (let () (declare (not safe)) (##cdr _e1191111944_))))
                     (_loop1191011934_
                      _lp-tl1191311951_
                      (let ()
                        (declare (not safe))
                        (cons _lp-hd1191211948_ _clause1191411941_)))))
                 (let ((_clause1191511954_ (reverse _clause1191411941_)))
                   ((lambda (_L11958_)
                      (let ()
                        (let* ((_g1197511983_
                                (lambda (_g1197611979_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g1197611979_)))
                               (_g1197412005_
                                (lambda (_g1197611987_)
                                  ((lambda (_L11990_)
                                     (let ()
                                       (let ()
                                         (let ((__tmp27416
                                                (gx#datum->syntax
                                                 '#f
                                                 'let-values))
                                               (__tmp27410
                                                (let ((__tmp27412
                                                       (let ((__tmp27413
                                                              (let ((__tmp27415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let () (declare (not safe)) (cons _L11863_ '())))
                            (__tmp27414
                             (let ()
                               (declare (not safe))
                               (cons _L11891_ '()))))
                        (declare (not safe))
                        (cons __tmp27415 __tmp27414))))
                 (declare (not safe))
                 (cons __tmp27413 '())))
              (__tmp27411 (let () (declare (not safe)) (cons _L11990_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp27412
                                                        __tmp27411))))
                                           (declare (not safe))
                                           (cons __tmp27416 __tmp27410)))))
                                   _g1197611987_))))
                          (_g1197412005_
                           (gx#stx-wrap-source
                            (let ((__tmp27419
                                   (gx#datum->syntax '#f 'case-lambda))
                                  (__tmp27417
                                   (let ((__tmp27418
                                          (lambda (_g1200812011_ _g1200912014_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g1200812011_
                                                    _g1200912014_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp27418 '() _L11958_))))
                              (declare (not safe))
                              (cons __tmp27419 __tmp27417))
                            (gx#stx-source _stx11572_))))))
                    _clause1191511954_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1191011934_
                                            _target1190711928_
                                            '()))
                                         (_g1190411921_ _g1190511925_)))))
                               (_g1190411921_ _g1190511925_)))))
                   (_g1190312017_
                    (_generate-opt-dispatch11584_
                     _L11863_
                     _pre11843_
                     _opt11845_
                     _tail11846_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1187711888_))))
                                            (_g1187512021_
                                             (gx#stx-wrap-source
                                              (_generate-opt-primary11583_
                                               _pre11843_
                                               _opt11845_
                                               _tail11846_
                                               _L11828_)
                                              (gx#stx-source _stx11572_))))))
                                      _g1184911860_))))
                             (_g1184712025_ (gx#genident 'opt-lambda))))))))
                  (___kont2561025611_
                   (lambda (_L11651_ _L11653_)
                     (let* ((_g1166911676_
                             (lambda (_g1167011672_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g1167011672_)))
                            (_g1166811797_
                             (lambda (_g1167011680_)
                               ((lambda ()
                                  (let ()
                                    (let ((_g27420_
                                           (_kw-lambda-split11580_ _L11653_)))
                                      (begin
                                        (let ((_g27421_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g27420_)
                                                     (##vector-length _g27420_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g27421_ 3)))
                                              (error "Context expects 3 values"
                                                     _g27421_)))
                                        (let ((_key11689_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g27420_ 0)))
                                              (_kwargs11691_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g27420_ 1)))
                                              (_args11692_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g27420_ 2))))
                                          (let* ((_g1169411702_
                                                  (lambda (_g1169511698_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g1169511698_)))
                                                 (_g1169311793_
                                                  (lambda (_g1169511706_)
                                                    ((lambda (_L11709_)
                                                       (let ()
                                                         (let* ((_g1172711735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1172811731_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g1172811731_)))
                        (_g1172611789_
                         (lambda (_g1172811739_)
                           ((lambda (_L11742_)
                              (let ()
                                (let* ((_g1175511763_
                                        (lambda (_g1175611759_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g1175611759_)))
                                       (_g1175411785_
                                        (lambda (_g1175611767_)
                                          ((lambda (_L11770_)
                                             (let ()
                                               (let ()
                                                 (let ((__tmp27428
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let-values))
                                                       (__tmp27422
                                                        (let ((__tmp27424
                                                               (let ((__tmp27425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp27427
                                     (let ()
                                       (declare (not safe))
                                       (cons _L11709_ '())))
                                    (__tmp27426
                                     (let ()
                                       (declare (not safe))
                                       (cons _L11742_ '()))))
                                (declare (not safe))
                                (cons __tmp27427 __tmp27426))))
                         (declare (not safe))
                         (cons __tmp27425 '())))
                      (__tmp27423
                       (let () (declare (not safe)) (cons _L11770_ '()))))
                  (declare (not safe))
                  (cons __tmp27424 __tmp27423))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp27428
                                                         __tmp27422)))))
                                           _g1175611767_))))
                                  (_g1175411785_
                                   (gx#stx-wrap-source
                                    (_generate-kw-dispatch11588_
                                     _L11709_
                                     _kwargs11691_
                                     (let ()
                                       (declare (not safe))
                                       (not _key11689_)))
                                    (gx#stx-source _stx11572_))))))
                            _g1172811739_))))
                   (_g1172611789_
                    (gx#stx-wrap-source
                     (_generate-kw-primary11587_
                      _key11689_
                      _kwargs11691_
                      _args11692_
                      _L11651_)
                     (gx#stx-source _stx11572_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1169511706_))))
                                            (_g1169311793_
                                             (gx#genident
                                              'kw-lambda))))))))))))
                       (_g1166811797_
                        (_check-duplicate-bindings11582_ _L11653_))))))
              (let* ((___match2564825649_
                      (lambda (_e1161511631_
                               _hd1161411635_
                               _tl1161311638_
                               _e1161811641_
                               _hd1161711645_
                               _tl1161611648_)
                        (let ((_L11651_ _tl1161611648_)
                              (_L11653_ _hd1161711645_))
                          (if (_kw-lambda?11579_ _L11653_)
                              (___kont2561025611_ _L11651_ _L11653_)
                              (let () (declare (not safe)) (_g1159311624_))))))
                     (___match2563625637_
                      (lambda (_e1160711808_
                               _hd1160611812_
                               _tl1160511815_
                               _e1161011818_
                               _hd1160911822_
                               _tl1160811825_)
                        (let ((_L11828_ _tl1160811825_)
                              (_L11830_ _hd1160911822_))
                          (if (_opt-lambda?11577_ _L11830_)
                              (___kont2560825609_ _L11828_ _L11830_)
                              (___match2564825649_
                               _e1160711808_
                               _hd1160611812_
                               _tl1160511815_
                               _e1161011818_
                               _hd1160911822_
                               _tl1160811825_)))))
                     (___match2562425625_
                      (lambda (_e1159912036_
                               _hd1159812040_
                               _tl1159712043_
                               _e1160212046_
                               _hd1160112050_
                               _tl1160012053_)
                        (let ((_L12056_ _tl1160012053_)
                              (_L12058_ _hd1160112050_))
                          (if (_simple-lambda?11575_ _L12058_)
                              (___kont2560625607_ _L12056_ _L12058_)
                              (___match2563625637_
                               _e1159912036_
                               _hd1159812040_
                               _tl1159712043_
                               _e1160212046_
                               _hd1160112050_
                               _tl1160012053_))))))
                (if (gx#stx-pair? ___stx2560325604_)
                    (let ((_e1159912036_ (gx#syntax-e ___stx2560325604_)))
                      (let ((_tl1159712043_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1159912036_)))
                            (_hd1159812040_
                             (let ()
                               (declare (not safe))
                               (##car _e1159912036_))))
                        (if (gx#stx-pair? _tl1159712043_)
                            (let ((_e1160212046_ (gx#syntax-e _tl1159712043_)))
                              (let ((_tl1160012053_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1160212046_)))
                                    (_hd1160112050_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1160212046_))))
                                (___match2562425625_
                                 _e1159912036_
                                 _hd1159812040_
                                 _tl1159712043_
                                 _e1160212046_
                                 _hd1160112050_
                                 _tl1160012053_)))
                            (let () (declare (not safe)) (_g1159311624_)))))
                    (let () (declare (not safe)) (_g1159311624_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def|
      (lambda (_$stx14988_)
        (let* ((___stx2565125652_ _$stx14988_)
               (_g1499415058_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2565125652_))))
          (let ((___kont2565425655_
                 (lambda (_L15288_ _L15290_ _L15291_ _L15292_)
                   (let ((__tmp27437 (gx#datum->syntax '#f 'def))
                         (__tmp27429
                          (let ((__tmp27436
                                 (let ()
                                   (declare (not safe))
                                   (cons _L15292_ _L15291_)))
                                (__tmp27430
                                 (let ((__tmp27431
                                        (let ((__tmp27435
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp27432
                                               (let ((__tmp27433
                                                      (let ((__tmp27434
                                                             (lambda (_g1531415317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1531515320_)
                       (let ()
                         (declare (not safe))
                         (cons _g1531415317_ _g1531515320_)))))
                (declare (not safe))
                (foldr1 __tmp27434 '() _L15288_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L15290_ __tmp27433))))
                                          (declare (not safe))
                                          (cons __tmp27435 __tmp27432))))
                                   (declare (not safe))
                                   (cons __tmp27431 '()))))
                            (declare (not safe))
                            (cons __tmp27436 __tmp27430))))
                     (declare (not safe))
                     (cons __tmp27437 __tmp27429))))
                (___kont2565825659_
                 (lambda (_L15180_ _L15182_ _L15183_)
                   (let ((__tmp27446 (gx#datum->syntax '#f 'define-values))
                         (__tmp27438
                          (let ((__tmp27445
                                 (let ()
                                   (declare (not safe))
                                   (cons _L15183_ '())))
                                (__tmp27439
                                 (let ((__tmp27440
                                        (let ((__tmp27444
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp27441
                                               (let ((__tmp27442
                                                      (let ((__tmp27443
                                                             (lambda (_g1520215205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1520315208_)
                       (let ()
                         (declare (not safe))
                         (cons _g1520215205_ _g1520315208_)))))
                (declare (not safe))
                (foldr1 __tmp27443 '() _L15180_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L15182_ __tmp27442))))
                                          (declare (not safe))
                                          (cons __tmp27444 __tmp27441))))
                                   (declare (not safe))
                                   (cons __tmp27440 '()))))
                            (declare (not safe))
                            (cons __tmp27445 __tmp27439))))
                     (declare (not safe))
                     (cons __tmp27446 __tmp27438))))
                (___kont2566225663_
                 (lambda (_L15095_ _L15097_)
                   (let ((__tmp27450 (gx#datum->syntax '#f 'define-values))
                         (__tmp27447
                          (let ((__tmp27449
                                 (let ()
                                   (declare (not safe))
                                   (cons _L15097_ '())))
                                (__tmp27448
                                 (let ()
                                   (declare (not safe))
                                   (cons _L15095_ '()))))
                            (declare (not safe))
                            (cons __tmp27449 __tmp27448))))
                     (declare (not safe))
                     (cons __tmp27450 __tmp27447)))))
            (let* ((___match2574225743_
                    (lambda (_e1504615065_
                             _hd1504515069_
                             _tl1504415072_
                             _e1504915075_
                             _hd1504815079_
                             _tl1504715082_
                             _e1505215085_
                             _hd1505115089_
                             _tl1505015092_)
                      (let ((_L15095_ _hd1505115089_)
                            (_L15097_ _hd1504815079_))
                        (if (gx#identifier? _L15097_)
                            (___kont2566225663_ _L15095_ _L15097_)
                            (let () (declare (not safe)) (_g1499415058_))))))
                   (___match2573425735_
                    (lambda (_e1504615065_
                             _hd1504515069_
                             _tl1504415072_
                             _e1504915075_
                             _hd1504815079_
                             _tl1504715082_)
                      (if (gx#stx-pair? _tl1504715082_)
                          (let ((_e1505215085_ (gx#syntax-e _tl1504715082_)))
                            (let ((_tl1505015092_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1505215085_)))
                                  (_hd1505115089_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1505215085_))))
                              (if (gx#stx-null? _tl1505015092_)
                                  (___match2574225743_
                                   _e1504615065_
                                   _hd1504515069_
                                   _tl1504415072_
                                   _e1504915075_
                                   _hd1504815079_
                                   _tl1504715082_
                                   _e1505215085_
                                   _hd1505115089_
                                   _tl1505015092_)
                                  (let ()
                                    (declare (not safe))
                                    (_g1499415058_)))))
                          (let () (declare (not safe)) (_g1499415058_)))))
                   (___match2572225723_
                    (lambda (_e1502615120_
                             _hd1502515124_
                             _tl1502415127_
                             _e1502915130_
                             _hd1502815134_
                             _tl1502715137_
                             _e1503215140_
                             _hd1503115144_
                             _tl1503015147_
                             ___splice2566025661_
                             _target1503315150_
                             _tl1503515153_)
                      (letrec ((_loop1503615156_
                                (lambda (_hd1503415160_ _body1504015163_)
                                  (if (gx#stx-pair? _hd1503415160_)
                                      (let ((_e1503715166_
                                             (gx#syntax-e _hd1503415160_)))
                                        (let ((_lp-tl1503915173_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1503715166_)))
                                              (_lp-hd1503815170_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1503715166_))))
                                          (_loop1503615156_
                                           _lp-tl1503915173_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1503815170_
                                                   _body1504015163_)))))
                                      (let ((_body1504115176_
                                             (reverse _body1504015163_)))
                                        (let ((_L15180_ _body1504115176_)
                                              (_L15182_ _tl1503015147_)
                                              (_L15183_ _hd1503115144_))
                                          (if (gx#identifier? _L15183_)
                                              (___kont2565825659_
                                               _L15180_
                                               _L15182_
                                               _L15183_)
                                              (___match2573425735_
                                               _e1502615120_
                                               _hd1502515124_
                                               _tl1502415127_
                                               _e1502915130_
                                               _hd1502815134_
                                               _tl1502715137_))))))))
                        (_loop1503615156_ _target1503315150_ '()))))
                   (___match2569625697_
                    (lambda (_e1500215218_
                             _hd1500115222_
                             _tl1500015225_
                             _e1500515228_
                             _hd1500415232_
                             _tl1500315235_
                             _e1500815238_
                             _hd1500715242_
                             _tl1500615245_
                             _e1501115248_
                             _hd1501015252_
                             _tl1500915255_
                             ___splice2565625657_
                             _target1501215258_
                             _tl1501415261_)
                      (letrec ((_loop1501515264_
                                (lambda (_hd1501315268_ _body1501915271_)
                                  (if (gx#stx-pair? _hd1501315268_)
                                      (let ((_e1501615274_
                                             (gx#syntax-e _hd1501315268_)))
                                        (let ((_lp-tl1501815281_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1501615274_)))
                                              (_lp-hd1501715278_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1501615274_))))
                                          (_loop1501515264_
                                           _lp-tl1501815281_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1501715278_
                                                   _body1501915271_)))))
                                      (let ((_body1502015284_
                                             (reverse _body1501915271_)))
                                        (___kont2565425655_
                                         _body1502015284_
                                         _tl1500615245_
                                         _tl1500915255_
                                         _hd1501015252_))))))
                        (_loop1501515264_ _target1501215258_ '())))))
              (if (gx#stx-pair? ___stx2565125652_)
                  (let ((_e1500215218_ (gx#syntax-e ___stx2565125652_)))
                    (let ((_tl1500015225_
                           (let () (declare (not safe)) (##cdr _e1500215218_)))
                          (_hd1500115222_
                           (let ()
                             (declare (not safe))
                             (##car _e1500215218_))))
                      (if (gx#stx-pair? _tl1500015225_)
                          (let ((_e1500515228_ (gx#syntax-e _tl1500015225_)))
                            (let ((_tl1500315235_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1500515228_)))
                                  (_hd1500415232_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1500515228_))))
                              (if (gx#stx-pair? _hd1500415232_)
                                  (let ((_e1500815238_
                                         (gx#syntax-e _hd1500415232_)))
                                    (let ((_tl1500615245_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1500815238_)))
                                          (_hd1500715242_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1500815238_))))
                                      (if (gx#stx-pair? _hd1500715242_)
                                          (let ((_e1501115248_
                                                 (gx#syntax-e _hd1500715242_)))
                                            (let ((_tl1500915255_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1501115248_)))
                                                  (_hd1501015252_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1501115248_))))
                                              (if (gx#stx-pair/null?
                                                   _tl1500315235_)
                                                  (let ((___splice2565625657_
                                                         (gx#syntax-split-splice
                                                          _tl1500315235_
                                                          '0)))
                                                    (let ((_tl1501415261_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice2565625657_
                                                              '1)))
                                                          (_target1501215258_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice2565625657_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl1501415261_)
                                                          (___match2569625697_
                                                           _e1500215218_
                                                           _hd1500115222_
                                                           _tl1500015225_
                                                           _e1500515228_
                                                           _hd1500415232_
                                                           _tl1500315235_
                                                           _e1500815238_
                                                           _hd1500715242_
                                                           _tl1500615245_
                                                           _e1501115248_
                                                           _hd1501015252_
                                                           _tl1500915255_
                                                           ___splice2565625657_
                                                           _target1501215258_
                                                           _tl1501415261_)
                                                          (if (gx#stx-pair?
                                                               _tl1500315235_)
                                                              (let ((_e1505215085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1500315235_)))
                        (let ((_tl1505015092_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1505215085_)))
                              (_hd1505115089_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1505215085_))))
                          (if (gx#stx-null? _tl1505015092_)
                              (___match2574225743_
                               _e1500215218_
                               _hd1500115222_
                               _tl1500015225_
                               _e1500515228_
                               _hd1500415232_
                               _tl1500315235_
                               _e1505215085_
                               _hd1505115089_
                               _tl1505015092_)
                              (let () (declare (not safe)) (_g1499415058_)))))
                      (let () (declare (not safe)) (_g1499415058_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl1500315235_)
                                                      (let ((_e1505215085_
                                                             (gx#syntax-e
                                                              _tl1500315235_)))
                                                        (let ((_tl1505015092_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1505215085_)))
                      (_hd1505115089_
                       (let () (declare (not safe)) (##car _e1505215085_))))
                  (if (gx#stx-null? _tl1505015092_)
                      (___match2574225743_
                       _e1500215218_
                       _hd1500115222_
                       _tl1500015225_
                       _e1500515228_
                       _hd1500415232_
                       _tl1500315235_
                       _e1505215085_
                       _hd1505115089_
                       _tl1505015092_)
                      (let () (declare (not safe)) (_g1499415058_)))))
              (let () (declare (not safe)) (_g1499415058_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl1500315235_)
                                              (let ((___splice2566025661_
                                                     (gx#syntax-split-splice
                                                      _tl1500315235_
                                                      '0)))
                                                (let ((_tl1503515153_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2566025661_
                                                          '1)))
                                                      (_target1503315150_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2566025661_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1503515153_)
                                                      (___match2572225723_
                                                       _e1500215218_
                                                       _hd1500115222_
                                                       _tl1500015225_
                                                       _e1500515228_
                                                       _hd1500415232_
                                                       _tl1500315235_
                                                       _e1500815238_
                                                       _hd1500715242_
                                                       _tl1500615245_
                                                       ___splice2566025661_
                                                       _target1503315150_
                                                       _tl1503515153_)
                                                      (if (gx#stx-pair?
                                                           _tl1500315235_)
                                                          (let ((_e1505215085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1500315235_)))
                    (let ((_tl1505015092_
                           (let () (declare (not safe)) (##cdr _e1505215085_)))
                          (_hd1505115089_
                           (let ()
                             (declare (not safe))
                             (##car _e1505215085_))))
                      (if (gx#stx-null? _tl1505015092_)
                          (___match2574225743_
                           _e1500215218_
                           _hd1500115222_
                           _tl1500015225_
                           _e1500515228_
                           _hd1500415232_
                           _tl1500315235_
                           _e1505215085_
                           _hd1505115089_
                           _tl1505015092_)
                          (let () (declare (not safe)) (_g1499415058_)))))
                  (let () (declare (not safe)) (_g1499415058_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl1500315235_)
                                                  (let ((_e1505215085_
                                                         (gx#syntax-e
                                                          _tl1500315235_)))
                                                    (let ((_tl1505015092_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1505215085_)))
                                                          (_hd1505115089_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1505215085_))))
                                                      (if (gx#stx-null?
                                                           _tl1505015092_)
                                                          (___match2574225743_
                                                           _e1500215218_
                                                           _hd1500115222_
                                                           _tl1500015225_
                                                           _e1500515228_
                                                           _hd1500415232_
                                                           _tl1500315235_
                                                           _e1505215085_
                                                           _hd1505115089_
                                                           _tl1505015092_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g1499415058_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1499415058_)))))))
                                  (if (gx#stx-pair? _tl1500315235_)
                                      (let ((_e1505215085_
                                             (gx#syntax-e _tl1500315235_)))
                                        (let ((_tl1505015092_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1505215085_)))
                                              (_hd1505115089_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1505215085_))))
                                          (if (gx#stx-null? _tl1505015092_)
                                              (___match2574225743_
                                               _e1500215218_
                                               _hd1500115222_
                                               _tl1500015225_
                                               _e1500515228_
                                               _hd1500415232_
                                               _tl1500315235_
                                               _e1505215085_
                                               _hd1505115089_
                                               _tl1505015092_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1499415058_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1499415058_))))))
                          (let () (declare (not safe)) (_g1499415058_)))))
                  (let () (declare (not safe)) (_g1499415058_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#def*|
      (lambda (_$stx15329_)
        (let* ((_g1533315357_
                (lambda (_g1533415353_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1533415353_)))
               (_g1533215442_
                (lambda (_g1533415361_)
                  (if (gx#stx-pair? _g1533415361_)
                      (let ((_e1533915364_ (gx#syntax-e _g1533415361_)))
                        (let ((_hd1533815368_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1533915364_)))
                              (_tl1533715371_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1533915364_))))
                          (if (gx#stx-pair? _tl1533715371_)
                              (let ((_e1534215374_
                                     (gx#syntax-e _tl1533715371_)))
                                (let ((_hd1534115378_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1534215374_)))
                                      (_tl1534015381_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1534215374_))))
                                  (if (gx#stx-pair/null? _tl1534015381_)
                                      (let ((_g27451_
                                             (gx#syntax-split-splice
                                              _tl1534015381_
                                              '0)))
                                        (begin
                                          (let ((_g27452_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g27451_)
                                                       (##vector-length
                                                        _g27451_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g27452_ 2)))
                                                (error "Context expects 2 values"
                                                       _g27452_)))
                                          (let ((_target1534315384_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g27451_ 0)))
                                                (_tl1534515387_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g27451_ 1))))
                                            (if (gx#stx-null? _tl1534515387_)
                                                (letrec ((_loop1534615390_
                                                          (lambda (_hd1534415394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clauses1535015397_)
                    (if (gx#stx-pair? _hd1534415394_)
                        (let ((_e1534715400_ (gx#syntax-e _hd1534415394_)))
                          (let ((_lp-hd1534815404_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1534715400_)))
                                (_lp-tl1534915407_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1534715400_))))
                            (_loop1534615390_
                             _lp-tl1534915407_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1534815404_ _clauses1535015397_)))))
                        (let ((_clauses1535115410_
                               (reverse _clauses1535015397_)))
                          ((lambda (_L15414_ _L15416_)
                             (if (gx#identifier? _L15416_)
                                 (let ((__tmp27460
                                        (gx#datum->syntax '#f 'define-values))
                                       (__tmp27453
                                        (let ((__tmp27459
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L15416_ '())))
                                              (__tmp27454
                                               (let ((__tmp27455
                                                      (let ((__tmp27458
                                                             (gx#datum->syntax
                                                              '#f
                                                              'case-lambda))
                                                            (__tmp27456
                                                             (let ((__tmp27457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g1543315436_ _g1543415439_)
                              (let ()
                                (declare (not safe))
                                (cons _g1543315436_ _g1543415439_)))))
                       (declare (not safe))
                       (foldr1 __tmp27457 '() _L15414_))))
                (declare (not safe))
                (cons __tmp27458 __tmp27456))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp27455 '()))))
                                          (declare (not safe))
                                          (cons __tmp27459 __tmp27454))))
                                   (declare (not safe))
                                   (cons __tmp27460 __tmp27453))
                                 (_g1533315357_ _g1533415361_)))
                           _clauses1535115410_
                           _hd1534115378_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1534615390_
                                                   _target1534315384_
                                                   '()))
                                                (_g1533315357_
                                                 _g1533415361_)))))
                                      (_g1533315357_ _g1533415361_))))
                              (_g1533315357_ _g1533415361_))))
                      (_g1533315357_ _g1533415361_)))))
          (_g1533215442_ _$stx15329_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#defvalues|
      (lambda (_$stx15447_)
        (let* ((_g1545115469_
                (lambda (_g1545215465_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1545215465_)))
               (_g1545015524_
                (lambda (_g1545215473_)
                  (if (gx#stx-pair? _g1545215473_)
                      (let ((_e1545715476_ (gx#syntax-e _g1545215473_)))
                        (let ((_hd1545615480_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1545715476_)))
                              (_tl1545515483_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1545715476_))))
                          (if (gx#stx-pair? _tl1545515483_)
                              (let ((_e1546015486_
                                     (gx#syntax-e _tl1545515483_)))
                                (let ((_hd1545915490_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1546015486_)))
                                      (_tl1545815493_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1546015486_))))
                                  (if (gx#stx-pair? _tl1545815493_)
                                      (let ((_e1546315496_
                                             (gx#syntax-e _tl1545815493_)))
                                        (let ((_hd1546215500_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1546315496_)))
                                              (_tl1546115503_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1546315496_))))
                                          (if (gx#stx-null? _tl1546115503_)
                                              ((lambda (_L15506_ _L15508_)
                                                 (if (gx#identifier-list?
                                                      _L15508_)
                                                     (let ((__tmp27463
                                                            (gx#datum->syntax
                                                             '#f
                                                             'define-values))
                                                           (__tmp27461
                                                            (let ((__tmp27462
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L15506_ '()))))
                      (declare (not safe))
                      (cons _L15508_ __tmp27462))))
               (declare (not safe))
               (cons __tmp27463 __tmp27461))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1545115469_
                                                      _g1545215473_)))
                                               _hd1546215500_
                                               _hd1545915490_)
                                              (_g1545115469_ _g1545215473_))))
                                      (_g1545115469_ _g1545215473_))))
                              (_g1545115469_ _g1545215473_))))
                      (_g1545115469_ _g1545215473_)))))
          (_g1545015524_ _$stx15447_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#case|
      (lambda (_$stx15528_)
        (let* ((_g1553215556_
                (lambda (_g1553315552_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1553315552_)))
               (_g1553115641_
                (lambda (_g1553315560_)
                  (if (gx#stx-pair? _g1553315560_)
                      (let ((_e1553815563_ (gx#syntax-e _g1553315560_)))
                        (let ((_hd1553715567_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1553815563_)))
                              (_tl1553615570_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1553815563_))))
                          (if (gx#stx-pair? _tl1553615570_)
                              (let ((_e1554115573_
                                     (gx#syntax-e _tl1553615570_)))
                                (let ((_hd1554015577_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1554115573_)))
                                      (_tl1553915580_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1554115573_))))
                                  (if (gx#stx-pair/null? _tl1553915580_)
                                      (let ((_g27464_
                                             (gx#syntax-split-splice
                                              _tl1553915580_
                                              '0)))
                                        (begin
                                          (let ((_g27465_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g27464_)
                                                       (##vector-length
                                                        _g27464_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g27465_ 2)))
                                                (error "Context expects 2 values"
                                                       _g27465_)))
                                          (let ((_target1554215583_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g27464_ 0)))
                                                (_tl1554415586_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g27464_ 1))))
                                            (if (gx#stx-null? _tl1554415586_)
                                                (letrec ((_loop1554515589_
                                                          (lambda (_hd1554315593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause1554915596_)
                    (if (gx#stx-pair? _hd1554315593_)
                        (let ((_e1554615599_ (gx#syntax-e _hd1554315593_)))
                          (let ((_lp-hd1554715603_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1554615599_)))
                                (_lp-tl1554815606_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1554615599_))))
                            (_loop1554515589_
                             _lp-tl1554815606_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1554715603_ _clause1554915596_)))))
                        (let ((_clause1555015609_
                               (reverse _clause1554915596_)))
                          ((lambda (_L15613_ _L15615_)
                             (let ((__tmp27477 (gx#datum->syntax '#f 'let))
                                   (__tmp27466
                                    (let ((__tmp27474
                                           (let ((__tmp27476
                                                  (gx#datum->syntax '#f '$e))
                                                 (__tmp27475
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L15615_ '()))))
                                             (declare (not safe))
                                             (cons __tmp27476 __tmp27475)))
                                          (__tmp27467
                                           (let ((__tmp27468
                                                  (let ((__tmp27473
                                                         (gx#datum->syntax
                                                          '#f
                                                          '~case))
                                                        (__tmp27469
                                                         (let ((__tmp27472
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e))
                       (__tmp27470
                        (let ((__tmp27471
                               (lambda (_g1563215635_ _g1563315638_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1563215635_ _g1563315638_)))))
                          (declare (not safe))
                          (foldr1 __tmp27471 '() _L15613_))))
                   (declare (not safe))
                   (cons __tmp27472 __tmp27470))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp27473
                                                          __tmp27469))))
                                             (declare (not safe))
                                             (cons __tmp27468 '()))))
                                      (declare (not safe))
                                      (cons __tmp27474 __tmp27467))))
                               (declare (not safe))
                               (cons __tmp27477 __tmp27466)))
                           _clause1555015609_
                           _hd1554015577_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1554515589_
                                                   _target1554215583_
                                                   '()))
                                                (_g1553215556_
                                                 _g1553315560_)))))
                                      (_g1553215556_ _g1553315560_))))
                              (_g1553215556_ _g1553315560_))))
                      (_g1553215556_ _g1553315560_)))))
          (_g1553115641_ _$stx15528_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case|
      (lambda (_stx15646_)
        (letrec ((_parse-clauses15649_
                  (lambda (_e18112_ _clauses18114_)
                    (let _lp18116_ ((_rest18119_ _clauses18114_)
                                    (_datums18121_ '())
                                    (_dispatch18122_ '())
                                    (_default18123_ '#f))
                      (let* ((___stx2584125842_ _rest18119_)
                             (_g1812618138_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2584125842_))))
                        (let ((___kont2584425845_
                               (lambda (_L18170_ _L18172_)
                                 (let* ((___stx2574525746_ _L18172_)
                                        (_g1819018263_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2574525746_))))
                                   (let ((___kont2574825749_
                                          (lambda (_L18628_)
                                            (if (gx#stx-null? _L18170_)
                                                (let* ((_g1864318651_
                                                        (lambda (_g1864418647_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1864418647_)))
                                                       (_g1864218670_
                                                        (lambda (_g1864418655_)
                                                          ((lambda (_L18658_)
                                                             (let ()
                                                               (_lp18116_
                                                                '()
                                                                _datums18121_
                                                                _dispatch18122_
                                                                (let ((__tmp27478
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L18658_ '()))))
                          (declare (not safe))
                          (cons _L18628_ __tmp27478)))))
                   _g1864418655_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1864218670_ _e18112_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _stx15646_
                                                 _L18172_))))
                                         (___kont2575025751_
                                          (lambda (_L18568_)
                                            (if (gx#stx-null? _L18170_)
                                                (_lp18116_
                                                 '()
                                                 _datums18121_
                                                 _dispatch18122_
                                                 (let ((__tmp27481
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin))
                                                       (__tmp27479
                                                        (let ((__tmp27480
                                                               (lambda (_g1858218585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1858318588_)
                         (let ()
                           (declare (not safe))
                           (cons _g1858218585_ _g1858318588_)))))
                  (declare (not safe))
                  (foldr1 __tmp27480 '() _L18568_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp27481
                                                         __tmp27479)))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _stx15646_
                                                 _L18172_))))
                                         (___kont2575425755_
                                          (lambda (_L18453_ _L18455_)
                                            (if (let ((__tmp27486
                                                       (let ((__tmp27487
                                                              (lambda (_g1847318476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1847418479_)
                        (let ()
                          (declare (not safe))
                          (cons _g1847318476_ _g1847418479_)))))
                 (declare (not safe))
                 (foldr1 __tmp27487 '() _L18455_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (null? __tmp27486))
                                                (_lp18116_
                                                 _L18170_
                                                 _datums18121_
                                                 _dispatch18122_
                                                 _default18123_)
                                                (let* ((_g1848218490_
                                                        (lambda (_g1848318486_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1848318486_)))
                                                       (_g1848118517_
                                                        (lambda (_g1848318494_)
                                                          ((lambda (_L18497_)
                                                             (let ()
                                                               (_lp18116_
                                                                _L18170_
                                                                (let ((__tmp27482
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (map gx#stx-e
                                    (let ((__tmp27483
                                           (lambda (_g1850818511_
                                                    _g1850918514_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g1850818511_
                                                     _g1850918514_)))))
                                      (declare (not safe))
                                      (foldr1 __tmp27483 '() _L18455_)))))
                          (declare (not safe))
                          (cons __tmp27482 _datums18121_))
                        (let ((__tmp27484
                               (let ((__tmp27485
                                      (let ()
                                        (declare (not safe))
                                        (cons _L18497_ '()))))
                                 (declare (not safe))
                                 (cons _L18453_ __tmp27485))))
                          (declare (not safe))
                          (cons __tmp27484 _dispatch18122_))
                        _default18123_)))
                   _g1848318494_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1848118517_ _e18112_)))))
                                         (___kont2575825759_
                                          (lambda (_L18340_ _L18342_)
                                            (if (let ((__tmp27494
                                                       (let ((__tmp27495
                                                              (lambda (_g1836118364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1836218367_)
                        (let ()
                          (declare (not safe))
                          (cons _g1836118364_ _g1836218367_)))))
                 (declare (not safe))
                 (foldr1 __tmp27495 '() _L18342_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (null? __tmp27494))
                                                (_lp18116_
                                                 _L18170_
                                                 _datums18121_
                                                 _dispatch18122_
                                                 _default18123_)
                                                (_lp18116_
                                                 _L18170_
                                                 (let ((__tmp27488
                                                        (map gx#stx-e
                                                             (let ((__tmp27489
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g1836918372_ _g1837018375_)
                              (let ()
                                (declare (not safe))
                                (cons _g1836918372_ _g1837018375_)))))
                       (declare (not safe))
                       (foldr1 __tmp27489 '() _L18342_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp27488
                                                         _datums18121_))
                                                 (let ((__tmp27490
                                                        (let ((__tmp27493
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp27491
                                                               (let ((__tmp27492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1837718380_ _g1837818383_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g1837718380_ _g1837818383_)))))
                         (declare (not safe))
                         (foldr1 __tmp27492 '() _L18340_))))
                  (declare (not safe))
                  (cons __tmp27493 __tmp27491))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp27490
                                                         _dispatch18122_))
                                                 _default18123_)))))
                                     (let* ((___match2583825839_
                                             (lambda (_e1823918270_
                                                      _hd1823818274_
                                                      _tl1823718277_
                                                      ___splice2576025761_
                                                      _target1824018280_
                                                      _tl1824218283_)
                                               (letrec ((_loop1824318286_
                                                         (lambda (_hd1824118290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1824718293_)
                   (if (gx#stx-pair? _hd1824118290_)
                       (let ((_e1824418296_ (gx#syntax-e _hd1824118290_)))
                         (let ((_lp-tl1824618303_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1824418296_)))
                               (_lp-hd1824518300_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1824418296_))))
                           (_loop1824318286_
                            _lp-tl1824618303_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1824518300_ _datum1824718293_)))))
                       (let ((_datum1824818306_ (reverse _datum1824718293_)))
                         (if (gx#stx-pair/null? _tl1823718277_)
                             (let ((___splice2576225763_
                                    (gx#syntax-split-splice
                                     _tl1823718277_
                                     '0)))
                               (let ((_tl1825118313_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         ___splice2576225763_
                                         '1)))
                                     (_target1824918310_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         ___splice2576225763_
                                         '0))))
                                 (if (gx#stx-null? _tl1825118313_)
                                     (letrec ((_loop1825218316_
                                               (lambda (_hd1825018320_
                                                        _body1825618323_)
                                                 (if (gx#stx-pair?
                                                      _hd1825018320_)
                                                     (let ((_e1825318326_
                                                            (gx#syntax-e
                                                             _hd1825018320_)))
                                                       (let ((_lp-tl1825518333_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e1825318326_)))
                     (_lp-hd1825418330_
                      (let () (declare (not safe)) (##car _e1825318326_))))
                 (_loop1825218316_
                  _lp-tl1825518333_
                  (let ()
                    (declare (not safe))
                    (cons _lp-hd1825418330_ _body1825618323_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_body1825718336_
                                                            (reverse _body1825618323_)))
                                                       (___kont2575825759_
                                                        _body1825718336_
                                                        _datum1824818306_))))))
                                       (_loop1825218316_
                                        _target1824918310_
                                        '()))
                                     (let ()
                                       (declare (not safe))
                                       (_g1819018263_)))))
                             (let ()
                               (declare (not safe))
                               (_g1819018263_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1824318286_
                                                  _target1824018280_
                                                  '()))))
                                            (___match2582425825_
                                             (lambda (_e1821918393_
                                                      _hd1821818397_
                                                      _tl1821718400_
                                                      ___splice2575625757_
                                                      _target1822018403_
                                                      _tl1822218406_)
                                               (letrec ((_loop1822318409_
                                                         (lambda (_hd1822118413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1822718416_)
                   (if (gx#stx-pair? _hd1822118413_)
                       (let ((_e1822418419_ (gx#syntax-e _hd1822118413_)))
                         (let ((_lp-tl1822618426_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1822418419_)))
                               (_lp-hd1822518423_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1822418419_))))
                           (_loop1822318409_
                            _lp-tl1822618426_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1822518423_ _datum1822718416_)))))
                       (let ((_datum1822818429_ (reverse _datum1822718416_)))
                         (if (gx#stx-pair? _tl1821718400_)
                             (let ((_e1823118433_
                                    (gx#syntax-e _tl1821718400_)))
                               (let ((_tl1822918440_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1823118433_)))
                                     (_hd1823018437_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1823118433_))))
                                 (if (gx#identifier? _hd1823018437_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core/sugar~Sugar-2[1]#_g27496_|
                                          _hd1823018437_)
                                         (if (gx#stx-pair? _tl1822918440_)
                                             (let ((_e1823418443_
                                                    (gx#syntax-e
                                                     _tl1822918440_)))
                                               (let ((_tl1823218450_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1823418443_)))
                                                     (_hd1823318447_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1823418443_))))
                                                 (if (gx#stx-null?
                                                      _tl1823218450_)
                                                     (___kont2575425755_
                                                      _hd1823318447_
                                                      _datum1822818429_)
                                                     (___match2583825839_
                                                      _e1821918393_
                                                      _hd1821818397_
                                                      _tl1821718400_
                                                      ___splice2575625757_
                                                      _target1822018403_
                                                      _tl1822218406_))))
                                             (___match2583825839_
                                              _e1821918393_
                                              _hd1821818397_
                                              _tl1821718400_
                                              ___splice2575625757_
                                              _target1822018403_
                                              _tl1822218406_))
                                         (___match2583825839_
                                          _e1821918393_
                                          _hd1821818397_
                                          _tl1821718400_
                                          ___splice2575625757_
                                          _target1822018403_
                                          _tl1822218406_))
                                     (___match2583825839_
                                      _e1821918393_
                                      _hd1821818397_
                                      _tl1821718400_
                                      ___splice2575625757_
                                      _target1822018403_
                                      _tl1822218406_))))
                             (___match2583825839_
                              _e1821918393_
                              _hd1821818397_
                              _tl1821718400_
                              ___splice2575625757_
                              _target1822018403_
                              _tl1822218406_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1822318409_
                                                  _target1822018403_
                                                  '()))))
                                            (___match2581025811_
                                             (lambda (_e1820518528_
                                                      _hd1820418532_
                                                      _tl1820318535_
                                                      ___splice2575225753_
                                                      _target1820618538_
                                                      _tl1820818541_)
                                               (letrec ((_loop1820918544_
                                                         (lambda (_hd1820718548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body1821318551_)
                   (if (gx#stx-pair? _hd1820718548_)
                       (let ((_e1821018554_ (gx#syntax-e _hd1820718548_)))
                         (let ((_lp-tl1821218561_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1821018554_)))
                               (_lp-hd1821118558_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1821018554_))))
                           (_loop1820918544_
                            _lp-tl1821218561_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1821118558_ _body1821318551_)))))
                       (let ((_body1821418564_ (reverse _body1821318551_)))
                         (___kont2575025751_ _body1821418564_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1820918544_
                                                  _target1820618538_
                                                  '())))))
                                       (if (gx#stx-pair? ___stx2574525746_)
                                           (let ((_e1819518598_
                                                  (gx#syntax-e
                                                   ___stx2574525746_)))
                                             (let ((_tl1819318605_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e1819518598_)))
                                                   (_hd1819418602_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e1819518598_))))
                                               (if (gx#identifier?
                                                    _hd1819418602_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/sugar~Sugar-2[1]#_g27498_|
                                                        _hd1819418602_)
                                                       (if (gx#stx-pair?
                                                            _tl1819318605_)
                                                           (let ((_e1819818608_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1819318605_)))
                     (let ((_tl1819618615_
                            (let ()
                              (declare (not safe))
                              (##cdr _e1819818608_)))
                           (_hd1819718612_
                            (let ()
                              (declare (not safe))
                              (##car _e1819818608_))))
                       (if (gx#identifier? _hd1819718612_)
                           (if (gx#free-identifier=?
                                |gerbil/core/sugar~Sugar-2[1]#_g27497_|
                                _hd1819718612_)
                               (if (gx#stx-pair? _tl1819618615_)
                                   (let ((_e1820118618_
                                          (gx#syntax-e _tl1819618615_)))
                                     (let ((_tl1819918625_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e1820118618_)))
                                           (_hd1820018622_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e1820118618_))))
                                       (if (gx#stx-null? _tl1819918625_)
                                           (___kont2574825749_ _hd1820018622_)
                                           (if (gx#stx-pair/null?
                                                _tl1819318605_)
                                               (let ((___splice2575225753_
                                                      (gx#syntax-split-splice
                                                       _tl1819318605_
                                                       '0)))
                                                 (let ((_tl1820818541_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice2575225753_
                                                           '1)))
                                                       (_target1820618538_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice2575225753_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _tl1820818541_)
                                                       (___match2581025811_
                                                        _e1819518598_
                                                        _hd1819418602_
                                                        _tl1819318605_
                                                        ___splice2575225753_
                                                        _target1820618538_
                                                        _tl1820818541_)
                                                       (if (gx#stx-pair/null?
                                                            _hd1819418602_)
                                                           (let ((___splice2575625757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd1819418602_ '0)))
                     (let ((_tl1822218406_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice2575625757_ '1)))
                           (_target1822018403_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice2575625757_ '0))))
                       (if (gx#stx-null? _tl1822218406_)
                           (___match2582425825_
                            _e1819518598_
                            _hd1819418602_
                            _tl1819318605_
                            ___splice2575625757_
                            _target1822018403_
                            _tl1822218406_)
                           (let () (declare (not safe)) (_g1819018263_)))))
                   (let () (declare (not safe)) (_g1819018263_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _hd1819418602_)
                                                   (let ((___splice2575625757_
                                                          (gx#syntax-split-splice
                                                           _hd1819418602_
                                                           '0)))
                                                     (let ((_tl1822218406_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice2575625757_
                                                               '1)))
                                                           (_target1822018403_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice2575625757_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _tl1822218406_)
                                                           (___match2582425825_
                                                            _e1819518598_
                                                            _hd1819418602_
                                                            _tl1819318605_
                                                            ___splice2575625757_
                                                            _target1822018403_
                                                            _tl1822218406_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_g1819018263_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1819018263_)))))))
                                   (if (gx#stx-pair/null? _tl1819318605_)
                                       (let ((___splice2575225753_
                                              (gx#syntax-split-splice
                                               _tl1819318605_
                                               '0)))
                                         (let ((_tl1820818541_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice2575225753_
                                                   '1)))
                                               (_target1820618538_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice2575225753_
                                                   '0))))
                                           (if (gx#stx-null? _tl1820818541_)
                                               (___match2581025811_
                                                _e1819518598_
                                                _hd1819418602_
                                                _tl1819318605_
                                                ___splice2575225753_
                                                _target1820618538_
                                                _tl1820818541_)
                                               (if (gx#stx-pair/null?
                                                    _hd1819418602_)
                                                   (let ((___splice2575625757_
                                                          (gx#syntax-split-splice
                                                           _hd1819418602_
                                                           '0)))
                                                     (let ((_tl1822218406_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice2575625757_
                                                               '1)))
                                                           (_target1822018403_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice2575625757_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _tl1822218406_)
                                                           (___match2582425825_
                                                            _e1819518598_
                                                            _hd1819418602_
                                                            _tl1819318605_
                                                            ___splice2575625757_
                                                            _target1822018403_
                                                            _tl1822218406_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_g1819018263_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1819018263_))))))
                                       (if (gx#stx-pair/null? _hd1819418602_)
                                           (let ((___splice2575625757_
                                                  (gx#syntax-split-splice
                                                   _hd1819418602_
                                                   '0)))
                                             (let ((_tl1822218406_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice2575625757_
                                                       '1)))
                                                   (_target1822018403_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice2575625757_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _tl1822218406_)
                                                   (___match2582425825_
                                                    _e1819518598_
                                                    _hd1819418602_
                                                    _tl1819318605_
                                                    ___splice2575625757_
                                                    _target1822018403_
                                                    _tl1822218406_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1819018263_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g1819018263_)))))
                               (if (gx#stx-pair/null? _tl1819318605_)
                                   (let ((___splice2575225753_
                                          (gx#syntax-split-splice
                                           _tl1819318605_
                                           '0)))
                                     (let ((_tl1820818541_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2575225753_
                                               '1)))
                                           (_target1820618538_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2575225753_
                                               '0))))
                                       (if (gx#stx-null? _tl1820818541_)
                                           (___match2581025811_
                                            _e1819518598_
                                            _hd1819418602_
                                            _tl1819318605_
                                            ___splice2575225753_
                                            _target1820618538_
                                            _tl1820818541_)
                                           (if (gx#stx-pair/null?
                                                _hd1819418602_)
                                               (let ((___splice2575625757_
                                                      (gx#syntax-split-splice
                                                       _hd1819418602_
                                                       '0)))
                                                 (let ((_tl1822218406_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice2575625757_
                                                           '1)))
                                                       (_target1822018403_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice2575625757_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _tl1822218406_)
                                                       (___match2582425825_
                                                        _e1819518598_
                                                        _hd1819418602_
                                                        _tl1819318605_
                                                        ___splice2575625757_
                                                        _target1822018403_
                                                        _tl1822218406_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_g1819018263_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1819018263_))))))
                                   (if (gx#stx-pair/null? _hd1819418602_)
                                       (let ((___splice2575625757_
                                              (gx#syntax-split-splice
                                               _hd1819418602_
                                               '0)))
                                         (let ((_tl1822218406_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice2575625757_
                                                   '1)))
                                               (_target1822018403_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice2575625757_
                                                   '0))))
                                           (if (gx#stx-null? _tl1822218406_)
                                               (___match2582425825_
                                                _e1819518598_
                                                _hd1819418602_
                                                _tl1819318605_
                                                ___splice2575625757_
                                                _target1822018403_
                                                _tl1822218406_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1819018263_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g1819018263_)))))
                           (if (gx#stx-pair/null? _tl1819318605_)
                               (let ((___splice2575225753_
                                      (gx#syntax-split-splice
                                       _tl1819318605_
                                       '0)))
                                 (let ((_tl1820818541_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice2575225753_
                                           '1)))
                                       (_target1820618538_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice2575225753_
                                           '0))))
                                   (if (gx#stx-null? _tl1820818541_)
                                       (___match2581025811_
                                        _e1819518598_
                                        _hd1819418602_
                                        _tl1819318605_
                                        ___splice2575225753_
                                        _target1820618538_
                                        _tl1820818541_)
                                       (if (gx#stx-pair/null? _hd1819418602_)
                                           (let ((___splice2575625757_
                                                  (gx#syntax-split-splice
                                                   _hd1819418602_
                                                   '0)))
                                             (let ((_tl1822218406_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice2575625757_
                                                       '1)))
                                                   (_target1822018403_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice2575625757_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _tl1822218406_)
                                                   (___match2582425825_
                                                    _e1819518598_
                                                    _hd1819418602_
                                                    _tl1819318605_
                                                    ___splice2575625757_
                                                    _target1822018403_
                                                    _tl1822218406_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1819018263_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g1819018263_))))))
                               (if (gx#stx-pair/null? _hd1819418602_)
                                   (let ((___splice2575625757_
                                          (gx#syntax-split-splice
                                           _hd1819418602_
                                           '0)))
                                     (let ((_tl1822218406_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2575625757_
                                               '1)))
                                           (_target1822018403_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2575625757_
                                               '0))))
                                       (if (gx#stx-null? _tl1822218406_)
                                           (___match2582425825_
                                            _e1819518598_
                                            _hd1819418602_
                                            _tl1819318605_
                                            ___splice2575625757_
                                            _target1822018403_
                                            _tl1822218406_)
                                           (let ()
                                             (declare (not safe))
                                             (_g1819018263_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g1819018263_)))))))
                   (if (gx#stx-pair/null? _tl1819318605_)
                       (let ((___splice2575225753_
                              (gx#syntax-split-splice _tl1819318605_ '0)))
                         (let ((_tl1820818541_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice2575225753_ '1)))
                               (_target1820618538_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice2575225753_ '0))))
                           (if (gx#stx-null? _tl1820818541_)
                               (___match2581025811_
                                _e1819518598_
                                _hd1819418602_
                                _tl1819318605_
                                ___splice2575225753_
                                _target1820618538_
                                _tl1820818541_)
                               (if (gx#stx-pair/null? _hd1819418602_)
                                   (let ((___splice2575625757_
                                          (gx#syntax-split-splice
                                           _hd1819418602_
                                           '0)))
                                     (let ((_tl1822218406_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2575625757_
                                               '1)))
                                           (_target1822018403_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2575625757_
                                               '0))))
                                       (if (gx#stx-null? _tl1822218406_)
                                           (___match2582425825_
                                            _e1819518598_
                                            _hd1819418602_
                                            _tl1819318605_
                                            ___splice2575625757_
                                            _target1822018403_
                                            _tl1822218406_)
                                           (let ()
                                             (declare (not safe))
                                             (_g1819018263_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g1819018263_))))))
                       (if (gx#stx-pair/null? _hd1819418602_)
                           (let ((___splice2575625757_
                                  (gx#syntax-split-splice _hd1819418602_ '0)))
                             (let ((_tl1822218406_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref ___splice2575625757_ '1)))
                                   (_target1822018403_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref ___splice2575625757_ '0))))
                               (if (gx#stx-null? _tl1822218406_)
                                   (___match2582425825_
                                    _e1819518598_
                                    _hd1819418602_
                                    _tl1819318605_
                                    ___splice2575625757_
                                    _target1822018403_
                                    _tl1822218406_)
                                   (let ()
                                     (declare (not safe))
                                     (_g1819018263_)))))
                           (let () (declare (not safe)) (_g1819018263_)))))
               (if (gx#stx-pair/null? _hd1819418602_)
                   (let ((___splice2575625757_
                          (gx#syntax-split-splice _hd1819418602_ '0)))
                     (let ((_tl1822218406_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice2575625757_ '1)))
                           (_target1822018403_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice2575625757_ '0))))
                       (if (gx#stx-null? _tl1822218406_)
                           (___match2582425825_
                            _e1819518598_
                            _hd1819418602_
                            _tl1819318605_
                            ___splice2575625757_
                            _target1822018403_
                            _tl1822218406_)
                           (let () (declare (not safe)) (_g1819018263_)))))
                   (let () (declare (not safe)) (_g1819018263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _hd1819418602_)
                                                       (let ((___splice2575625757_
                                                              (gx#syntax-split-splice
                                                               _hd1819418602_
                                                               '0)))
                                                         (let ((_tl1822218406_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref ___splice2575625757_ '1)))
                       (_target1822018403_
                        (let ()
                          (declare (not safe))
                          (##vector-ref ___splice2575625757_ '0))))
                   (if (gx#stx-null? _tl1822218406_)
                       (___match2582425825_
                        _e1819518598_
                        _hd1819418602_
                        _tl1819318605_
                        ___splice2575625757_
                        _target1822018403_
                        _tl1822218406_)
                       (let () (declare (not safe)) (_g1819018263_)))))
               (let () (declare (not safe)) (_g1819018263_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g1819018263_))))))))
                              (___kont2584625847_
                               (lambda ()
                                 (_check-duplicate-datums15651_ _datums18121_)
                                 (values (reverse _datums18121_)
                                         (reverse _dispatch18122_)
                                         (let ((_$e18149_ _default18123_))
                                           (if _$e18149_
                                               _$e18149_
                                               '#!void))))))
                          (let ((_g1812518153_
                                 (lambda ()
                                   (if (gx#stx-null? ___stx2584125842_)
                                       (___kont2584625847_)
                                       (let ()
                                         (declare (not safe))
                                         (_g1812618138_))))))
                            (if (gx#stx-pair? ___stx2584125842_)
                                (let ((_e1813218160_
                                       (gx#syntax-e ___stx2584125842_)))
                                  (let ((_tl1813018167_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1813218160_)))
                                        (_hd1813118164_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1813218160_))))
                                    (___kont2584425845_
                                     _tl1813018167_
                                     _hd1813118164_)))
                                (let ()
                                  (declare (not safe))
                                  (_g1812518153_)))))))))
                 (_check-duplicate-datums15651_
                  (lambda (_datums18100_)
                    (let ((_ht18103_
                           (let () (declare (not safe)) (make-hash-table))))
                      (for-each
                       (lambda (_lst18106_)
                         (for-each
                          (lambda (_datum18109_)
                            (if (let ()
                                  (declare (not safe))
                                  (hash-get _ht18103_ _datum18109_))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _stx15646_
                                 _datum18109_)
                                (let ()
                                  (declare (not safe))
                                  (hash-put! _ht18103_ _datum18109_ '#t))))
                          _lst18106_))
                       _datums18100_))))
                 (_count-datums15652_
                  (lambda (_datums18093_)
                    (let ((__tmp27499
                           (lambda (_lst18096_ _r18098_)
                             (+ (length _lst18096_) _r18098_))))
                      (declare (not safe))
                      (foldl1 __tmp27499 '0 _datums18093_))))
                 (_symbolic-datums?15653_
                  (lambda (_datums18087_)
                    (let ((__tmp27500
                           (lambda (_lst18090_)
                             (let ()
                               (declare (not safe))
                               (andmap1 symbol? _lst18090_)))))
                      (declare (not safe))
                      (andmap1 __tmp27500 _datums18087_))))
                 (_char-datums?15654_
                  (lambda (_datums18081_)
                    (let ((__tmp27501
                           (lambda (_lst18084_)
                             (let ()
                               (declare (not safe))
                               (andmap1 char? _lst18084_)))))
                      (declare (not safe))
                      (andmap1 __tmp27501 _datums18081_))))
                 (_fixnum-datums?15655_
                  (lambda (_datums18075_)
                    (let ((__tmp27502
                           (lambda (_lst18078_)
                             (let ()
                               (declare (not safe))
                               (andmap1 fixnum? _lst18078_)))))
                      (declare (not safe))
                      (andmap1 __tmp27502 _datums18075_))))
                 (_eq-datums?15656_
                  (lambda (_datums18058_)
                    (let ((__tmp27503
                           (lambda (_lst18061_)
                             (let ((__tmp27504
                                    (lambda (_x18064_)
                                      (let ((_$e18067_
                                             (let ()
                                               (declare (not safe))
                                               (symbol? _x18064_))))
                                        (if _$e18067_
                                            _$e18067_
                                            (let ((_$e18071_
                                                   (keyword? _x18064_)))
                                              (if _$e18071_
                                                  _$e18071_
                                                  (let ()
                                                    (declare (not safe))
                                                    (immediate?
                                                     _x18064_)))))))))
                               (declare (not safe))
                               (andmap1 __tmp27504 _lst18061_)))))
                      (declare (not safe))
                      (andmap1 __tmp27503 _datums18058_))))
                 (_generate-simple-case15657_
                  (lambda (_e17822_
                           _datums17824_
                           _dispatch17825_
                           _default17826_)
                    (let* ((_g1782817836_
                            (lambda (_g1782917832_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g1782917832_)))
                           (_g1782718054_
                            (lambda (_g1782917840_)
                              ((lambda (_L17843_)
                                 (let ()
                                   (let _recur17855_ ((_datums17858_
                                                       _datums17824_)
                                                      (_dispatch17860_
                                                       _dispatch17825_))
                                     (let* ((___stx2585925860_ _datums17858_)
                                            (_g1786317884_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx2585925860_))))
                                       (let ((___kont2586225863_
                                              (lambda (_L17942_ _L17944_)
                                                (let* ((_g1796417976_
                                                        (lambda (_g1796517972_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1796517972_)))
                                                       (_g1796318046_
                                                        (lambda (_g1796517980_)
                                                          (if (gx#stx-pair?
                                                               _g1796517980_)
                                                              (let ((_e1797017983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g1796517980_)))
                        (let ((_hd1796917987_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1797017983_)))
                              (_tl1796817990_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1797017983_))))
                          ((lambda (_L17993_ _L17995_)
                             (let* ((_g1800718015_
                                     (lambda (_g1800818011_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g1800818011_)))
                                    (_g1800618042_
                                     (lambda (_g1800818019_)
                                       ((lambda (_L18022_)
                                          (let ()
                                            (let ((__tmp27516
                                                   (gx#datum->syntax '#f 'if))
                                                  (__tmp27505
                                                   (let ((__tmp27508
                                                          (let ((__tmp27515
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'or))
                        (__tmp27509
                         (let ((__tmp27510
                                (lambda (_g1803318036_ _g1803418039_)
                                  (let ((__tmp27511
                                         (let ((__tmp27514
                                                (gx#datum->syntax
                                                 '#f
                                                 '~case-test))
                                               (__tmp27512
                                                (let ((__tmp27513
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L17843_ '()))))
                                                  (declare (not safe))
                                                  (cons _g1803318036_
                                                        __tmp27513))))
                                           (declare (not safe))
                                           (cons __tmp27514 __tmp27512))))
                                    (declare (not safe))
                                    (cons __tmp27511 _g1803418039_)))))
                           (declare (not safe))
                           (foldr1 __tmp27510 '() _L17944_))))
                    (declare (not safe))
                    (cons __tmp27515 __tmp27509)))
                 (__tmp27506
                  (let ((__tmp27507
                         (let () (declare (not safe)) (cons _L18022_ '()))))
                    (declare (not safe))
                    (cons _L17995_ __tmp27507))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp27508
                                                           __tmp27506))))
                                              (declare (not safe))
                                              (cons __tmp27516 __tmp27505))))
                                        _g1800818019_))))
                               (_g1800618042_
                                (_recur17855_ _L17942_ _L17993_))))
                           _tl1796817990_
                           _hd1796917987_)))
                      (_g1796417976_ _g1796517980_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1796318046_
                                                   _dispatch17860_))))
                                             (___kont2586625867_
                                              (lambda () _default17826_)))
                                         (let ((___match2588225883_
                                                (lambda (_e1786917902_
                                                         _hd1786817906_
                                                         _tl1786717909_
                                                         ___splice2586425865_
                                                         _target1787017912_
                                                         _tl1787217915_)
                                                  (letrec ((_loop1787317918_
                                                            (lambda (_hd1787117922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _datum1787717925_)
                      (if (gx#stx-pair? _hd1787117922_)
                          (let ((_e1787417928_ (gx#syntax-e _hd1787117922_)))
                            (let ((_lp-tl1787617935_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1787417928_)))
                                  (_lp-hd1787517932_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1787417928_))))
                              (_loop1787317918_
                               _lp-tl1787617935_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd1787517932_ _datum1787717925_)))))
                          (let ((_datum1787817938_
                                 (reverse _datum1787717925_)))
                            (___kont2586225863_
                             _tl1786717909_
                             _datum1787817938_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1787317918_
                                                     _target1787017912_
                                                     '())))))
                                           (if (gx#stx-pair? ___stx2585925860_)
                                               (let ((_e1786917902_
                                                      (gx#syntax-e
                                                       ___stx2585925860_)))
                                                 (let ((_tl1786717909_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1786917902_)))
                                                       (_hd1786817906_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1786917902_))))
                                                   (if (gx#stx-pair/null?
                                                        _hd1786817906_)
                                                       (let ((___splice2586425865_
                                                              (gx#syntax-split-splice
                                                               _hd1786817906_
                                                               '0)))
                                                         (let ((_tl1787217915_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref ___splice2586425865_ '1)))
                       (_target1787017912_
                        (let ()
                          (declare (not safe))
                          (##vector-ref ___splice2586425865_ '0))))
                   (if (gx#stx-null? _tl1787217915_)
                       (___match2588225883_
                        _e1786917902_
                        _hd1786817906_
                        _tl1786717909_
                        ___splice2586425865_
                        _target1787017912_
                        _tl1787217915_)
                       (___kont2586625867_))))
               (___kont2586625867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2586625867_))))))))
                               _g1782917840_))))
                      (_g1782718054_ _e17822_))))
                 (_datum-dispatch-index15658_
                  (lambda (_datums17694_)
                    (let _lp17697_ ((_rest17700_ _datums17694_)
                                    (_ix17702_ '0)
                                    (_r17703_ '()))
                      (let* ((___stx2588525886_ _rest17700_)
                             (_g1770617727_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2588525886_))))
                        (let ((___kont2588825889_
                               (lambda (_L17785_ _L17787_)
                                 (_lp17697_
                                  _L17785_
                                  (let ()
                                    (declare (not safe))
                                    (fx+ _ix17702_ '1))
                                  (let ((__tmp27519
                                         (lambda (_x17806_ _r17808_)
                                           (let ((__tmp27520
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _x17806_
                                                          _ix17702_))))
                                             (declare (not safe))
                                             (cons __tmp27520 _r17808_))))
                                        (__tmp27517
                                         (let ((__tmp27518
                                                (lambda (_g1780917812_
                                                         _g1781017815_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g1780917812_
                                                          _g1781017815_)))))
                                           (declare (not safe))
                                           (foldr1 __tmp27518 '() _L17787_))))
                                    (declare (not safe))
                                    (foldl1 __tmp27519 _r17703_ __tmp27517)))))
                              (___kont2589225893_ (lambda () _r17703_)))
                          (let ((___match2590825909_
                                 (lambda (_e1771217745_
                                          _hd1771117749_
                                          _tl1771017752_
                                          ___splice2589025891_
                                          _target1771317755_
                                          _tl1771517758_)
                                   (letrec ((_loop1771617761_
                                             (lambda (_hd1771417765_
                                                      _datum1772017768_)
                                               (if (gx#stx-pair?
                                                    _hd1771417765_)
                                                   (let ((_e1771717771_
                                                          (gx#syntax-e
                                                           _hd1771417765_)))
                                                     (let ((_lp-tl1771917778_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e1771717771_)))
                                                           (_lp-hd1771817775_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e1771717771_))))
                                                       (_loop1771617761_
                                                        _lp-tl1771917778_
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _lp-hd1771817775_
                                                                _datum1772017768_)))))
                                                   (let ((_datum1772117781_
                                                          (reverse _datum1772017768_)))
                                                     (___kont2588825889_
                                                      _tl1771017752_
                                                      _datum1772117781_))))))
                                     (_loop1771617761_
                                      _target1771317755_
                                      '())))))
                            (if (gx#stx-pair? ___stx2588525886_)
                                (let ((_e1771217745_
                                       (gx#syntax-e ___stx2588525886_)))
                                  (let ((_tl1771017752_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1771217745_)))
                                        (_hd1771117749_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1771217745_))))
                                    (if (gx#stx-pair/null? _hd1771117749_)
                                        (let ((___splice2589025891_
                                               (gx#syntax-split-splice
                                                _hd1771117749_
                                                '0)))
                                          (let ((_tl1771517758_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2589025891_
                                                    '1)))
                                                (_target1771317755_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2589025891_
                                                    '0))))
                                            (if (gx#stx-null? _tl1771517758_)
                                                (___match2590825909_
                                                 _e1771217745_
                                                 _hd1771117749_
                                                 _tl1771017752_
                                                 ___splice2589025891_
                                                 _target1771317755_
                                                 _tl1771517758_)
                                                (___kont2589225893_))))
                                        (___kont2589225893_))))
                                (___kont2589225893_))))))))
                 (_duplicate-indexes?15659_
                  (lambda (_xs17675_)
                    (let ((_ht17678_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (let _lp17681_ ((_rest17684_ _xs17675_))
                        (if (let () (declare (not safe)) (pair? _rest17684_))
                            (let* ((_ix17687_ (car _rest17684_))
                                   (_$e17690_
                                    (let ()
                                      (declare (not safe))
                                      (hash-get _ht17678_ _ix17687_))))
                              (if _$e17690_
                                  _$e17690_
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (hash-put! _ht17678_ _ix17687_ '#t))
                                    (_lp17681_ (cdr _rest17684_)))))
                            '#f)))))
                 (_generate-hash-dispatch-table15660_
                  (lambda (_indexes17644_ _hash-e17646_)
                    (let _lp17648_ ((_len17651_
                                     (* '2 (length _indexes17644_))))
                      (let* ((_hs17657_
                              (map (lambda (_x17654_)
                                     (_hash-e17646_ (car _x17654_)))
                                   _indexes17644_))
                             (_xs17663_
                              (map (lambda (_h17660_)
                                     (fxmodulo _h17660_ _len17651_))
                                   _hs17657_)))
                        (if (_duplicate-indexes?15659_ _xs17663_)
                            (if (< _len17651_ '131072)
                                (_lp17648_ (quotient (fx* _len17651_ '3) '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _stx15646_
                                 _indexes17644_))
                            (let ((_tab17668_ (make-vector _len17651_ '#f)))
                              (for-each
                               (lambda (_entry17671_ _x17673_)
                                 (vector-set!
                                  _tab17668_
                                  _x17673_
                                  _entry17671_))
                               _indexes17644_
                               _xs17663_)
                              _tab17668_))))))
                 (_generate-symbolic-dispatch15661_
                  (lambda (_e17247_
                           _datums17249_
                           _dispatch17250_
                           _default17251_)
                    (let* ((_indexes17253_
                            (_datum-dispatch-index15658_ _datums17249_))
                           (_tab17256_
                            (_generate-hash-dispatch-table15660_
                             _indexes17253_
                             symbol-hash)))
                      (if (= (length _dispatch17250_) '1)
                          (let* ((_tab17264_
                                  (vector-map
                                   (lambda (_x17261_)
                                     (if _x17261_ (car _x17261_) '#f))
                                   _tab17256_))
                                 (_g1726717305_
                                  (lambda (_g1726817301_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1726817301_)))
                                 (_g1726617436_
                                  (lambda (_g1726817309_)
                                    (if (gx#stx-pair? _g1726817309_)
                                        (let ((_e1727817312_
                                               (gx#syntax-e _g1726817309_)))
                                          (let ((_hd1727717316_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1727817312_)))
                                                (_tl1727617319_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1727817312_))))
                                            (if (gx#stx-pair? _tl1727617319_)
                                                (let ((_e1728117322_
                                                       (gx#syntax-e
                                                        _tl1727617319_)))
                                                  (let ((_hd1728017326_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1728117322_)))
                                                        (_tl1727917329_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1728117322_))))
                                                    (if (gx#stx-pair?
                                                         _tl1727917329_)
                                                        (let ((_e1728417332_
                                                               (gx#syntax-e
                                                                _tl1727917329_)))
                                                          (let ((_hd1728317336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1728417332_)))
                        (_tl1728217339_
                         (let () (declare (not safe)) (##cdr _e1728417332_))))
                    (if (gx#stx-pair? _tl1728217339_)
                        (let ((_e1728717342_ (gx#syntax-e _tl1728217339_)))
                          (let ((_hd1728617346_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1728717342_)))
                                (_tl1728517349_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1728717342_))))
                            (if (gx#stx-pair? _hd1728617346_)
                                (let ((_e1729017352_
                                       (gx#syntax-e _hd1728617346_)))
                                  (let ((_hd1728917356_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1729017352_)))
                                        (_tl1728817359_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1729017352_))))
                                    (if (gx#stx-null? _tl1728817359_)
                                        (if (gx#stx-pair? _tl1728517349_)
                                            (let ((_e1729317362_
                                                   (gx#syntax-e
                                                    _tl1728517349_)))
                                              (let ((_hd1729217366_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1729317362_)))
                                                    (_tl1729117369_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1729317362_))))
                                                (if (gx#stx-pair?
                                                     _tl1729117369_)
                                                    (let ((_e1729617372_
                                                           (gx#syntax-e
                                                            _tl1729117369_)))
                                                      (let ((_hd1729517376_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1729617372_)))
                    (_tl1729417379_
                     (let () (declare (not safe)) (##cdr _e1729617372_))))
                (if (gx#stx-pair? _tl1729417379_)
                    (let ((_e1729917382_ (gx#syntax-e _tl1729417379_)))
                      (let ((_hd1729817386_
                             (let ()
                               (declare (not safe))
                               (##car _e1729917382_)))
                            (_tl1729717389_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1729917382_))))
                        (if (gx#stx-null? _tl1729717389_)
                            ((lambda (_L17392_
                                      _L17394_
                                      _L17395_
                                      _L17396_
                                      _L17397_
                                      _L17398_
                                      _L17399_)
                               (let ()
                                 (let ((__tmp27679 (gx#datum->syntax '#f 'let))
                                       (__tmp27615
                                        (let ((__tmp27666
                                               (let ((__tmp27673
                                                      (let ((__tmp27674
                                                             (let ((__tmp27675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp27678 (gx#datum->syntax '#f 'lambda))
                                  (__tmp27676
                                   (let ((__tmp27677
                                          (let ()
                                            (declare (not safe))
                                            (cons _L17395_ '()))))
                                     (declare (not safe))
                                     (cons '() __tmp27677))))
                              (declare (not safe))
                              (cons __tmp27678 __tmp27676))))
                       (declare (not safe))
                       (cons __tmp27675 '()))))
                (declare (not safe))
                (cons _L17398_ __tmp27674)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp27667
                                                      (let ((__tmp27668
                                                             (let ((__tmp27669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp27670
                                   (let ((__tmp27672
                                          (gx#datum->syntax '#f 'quote))
                                         (__tmp27671
                                          (let ()
                                            (declare (not safe))
                                            (cons _L17394_ '()))))
                                     (declare (not safe))
                                     (cons __tmp27672 __tmp27671))))
                              (declare (not safe))
                              (cons __tmp27670 '()))))
                       (declare (not safe))
                       (cons _L17397_ __tmp27669))))
                (declare (not safe))
                (cons __tmp27668 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp27673 __tmp27667)))
                                              (__tmp27616
                                               (let ((__tmp27617
                                                      (let ((__tmp27665
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp27618
                                                             (let ((__tmp27662
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp27664 (gx#datum->syntax '#f 'symbol?))
                                  (__tmp27663
                                   (let ()
                                     (declare (not safe))
                                     (cons _L17399_ '()))))
                              (declare (not safe))
                              (cons __tmp27664 __tmp27663)))
                           (__tmp27619
                            (let ((__tmp27622
                                   (let ((__tmp27661
                                          (gx#datum->syntax '#f 'let*))
                                         (__tmp27623
                                          (let ((__tmp27636
                                                 (let ((__tmp27655
                                                        (let ((__tmp27660
                                                               (gx#datum->syntax
                                                                '#f
                                                                'h))
                                                              (__tmp27656
                                                               (let ((__tmp27657
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp27659
                                     (gx#datum->syntax '#f '##symbol-hash))
                                    (__tmp27658
                                     (let ()
                                       (declare (not safe))
                                       (cons _L17399_ '()))))
                                (declare (not safe))
                                (cons __tmp27659 __tmp27658))))
                         (declare (not safe))
                         (cons __tmp27657 '()))))
                  (declare (not safe))
                  (cons __tmp27660 __tmp27656)))
               (__tmp27637
                (let ((__tmp27647
                       (let ((__tmp27654 (gx#datum->syntax '#f 'ix))
                             (__tmp27648
                              (let ((__tmp27649
                                     (let ((__tmp27653
                                            (gx#datum->syntax '#f '##fxmodulo))
                                           (__tmp27650
                                            (let ((__tmp27652
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp27651
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L17392_ '()))))
                                              (declare (not safe))
                                              (cons __tmp27652 __tmp27651))))
                                       (declare (not safe))
                                       (cons __tmp27653 __tmp27650))))
                                (declare (not safe))
                                (cons __tmp27649 '()))))
                         (declare (not safe))
                         (cons __tmp27654 __tmp27648)))
                      (__tmp27638
                       (let ((__tmp27639
                              (let ((__tmp27646 (gx#datum->syntax '#f 'q))
                                    (__tmp27640
                                     (let ((__tmp27641
                                            (let ((__tmp27645
                                                   (gx#datum->syntax
                                                    '#f
                                                    '##vector-ref))
                                                  (__tmp27642
                                                   (let ((__tmp27643
                                                          (let ((__tmp27644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'ix)))
                    (declare (not safe))
                    (cons __tmp27644 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L17397_
                                                           __tmp27643))))
                                              (declare (not safe))
                                              (cons __tmp27645 __tmp27642))))
                                       (declare (not safe))
                                       (cons __tmp27641 '()))))
                                (declare (not safe))
                                (cons __tmp27646 __tmp27640))))
                         (declare (not safe))
                         (cons __tmp27639 '()))))
                  (declare (not safe))
                  (cons __tmp27647 __tmp27638))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp27655
                                                         __tmp27637)))
                                                (__tmp27624
                                                 (let ((__tmp27625
                                                        (let ((__tmp27635
                                                               (gx#datum->syntax
                                                                '#f
                                                                'if))
                                                              (__tmp27626
                                                               (let ((__tmp27630
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp27634 (gx#datum->syntax '#f 'eq?))
                                    (__tmp27631
                                     (let ((__tmp27633
                                            (gx#datum->syntax '#f 'q))
                                           (__tmp27632
                                            (let ()
                                              (declare (not safe))
                                              (cons _L17399_ '()))))
                                       (declare (not safe))
                                       (cons __tmp27633 __tmp27632))))
                                (declare (not safe))
                                (cons __tmp27634 __tmp27631)))
                             (__tmp27627
                              (let ((__tmp27628
                                     (let ((__tmp27629
                                            (let ()
                                              (declare (not safe))
                                              (cons _L17398_ '()))))
                                       (declare (not safe))
                                       (cons __tmp27629 '()))))
                                (declare (not safe))
                                (cons _L17396_ __tmp27628))))
                         (declare (not safe))
                         (cons __tmp27630 __tmp27627))))
                  (declare (not safe))
                  (cons __tmp27635 __tmp27626))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp27625 '()))))
                                            (declare (not safe))
                                            (cons __tmp27636 __tmp27624))))
                                     (declare (not safe))
                                     (cons __tmp27661 __tmp27623)))
                                  (__tmp27620
                                   (let ((__tmp27621
                                          (let ()
                                            (declare (not safe))
                                            (cons _L17398_ '()))))
                                     (declare (not safe))
                                     (cons __tmp27621 '()))))
                              (declare (not safe))
                              (cons __tmp27622 __tmp27620))))
                       (declare (not safe))
                       (cons __tmp27662 __tmp27619))))
                (declare (not safe))
                (cons __tmp27665 __tmp27618))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp27617 '()))))
                                          (declare (not safe))
                                          (cons __tmp27666 __tmp27616))))
                                   (declare (not safe))
                                   (cons __tmp27679 __tmp27615))))
                             _hd1729817386_
                             _hd1729517376_
                             _hd1729217366_
                             _hd1728917356_
                             _hd1728317336_
                             _hd1728017326_
                             _hd1727717316_)
                            (_g1726717305_ _g1726817309_))))
                    (_g1726717305_ _g1726817309_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1726717305_
                                                     _g1726817309_))))
                                            (_g1726717305_ _g1726817309_))
                                        (_g1726717305_ _g1726817309_))))
                                (_g1726717305_ _g1726817309_))))
                        (_g1726717305_ _g1726817309_))))
                (_g1726717305_ _g1726817309_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1726717305_
                                                 _g1726817309_))))
                                        (_g1726717305_ _g1726817309_)))))
                            (_g1726617436_
                             (list _e17247_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch17250_
                                   _default17251_
                                   _tab17264_
                                   (vector-length _tab17264_))))
                          (let* ((_g1744017484_
                                  (lambda (_g1744117480_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1744117480_)))
                                 (_g1743917640_
                                  (lambda (_g1744117488_)
                                    (if (gx#stx-pair? _g1744117488_)
                                        (let ((_e1745117491_
                                               (gx#syntax-e _g1744117488_)))
                                          (let ((_hd1745017495_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1745117491_)))
                                                (_tl1744917498_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1745117491_))))
                                            (if (gx#stx-pair? _tl1744917498_)
                                                (let ((_e1745417501_
                                                       (gx#syntax-e
                                                        _tl1744917498_)))
                                                  (let ((_hd1745317505_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1745417501_)))
                                                        (_tl1745217508_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1745417501_))))
                                                    (if (gx#stx-pair?
                                                         _tl1745217508_)
                                                        (let ((_e1745717511_
                                                               (gx#syntax-e
                                                                _tl1745217508_)))
                                                          (let ((_hd1745617515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1745717511_)))
                        (_tl1745517518_
                         (let () (declare (not safe)) (##cdr _e1745717511_))))
                    (if (gx#stx-pair? _tl1745517518_)
                        (let ((_e1746017521_ (gx#syntax-e _tl1745517518_)))
                          (let ((_hd1745917525_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1746017521_)))
                                (_tl1745817528_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1746017521_))))
                            (if (gx#stx-pair/null? _hd1745917525_)
                                (let ((_g27521_
                                       (gx#syntax-split-splice
                                        _hd1745917525_
                                        '0)))
                                  (begin
                                    (let ((_g27522_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g27521_)
                                                 (##vector-length _g27521_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g27522_ 2)))
                                          (error "Context expects 2 values"
                                                 _g27522_)))
                                    (let ((_target1746117531_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g27521_ 0)))
                                          (_tl1746317534_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g27521_ 1))))
                                      (if (gx#stx-null? _tl1746317534_)
                                          (letrec ((_loop1746417537_
                                                    (lambda (_hd1746217541_
                                                             _dispatch1746817544_)
                                                      (if (gx#stx-pair?
                                                           _hd1746217541_)
                                                          (let ((_e1746517547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1746217541_)))
                    (let ((_lp-hd1746617551_
                           (let () (declare (not safe)) (##car _e1746517547_)))
                          (_lp-tl1746717554_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1746517547_))))
                      (_loop1746417537_
                       _lp-tl1746717554_
                       (let ()
                         (declare (not safe))
                         (cons _lp-hd1746617551_ _dispatch1746817544_)))))
                  (let ((_dispatch1746917557_ (reverse _dispatch1746817544_)))
                    (if (gx#stx-pair? _tl1745817528_)
                        (let ((_e1747217561_ (gx#syntax-e _tl1745817528_)))
                          (let ((_hd1747117565_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1747217561_)))
                                (_tl1747017568_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1747217561_))))
                            (if (gx#stx-pair? _tl1747017568_)
                                (let ((_e1747517571_
                                       (gx#syntax-e _tl1747017568_)))
                                  (let ((_hd1747417575_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1747517571_)))
                                        (_tl1747317578_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1747517571_))))
                                    (if (gx#stx-pair? _tl1747317578_)
                                        (let ((_e1747817581_
                                               (gx#syntax-e _tl1747317578_)))
                                          (let ((_hd1747717585_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1747817581_)))
                                                (_tl1747617588_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1747817581_))))
                                            (if (gx#stx-null? _tl1747617588_)
                                                ((lambda (_L17591_
                                                          _L17593_
                                                          _L17594_
                                                          _L17595_
                                                          _L17596_
                                                          _L17597_
                                                          _L17598_)
                                                   (let ()
                                                     (let ((__tmp27614
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp27523
                                                            (let ((__tmp27601
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp27608
                                  (let ((__tmp27609
                                         (let ((__tmp27610
                                                (let ((__tmp27613
                                                       (gx#datum->syntax
                                                        '#f
                                                        'lambda))
                                                      (__tmp27611
                                                       (let ((__tmp27612
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L17594_ '()))))
                 (declare (not safe))
                 (cons '() __tmp27612))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp27613
                                                        __tmp27611))))
                                           (declare (not safe))
                                           (cons __tmp27610 '()))))
                                    (declare (not safe))
                                    (cons _L17597_ __tmp27609)))
                                 (__tmp27602
                                  (let ((__tmp27603
                                         (let ((__tmp27604
                                                (let ((__tmp27605
                                                       (let ((__tmp27607
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp27606
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L17593_ '()))))
                 (declare (not safe))
                 (cons __tmp27607 __tmp27606))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp27605 '()))))
                                           (declare (not safe))
                                           (cons _L17596_ __tmp27604))))
                                    (declare (not safe))
                                    (cons __tmp27603 '()))))
                             (declare (not safe))
                             (cons __tmp27608 __tmp27602)))
                          (__tmp27524
                           (let ((__tmp27525
                                  (let ((__tmp27600 (gx#datum->syntax '#f 'if))
                                        (__tmp27526
                                         (let ((__tmp27597
                                                (let ((__tmp27599
                                                       (gx#datum->syntax
                                                        '#f
                                                        'symbol?))
                                                      (__tmp27598
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L17598_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp27599
                                                        __tmp27598)))
                                               (__tmp27527
                                                (let ((__tmp27530
                                                       (let ((__tmp27596
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp27531
                                                              (let ((__tmp27571
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp27590
                                    (let ((__tmp27595
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp27591
                                           (let ((__tmp27592
                                                  (let ((__tmp27594
                                                         (gx#datum->syntax
                                                          '#f
                                                          '##symbol-hash))
                                                        (__tmp27593
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L17598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp27594
                                                          __tmp27593))))
                                             (declare (not safe))
                                             (cons __tmp27592 '()))))
                                      (declare (not safe))
                                      (cons __tmp27595 __tmp27591)))
                                   (__tmp27572
                                    (let ((__tmp27582
                                           (let ((__tmp27589
                                                  (gx#datum->syntax '#f 'ix))
                                                 (__tmp27583
                                                  (let ((__tmp27584
                                                         (let ((__tmp27588
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fxmodulo))
                       (__tmp27585
                        (let ((__tmp27587 (gx#datum->syntax '#f 'h))
                              (__tmp27586
                               (let ()
                                 (declare (not safe))
                                 (cons _L17591_ '()))))
                          (declare (not safe))
                          (cons __tmp27587 __tmp27586))))
                   (declare (not safe))
                   (cons __tmp27588 __tmp27585))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp27584 '()))))
                                             (declare (not safe))
                                             (cons __tmp27589 __tmp27583)))
                                          (__tmp27573
                                           (let ((__tmp27574
                                                  (let ((__tmp27581
                                                         (gx#datum->syntax
                                                          '#f
                                                          'q))
                                                        (__tmp27575
                                                         (let ((__tmp27576
                                                                (let ((__tmp27580
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##vector-ref))
                              (__tmp27577
                               (let ((__tmp27578
                                      (let ((__tmp27579
                                             (gx#datum->syntax '#f 'ix)))
                                        (declare (not safe))
                                        (cons __tmp27579 '()))))
                                 (declare (not safe))
                                 (cons _L17596_ __tmp27578))))
                          (declare (not safe))
                          (cons __tmp27580 __tmp27577))))
                   (declare (not safe))
                   (cons __tmp27576 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp27581
                                                          __tmp27575))))
                                             (declare (not safe))
                                             (cons __tmp27574 '()))))
                                      (declare (not safe))
                                      (cons __tmp27582 __tmp27573))))
                               (declare (not safe))
                               (cons __tmp27590 __tmp27572)))
                            (__tmp27532
                             (let ((__tmp27533
                                    (let ((__tmp27570
                                           (gx#datum->syntax '#f 'if))
                                          (__tmp27534
                                           (let ((__tmp27569
                                                  (gx#datum->syntax '#f 'q))
                                                 (__tmp27535
                                                  (let ((__tmp27538
                                                         (let ((__tmp27568
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if))
                       (__tmp27539
                        (let ((__tmp27560
                               (let ((__tmp27567 (gx#datum->syntax '#f 'eq?))
                                     (__tmp27561
                                      (let ((__tmp27563
                                             (let ((__tmp27566
                                                    (gx#datum->syntax
                                                     '#f
                                                     '##car))
                                                   (__tmp27564
                                                    (let ((__tmp27565
                                                           (gx#datum->syntax
                                                            '#f
                                                            'q)))
                                                      (declare (not safe))
                                                      (cons __tmp27565 '()))))
                                               (declare (not safe))
                                               (cons __tmp27566 __tmp27564)))
                                            (__tmp27562
                                             (let ()
                                               (declare (not safe))
                                               (cons _L17598_ '()))))
                                        (declare (not safe))
                                        (cons __tmp27563 __tmp27562))))
                                 (declare (not safe))
                                 (cons __tmp27567 __tmp27561)))
                              (__tmp27540
                               (let ((__tmp27543
                                      (let ((__tmp27559
                                             (gx#datum->syntax '#f 'let))
                                            (__tmp27544
                                             (let ((__tmp27552
                                                    (let ((__tmp27558
                                                           (gx#datum->syntax
                                                            '#f
                                                            'x))
                                                          (__tmp27553
                                                           (let ((__tmp27554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp27557 (gx#datum->syntax '#f '##cdr))
                                (__tmp27555
                                 (let ((__tmp27556 (gx#datum->syntax '#f 'q)))
                                   (declare (not safe))
                                   (cons __tmp27556 '()))))
                            (declare (not safe))
                            (cons __tmp27557 __tmp27555))))
                     (declare (not safe))
                     (cons __tmp27554 '()))))
              (declare (not safe))
              (cons __tmp27558 __tmp27553)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp27545
                                                    (let ((__tmp27546
                                                           (let ((__tmp27551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '~case-dispatch))
                         (__tmp27547
                          (let ((__tmp27550 (gx#datum->syntax '#f 'x))
                                (__tmp27548
                                 (let ((__tmp27549
                                        (lambda (_g1763117634_ _g1763217637_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g1763117634_
                                                  _g1763217637_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp27549 '() _L17595_))))
                            (declare (not safe))
                            (cons __tmp27550 __tmp27548))))
                     (declare (not safe))
                     (cons __tmp27551 __tmp27547))))
              (declare (not safe))
              (cons __tmp27546 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp27552 __tmp27545))))
                                        (declare (not safe))
                                        (cons __tmp27559 __tmp27544)))
                                     (__tmp27541
                                      (let ((__tmp27542
                                             (let ()
                                               (declare (not safe))
                                               (cons _L17597_ '()))))
                                        (declare (not safe))
                                        (cons __tmp27542 '()))))
                                 (declare (not safe))
                                 (cons __tmp27543 __tmp27541))))
                          (declare (not safe))
                          (cons __tmp27560 __tmp27540))))
                   (declare (not safe))
                   (cons __tmp27568 __tmp27539)))
                (__tmp27536
                 (let ((__tmp27537
                        (let () (declare (not safe)) (cons _L17597_ '()))))
                   (declare (not safe))
                   (cons __tmp27537 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp27538
                                                          __tmp27536))))
                                             (declare (not safe))
                                             (cons __tmp27569 __tmp27535))))
                                      (declare (not safe))
                                      (cons __tmp27570 __tmp27534))))
                               (declare (not safe))
                               (cons __tmp27533 '()))))
                        (declare (not safe))
                        (cons __tmp27571 __tmp27532))))
                 (declare (not safe))
                 (cons __tmp27596 __tmp27531)))
              (__tmp27528
               (let ((__tmp27529
                      (let () (declare (not safe)) (cons _L17597_ '()))))
                 (declare (not safe))
                 (cons __tmp27529 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp27530
                                                        __tmp27528))))
                                           (declare (not safe))
                                           (cons __tmp27597 __tmp27527))))
                                    (declare (not safe))
                                    (cons __tmp27600 __tmp27526))))
                             (declare (not safe))
                             (cons __tmp27525 '()))))
                      (declare (not safe))
                      (cons __tmp27601 __tmp27524))))
               (declare (not safe))
               (cons __tmp27614 __tmp27523))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1747717585_
                                                 _hd1747417575_
                                                 _hd1747117565_
                                                 _dispatch1746917557_
                                                 _hd1745617515_
                                                 _hd1745317505_
                                                 _hd1745017495_)
                                                (_g1744017484_
                                                 _g1744117488_))))
                                        (_g1744017484_ _g1744117488_))))
                                (_g1744017484_ _g1744117488_))))
                        (_g1744017484_ _g1744117488_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1746417537_
                                             _target1746117531_
                                             '()))
                                          (_g1744017484_ _g1744117488_)))))
                                (_g1744017484_ _g1744117488_))))
                        (_g1744017484_ _g1744117488_))))
                (_g1744017484_ _g1744117488_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1744017484_
                                                 _g1744117488_))))
                                        (_g1744017484_ _g1744117488_)))))
                            (_g1743917640_
                             (list _e17247_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch17250_
                                   _default17251_
                                   _tab17256_
                                   (vector-length _tab17256_))))))))
                 (_max-char15662_
                  (lambda (_datums17236_)
                    (let ((__tmp27680
                           (lambda (_lst17239_ _r17241_)
                             (let ((__tmp27681
                                    (lambda (_char17243_ _r17245_)
                                      (max (char->integer _char17243_)
                                           _r17245_))))
                               (declare (not safe))
                               (foldl1 __tmp27681 _r17241_ _lst17239_)))))
                      (declare (not safe))
                      (foldl1 __tmp27680 '0 _datums17236_))))
                 (_generate-char-dispatch-table15663_
                  (lambda (_indexes17215_)
                    (let* ((_ixs17221_
                            (map (lambda (_x17218_)
                                   (char->integer (car _x17218_)))
                                 _indexes17215_))
                           (_len17224_
                            (let ((__tmp27682
                                   (let ()
                                     (declare (not safe))
                                     (foldl1 max '0 _ixs17221_))))
                              (declare (not safe))
                              (fx+ __tmp27682 '1)))
                           (_vec17227_ (make-vector _len17224_ '#f)))
                      (for-each
                       (lambda (_entry17232_ _x17234_)
                         (vector-set! _vec17227_ _x17234_ (cdr _entry17232_)))
                       _indexes17215_
                       _ixs17221_)
                      _vec17227_)))
                 (_simple-char-range?15664_
                  (lambda (_tab17191_)
                    (let ((_end17194_ (vector-length _tab17191_)))
                      (let _lp17197_ ((_i17200_ '0))
                        (let ((_ix17203_ (vector-ref _tab17191_ _i17200_)))
                          (if _ix17203_
                              (let _lp217206_ ((_i17209_
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _i17200_ '1))))
                                (if (fx< _i17209_ _end17194_)
                                    (let ((_ix*17212_
                                           (vector-ref _tab17191_ _i17209_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (eq? _ix17203_ _ix*17212_))
                                          (_lp217206_
                                           (let ()
                                             (declare (not safe))
                                             (fx+ _i17209_ '1)))
                                          '#f))
                                    '#t))
                              (_lp17197_
                               (let ()
                                 (declare (not safe))
                                 (fx+ _i17200_ '1)))))))))
                 (_char-range-start15665_
                  (lambda (_tab17182_)
                    (let _lp17185_ ((_i17188_ '0))
                      (if (vector-ref _tab17182_ _i17188_)
                          _i17188_
                          (_lp17185_
                           (let () (declare (not safe)) (fx+ _i17188_ '1)))))))
                 (_generate-char-dispatch15666_
                  (lambda (_e16805_
                           _datums16807_
                           _dispatch16808_
                           _default16809_)
                    (if (< (_max-char15662_ _datums16807_) '128)
                        (let* ((_indexes16811_
                                (_datum-dispatch-index15658_ _datums16807_))
                               (_tab16814_
                                (_generate-char-dispatch-table15663_
                                 _indexes16811_)))
                          (if (_simple-char-range?15664_ _tab16814_)
                              (let ((_start16819_
                                     (_char-range-start15665_ _tab16814_))
                                    (_end16821_ (vector-length _tab16814_)))
                                (let* ((_g1682316857_
                                        (lambda (_g1682416853_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g1682416853_)))
                                       (_g1682216974_
                                        (lambda (_g1682416861_)
                                          (if (gx#stx-pair? _g1682416861_)
                                              (let ((_e1683316864_
                                                     (gx#syntax-e
                                                      _g1682416861_)))
                                                (let ((_hd1683216868_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1683316864_)))
                                                      (_tl1683116871_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1683316864_))))
                                                  (if (gx#stx-pair?
                                                       _tl1683116871_)
                                                      (let ((_e1683616874_
                                                             (gx#syntax-e
                                                              _tl1683116871_)))
                                                        (let ((_hd1683516878_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1683616874_)))
                      (_tl1683416881_
                       (let () (declare (not safe)) (##cdr _e1683616874_))))
                  (if (gx#stx-pair? _tl1683416881_)
                      (let ((_e1683916884_ (gx#syntax-e _tl1683416881_)))
                        (let ((_hd1683816888_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1683916884_)))
                              (_tl1683716891_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1683916884_))))
                          (if (gx#stx-pair? _hd1683816888_)
                              (let ((_e1684216894_
                                     (gx#syntax-e _hd1683816888_)))
                                (let ((_hd1684116898_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1684216894_)))
                                      (_tl1684016901_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1684216894_))))
                                  (if (gx#stx-null? _tl1684016901_)
                                      (if (gx#stx-pair? _tl1683716891_)
                                          (let ((_e1684516904_
                                                 (gx#syntax-e _tl1683716891_)))
                                            (let ((_hd1684416908_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1684516904_)))
                                                  (_tl1684316911_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1684516904_))))
                                              (if (gx#stx-pair? _tl1684316911_)
                                                  (let ((_e1684816914_
                                                         (gx#syntax-e
                                                          _tl1684316911_)))
                                                    (let ((_hd1684716918_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1684816914_)))
                                                          (_tl1684616921_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1684816914_))))
                                                      (if (gx#stx-pair?
                                                           _tl1684616921_)
                                                          (let ((_e1685116924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1684616921_)))
                    (let ((_hd1685016928_
                           (let () (declare (not safe)) (##car _e1685116924_)))
                          (_tl1684916931_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1685116924_))))
                      (if (gx#stx-null? _tl1684916931_)
                          ((lambda (_L16934_
                                    _L16936_
                                    _L16937_
                                    _L16938_
                                    _L16939_
                                    _L16940_)
                             (let ()
                               (let ((__tmp27803 (gx#datum->syntax '#f 'let))
                                     (__tmp27756
                                      (let ((__tmp27797
                                             (let ((__tmp27798
                                                    (let ((__tmp27799
                                                           (let ((__tmp27802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'lambda))
                         (__tmp27800
                          (let ((__tmp27801
                                 (let ()
                                   (declare (not safe))
                                   (cons _L16937_ '()))))
                            (declare (not safe))
                            (cons '() __tmp27801))))
                     (declare (not safe))
                     (cons __tmp27802 __tmp27800))))
              (declare (not safe))
              (cons __tmp27799 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L16939_ __tmp27798)))
                                            (__tmp27757
                                             (let ((__tmp27758
                                                    (let ((__tmp27796
                                                           (gx#datum->syntax
                                                            '#f
                                                            'if))
                                                          (__tmp27759
                                                           (let ((__tmp27793
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp27795 (gx#datum->syntax '#f 'char?))
                                (__tmp27794
                                 (let ()
                                   (declare (not safe))
                                   (cons _L16940_ '()))))
                            (declare (not safe))
                            (cons __tmp27795 __tmp27794)))
                         (__tmp27760
                          (let ((__tmp27763
                                 (let ((__tmp27792 (gx#datum->syntax '#f 'let))
                                       (__tmp27764
                                        (let ((__tmp27786
                                               (let ((__tmp27791
                                                      (gx#datum->syntax
                                                       '#f
                                                       'ix))
                                                     (__tmp27787
                                                      (let ((__tmp27788
                                                             (let ((__tmp27790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '##char->integer))
                           (__tmp27789
                            (let () (declare (not safe)) (cons _L16940_ '()))))
                       (declare (not safe))
                       (cons __tmp27790 __tmp27789))))
                (declare (not safe))
                (cons __tmp27788 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp27791 __tmp27787)))
                                              (__tmp27765
                                               (let ((__tmp27766
                                                      (let ((__tmp27785
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp27767
                                                             (let ((__tmp27771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp27784 (gx#datum->syntax '#f 'and))
                                  (__tmp27772
                                   (let ((__tmp27779
                                          (let ((__tmp27783
                                                 (gx#datum->syntax
                                                  '#f
                                                  '##fx>=))
                                                (__tmp27780
                                                 (let ((__tmp27782
                                                        (gx#datum->syntax
                                                         '#f
                                                         'ix))
                                                       (__tmp27781
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L16936_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp27782
                                                         __tmp27781))))
                                            (declare (not safe))
                                            (cons __tmp27783 __tmp27780)))
                                         (__tmp27773
                                          (let ((__tmp27774
                                                 (let ((__tmp27778
                                                        (gx#datum->syntax
                                                         '#f
                                                         '##fx<))
                                                       (__tmp27775
                                                        (let ((__tmp27777
                                                               (gx#datum->syntax
                                                                '#f
                                                                'ix))
                                                              (__tmp27776
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L16934_ '()))))
                  (declare (not safe))
                  (cons __tmp27777 __tmp27776))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp27778
                                                         __tmp27775))))
                                            (declare (not safe))
                                            (cons __tmp27774 '()))))
                                     (declare (not safe))
                                     (cons __tmp27779 __tmp27773))))
                              (declare (not safe))
                              (cons __tmp27784 __tmp27772)))
                           (__tmp27768
                            (let ((__tmp27769
                                   (let ((__tmp27770
                                          (let ()
                                            (declare (not safe))
                                            (cons _L16939_ '()))))
                                     (declare (not safe))
                                     (cons __tmp27770 '()))))
                              (declare (not safe))
                              (cons _L16938_ __tmp27769))))
                       (declare (not safe))
                       (cons __tmp27771 __tmp27768))))
                (declare (not safe))
                (cons __tmp27785 __tmp27767))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp27766 '()))))
                                          (declare (not safe))
                                          (cons __tmp27786 __tmp27765))))
                                   (declare (not safe))
                                   (cons __tmp27792 __tmp27764)))
                                (__tmp27761
                                 (let ((__tmp27762
                                        (let ()
                                          (declare (not safe))
                                          (cons _L16939_ '()))))
                                   (declare (not safe))
                                   (cons __tmp27762 '()))))
                            (declare (not safe))
                            (cons __tmp27763 __tmp27761))))
                     (declare (not safe))
                     (cons __tmp27793 __tmp27760))))
              (declare (not safe))
              (cons __tmp27796 __tmp27759))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp27758 '()))))
                                        (declare (not safe))
                                        (cons __tmp27797 __tmp27757))))
                                 (declare (not safe))
                                 (cons __tmp27803 __tmp27756))))
                           _hd1685016928_
                           _hd1684716918_
                           _hd1684416908_
                           _hd1684116898_
                           _hd1683516878_
                           _hd1683216868_)
                          (_g1682316857_ _g1682416861_))))
                  (_g1682316857_ _g1682416861_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1682316857_
                                                   _g1682416861_))))
                                          (_g1682316857_ _g1682416861_))
                                      (_g1682316857_ _g1682416861_))))
                              (_g1682316857_ _g1682416861_))))
                      (_g1682316857_ _g1682416861_))))
              (_g1682316857_ _g1682416861_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1682316857_ _g1682416861_)))))
                                  (_g1682216974_
                                   (list _e16805_
                                         (gx#genident 'default)
                                         _dispatch16808_
                                         _default16809_
                                         _start16819_
                                         _end16821_))))
                              (let* ((_g1697817022_
                                      (lambda (_g1697917018_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g1697917018_)))
                                     (_g1697717178_
                                      (lambda (_g1697917026_)
                                        (if (gx#stx-pair? _g1697917026_)
                                            (let ((_e1698917029_
                                                   (gx#syntax-e
                                                    _g1697917026_)))
                                              (let ((_hd1698817033_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1698917029_)))
                                                    (_tl1698717036_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1698917029_))))
                                                (if (gx#stx-pair?
                                                     _tl1698717036_)
                                                    (let ((_e1699217039_
                                                           (gx#syntax-e
                                                            _tl1698717036_)))
                                                      (let ((_hd1699117043_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1699217039_)))
                    (_tl1699017046_
                     (let () (declare (not safe)) (##cdr _e1699217039_))))
                (if (gx#stx-pair? _tl1699017046_)
                    (let ((_e1699517049_ (gx#syntax-e _tl1699017046_)))
                      (let ((_hd1699417053_
                             (let ()
                               (declare (not safe))
                               (##car _e1699517049_)))
                            (_tl1699317056_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1699517049_))))
                        (if (gx#stx-pair? _tl1699317056_)
                            (let ((_e1699817059_ (gx#syntax-e _tl1699317056_)))
                              (let ((_hd1699717063_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1699817059_)))
                                    (_tl1699617066_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1699817059_))))
                                (if (gx#stx-pair/null? _hd1699717063_)
                                    (let ((_g27683_
                                           (gx#syntax-split-splice
                                            _hd1699717063_
                                            '0)))
                                      (begin
                                        (let ((_g27684_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g27683_)
                                                     (##vector-length _g27683_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g27684_ 2)))
                                              (error "Context expects 2 values"
                                                     _g27684_)))
                                        (let ((_target1699917069_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g27683_ 0)))
                                              (_tl1700117072_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g27683_ 1))))
                                          (if (gx#stx-null? _tl1700117072_)
                                              (letrec ((_loop1700217075_
                                                        (lambda (_hd1700017079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _dispatch1700617082_)
                  (if (gx#stx-pair? _hd1700017079_)
                      (let ((_e1700317085_ (gx#syntax-e _hd1700017079_)))
                        (let ((_lp-hd1700417089_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1700317085_)))
                              (_lp-tl1700517092_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1700317085_))))
                          (_loop1700217075_
                           _lp-tl1700517092_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd1700417089_ _dispatch1700617082_)))))
                      (let ((_dispatch1700717095_
                             (reverse _dispatch1700617082_)))
                        (if (gx#stx-pair? _tl1699617066_)
                            (let ((_e1701017099_ (gx#syntax-e _tl1699617066_)))
                              (let ((_hd1700917103_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1701017099_)))
                                    (_tl1700817106_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1701017099_))))
                                (if (gx#stx-pair? _tl1700817106_)
                                    (let ((_e1701317109_
                                           (gx#syntax-e _tl1700817106_)))
                                      (let ((_hd1701217113_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1701317109_)))
                                            (_tl1701117116_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1701317109_))))
                                        (if (gx#stx-pair? _tl1701117116_)
                                            (let ((_e1701617119_
                                                   (gx#syntax-e
                                                    _tl1701117116_)))
                                              (let ((_hd1701517123_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1701617119_)))
                                                    (_tl1701417126_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1701617119_))))
                                                (if (gx#stx-null?
                                                     _tl1701417126_)
                                                    ((lambda (_L17129_
                                                              _L17131_
                                                              _L17132_
                                                              _L17133_
                                                              _L17134_
                                                              _L17135_
                                                              _L17136_)
                                                       (let ()
                                                         (let ((__tmp27755
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let))
                       (__tmp27685
                        (let ((__tmp27742
                               (let ((__tmp27749
                                      (let ((__tmp27750
                                             (let ((__tmp27751
                                                    (let ((__tmp27754
                                                           (gx#datum->syntax
                                                            '#f
                                                            'lambda))
                                                          (__tmp27752
                                                           (let ((__tmp27753
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L17132_ '()))))
                     (declare (not safe))
                     (cons '() __tmp27753))))
              (declare (not safe))
              (cons __tmp27754 __tmp27752))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp27751 '()))))
                                        (declare (not safe))
                                        (cons _L17135_ __tmp27750)))
                                     (__tmp27743
                                      (let ((__tmp27744
                                             (let ((__tmp27745
                                                    (let ((__tmp27746
                                                           (let ((__tmp27748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp27747
                          (let () (declare (not safe)) (cons _L17131_ '()))))
                     (declare (not safe))
                     (cons __tmp27748 __tmp27747))))
              (declare (not safe))
              (cons __tmp27746 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L17134_ __tmp27745))))
                                        (declare (not safe))
                                        (cons __tmp27744 '()))))
                                 (declare (not safe))
                                 (cons __tmp27749 __tmp27743)))
                              (__tmp27686
                               (let ((__tmp27687
                                      (let ((__tmp27741
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp27688
                                             (let ((__tmp27738
                                                    (let ((__tmp27740
                                                           (gx#datum->syntax
                                                            '#f
                                                            'char?))
                                                          (__tmp27739
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L17136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp27740 __tmp27739)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp27689
                                                    (let ((__tmp27692
                                                           (let ((__tmp27737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'let))
                         (__tmp27693
                          (let ((__tmp27731
                                 (let ((__tmp27736 (gx#datum->syntax '#f 'ix))
                                       (__tmp27732
                                        (let ((__tmp27733
                                               (let ((__tmp27735
                                                      (gx#datum->syntax
                                                       '#f
                                                       '##char->integer))
                                                     (__tmp27734
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L17136_ '()))))
                                                 (declare (not safe))
                                                 (cons __tmp27735
                                                       __tmp27734))))
                                          (declare (not safe))
                                          (cons __tmp27733 '()))))
                                   (declare (not safe))
                                   (cons __tmp27736 __tmp27732)))
                                (__tmp27694
                                 (let ((__tmp27695
                                        (let ((__tmp27730
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp27696
                                               (let ((__tmp27725
                                                      (let ((__tmp27729
                                                             (gx#datum->syntax
                                                              '#f
                                                              '##fx<))
                                                            (__tmp27726
                                                             (let ((__tmp27728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'ix))
                           (__tmp27727
                            (let () (declare (not safe)) (cons _L17129_ '()))))
                       (declare (not safe))
                       (cons __tmp27728 __tmp27727))))
                (declare (not safe))
                (cons __tmp27729 __tmp27726)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp27697
                                                      (let ((__tmp27700
                                                             (let ((__tmp27724
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let))
                           (__tmp27701
                            (let ((__tmp27716
                                   (let ((__tmp27723 (gx#datum->syntax '#f 'x))
                                         (__tmp27717
                                          (let ((__tmp27718
                                                 (let ((__tmp27722
                                                        (gx#datum->syntax
                                                         '#f
                                                         '##vector-ref))
                                                       (__tmp27719
                                                        (let ((__tmp27720
                                                               (let ((__tmp27721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'ix)))
                         (declare (not safe))
                         (cons __tmp27721 '()))))
                  (declare (not safe))
                  (cons _L17134_ __tmp27720))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp27722
                                                         __tmp27719))))
                                            (declare (not safe))
                                            (cons __tmp27718 '()))))
                                     (declare (not safe))
                                     (cons __tmp27723 __tmp27717)))
                                  (__tmp27702
                                   (let ((__tmp27703
                                          (let ((__tmp27715
                                                 (gx#datum->syntax '#f 'if))
                                                (__tmp27704
                                                 (let ((__tmp27714
                                                        (gx#datum->syntax
                                                         '#f
                                                         'x))
                                                       (__tmp27705
                                                        (let ((__tmp27708
                                                               (let ((__tmp27713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f '~case-dispatch))
                             (__tmp27709
                              (let ((__tmp27712 (gx#datum->syntax '#f 'x))
                                    (__tmp27710
                                     (let ((__tmp27711
                                            (lambda (_g1716917172_
                                                     _g1717017175_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g1716917172_
                                                      _g1717017175_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp27711 '() _L17133_))))
                                (declare (not safe))
                                (cons __tmp27712 __tmp27710))))
                         (declare (not safe))
                         (cons __tmp27713 __tmp27709)))
                      (__tmp27706
                       (let ((__tmp27707
                              (let ()
                                (declare (not safe))
                                (cons _L17135_ '()))))
                         (declare (not safe))
                         (cons __tmp27707 '()))))
                  (declare (not safe))
                  (cons __tmp27708 __tmp27706))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp27714
                                                         __tmp27705))))
                                            (declare (not safe))
                                            (cons __tmp27715 __tmp27704))))
                                     (declare (not safe))
                                     (cons __tmp27703 '()))))
                              (declare (not safe))
                              (cons __tmp27716 __tmp27702))))
                       (declare (not safe))
                       (cons __tmp27724 __tmp27701)))
                    (__tmp27698
                     (let ((__tmp27699
                            (let () (declare (not safe)) (cons _L17135_ '()))))
                       (declare (not safe))
                       (cons __tmp27699 '()))))
                (declare (not safe))
                (cons __tmp27700 __tmp27698))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp27725
                                                       __tmp27697))))
                                          (declare (not safe))
                                          (cons __tmp27730 __tmp27696))))
                                   (declare (not safe))
                                   (cons __tmp27695 '()))))
                            (declare (not safe))
                            (cons __tmp27731 __tmp27694))))
                     (declare (not safe))
                     (cons __tmp27737 __tmp27693)))
                  (__tmp27690
                   (let ((__tmp27691
                          (let () (declare (not safe)) (cons _L17135_ '()))))
                     (declare (not safe))
                     (cons __tmp27691 '()))))
              (declare (not safe))
              (cons __tmp27692 __tmp27690))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp27738 __tmp27689))))
                                        (declare (not safe))
                                        (cons __tmp27741 __tmp27688))))
                                 (declare (not safe))
                                 (cons __tmp27687 '()))))
                          (declare (not safe))
                          (cons __tmp27742 __tmp27686))))
                   (declare (not safe))
                   (cons __tmp27755 __tmp27685))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1701517123_
                                                     _hd1701217113_
                                                     _hd1700917103_
                                                     _dispatch1700717095_
                                                     _hd1699417053_
                                                     _hd1699117043_
                                                     _hd1698817033_)
                                                    (_g1697817022_
                                                     _g1697917026_))))
                                            (_g1697817022_ _g1697917026_))))
                                    (_g1697817022_ _g1697917026_))))
                            (_g1697817022_ _g1697917026_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1700217075_
                                                 _target1699917069_
                                                 '()))
                                              (_g1697817022_ _g1697917026_)))))
                                    (_g1697817022_ _g1697917026_))))
                            (_g1697817022_ _g1697917026_))))
                    (_g1697817022_ _g1697917026_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1697817022_
                                                     _g1697917026_))))
                                            (_g1697817022_ _g1697917026_)))))
                                (_g1697717178_
                                 (list _e16805_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _dispatch16808_
                                       _default16809_
                                       _tab16814_
                                       (vector-length _tab16814_))))))
                        (_generate-char-dispatch/hash15667_
                         _e16805_
                         _datums16807_
                         _dispatch16808_
                         _default16809_))))
                 (_generate-char-dispatch/hash15667_
                  (lambda (_e16583_
                           _datums16585_
                           _dispatch16586_
                           _default16587_)
                    (let* ((_indexes16589_
                            (_datum-dispatch-index15658_ _datums16585_))
                           (_tab16592_
                            (_generate-hash-dispatch-table15660_
                             _indexes16589_
                             char->integer)))
                      (let* ((_g1659716641_
                              (lambda (_g1659816637_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g1659816637_)))
                             (_g1659616801_
                              (lambda (_g1659816645_)
                                (if (gx#stx-pair? _g1659816645_)
                                    (let ((_e1660816648_
                                           (gx#syntax-e _g1659816645_)))
                                      (let ((_hd1660716652_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1660816648_)))
                                            (_tl1660616655_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1660816648_))))
                                        (if (gx#stx-pair? _tl1660616655_)
                                            (let ((_e1661116658_
                                                   (gx#syntax-e
                                                    _tl1660616655_)))
                                              (let ((_hd1661016662_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1661116658_)))
                                                    (_tl1660916665_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1661116658_))))
                                                (if (gx#stx-pair?
                                                     _tl1660916665_)
                                                    (let ((_e1661416668_
                                                           (gx#syntax-e
                                                            _tl1660916665_)))
                                                      (let ((_hd1661316672_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1661416668_)))
                    (_tl1661216675_
                     (let () (declare (not safe)) (##cdr _e1661416668_))))
                (if (gx#stx-pair? _tl1661216675_)
                    (let ((_e1661716678_ (gx#syntax-e _tl1661216675_)))
                      (let ((_hd1661616682_
                             (let ()
                               (declare (not safe))
                               (##car _e1661716678_)))
                            (_tl1661516685_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1661716678_))))
                        (if (gx#stx-pair/null? _hd1661616682_)
                            (let ((_g27804_
                                   (gx#syntax-split-splice _hd1661616682_ '0)))
                              (begin
                                (let ((_g27805_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g27804_)
                                             (##vector-length _g27804_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g27805_ 2)))
                                      (error "Context expects 2 values"
                                             _g27805_)))
                                (let ((_target1661816688_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g27804_ 0)))
                                      (_tl1662016691_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g27804_ 1))))
                                  (if (gx#stx-null? _tl1662016691_)
                                      (letrec ((_loop1662116694_
                                                (lambda (_hd1661916698_
                                                         _dispatch1662516701_)
                                                  (if (gx#stx-pair?
                                                       _hd1661916698_)
                                                      (let ((_e1662216704_
                                                             (gx#syntax-e
                                                              _hd1661916698_)))
                                                        (let ((_lp-hd1662316708_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1662216704_)))
                      (_lp-tl1662416711_
                       (let () (declare (not safe)) (##cdr _e1662216704_))))
                  (_loop1662116694_
                   _lp-tl1662416711_
                   (let ()
                     (declare (not safe))
                     (cons _lp-hd1662316708_ _dispatch1662516701_)))))
              (let ((_dispatch1662616714_ (reverse _dispatch1662516701_)))
                (if (gx#stx-pair? _tl1661516685_)
                    (let ((_e1662916718_ (gx#syntax-e _tl1661516685_)))
                      (let ((_hd1662816722_
                             (let ()
                               (declare (not safe))
                               (##car _e1662916718_)))
                            (_tl1662716725_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1662916718_))))
                        (if (gx#stx-pair? _tl1662716725_)
                            (let ((_e1663216728_ (gx#syntax-e _tl1662716725_)))
                              (let ((_hd1663116732_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1663216728_)))
                                    (_tl1663016735_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1663216728_))))
                                (if (gx#stx-pair? _tl1663016735_)
                                    (let ((_e1663516738_
                                           (gx#syntax-e _tl1663016735_)))
                                      (let ((_hd1663416742_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1663516738_)))
                                            (_tl1663316745_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1663516738_))))
                                        (if (gx#stx-null? _tl1663316745_)
                                            ((lambda (_L16748_
                                                      _L16750_
                                                      _L16751_
                                                      _L16752_
                                                      _L16753_
                                                      _L16754_
                                                      _L16755_)
                                               (let ()
                                                 (let ((__tmp27897
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let))
                                                       (__tmp27806
                                                        (let ((__tmp27884
                                                               (let ((__tmp27891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp27892
                                     (let ((__tmp27893
                                            (let ((__tmp27896
                                                   (gx#datum->syntax
                                                    '#f
                                                    'lambda))
                                                  (__tmp27894
                                                   (let ((__tmp27895
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L16751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '() __tmp27895))))
                                              (declare (not safe))
                                              (cons __tmp27896 __tmp27894))))
                                       (declare (not safe))
                                       (cons __tmp27893 '()))))
                                (declare (not safe))
                                (cons _L16754_ __tmp27892)))
                             (__tmp27885
                              (let ((__tmp27886
                                     (let ((__tmp27887
                                            (let ((__tmp27888
                                                   (let ((__tmp27890
                                                          (gx#datum->syntax
                                                           '#f
                                                           'quote))
                                                         (__tmp27889
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L16750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp27890
                                                           __tmp27889))))
                                              (declare (not safe))
                                              (cons __tmp27888 '()))))
                                       (declare (not safe))
                                       (cons _L16753_ __tmp27887))))
                                (declare (not safe))
                                (cons __tmp27886 '()))))
                         (declare (not safe))
                         (cons __tmp27891 __tmp27885)))
                      (__tmp27807
                       (let ((__tmp27808
                              (let ((__tmp27883 (gx#datum->syntax '#f 'if))
                                    (__tmp27809
                                     (let ((__tmp27880
                                            (let ((__tmp27882
                                                   (gx#datum->syntax
                                                    '#f
                                                    'char?))
                                                  (__tmp27881
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L16755_ '()))))
                                              (declare (not safe))
                                              (cons __tmp27882 __tmp27881)))
                                           (__tmp27810
                                            (let ((__tmp27813
                                                   (let ((__tmp27879
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let*))
                                                         (__tmp27814
                                                          (let ((__tmp27854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp27873
                                (let ((__tmp27878 (gx#datum->syntax '#f 'h))
                                      (__tmp27874
                                       (let ((__tmp27875
                                              (let ((__tmp27877
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##char->integer))
                                                    (__tmp27876
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L16755_ '()))))
                                                (declare (not safe))
                                                (cons __tmp27877 __tmp27876))))
                                         (declare (not safe))
                                         (cons __tmp27875 '()))))
                                  (declare (not safe))
                                  (cons __tmp27878 __tmp27874)))
                               (__tmp27855
                                (let ((__tmp27865
                                       (let ((__tmp27872
                                              (gx#datum->syntax '#f 'ix))
                                             (__tmp27866
                                              (let ((__tmp27867
                                                     (let ((__tmp27871
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##fxmodulo))
                                                           (__tmp27868
                                                            (let ((__tmp27870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp27869
                           (let () (declare (not safe)) (cons _L16748_ '()))))
                      (declare (not safe))
                      (cons __tmp27870 __tmp27869))))
               (declare (not safe))
               (cons __tmp27871 __tmp27868))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp27867 '()))))
                                         (declare (not safe))
                                         (cons __tmp27872 __tmp27866)))
                                      (__tmp27856
                                       (let ((__tmp27857
                                              (let ((__tmp27864
                                                     (gx#datum->syntax '#f 'q))
                                                    (__tmp27858
                                                     (let ((__tmp27859
                                                            (let ((__tmp27863
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##vector-ref))
                          (__tmp27860
                           (let ((__tmp27861
                                  (let ((__tmp27862
                                         (gx#datum->syntax '#f 'ix)))
                                    (declare (not safe))
                                    (cons __tmp27862 '()))))
                             (declare (not safe))
                             (cons _L16753_ __tmp27861))))
                      (declare (not safe))
                      (cons __tmp27863 __tmp27860))))
               (declare (not safe))
               (cons __tmp27859 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp27864 __tmp27858))))
                                         (declare (not safe))
                                         (cons __tmp27857 '()))))
                                  (declare (not safe))
                                  (cons __tmp27865 __tmp27856))))
                           (declare (not safe))
                           (cons __tmp27873 __tmp27855)))
                        (__tmp27815
                         (let ((__tmp27816
                                (let ((__tmp27853 (gx#datum->syntax '#f 'if))
                                      (__tmp27817
                                       (let ((__tmp27852
                                              (gx#datum->syntax '#f 'q))
                                             (__tmp27818
                                              (let ((__tmp27821
                                                     (let ((__tmp27851
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp27822
                                                            (let ((__tmp27843
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp27850 (gx#datum->syntax '#f 'eq?))
                                 (__tmp27844
                                  (let ((__tmp27846
                                         (let ((__tmp27849
                                                (gx#datum->syntax '#f '##car))
                                               (__tmp27847
                                                (let ((__tmp27848
                                                       (gx#datum->syntax
                                                        '#f
                                                        'q)))
                                                  (declare (not safe))
                                                  (cons __tmp27848 '()))))
                                           (declare (not safe))
                                           (cons __tmp27849 __tmp27847)))
                                        (__tmp27845
                                         (let ()
                                           (declare (not safe))
                                           (cons _L16755_ '()))))
                                    (declare (not safe))
                                    (cons __tmp27846 __tmp27845))))
                             (declare (not safe))
                             (cons __tmp27850 __tmp27844)))
                          (__tmp27823
                           (let ((__tmp27826
                                  (let ((__tmp27842
                                         (gx#datum->syntax '#f 'let))
                                        (__tmp27827
                                         (let ((__tmp27835
                                                (let ((__tmp27841
                                                       (gx#datum->syntax
                                                        '#f
                                                        'x))
                                                      (__tmp27836
                                                       (let ((__tmp27837
                                                              (let ((__tmp27840
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '##cdr))
                            (__tmp27838
                             (let ((__tmp27839 (gx#datum->syntax '#f 'q)))
                               (declare (not safe))
                               (cons __tmp27839 '()))))
                        (declare (not safe))
                        (cons __tmp27840 __tmp27838))))
                 (declare (not safe))
                 (cons __tmp27837 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp27841
                                                        __tmp27836)))
                                               (__tmp27828
                                                (let ((__tmp27829
                                                       (let ((__tmp27834
                                                              (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch))
                                                             (__tmp27830
                                                              (let ((__tmp27833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'x))
                            (__tmp27831
                             (let ((__tmp27832
                                    (lambda (_g1679216795_ _g1679316798_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g1679216795_ _g1679316798_)))))
                               (declare (not safe))
                               (foldr1 __tmp27832 '() _L16752_))))
                        (declare (not safe))
                        (cons __tmp27833 __tmp27831))))
                 (declare (not safe))
                 (cons __tmp27834 __tmp27830))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp27829 '()))))
                                           (declare (not safe))
                                           (cons __tmp27835 __tmp27828))))
                                    (declare (not safe))
                                    (cons __tmp27842 __tmp27827)))
                                 (__tmp27824
                                  (let ((__tmp27825
                                         (let ()
                                           (declare (not safe))
                                           (cons _L16754_ '()))))
                                    (declare (not safe))
                                    (cons __tmp27825 '()))))
                             (declare (not safe))
                             (cons __tmp27826 __tmp27824))))
                      (declare (not safe))
                      (cons __tmp27843 __tmp27823))))
               (declare (not safe))
               (cons __tmp27851 __tmp27822)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp27819
                                                     (let ((__tmp27820
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L16754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp27820 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp27821 __tmp27819))))
                                         (declare (not safe))
                                         (cons __tmp27852 __tmp27818))))
                                  (declare (not safe))
                                  (cons __tmp27853 __tmp27817))))
                           (declare (not safe))
                           (cons __tmp27816 '()))))
                    (declare (not safe))
                    (cons __tmp27854 __tmp27815))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp27879
                                                           __tmp27814)))
                                                  (__tmp27811
                                                   (let ((__tmp27812
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L16754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp27812 '()))))
                                              (declare (not safe))
                                              (cons __tmp27813 __tmp27811))))
                                       (declare (not safe))
                                       (cons __tmp27880 __tmp27810))))
                                (declare (not safe))
                                (cons __tmp27883 __tmp27809))))
                         (declare (not safe))
                         (cons __tmp27808 '()))))
                  (declare (not safe))
                  (cons __tmp27884 __tmp27807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp27897
                                                         __tmp27806))))
                                             _hd1663416742_
                                             _hd1663116732_
                                             _hd1662816722_
                                             _dispatch1662616714_
                                             _hd1661316672_
                                             _hd1661016662_
                                             _hd1660716652_)
                                            (_g1659716641_ _g1659816645_))))
                                    (_g1659716641_ _g1659816645_))))
                            (_g1659716641_ _g1659816645_))))
                    (_g1659716641_ _g1659816645_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1662116694_
                                         _target1661816688_
                                         '()))
                                      (_g1659716641_ _g1659816645_)))))
                            (_g1659716641_ _g1659816645_))))
                    (_g1659716641_ _g1659816645_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1659716641_
                                                     _g1659816645_))))
                                            (_g1659716641_ _g1659816645_))))
                                    (_g1659716641_ _g1659816645_)))))
                        (_g1659616801_
                         (list _e16583_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch16586_
                               _default16587_
                               _tab16592_
                               (vector-length _tab16592_)))))))
                 (_min-fixnum15668_
                  (lambda (_datums16576_)
                    (let ((__tmp27898
                           (lambda (_lst16579_ _r16581_)
                             (let ()
                               (declare (not safe))
                               (foldl1 min _r16581_ _lst16579_)))))
                      (declare (not safe))
                      (foldl1 __tmp27898 ##max-fixnum _datums16576_))))
                 (_max-fixnum15669_
                  (lambda (_datums16569_)
                    (let ((__tmp27899
                           (lambda (_lst16572_ _r16574_)
                             (let ()
                               (declare (not safe))
                               (foldl1 max _r16574_ _lst16572_)))))
                      (declare (not safe))
                      (foldl1 __tmp27899 ##min-fixnum _datums16569_))))
                 (_generate-fixnum-dispatch-table15670_
                  (lambda (_indexes16551_)
                    (let* ((_ixs16554_ (map car _indexes16551_))
                           (_len16557_
                            (let ((__tmp27900
                                   (let ()
                                     (declare (not safe))
                                     (foldl1 max '0 _ixs16554_))))
                              (declare (not safe))
                              (fx+ __tmp27900 '1)))
                           (_vec16560_ (make-vector _len16557_ '#f)))
                      (for-each
                       (lambda (_entry16565_ _x16567_)
                         (vector-set! _vec16560_ _x16567_ (cdr _entry16565_)))
                       _indexes16551_
                       _ixs16554_)
                      _vec16560_)))
                 (_generate-fixnum-dispatch15671_
                  (lambda (_e16285_
                           _datums16287_
                           _dispatch16288_
                           _default16289_)
                    (if (and (>= (_min-fixnum15668_ _datums16287_) '0)
                             (< (_max-fixnum15669_ _datums16287_) '1024))
                        (let* ((_indexes16291_
                                (_datum-dispatch-index15658_ _datums16287_))
                               (_tab16294_
                                (_generate-fixnum-dispatch-table15670_
                                 _indexes16291_))
                               (_dense?16297_
                                (let ((__tmp27901 (vector->list _tab16294_)))
                                  (declare (not safe))
                                  (andmap1 values __tmp27901))))
                          (let* ((_g1630216346_
                                  (lambda (_g1630316342_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1630316342_)))
                                 (_g1630116547_
                                  (lambda (_g1630316350_)
                                    (if (gx#stx-pair? _g1630316350_)
                                        (let ((_e1631316353_
                                               (gx#syntax-e _g1630316350_)))
                                          (let ((_hd1631216357_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1631316353_)))
                                                (_tl1631116360_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1631316353_))))
                                            (if (gx#stx-pair? _tl1631116360_)
                                                (let ((_e1631616363_
                                                       (gx#syntax-e
                                                        _tl1631116360_)))
                                                  (let ((_hd1631516367_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1631616363_)))
                                                        (_tl1631416370_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1631616363_))))
                                                    (if (gx#stx-pair?
                                                         _tl1631416370_)
                                                        (let ((_e1631916373_
                                                               (gx#syntax-e
                                                                _tl1631416370_)))
                                                          (let ((_hd1631816377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1631916373_)))
                        (_tl1631716380_
                         (let () (declare (not safe)) (##cdr _e1631916373_))))
                    (if (gx#stx-pair? _tl1631716380_)
                        (let ((_e1632216383_ (gx#syntax-e _tl1631716380_)))
                          (let ((_hd1632116387_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1632216383_)))
                                (_tl1632016390_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1632216383_))))
                            (if (gx#stx-pair/null? _hd1632116387_)
                                (let ((_g27902_
                                       (gx#syntax-split-splice
                                        _hd1632116387_
                                        '0)))
                                  (begin
                                    (let ((_g27903_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g27902_)
                                                 (##vector-length _g27902_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g27903_ 2)))
                                          (error "Context expects 2 values"
                                                 _g27903_)))
                                    (let ((_target1632316393_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g27902_ 0)))
                                          (_tl1632516396_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g27902_ 1))))
                                      (if (gx#stx-null? _tl1632516396_)
                                          (letrec ((_loop1632616399_
                                                    (lambda (_hd1632416403_
                                                             _dispatch1633016406_)
                                                      (if (gx#stx-pair?
                                                           _hd1632416403_)
                                                          (let ((_e1632716409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1632416403_)))
                    (let ((_lp-hd1632816413_
                           (let () (declare (not safe)) (##car _e1632716409_)))
                          (_lp-tl1632916416_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1632716409_))))
                      (_loop1632616399_
                       _lp-tl1632916416_
                       (let ()
                         (declare (not safe))
                         (cons _lp-hd1632816413_ _dispatch1633016406_)))))
                  (let ((_dispatch1633116419_ (reverse _dispatch1633016406_)))
                    (if (gx#stx-pair? _tl1632016390_)
                        (let ((_e1633416423_ (gx#syntax-e _tl1632016390_)))
                          (let ((_hd1633316427_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1633416423_)))
                                (_tl1633216430_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1633416423_))))
                            (if (gx#stx-pair? _tl1633216430_)
                                (let ((_e1633716433_
                                       (gx#syntax-e _tl1633216430_)))
                                  (let ((_hd1633616437_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1633716433_)))
                                        (_tl1633516440_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1633716433_))))
                                    (if (gx#stx-pair? _tl1633516440_)
                                        (let ((_e1634016443_
                                               (gx#syntax-e _tl1633516440_)))
                                          (let ((_hd1633916447_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1634016443_)))
                                                (_tl1633816450_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1634016443_))))
                                            (if (gx#stx-null? _tl1633816450_)
                                                ((lambda (_L16453_
                                                          _L16455_
                                                          _L16456_
                                                          _L16457_
                                                          _L16458_
                                                          _L16459_
                                                          _L16460_)
                                                   (let ()
                                                     (let* ((_g1649916507_
                                                             (lambda (_g1650016503_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _g1650016503_)))
                                                            (_g1649816527_
                                                             (lambda (_g1650016511_)
                                                               ((lambda (_L16514_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((__tmp27957 (gx#datum->syntax '#f 'let))
                                  (__tmp27904
                                   (let ((__tmp27944
                                          (let ((__tmp27951
                                                 (let ((__tmp27952
                                                        (let ((__tmp27953
                                                               (let ((__tmp27956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'lambda))
                             (__tmp27954
                              (let ((__tmp27955
                                     (let ()
                                       (declare (not safe))
                                       (cons _L16456_ '()))))
                                (declare (not safe))
                                (cons '() __tmp27955))))
                         (declare (not safe))
                         (cons __tmp27956 __tmp27954))))
                  (declare (not safe))
                  (cons __tmp27953 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L16459_ __tmp27952)))
                                                (__tmp27945
                                                 (let ((__tmp27946
                                                        (let ((__tmp27947
                                                               (let ((__tmp27948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp27950 (gx#datum->syntax '#f 'quote))
                                    (__tmp27949
                                     (let ()
                                       (declare (not safe))
                                       (cons _L16455_ '()))))
                                (declare (not safe))
                                (cons __tmp27950 __tmp27949))))
                         (declare (not safe))
                         (cons __tmp27948 '()))))
                  (declare (not safe))
                  (cons _L16458_ __tmp27947))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp27946 '()))))
                                            (declare (not safe))
                                            (cons __tmp27951 __tmp27945)))
                                         (__tmp27905
                                          (let ((__tmp27906
                                                 (let ((__tmp27943
                                                        (gx#datum->syntax
                                                         '#f
                                                         'if))
                                                       (__tmp27907
                                                        (let ((__tmp27940
                                                               (let ((__tmp27942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fixnum?))
                             (__tmp27941
                              (let ()
                                (declare (not safe))
                                (cons _L16460_ '()))))
                         (declare (not safe))
                         (cons __tmp27942 __tmp27941)))
                      (__tmp27908
                       (let ((__tmp27911
                              (let ((__tmp27939 (gx#datum->syntax '#f 'if))
                                    (__tmp27912
                                     (let ((__tmp27927
                                            (let ((__tmp27938
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp27928
                                                   (let ((__tmp27934
                                                          (let ((__tmp27937
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '##fx>=))
                        (__tmp27935
                         (let ((__tmp27936
                                (let () (declare (not safe)) (cons '0 '()))))
                           (declare (not safe))
                           (cons _L16460_ __tmp27936))))
                    (declare (not safe))
                    (cons __tmp27937 __tmp27935)))
                 (__tmp27929
                  (let ((__tmp27930
                         (let ((__tmp27933 (gx#datum->syntax '#f '##fx<))
                               (__tmp27931
                                (let ((__tmp27932
                                       (let ()
                                         (declare (not safe))
                                         (cons _L16453_ '()))))
                                  (declare (not safe))
                                  (cons _L16460_ __tmp27932))))
                           (declare (not safe))
                           (cons __tmp27933 __tmp27931))))
                    (declare (not safe))
                    (cons __tmp27930 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp27934
                                                           __tmp27929))))
                                              (declare (not safe))
                                              (cons __tmp27938 __tmp27928)))
                                           (__tmp27913
                                            (let ((__tmp27916
                                                   (let ((__tmp27926
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp27917
                                                          (let ((__tmp27919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp27925 (gx#datum->syntax '#f 'x))
                               (__tmp27920
                                (let ((__tmp27921
                                       (let ((__tmp27924
                                              (gx#datum->syntax
                                               '#f
                                               '##vector-ref))
                                             (__tmp27922
                                              (let ((__tmp27923
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L16460_ '()))))
                                                (declare (not safe))
                                                (cons _L16458_ __tmp27923))))
                                         (declare (not safe))
                                         (cons __tmp27924 __tmp27922))))
                                  (declare (not safe))
                                  (cons __tmp27921 '()))))
                           (declare (not safe))
                           (cons __tmp27925 __tmp27920)))
                        (__tmp27918
                         (let () (declare (not safe)) (cons _L16514_ '()))))
                    (declare (not safe))
                    (cons __tmp27919 __tmp27918))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp27926
                                                           __tmp27917)))
                                                  (__tmp27914
                                                   (let ((__tmp27915
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L16459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp27915 '()))))
                                              (declare (not safe))
                                              (cons __tmp27916 __tmp27914))))
                                       (declare (not safe))
                                       (cons __tmp27927 __tmp27913))))
                                (declare (not safe))
                                (cons __tmp27939 __tmp27912)))
                             (__tmp27909
                              (let ((__tmp27910
                                     (let ()
                                       (declare (not safe))
                                       (cons _L16459_ '()))))
                                (declare (not safe))
                                (cons __tmp27910 '()))))
                         (declare (not safe))
                         (cons __tmp27911 __tmp27909))))
                  (declare (not safe))
                  (cons __tmp27940 __tmp27908))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp27943
                                                         __tmp27907))))
                                            (declare (not safe))
                                            (cons __tmp27906 '()))))
                                     (declare (not safe))
                                     (cons __tmp27944 __tmp27905))))
                              (declare (not safe))
                              (cons __tmp27957 __tmp27904))))
                        _g1650016511_))))
               (_g1649816527_
                (if _dense?16297_
                    (let ((__tmp27974 (gx#datum->syntax '#f '~case-dispatch))
                          (__tmp27970
                           (let ((__tmp27973 (gx#datum->syntax '#f 'x))
                                 (__tmp27971
                                  (let ((__tmp27972
                                         (lambda (_g1653016533_ _g1653116536_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g1653016533_
                                                   _g1653116536_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp27972 '() _L16457_))))
                             (declare (not safe))
                             (cons __tmp27973 __tmp27971))))
                      (declare (not safe))
                      (cons __tmp27974 __tmp27970))
                    (let ((__tmp27969 (gx#datum->syntax '#f 'if))
                          (__tmp27958
                           (let ((__tmp27968 (gx#datum->syntax '#f 'x))
                                 (__tmp27959
                                  (let ((__tmp27962
                                         (let ((__tmp27967
                                                (gx#datum->syntax
                                                 '#f
                                                 '~case-dispatch))
                                               (__tmp27963
                                                (let ((__tmp27966
                                                       (gx#datum->syntax
                                                        '#f
                                                        'x))
                                                      (__tmp27964
                                                       (let ((__tmp27965
                                                              (lambda (_g1653816541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1653916544_)
                        (let ()
                          (declare (not safe))
                          (cons _g1653816541_ _g1653916544_)))))
                 (declare (not safe))
                 (foldr1 __tmp27965 '() _L16457_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp27966
                                                        __tmp27964))))
                                           (declare (not safe))
                                           (cons __tmp27967 __tmp27963)))
                                        (__tmp27960
                                         (let ((__tmp27961
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L16459_ '()))))
                                           (declare (not safe))
                                           (cons __tmp27961 '()))))
                                    (declare (not safe))
                                    (cons __tmp27962 __tmp27960))))
                             (declare (not safe))
                             (cons __tmp27968 __tmp27959))))
                      (declare (not safe))
                      (cons __tmp27969 __tmp27958)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1633916447_
                                                 _hd1633616437_
                                                 _hd1633316427_
                                                 _dispatch1633116419_
                                                 _hd1631816377_
                                                 _hd1631516367_
                                                 _hd1631216357_)
                                                (_g1630216346_
                                                 _g1630316350_))))
                                        (_g1630216346_ _g1630316350_))))
                                (_g1630216346_ _g1630316350_))))
                        (_g1630216346_ _g1630316350_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1632616399_
                                             _target1632316393_
                                             '()))
                                          (_g1630216346_ _g1630316350_)))))
                                (_g1630216346_ _g1630316350_))))
                        (_g1630216346_ _g1630316350_))))
                (_g1630216346_ _g1630316350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1630216346_
                                                 _g1630316350_))))
                                        (_g1630216346_ _g1630316350_)))))
                            (_g1630116547_
                             (list _e16285_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch16288_
                                   _default16289_
                                   _tab16294_
                                   (vector-length _tab16294_)))))
                        (_generate-fixnum-dispatch/hash15672_
                         _e16285_
                         _datums16287_
                         _dispatch16288_
                         _default16289_))))
                 (_generate-fixnum-dispatch/hash15672_
                  (lambda (_e16063_
                           _datums16065_
                           _dispatch16066_
                           _default16067_)
                    (let* ((_indexes16069_
                            (_datum-dispatch-index15658_ _datums16065_))
                           (_tab16072_
                            (_generate-hash-dispatch-table15660_
                             _indexes16069_
                             values)))
                      (let* ((_g1607716121_
                              (lambda (_g1607816117_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g1607816117_)))
                             (_g1607616281_
                              (lambda (_g1607816125_)
                                (if (gx#stx-pair? _g1607816125_)
                                    (let ((_e1608816128_
                                           (gx#syntax-e _g1607816125_)))
                                      (let ((_hd1608716132_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1608816128_)))
                                            (_tl1608616135_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1608816128_))))
                                        (if (gx#stx-pair? _tl1608616135_)
                                            (let ((_e1609116138_
                                                   (gx#syntax-e
                                                    _tl1608616135_)))
                                              (let ((_hd1609016142_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1609116138_)))
                                                    (_tl1608916145_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1609116138_))))
                                                (if (gx#stx-pair?
                                                     _tl1608916145_)
                                                    (let ((_e1609416148_
                                                           (gx#syntax-e
                                                            _tl1608916145_)))
                                                      (let ((_hd1609316152_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1609416148_)))
                    (_tl1609216155_
                     (let () (declare (not safe)) (##cdr _e1609416148_))))
                (if (gx#stx-pair? _tl1609216155_)
                    (let ((_e1609716158_ (gx#syntax-e _tl1609216155_)))
                      (let ((_hd1609616162_
                             (let ()
                               (declare (not safe))
                               (##car _e1609716158_)))
                            (_tl1609516165_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1609716158_))))
                        (if (gx#stx-pair/null? _hd1609616162_)
                            (let ((_g27975_
                                   (gx#syntax-split-splice _hd1609616162_ '0)))
                              (begin
                                (let ((_g27976_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g27975_)
                                             (##vector-length _g27975_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g27976_ 2)))
                                      (error "Context expects 2 values"
                                             _g27976_)))
                                (let ((_target1609816168_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g27975_ 0)))
                                      (_tl1610016171_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g27975_ 1))))
                                  (if (gx#stx-null? _tl1610016171_)
                                      (letrec ((_loop1610116174_
                                                (lambda (_hd1609916178_
                                                         _dispatch1610516181_)
                                                  (if (gx#stx-pair?
                                                       _hd1609916178_)
                                                      (let ((_e1610216184_
                                                             (gx#syntax-e
                                                              _hd1609916178_)))
                                                        (let ((_lp-hd1610316188_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1610216184_)))
                      (_lp-tl1610416191_
                       (let () (declare (not safe)) (##cdr _e1610216184_))))
                  (_loop1610116174_
                   _lp-tl1610416191_
                   (let ()
                     (declare (not safe))
                     (cons _lp-hd1610316188_ _dispatch1610516181_)))))
              (let ((_dispatch1610616194_ (reverse _dispatch1610516181_)))
                (if (gx#stx-pair? _tl1609516165_)
                    (let ((_e1610916198_ (gx#syntax-e _tl1609516165_)))
                      (let ((_hd1610816202_
                             (let ()
                               (declare (not safe))
                               (##car _e1610916198_)))
                            (_tl1610716205_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1610916198_))))
                        (if (gx#stx-pair? _tl1610716205_)
                            (let ((_e1611216208_ (gx#syntax-e _tl1610716205_)))
                              (let ((_hd1611116212_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1611216208_)))
                                    (_tl1611016215_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1611216208_))))
                                (if (gx#stx-pair? _tl1611016215_)
                                    (let ((_e1611516218_
                                           (gx#syntax-e _tl1611016215_)))
                                      (let ((_hd1611416222_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1611516218_)))
                                            (_tl1611316225_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1611516218_))))
                                        (if (gx#stx-null? _tl1611316225_)
                                            ((lambda (_L16228_
                                                      _L16230_
                                                      _L16231_
                                                      _L16232_
                                                      _L16233_
                                                      _L16234_
                                                      _L16235_)
                                               (let ()
                                                 (let ((__tmp28060
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let))
                                                       (__tmp27977
                                                        (let ((__tmp28047
                                                               (let ((__tmp28054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp28055
                                     (let ((__tmp28056
                                            (let ((__tmp28059
                                                   (gx#datum->syntax
                                                    '#f
                                                    'lambda))
                                                  (__tmp28057
                                                   (let ((__tmp28058
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L16231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '() __tmp28058))))
                                              (declare (not safe))
                                              (cons __tmp28059 __tmp28057))))
                                       (declare (not safe))
                                       (cons __tmp28056 '()))))
                                (declare (not safe))
                                (cons _L16234_ __tmp28055)))
                             (__tmp28048
                              (let ((__tmp28049
                                     (let ((__tmp28050
                                            (let ((__tmp28051
                                                   (let ((__tmp28053
                                                          (gx#datum->syntax
                                                           '#f
                                                           'quote))
                                                         (__tmp28052
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L16230_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp28053
                                                           __tmp28052))))
                                              (declare (not safe))
                                              (cons __tmp28051 '()))))
                                       (declare (not safe))
                                       (cons _L16233_ __tmp28050))))
                                (declare (not safe))
                                (cons __tmp28049 '()))))
                         (declare (not safe))
                         (cons __tmp28054 __tmp28048)))
                      (__tmp27978
                       (let ((__tmp27979
                              (let ((__tmp28046 (gx#datum->syntax '#f 'if))
                                    (__tmp27980
                                     (let ((__tmp28043
                                            (let ((__tmp28045
                                                   (gx#datum->syntax
                                                    '#f
                                                    'fixnum?))
                                                  (__tmp28044
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L16235_ '()))))
                                              (declare (not safe))
                                              (cons __tmp28045 __tmp28044)))
                                           (__tmp27981
                                            (let ((__tmp27984
                                                   (let ((__tmp28042
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let*))
                                                         (__tmp27985
                                                          (let ((__tmp28025
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp28035
                                (let ((__tmp28041 (gx#datum->syntax '#f 'ix))
                                      (__tmp28036
                                       (let ((__tmp28037
                                              (let ((__tmp28040
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##fxmodulo))
                                                    (__tmp28038
                                                     (let ((__tmp28039
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L16228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L16235_ __tmp28039))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp28040 __tmp28038))))
                                         (declare (not safe))
                                         (cons __tmp28037 '()))))
                                  (declare (not safe))
                                  (cons __tmp28041 __tmp28036)))
                               (__tmp28026
                                (let ((__tmp28027
                                       (let ((__tmp28034
                                              (gx#datum->syntax '#f 'q))
                                             (__tmp28028
                                              (let ((__tmp28029
                                                     (let ((__tmp28033
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##vector-ref))
                                                           (__tmp28030
                                                            (let ((__tmp28031
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp28032 (gx#datum->syntax '#f 'ix)))
                             (declare (not safe))
                             (cons __tmp28032 '()))))
                      (declare (not safe))
                      (cons _L16233_ __tmp28031))))
               (declare (not safe))
               (cons __tmp28033 __tmp28030))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp28029 '()))))
                                         (declare (not safe))
                                         (cons __tmp28034 __tmp28028))))
                                  (declare (not safe))
                                  (cons __tmp28027 '()))))
                           (declare (not safe))
                           (cons __tmp28035 __tmp28026)))
                        (__tmp27986
                         (let ((__tmp27987
                                (let ((__tmp28024 (gx#datum->syntax '#f 'if))
                                      (__tmp27988
                                       (let ((__tmp28023
                                              (gx#datum->syntax '#f 'q))
                                             (__tmp27989
                                              (let ((__tmp27992
                                                     (let ((__tmp28022
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp27993
                                                            (let ((__tmp28014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp28021 (gx#datum->syntax '#f 'eq?))
                                 (__tmp28015
                                  (let ((__tmp28017
                                         (let ((__tmp28020
                                                (gx#datum->syntax '#f '##car))
                                               (__tmp28018
                                                (let ((__tmp28019
                                                       (gx#datum->syntax
                                                        '#f
                                                        'q)))
                                                  (declare (not safe))
                                                  (cons __tmp28019 '()))))
                                           (declare (not safe))
                                           (cons __tmp28020 __tmp28018)))
                                        (__tmp28016
                                         (let ()
                                           (declare (not safe))
                                           (cons _L16235_ '()))))
                                    (declare (not safe))
                                    (cons __tmp28017 __tmp28016))))
                             (declare (not safe))
                             (cons __tmp28021 __tmp28015)))
                          (__tmp27994
                           (let ((__tmp27997
                                  (let ((__tmp28013
                                         (gx#datum->syntax '#f 'let))
                                        (__tmp27998
                                         (let ((__tmp28006
                                                (let ((__tmp28012
                                                       (gx#datum->syntax
                                                        '#f
                                                        'x))
                                                      (__tmp28007
                                                       (let ((__tmp28008
                                                              (let ((__tmp28011
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '##cdr))
                            (__tmp28009
                             (let ((__tmp28010 (gx#datum->syntax '#f 'q)))
                               (declare (not safe))
                               (cons __tmp28010 '()))))
                        (declare (not safe))
                        (cons __tmp28011 __tmp28009))))
                 (declare (not safe))
                 (cons __tmp28008 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp28012
                                                        __tmp28007)))
                                               (__tmp27999
                                                (let ((__tmp28000
                                                       (let ((__tmp28005
                                                              (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch))
                                                             (__tmp28001
                                                              (let ((__tmp28004
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'x))
                            (__tmp28002
                             (let ((__tmp28003
                                    (lambda (_g1627216275_ _g1627316278_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g1627216275_ _g1627316278_)))))
                               (declare (not safe))
                               (foldr1 __tmp28003 '() _L16232_))))
                        (declare (not safe))
                        (cons __tmp28004 __tmp28002))))
                 (declare (not safe))
                 (cons __tmp28005 __tmp28001))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp28000 '()))))
                                           (declare (not safe))
                                           (cons __tmp28006 __tmp27999))))
                                    (declare (not safe))
                                    (cons __tmp28013 __tmp27998)))
                                 (__tmp27995
                                  (let ((__tmp27996
                                         (let ()
                                           (declare (not safe))
                                           (cons _L16234_ '()))))
                                    (declare (not safe))
                                    (cons __tmp27996 '()))))
                             (declare (not safe))
                             (cons __tmp27997 __tmp27995))))
                      (declare (not safe))
                      (cons __tmp28014 __tmp27994))))
               (declare (not safe))
               (cons __tmp28022 __tmp27993)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp27990
                                                     (let ((__tmp27991
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L16234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp27991 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp27992 __tmp27990))))
                                         (declare (not safe))
                                         (cons __tmp28023 __tmp27989))))
                                  (declare (not safe))
                                  (cons __tmp28024 __tmp27988))))
                           (declare (not safe))
                           (cons __tmp27987 '()))))
                    (declare (not safe))
                    (cons __tmp28025 __tmp27986))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp28042
                                                           __tmp27985)))
                                                  (__tmp27982
                                                   (let ((__tmp27983
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L16234_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp27983 '()))))
                                              (declare (not safe))
                                              (cons __tmp27984 __tmp27982))))
                                       (declare (not safe))
                                       (cons __tmp28043 __tmp27981))))
                                (declare (not safe))
                                (cons __tmp28046 __tmp27980))))
                         (declare (not safe))
                         (cons __tmp27979 '()))))
                  (declare (not safe))
                  (cons __tmp28047 __tmp27978))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp28060
                                                         __tmp27977))))
                                             _hd1611416222_
                                             _hd1611116212_
                                             _hd1610816202_
                                             _dispatch1610616194_
                                             _hd1609316152_
                                             _hd1609016142_
                                             _hd1608716132_)
                                            (_g1607716121_ _g1607816125_))))
                                    (_g1607716121_ _g1607816125_))))
                            (_g1607716121_ _g1607816125_))))
                    (_g1607716121_ _g1607816125_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1610116174_
                                         _target1609816168_
                                         '()))
                                      (_g1607716121_ _g1607816125_)))))
                            (_g1607716121_ _g1607816125_))))
                    (_g1607716121_ _g1607816125_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1607716121_
                                                     _g1607816125_))))
                                            (_g1607716121_ _g1607816125_))))
                                    (_g1607716121_ _g1607816125_)))))
                        (_g1607616281_
                         (list _e16063_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch16066_
                               _default16067_
                               _tab16072_
                               (vector-length _tab16072_)))))))
                 (_generate-generic-dispatch15673_
                  (lambda (_e15799_
                           _datums15801_
                           _dispatch15802_
                           _default15803_)
                    (let ((_g28061_
                           (if (_eq-datums?15656_ _datums15801_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_hash-e15805_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g28061_ 0)))
                              (_hashf15807_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g28061_ 1)))
                              (_eqf15808_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g28061_ 2))))
                          (let* ((_indexes15810_
                                  (_datum-dispatch-index15658_ _datums15801_))
                                 (_tab15813_
                                  (_generate-hash-dispatch-table15660_
                                   _indexes15810_
                                   _hash-e15805_)))
                            (let* ((_g1581815870_
                                    (lambda (_g1581915866_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g1581915866_)))
                                   (_g1581716059_
                                    (lambda (_g1581915874_)
                                      (if (gx#stx-pair? _g1581915874_)
                                          (let ((_e1583115877_
                                                 (gx#syntax-e _g1581915874_)))
                                            (let ((_hd1583015881_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1583115877_)))
                                                  (_tl1582915884_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1583115877_))))
                                              (if (gx#stx-pair? _tl1582915884_)
                                                  (let ((_e1583415887_
                                                         (gx#syntax-e
                                                          _tl1582915884_)))
                                                    (let ((_hd1583315891_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1583415887_)))
                                                          (_tl1583215894_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1583415887_))))
                                                      (if (gx#stx-pair?
                                                           _tl1583215894_)
                                                          (let ((_e1583715897_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1583215894_)))
                    (let ((_hd1583615901_
                           (let () (declare (not safe)) (##car _e1583715897_)))
                          (_tl1583515904_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1583715897_))))
                      (if (gx#stx-pair? _tl1583515904_)
                          (let ((_e1584015907_ (gx#syntax-e _tl1583515904_)))
                            (let ((_hd1583915911_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1584015907_)))
                                  (_tl1583815914_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1584015907_))))
                              (if (gx#stx-pair/null? _hd1583915911_)
                                  (let ((_g28062_
                                         (gx#syntax-split-splice
                                          _hd1583915911_
                                          '0)))
                                    (begin
                                      (let ((_g28063_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g28062_)
                                                   (##vector-length _g28062_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g28063_ 2)))
                                            (error "Context expects 2 values"
                                                   _g28063_)))
                                      (let ((_target1584115917_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g28062_ 0)))
                                            (_tl1584315920_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g28062_ 1))))
                                        (if (gx#stx-null? _tl1584315920_)
                                            (letrec ((_loop1584415923_
                                                      (lambda (_hd1584215927_
                                                               _dispatch1584815930_)
                                                        (if (gx#stx-pair?
                                                             _hd1584215927_)
                                                            (let ((_e1584515933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1584215927_)))
                      (let ((_lp-hd1584615937_
                             (let ()
                               (declare (not safe))
                               (##car _e1584515933_)))
                            (_lp-tl1584715940_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1584515933_))))
                        (_loop1584415923_
                         _lp-tl1584715940_
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd1584615937_ _dispatch1584815930_)))))
                    (let ((_dispatch1584915943_
                           (reverse _dispatch1584815930_)))
                      (if (gx#stx-pair? _tl1583815914_)
                          (let ((_e1585215947_ (gx#syntax-e _tl1583815914_)))
                            (let ((_hd1585115951_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1585215947_)))
                                  (_tl1585015954_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1585215947_))))
                              (if (gx#stx-pair? _tl1585015954_)
                                  (let ((_e1585515957_
                                         (gx#syntax-e _tl1585015954_)))
                                    (let ((_hd1585415961_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1585515957_)))
                                          (_tl1585315964_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1585515957_))))
                                      (if (gx#stx-pair? _tl1585315964_)
                                          (let ((_e1585815967_
                                                 (gx#syntax-e _tl1585315964_)))
                                            (let ((_hd1585715971_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1585815967_)))
                                                  (_tl1585615974_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1585815967_))))
                                              (if (gx#stx-pair? _tl1585615974_)
                                                  (let ((_e1586115977_
                                                         (gx#syntax-e
                                                          _tl1585615974_)))
                                                    (let ((_hd1586015981_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1586115977_)))
                                                          (_tl1585915984_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1586115977_))))
                                                      (if (gx#stx-pair?
                                                           _tl1585915984_)
                                                          (let ((_e1586415987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1585915984_)))
                    (let ((_hd1586315991_
                           (let () (declare (not safe)) (##car _e1586415987_)))
                          (_tl1586215994_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1586415987_))))
                      (if (gx#stx-null? _tl1586215994_)
                          ((lambda (_L15997_
                                    _L15999_
                                    _L16000_
                                    _L16001_
                                    _L16002_
                                    _L16003_
                                    _L16004_
                                    _L16005_
                                    _L16006_)
                             (let ()
                               (let ((__tmp28144 (gx#datum->syntax '#f 'let))
                                     (__tmp28064
                                      (let ((__tmp28131
                                             (let ((__tmp28138
                                                    (let ((__tmp28139
                                                           (let ((__tmp28140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp28143 (gx#datum->syntax '#f 'lambda))
                                (__tmp28141
                                 (let ((__tmp28142
                                        (let ()
                                          (declare (not safe))
                                          (cons _L16002_ '()))))
                                   (declare (not safe))
                                   (cons '() __tmp28142))))
                            (declare (not safe))
                            (cons __tmp28143 __tmp28141))))
                     (declare (not safe))
                     (cons __tmp28140 '()))))
              (declare (not safe))
              (cons _L16005_ __tmp28139)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp28132
                                                    (let ((__tmp28133
                                                           (let ((__tmp28134
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp28135
                                 (let ((__tmp28137
                                        (gx#datum->syntax '#f 'quote))
                                       (__tmp28136
                                        (let ()
                                          (declare (not safe))
                                          (cons _L16001_ '()))))
                                   (declare (not safe))
                                   (cons __tmp28137 __tmp28136))))
                            (declare (not safe))
                            (cons __tmp28135 '()))))
                     (declare (not safe))
                     (cons _L16004_ __tmp28134))))
              (declare (not safe))
              (cons __tmp28133 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp28138 __tmp28132)))
                                            (__tmp28065
                                             (let ((__tmp28066
                                                    (let ((__tmp28130
                                                           (gx#datum->syntax
                                                            '#f
                                                            'let*))
                                                          (__tmp28067
                                                           (let ((__tmp28106
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp28125
                                 (let ((__tmp28129 (gx#datum->syntax '#f 'h))
                                       (__tmp28126
                                        (let ((__tmp28127
                                               (let ((__tmp28128
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L16006_ '()))))
                                                 (declare (not safe))
                                                 (cons _L15999_ __tmp28128))))
                                          (declare (not safe))
                                          (cons __tmp28127 '()))))
                                   (declare (not safe))
                                   (cons __tmp28129 __tmp28126)))
                                (__tmp28107
                                 (let ((__tmp28117
                                        (let ((__tmp28124
                                               (gx#datum->syntax '#f 'ix))
                                              (__tmp28118
                                               (let ((__tmp28119
                                                      (let ((__tmp28123
                                                             (gx#datum->syntax
                                                              '#f
                                                              '##fxmodulo))
                                                            (__tmp28120
                                                             (let ((__tmp28122
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'h))
                           (__tmp28121
                            (let () (declare (not safe)) (cons _L16000_ '()))))
                       (declare (not safe))
                       (cons __tmp28122 __tmp28121))))
                (declare (not safe))
                (cons __tmp28123 __tmp28120))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp28119 '()))))
                                          (declare (not safe))
                                          (cons __tmp28124 __tmp28118)))
                                       (__tmp28108
                                        (let ((__tmp28109
                                               (let ((__tmp28116
                                                      (gx#datum->syntax
                                                       '#f
                                                       'q))
                                                     (__tmp28110
                                                      (let ((__tmp28111
                                                             (let ((__tmp28115
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '##vector-ref))
                           (__tmp28112
                            (let ((__tmp28113
                                   (let ((__tmp28114
                                          (gx#datum->syntax '#f 'ix)))
                                     (declare (not safe))
                                     (cons __tmp28114 '()))))
                              (declare (not safe))
                              (cons _L16004_ __tmp28113))))
                       (declare (not safe))
                       (cons __tmp28115 __tmp28112))))
                (declare (not safe))
                (cons __tmp28111 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp28116
                                                       __tmp28110))))
                                          (declare (not safe))
                                          (cons __tmp28109 '()))))
                                   (declare (not safe))
                                   (cons __tmp28117 __tmp28108))))
                            (declare (not safe))
                            (cons __tmp28125 __tmp28107)))
                         (__tmp28068
                          (let ((__tmp28069
                                 (let ((__tmp28105 (gx#datum->syntax '#f 'if))
                                       (__tmp28070
                                        (let ((__tmp28104
                                               (gx#datum->syntax '#f 'q))
                                              (__tmp28071
                                               (let ((__tmp28074
                                                      (let ((__tmp28103
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp28075
                                                             (let ((__tmp28096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp28097
                                   (let ((__tmp28099
                                          (let ((__tmp28102
                                                 (gx#datum->syntax '#f '##car))
                                                (__tmp28100
                                                 (let ((__tmp28101
                                                        (gx#datum->syntax
                                                         '#f
                                                         'q)))
                                                   (declare (not safe))
                                                   (cons __tmp28101 '()))))
                                            (declare (not safe))
                                            (cons __tmp28102 __tmp28100)))
                                         (__tmp28098
                                          (let ()
                                            (declare (not safe))
                                            (cons _L16006_ '()))))
                                     (declare (not safe))
                                     (cons __tmp28099 __tmp28098))))
                              (declare (not safe))
                              (cons _L15997_ __tmp28097)))
                           (__tmp28076
                            (let ((__tmp28079
                                   (let ((__tmp28095
                                          (gx#datum->syntax '#f 'let))
                                         (__tmp28080
                                          (let ((__tmp28088
                                                 (let ((__tmp28094
                                                        (gx#datum->syntax
                                                         '#f
                                                         'x))
                                                       (__tmp28089
                                                        (let ((__tmp28090
                                                               (let ((__tmp28093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f '##cdr))
                             (__tmp28091
                              (let ((__tmp28092 (gx#datum->syntax '#f 'q)))
                                (declare (not safe))
                                (cons __tmp28092 '()))))
                         (declare (not safe))
                         (cons __tmp28093 __tmp28091))))
                  (declare (not safe))
                  (cons __tmp28090 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp28094
                                                         __tmp28089)))
                                                (__tmp28081
                                                 (let ((__tmp28082
                                                        (let ((__tmp28087
                                                               (gx#datum->syntax
                                                                '#f
                                                                '~case-dispatch))
                                                              (__tmp28083
                                                               (let ((__tmp28086
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'x))
                             (__tmp28084
                              (let ((__tmp28085
                                     (lambda (_g1605016053_ _g1605116056_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g1605016053_ _g1605116056_)))))
                                (declare (not safe))
                                (foldr1 __tmp28085 '() _L16003_))))
                         (declare (not safe))
                         (cons __tmp28086 __tmp28084))))
                  (declare (not safe))
                  (cons __tmp28087 __tmp28083))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp28082 '()))))
                                            (declare (not safe))
                                            (cons __tmp28088 __tmp28081))))
                                     (declare (not safe))
                                     (cons __tmp28095 __tmp28080)))
                                  (__tmp28077
                                   (let ((__tmp28078
                                          (let ()
                                            (declare (not safe))
                                            (cons _L16005_ '()))))
                                     (declare (not safe))
                                     (cons __tmp28078 '()))))
                              (declare (not safe))
                              (cons __tmp28079 __tmp28077))))
                       (declare (not safe))
                       (cons __tmp28096 __tmp28076))))
                (declare (not safe))
                (cons __tmp28103 __tmp28075)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp28072
                                                      (let ((__tmp28073
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L16005_ '()))))
                (declare (not safe))
                (cons __tmp28073 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp28074
                                                       __tmp28072))))
                                          (declare (not safe))
                                          (cons __tmp28104 __tmp28071))))
                                   (declare (not safe))
                                   (cons __tmp28105 __tmp28070))))
                            (declare (not safe))
                            (cons __tmp28069 '()))))
                     (declare (not safe))
                     (cons __tmp28106 __tmp28068))))
              (declare (not safe))
              (cons __tmp28130 __tmp28067))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp28066 '()))))
                                        (declare (not safe))
                                        (cons __tmp28131 __tmp28065))))
                                 (declare (not safe))
                                 (cons __tmp28144 __tmp28064))))
                           _hd1586315991_
                           _hd1586015981_
                           _hd1585715971_
                           _hd1585415961_
                           _hd1585115951_
                           _dispatch1584915943_
                           _hd1583615901_
                           _hd1583315891_
                           _hd1583015881_)
                          (_g1581815870_ _g1581915874_))))
                  (_g1581815870_ _g1581915874_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1581815870_
                                                   _g1581915874_))))
                                          (_g1581815870_ _g1581915874_))))
                                  (_g1581815870_ _g1581915874_))))
                          (_g1581815870_ _g1581915874_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1584415923_
                                               _target1584115917_
                                               '()))
                                            (_g1581815870_ _g1581915874_)))))
                                  (_g1581815870_ _g1581915874_))))
                          (_g1581815870_ _g1581915874_))))
                  (_g1581815870_ _g1581915874_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1581815870_
                                                   _g1581915874_))))
                                          (_g1581815870_ _g1581915874_)))))
                              (_g1581716059_
                               (list _e15799_
                                     (gx#genident 'default)
                                     (gx#genident 'table)
                                     _dispatch15802_
                                     _default15803_
                                     _tab15813_
                                     (vector-length _tab15813_)
                                     _hashf15807_
                                     _eqf15808_))))))))))
          (let* ((_g1567515699_
                  (lambda (_g1567615695_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1567615695_)))
                 (_g1567415795_
                  (lambda (_g1567615703_)
                    (if (gx#stx-pair? _g1567615703_)
                        (let ((_e1568115706_ (gx#syntax-e _g1567615703_)))
                          (let ((_hd1568015710_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1568115706_)))
                                (_tl1567915713_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1568115706_))))
                            (if (gx#stx-pair? _tl1567915713_)
                                (let ((_e1568415716_
                                       (gx#syntax-e _tl1567915713_)))
                                  (let ((_hd1568315720_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1568415716_)))
                                        (_tl1568215723_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1568415716_))))
                                    (if (gx#stx-pair/null? _tl1568215723_)
                                        (let ((_g28145_
                                               (gx#syntax-split-splice
                                                _tl1568215723_
                                                '0)))
                                          (begin
                                            (let ((_g28146_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g28145_)
                                                         (##vector-length
                                                          _g28145_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g28146_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g28146_)))
                                            (let ((_target1568515726_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g28145_
                                                      0)))
                                                  (_tl1568715729_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g28145_
                                                      1))))
                                              (if (gx#stx-null? _tl1568715729_)
                                                  (letrec ((_loop1568815732_
                                                            (lambda (_hd1568615736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause1569215739_)
                      (if (gx#stx-pair? _hd1568615736_)
                          (let ((_e1568915742_ (gx#syntax-e _hd1568615736_)))
                            (let ((_lp-hd1569015746_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1568915742_)))
                                  (_lp-tl1569115749_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1568915742_))))
                              (_loop1568815732_
                               _lp-tl1569115749_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd1569015746_
                                       _clause1569215739_)))))
                          (let ((_clause1569315752_
                                 (reverse _clause1569215739_)))
                            ((lambda (_L15756_ _L15758_)
                               (let ((_g28147_
                                      (_parse-clauses15649_
                                       _L15758_
                                       (let ((__tmp28149
                                              (lambda (_g1577615779_
                                                       _g1577715782_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1577615779_
                                                        _g1577715782_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp28149 '() _L15756_)))))
                                 (begin
                                   (let ((_g28148_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g28147_)
                                                (##vector-length _g28147_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g28148_ 3)))
                                         (error "Context expects 3 values"
                                                _g28148_)))
                                   (let ((_datums15785_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g28147_ 0)))
                                         (_dispatch15787_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g28147_ 1)))
                                         (_default15788_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g28147_ 2))))
                                     (let ((_datum-count15790_
                                            (_count-datums15652_
                                             _datums15785_)))
                                       (if (< _datum-count15790_ '6)
                                           (_generate-simple-case15657_
                                            _L15758_
                                            _datums15785_
                                            _dispatch15787_
                                            _default15788_)
                                           (if (_char-datums?15654_
                                                _datums15785_)
                                               (_generate-char-dispatch15666_
                                                _L15758_
                                                _datums15785_
                                                _dispatch15787_
                                                _default15788_)
                                               (if (_fixnum-datums?15655_
                                                    _datums15785_)
                                                   (_generate-fixnum-dispatch15671_
                                                    _L15758_
                                                    _datums15785_
                                                    _dispatch15787_
                                                    _default15788_)
                                                   (if (< _datum-count15790_
                                                          '12)
                                                       (_generate-simple-case15657_
                                                        _L15758_
                                                        _datums15785_
                                                        _dispatch15787_
                                                        _default15788_)
                                                       (if (_symbolic-datums?15653_
                                                            _datums15785_)
                                                           (_generate-symbolic-dispatch15661_
                                                            _L15758_
                                                            _datums15785_
                                                            _dispatch15787_
                                                            _default15788_)
                                                           (_generate-generic-dispatch15673_
                                                            _L15758_
                                                            _datums15785_
                                                            _dispatch15787_
                                                            _default15788_)))))))))))
                             _clause1569315752_
                             _hd1568315720_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1568815732_
                                                     _target1568515726_
                                                     '()))
                                                  (_g1567515699_
                                                   _g1567615703_)))))
                                        (_g1567515699_ _g1567615703_))))
                                (_g1567515699_ _g1567615703_))))
                        (_g1567515699_ _g1567615703_)))))
            (_g1567415795_ _stx15646_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-test|
      (lambda (_stx18697_)
        (let* ((_g1870018718_
                (lambda (_g1870118714_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1870118714_)))
               (_g1869918784_
                (lambda (_g1870118722_)
                  (if (gx#stx-pair? _g1870118722_)
                      (let ((_e1870618725_ (gx#syntax-e _g1870118722_)))
                        (let ((_hd1870518729_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1870618725_)))
                              (_tl1870418732_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1870618725_))))
                          (if (gx#stx-pair? _tl1870418732_)
                              (let ((_e1870918735_
                                     (gx#syntax-e _tl1870418732_)))
                                (let ((_hd1870818739_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1870918735_)))
                                      (_tl1870718742_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1870918735_))))
                                  (if (gx#stx-pair? _tl1870718742_)
                                      (let ((_e1871218745_
                                             (gx#syntax-e _tl1870718742_)))
                                        (let ((_hd1871118749_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1871218745_)))
                                              (_tl1871018752_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1871218745_))))
                                          (if (gx#stx-null? _tl1871018752_)
                                              ((lambda (_L18755_ _L18757_)
                                                 (let ((_datum-e18773_
                                                        (gx#stx-e _L18757_)))
                                                   (if (or (let ()
                                                             (declare
                                                               (not safe))
                                                             (symbol? _datum-e18773_))
                                                           (keyword?
                                                            _datum-e18773_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (immediate?
                                                              _datum-e18773_)))
                                                       (let ((__tmp28167
                                                              (gx#datum->syntax
                                                               '#f
                                                               'eq?))
                                                             (__tmp28162
                                                              (let ((__tmp28164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp28166 (gx#datum->syntax '#f 'quote))
                                   (__tmp28165
                                    (let ()
                                      (declare (not safe))
                                      (cons _L18757_ '()))))
                               (declare (not safe))
                               (cons __tmp28166 __tmp28165)))
                            (__tmp28163
                             (let ()
                               (declare (not safe))
                               (cons _L18755_ '()))))
                        (declare (not safe))
                        (cons __tmp28164 __tmp28163))))
                 (declare (not safe))
                 (cons __tmp28167 __tmp28162))
               (if (let () (declare (not safe)) (number? _datum-e18773_))
                   (let ((__tmp28161 (gx#datum->syntax '#f 'eqv?))
                         (__tmp28156
                          (let ((__tmp28158
                                 (let ((__tmp28160
                                        (gx#datum->syntax '#f 'quote))
                                       (__tmp28159
                                        (let ()
                                          (declare (not safe))
                                          (cons _L18757_ '()))))
                                   (declare (not safe))
                                   (cons __tmp28160 __tmp28159)))
                                (__tmp28157
                                 (let ()
                                   (declare (not safe))
                                   (cons _L18755_ '()))))
                            (declare (not safe))
                            (cons __tmp28158 __tmp28157))))
                     (declare (not safe))
                     (cons __tmp28161 __tmp28156))
                   (let ((__tmp28155 (gx#datum->syntax '#f 'equal?))
                         (__tmp28150
                          (let ((__tmp28152
                                 (let ((__tmp28154
                                        (gx#datum->syntax '#f 'quote))
                                       (__tmp28153
                                        (let ()
                                          (declare (not safe))
                                          (cons _L18757_ '()))))
                                   (declare (not safe))
                                   (cons __tmp28154 __tmp28153)))
                                (__tmp28151
                                 (let ()
                                   (declare (not safe))
                                   (cons _L18755_ '()))))
                            (declare (not safe))
                            (cons __tmp28152 __tmp28151))))
                     (declare (not safe))
                     (cons __tmp28155 __tmp28150))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd1871118749_
                                               _hd1870818739_)
                                              (_g1870018718_ _g1870118722_))))
                                      (_g1870018718_ _g1870118722_))))
                              (_g1870018718_ _g1870118722_))))
                      (_g1870018718_ _g1870118722_)))))
          (_g1869918784_ _stx18697_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch|
      (lambda (_$stx18788_)
        (let* ((_g1879218816_
                (lambda (_g1879318812_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1879318812_)))
               (_g1879118901_
                (lambda (_g1879318820_)
                  (if (gx#stx-pair? _g1879318820_)
                      (let ((_e1879818823_ (gx#syntax-e _g1879318820_)))
                        (let ((_hd1879718827_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1879818823_)))
                              (_tl1879618830_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1879818823_))))
                          (if (gx#stx-pair? _tl1879618830_)
                              (let ((_e1880118833_
                                     (gx#syntax-e _tl1879618830_)))
                                (let ((_hd1880018837_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1880118833_)))
                                      (_tl1879918840_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1880118833_))))
                                  (if (gx#stx-pair/null? _tl1879918840_)
                                      (let ((_g28253_
                                             (gx#syntax-split-splice
                                              _tl1879918840_
                                              '0)))
                                        (begin
                                          (let ((_g28254_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g28253_)
                                                       (##vector-length
                                                        _g28253_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g28254_ 2)))
                                                (error "Context expects 2 values"
                                                       _g28254_)))
                                          (let ((_target1880218843_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g28253_ 0)))
                                                (_tl1880418846_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g28253_ 1))))
                                            (if (gx#stx-null? _tl1880418846_)
                                                (letrec ((_loop1880518849_
                                                          (lambda (_hd1880318853_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _K1880918856_)
                    (if (gx#stx-pair? _hd1880318853_)
                        (let ((_e1880618859_ (gx#syntax-e _hd1880318853_)))
                          (let ((_lp-hd1880718863_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1880618859_)))
                                (_lp-tl1880818866_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1880618859_))))
                            (_loop1880518849_
                             _lp-tl1880818866_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1880718863_ _K1880918856_)))))
                        (let ((_K1881018869_ (reverse _K1880918856_)))
                          ((lambda (_L18873_ _L18875_)
                             (let ((__tmp28259
                                    (gx#datum->syntax '#f '~case-dispatch*))
                                   (__tmp28255
                                    (let ((__tmp28256
                                           (let ((__tmp28257
                                                  (let ((__tmp28258
                                                         (lambda (_g1889218895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1889318898_)
                   (let ()
                     (declare (not safe))
                     (cons _g1889218895_ _g1889318898_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp28258
                                                            '()
                                                            _L18873_))))
                                             (declare (not safe))
                                             (cons _L18875_ __tmp28257))))
                                      (declare (not safe))
                                      (cons '0 __tmp28256))))
                               (declare (not safe))
                               (cons __tmp28259 __tmp28255)))
                           _K1881018869_
                           _hd1880018837_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1880518849_
                                                   _target1880218843_
                                                   '()))
                                                (_g1879218816_
                                                 _g1879318820_)))))
                                      (_g1879218816_ _g1879318820_))))
                              (_g1879218816_ _g1879318820_))))
                      (_g1879218816_ _g1879318820_)))))
          (_g1879118901_ _$stx18788_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch*|
      (lambda (_stx18906_)
        (let* ((___stx2591125912_ _stx18906_)
               (_g1891319009_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2591125912_))))
          (let ((___kont2591425915_
                 (lambda (_L19486_ _L19488_)
                   (let ((__tmp28261 (gx#datum->syntax '#f 'quote))
                         (__tmp28260
                          (let () (declare (not safe)) (cons '#!void '()))))
                     (declare (not safe))
                     (cons __tmp28261 __tmp28260))))
                (___kont2591625917_
                 (lambda (_L19428_ _L19430_ _L19431_) _L19428_))
                (___kont2591825919_
                 (lambda (_L19325_ _L19327_ _L19328_ _L19329_)
                   (let* ((_g1935019358_
                           (lambda (_g1935119354_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g1935119354_)))
                          (_g1934919377_
                           (lambda (_g1935119362_)
                             ((lambda (_L19365_)
                                (let ()
                                  (let ((__tmp28269 (gx#datum->syntax '#f 'if))
                                        (__tmp28262
                                         (let ((__tmp28265
                                                (let ((__tmp28268
                                                       (gx#datum->syntax
                                                        '#f
                                                        '##fx=))
                                                      (__tmp28266
                                                       (let ((__tmp28267
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L19365_ '()))))
                 (declare (not safe))
                 (cons _L19328_ __tmp28267))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp28268
                                                        __tmp28266)))
                                               (__tmp28263
                                                (let ((__tmp28264
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L19325_ '()))))
                                                  (declare (not safe))
                                                  (cons _L19327_ __tmp28264))))
                                           (declare (not safe))
                                           (cons __tmp28265 __tmp28263))))
                                    (declare (not safe))
                                    (cons __tmp28269 __tmp28262))))
                              _g1935119362_))))
                     (_g1934919377_ (gx#stx-e _L19329_)))))
                (___kont2592025921_
                 (lambda (_L19175_ _L19177_ _L19178_ _L19179_ _L19180_)
                   (let* ((_g1920419219_
                           (lambda (_g1920519215_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g1920519215_)))
                          (_g1920319264_
                           (lambda (_g1920519223_)
                             (if (gx#stx-pair? _g1920519223_)
                                 (let ((_e1921019226_
                                        (gx#syntax-e _g1920519223_)))
                                   (let ((_hd1920919230_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e1921019226_)))
                                         (_tl1920819233_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e1921019226_))))
                                     (if (gx#stx-pair? _tl1920819233_)
                                         (let ((_e1921319236_
                                                (gx#syntax-e _tl1920819233_)))
                                           (let ((_hd1921219240_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1921319236_)))
                                                 (_tl1921119243_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1921319236_))))
                                             (if (gx#stx-null? _tl1921119243_)
                                                 ((lambda (_L19246_ _L19248_)
                                                    (let ()
                                                      (let ((__tmp28286
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp28270
                                                             (let ((__tmp28282
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp28285 (gx#datum->syntax '#f '##fx=))
                                  (__tmp28283
                                   (let ((__tmp28284
                                          (let ()
                                            (declare (not safe))
                                            (cons _L19248_ '()))))
                                     (declare (not safe))
                                     (cons _L19179_ __tmp28284))))
                              (declare (not safe))
                              (cons __tmp28285 __tmp28283)))
                           (__tmp28271
                            (let ((__tmp28272
                                   (let ((__tmp28273
                                          (let ((__tmp28281
                                                 (gx#datum->syntax '#f 'if))
                                                (__tmp28274
                                                 (let ((__tmp28277
                                                        (let ((__tmp28280
                                                               (gx#datum->syntax
                                                                '#f
                                                                '##fx=))
                                                              (__tmp28278
                                                               (let ((__tmp28279
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _L19246_ '()))))
                         (declare (not safe))
                         (cons _L19179_ __tmp28279))))
                  (declare (not safe))
                  (cons __tmp28280 __tmp28278)))
               (__tmp28275
                (let ((__tmp28276
                       (let () (declare (not safe)) (cons _L19175_ '()))))
                  (declare (not safe))
                  (cons _L19177_ __tmp28276))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp28277
                                                         __tmp28275))))
                                            (declare (not safe))
                                            (cons __tmp28281 __tmp28274))))
                                     (declare (not safe))
                                     (cons __tmp28273 '()))))
                              (declare (not safe))
                              (cons _L19178_ __tmp28272))))
                       (declare (not safe))
                       (cons __tmp28282 __tmp28271))))
                (declare (not safe))
                (cons __tmp28286 __tmp28270))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1921219240_
                                                  _hd1920919230_)
                                                 (_g1920419219_
                                                  _g1920519223_))))
                                         (_g1920419219_ _g1920519223_))))
                                 (_g1920419219_ _g1920519223_)))))
                     (_g1920319264_
                      (list (gx#stx-e _L19180_)
                            (let ((__tmp28287 (gx#stx-e _L19180_)))
                              (declare (not safe))
                              (fx+ __tmp28287 '1)))))))
                (___kont2592225923_
                 (lambda (_L19076_ _L19078_ _L19079_)
                   (let ((__tmp28292
                          (gx#datum->syntax '#f '~case-dispatch-bsearch))
                         (__tmp28288
                          (let ((__tmp28289
                                 (let ((__tmp28290
                                        (let ((__tmp28291
                                               (lambda (_g1909919102_
                                                        _g1910019105_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1909919102_
                                                         _g1910019105_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp28291 '() _L19076_))))
                                   (declare (not safe))
                                   (cons _L19078_ __tmp28290))))
                            (declare (not safe))
                            (cons _L19079_ __tmp28289))))
                     (declare (not safe))
                     (cons __tmp28292 __tmp28288)))))
            (let ((___match2606826069_
                   (lambda (_e1898819016_
                            _hd1898719020_
                            _tl1898619023_
                            _e1899119026_
                            _hd1899019030_
                            _tl1898919033_
                            _e1899419036_
                            _hd1899319040_
                            _tl1899219043_
                            ___splice2592425925_
                            _target1899519046_
                            _tl1899719049_)
                     (letrec ((_loop1899819052_
                               (lambda (_hd1899619056_ _K1900219059_)
                                 (if (gx#stx-pair? _hd1899619056_)
                                     (let ((_e1899919062_
                                            (gx#syntax-e _hd1899619056_)))
                                       (let ((_lp-tl1900119069_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1899919062_)))
                                             (_lp-hd1900019066_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1899919062_))))
                                         (_loop1899819052_
                                          _lp-tl1900119069_
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd1900019066_
                                                  _K1900219059_)))))
                                     (let ((_K1900319072_
                                            (reverse _K1900219059_)))
                                       (___kont2592225923_
                                        _K1900319072_
                                        _hd1899319040_
                                        _hd1899019030_))))))
                       (_loop1899819052_ _target1899519046_ '())))))
              (if (gx#stx-pair? ___stx2591125912_)
                  (let ((_e1891919456_ (gx#syntax-e ___stx2591125912_)))
                    (let ((_tl1891719463_
                           (let () (declare (not safe)) (##cdr _e1891919456_)))
                          (_hd1891819460_
                           (let ()
                             (declare (not safe))
                             (##car _e1891919456_))))
                      (if (gx#stx-pair? _tl1891719463_)
                          (let ((_e1892219466_ (gx#syntax-e _tl1891719463_)))
                            (let ((_tl1892019473_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1892219466_)))
                                  (_hd1892119470_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1892219466_))))
                              (if (gx#stx-pair? _tl1892019473_)
                                  (let ((_e1892519476_
                                         (gx#syntax-e _tl1892019473_)))
                                    (let ((_tl1892319483_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1892519476_)))
                                          (_hd1892419480_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1892519476_))))
                                      (if (gx#stx-null? _tl1892319483_)
                                          (___kont2591425915_
                                           _hd1892419480_
                                           _hd1892119470_)
                                          (if (gx#stx-pair? _tl1892319483_)
                                              (let ((_e1894019418_
                                                     (gx#syntax-e
                                                      _tl1892319483_)))
                                                (let ((_tl1893819425_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1894019418_)))
                                                      (_hd1893919422_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1894019418_))))
                                                  (if (gx#stx-null?
                                                       _tl1893819425_)
                                                      (___kont2591625917_
                                                       _hd1893919422_
                                                       _hd1892419480_
                                                       _hd1892119470_)
                                                      (if (gx#stx-pair?
                                                           _tl1893819425_)
                                                          (let ((_e1895919315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1893819425_)))
                    (let ((_tl1895719322_
                           (let () (declare (not safe)) (##cdr _e1895919315_)))
                          (_hd1895819319_
                           (let ()
                             (declare (not safe))
                             (##car _e1895919315_))))
                      (if (gx#stx-null? _tl1895719322_)
                          (___kont2591825919_
                           _hd1895819319_
                           _hd1893919422_
                           _hd1892419480_
                           _hd1892119470_)
                          (if (gx#stx-pair? _tl1895719322_)
                              (let ((_e1898219165_
                                     (gx#syntax-e _tl1895719322_)))
                                (let ((_tl1898019172_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1898219165_)))
                                      (_hd1898119169_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1898219165_))))
                                  (if (gx#stx-null? _tl1898019172_)
                                      (___kont2592025921_
                                       _hd1898119169_
                                       _hd1895819319_
                                       _hd1893919422_
                                       _hd1892419480_
                                       _hd1892119470_)
                                      (if (gx#stx-pair/null? _tl1892319483_)
                                          (let ((___splice2592425925_
                                                 (gx#syntax-split-splice
                                                  _tl1892319483_
                                                  '0)))
                                            (let ((_tl1899719049_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2592425925_
                                                      '1)))
                                                  (_target1899519046_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2592425925_
                                                      '0))))
                                              (if (gx#stx-null? _tl1899719049_)
                                                  (___match2606826069_
                                                   _e1891919456_
                                                   _hd1891819460_
                                                   _tl1891719463_
                                                   _e1892219466_
                                                   _hd1892119470_
                                                   _tl1892019473_
                                                   _e1892519476_
                                                   _hd1892419480_
                                                   _tl1892319483_
                                                   ___splice2592425925_
                                                   _target1899519046_
                                                   _tl1899719049_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1891319009_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1891319009_))))))
                              (if (gx#stx-pair/null? _tl1892319483_)
                                  (let ((___splice2592425925_
                                         (gx#syntax-split-splice
                                          _tl1892319483_
                                          '0)))
                                    (let ((_tl1899719049_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2592425925_
                                              '1)))
                                          (_target1899519046_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2592425925_
                                              '0))))
                                      (if (gx#stx-null? _tl1899719049_)
                                          (___match2606826069_
                                           _e1891919456_
                                           _hd1891819460_
                                           _tl1891719463_
                                           _e1892219466_
                                           _hd1892119470_
                                           _tl1892019473_
                                           _e1892519476_
                                           _hd1892419480_
                                           _tl1892319483_
                                           ___splice2592425925_
                                           _target1899519046_
                                           _tl1899719049_)
                                          (let ()
                                            (declare (not safe))
                                            (_g1891319009_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1891319009_)))))))
                  (if (gx#stx-pair/null? _tl1892319483_)
                      (let ((___splice2592425925_
                             (gx#syntax-split-splice _tl1892319483_ '0)))
                        (let ((_tl1899719049_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice2592425925_ '1)))
                              (_target1899519046_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice2592425925_ '0))))
                          (if (gx#stx-null? _tl1899719049_)
                              (___match2606826069_
                               _e1891919456_
                               _hd1891819460_
                               _tl1891719463_
                               _e1892219466_
                               _hd1892119470_
                               _tl1892019473_
                               _e1892519476_
                               _hd1892419480_
                               _tl1892319483_
                               ___splice2592425925_
                               _target1899519046_
                               _tl1899719049_)
                              (let () (declare (not safe)) (_g1891319009_)))))
                      (let () (declare (not safe)) (_g1891319009_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl1892319483_)
                                                  (let ((___splice2592425925_
                                                         (gx#syntax-split-splice
                                                          _tl1892319483_
                                                          '0)))
                                                    (let ((_tl1899719049_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice2592425925_
                                                              '1)))
                                                          (_target1899519046_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice2592425925_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl1899719049_)
                                                          (___match2606826069_
                                                           _e1891919456_
                                                           _hd1891819460_
                                                           _tl1891719463_
                                                           _e1892219466_
                                                           _hd1892119470_
                                                           _tl1892019473_
                                                           _e1892519476_
                                                           _hd1892419480_
                                                           _tl1892319483_
                                                           ___splice2592425925_
                                                           _target1899519046_
                                                           _tl1899719049_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g1891319009_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1891319009_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1891319009_)))))
                          (let () (declare (not safe)) (_g1891319009_)))))
                  (let () (declare (not safe)) (_g1891319009_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#~case-dispatch-bsearch|
      (lambda (_stx19508_)
        (letrec ((_split19511_
                  (lambda (_lst19872_ _mid19874_)
                    (let _lp19876_ ((_i19879_ '0)
                                    (_rest19881_ _lst19872_)
                                    (_left19882_ '()))
                      (if (fx< _i19879_ _mid19874_)
                          (_lp19876_
                           (let () (declare (not safe)) (fx+ _i19879_ '1))
                           (cdr _rest19881_)
                           (let ((__tmp28293 (car _rest19881_)))
                             (declare (not safe))
                             (cons __tmp28293 _left19882_)))
                          (values (reverse _left19882_) _rest19881_))))))
          (let* ((_g1951419542_
                  (lambda (_g1951519538_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1951519538_)))
                 (_g1951319868_
                  (lambda (_g1951519546_)
                    (if (gx#stx-pair? _g1951519546_)
                        (let ((_e1952119549_ (gx#syntax-e _g1951519546_)))
                          (let ((_hd1952019553_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1952119549_)))
                                (_tl1951919556_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1952119549_))))
                            (if (gx#stx-pair? _tl1951919556_)
                                (let ((_e1952419559_
                                       (gx#syntax-e _tl1951919556_)))
                                  (let ((_hd1952319563_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1952419559_)))
                                        (_tl1952219566_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1952419559_))))
                                    (if (gx#stx-pair? _tl1952219566_)
                                        (let ((_e1952719569_
                                               (gx#syntax-e _tl1952219566_)))
                                          (let ((_hd1952619573_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1952719569_)))
                                                (_tl1952519576_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1952719569_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1952519576_)
                                                (let ((_g28294_
                                                       (gx#syntax-split-splice
                                                        _tl1952519576_
                                                        '0)))
                                                  (begin
                                                    (let ((_g28295_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g28294_)
                         (##vector-length _g28294_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g28295_ 2)))
                  (error "Context expects 2 values" _g28295_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1952819579_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g28294_
                                                              0)))
                                                          (_tl1953019582_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g28294_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1953019582_)
                                                          (letrec ((_loop1953119585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1952919589_ _K1953519592_)
                              (if (gx#stx-pair? _hd1952919589_)
                                  (let ((_e1953219595_
                                         (gx#syntax-e _hd1952919589_)))
                                    (let ((_lp-hd1953319599_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1953219595_)))
                                          (_lp-tl1953419602_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1953219595_))))
                                      (_loop1953119585_
                                       _lp-tl1953419602_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1953319599_
                                               _K1953519592_)))))
                                  (let ((_K1953619605_
                                         (reverse _K1953519592_)))
                                    ((lambda (_L19609_ _L19611_ _L19612_)
                                       (let* ((_len19642_
                                               (length (let ((__tmp28296
                                                              (lambda (_g1963319636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1963419639_)
                        (let ()
                          (declare (not safe))
                          (cons _g1963319636_ _g1963419639_)))))
                 (declare (not safe))
                 (foldr1 __tmp28296 '() _L19609_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_mid19645_
                                               (quotient _len19642_ '2))
                                              (_g28297_
                                               (_split19511_
                                                (let ((__tmp28299
                                                       (lambda (_g1964719650_
                                                                _g1964819653_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g1964719650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1964819653_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 __tmp28299
                                                          '()
                                                          _L19609_))
                                                _mid19645_)))
                                         (begin
                                           (let ((_g28298_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g28297_)
                                                        (##vector-length
                                                         _g28297_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g28298_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g28298_)))
                                           (let ((_left19656_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g28297_ 0)))
                                                 (_right19658_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g28297_
                                                     1))))
                                             (let ()
                                               (let* ((_g1966219703_
                                                       (lambda (_g1966319699_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1966319699_)))
                                                      (_g1966119864_
                                                       (lambda (_g1966319707_)
                                                         (if (gx#stx-pair?
                                                              _g1966319707_)
                                                             (let ((_e1967019710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1966319707_)))
                       (let ((_hd1966919714_
                              (let ()
                                (declare (not safe))
                                (##car _e1967019710_)))
                             (_tl1966819717_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1967019710_))))
                         (if (gx#stx-pair? _tl1966819717_)
                             (let ((_e1967319720_
                                    (gx#syntax-e _tl1966819717_)))
                               (let ((_hd1967219724_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1967319720_)))
                                     (_tl1967119727_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1967319720_))))
                                 (if (gx#stx-pair/null? _hd1967219724_)
                                     (let ((_g28300_
                                            (gx#syntax-split-splice
                                             _hd1967219724_
                                             '0)))
                                       (begin
                                         (let ((_g28301_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g28300_)
                                                      (##vector-length
                                                       _g28300_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g28301_ 2)))
                                               (error "Context expects 2 values"
                                                      _g28301_)))
                                         (let ((_target1967419730_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g28300_ 0)))
                                               (_tl1967619733_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g28300_ 1))))
                                           (if (gx#stx-null? _tl1967619733_)
                                               (letrec ((_loop1967719736_
                                                         (lambda (_hd1967519740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K-left1968119743_)
                   (if (gx#stx-pair? _hd1967519740_)
                       (let ((_e1967819746_ (gx#syntax-e _hd1967519740_)))
                         (let ((_lp-hd1967919750_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1967819746_)))
                               (_lp-tl1968019753_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1967819746_))))
                           (_loop1967719736_
                            _lp-tl1968019753_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1967919750_ _K-left1968119743_)))))
                       (let ((_K-left1968219756_ (reverse _K-left1968119743_)))
                         (if (gx#stx-pair? _tl1967119727_)
                             (let ((_e1968519760_
                                    (gx#syntax-e _tl1967119727_)))
                               (let ((_hd1968419764_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1968519760_)))
                                     (_tl1968319767_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1968519760_))))
                                 (if (gx#stx-pair/null? _hd1968419764_)
                                     (let ((_g28302_
                                            (gx#syntax-split-splice
                                             _hd1968419764_
                                             '0)))
                                       (begin
                                         (let ((_g28303_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g28302_)
                                                      (##vector-length
                                                       _g28302_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g28303_ 2)))
                                               (error "Context expects 2 values"
                                                      _g28303_)))
                                         (let ((_target1968619770_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g28302_ 0)))
                                               (_tl1968819773_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g28302_ 1))))
                                           (if (gx#stx-null? _tl1968819773_)
                                               (letrec ((_loop1968919776_
                                                         (lambda (_hd1968719780_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K-right1969319783_)
                   (if (gx#stx-pair? _hd1968719780_)
                       (let ((_e1969019786_ (gx#syntax-e _hd1968719780_)))
                         (let ((_lp-hd1969119790_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1969019786_)))
                               (_lp-tl1969219793_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1969019786_))))
                           (_loop1968919776_
                            _lp-tl1969219793_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1969119790_ _K-right1969319783_)))))
                       (let ((_K-right1969419796_
                              (reverse _K-right1969319783_)))
                         (if (gx#stx-pair? _tl1968319767_)
                             (let ((_e1969719800_
                                    (gx#syntax-e _tl1968319767_)))
                               (let ((_hd1969619804_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1969719800_)))
                                     (_tl1969519807_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1969719800_))))
                                 (if (gx#stx-null? _tl1969519807_)
                                     ((lambda (_L19810_
                                               _L19812_
                                               _L19813_
                                               _L19814_)
                                        (let ()
                                          (let ((__tmp28323
                                                 (gx#datum->syntax '#f 'if))
                                                (__tmp28304
                                                 (let ((__tmp28319
                                                        (let ((__tmp28322
                                                               (gx#datum->syntax
                                                                '#f
                                                                '##fx<))
                                                              (__tmp28320
                                                               (let ((__tmp28321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _L19810_ '()))))
                         (declare (not safe))
                         (cons _L19611_ __tmp28321))))
                  (declare (not safe))
                  (cons __tmp28322 __tmp28320)))
               (__tmp28305
                (let ((__tmp28313
                       (let ((__tmp28318
                              (gx#datum->syntax '#f '~case-dispatch*))
                             (__tmp28314
                              (let ((__tmp28315
                                     (let ((__tmp28316
                                            (let ((__tmp28317
                                                   (lambda (_g1984919852_
                                                            _g1985019855_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1984919852_
                                                             _g1985019855_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp28317
                                                      '()
                                                      _L19813_))))
                                       (declare (not safe))
                                       (cons _L19611_ __tmp28316))))
                                (declare (not safe))
                                (cons _L19612_ __tmp28315))))
                         (declare (not safe))
                         (cons __tmp28318 __tmp28314)))
                      (__tmp28306
                       (let ((__tmp28307
                              (let ((__tmp28312
                                     (gx#datum->syntax '#f '~case-dispatch*))
                                    (__tmp28308
                                     (let ((__tmp28309
                                            (let ((__tmp28310
                                                   (let ((__tmp28311
                                                          (lambda (_g1984719858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1984819861_)
                    (let ()
                      (declare (not safe))
                      (cons _g1984719858_ _g1984819861_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr1 __tmp28311
                                                             '()
                                                             _L19812_))))
                                              (declare (not safe))
                                              (cons _L19611_ __tmp28310))))
                                       (declare (not safe))
                                       (cons _L19810_ __tmp28309))))
                                (declare (not safe))
                                (cons __tmp28312 __tmp28308))))
                         (declare (not safe))
                         (cons __tmp28307 '()))))
                  (declare (not safe))
                  (cons __tmp28313 __tmp28306))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp28319
                                                         __tmp28305))))
                                            (declare (not safe))
                                            (cons __tmp28323 __tmp28304))))
                                      _hd1969619804_
                                      _K-right1969419796_
                                      _K-left1968219756_
                                      _hd1966919714_)
                                     (_g1966219703_ _g1966319707_))))
                             (_g1966219703_ _g1966319707_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1968919776_
                                                  _target1968619770_
                                                  '()))
                                               (_g1966219703_
                                                _g1966319707_)))))
                                     (_g1966219703_ _g1966319707_))))
                             (_g1966219703_ _g1966319707_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1967719736_
                                                  _target1967419730_
                                                  '()))
                                               (_g1966219703_
                                                _g1966319707_)))))
                                     (_g1966219703_ _g1966319707_))))
                             (_g1966219703_ _g1966319707_))))
                     (_g1966219703_ _g1966319707_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1966119864_
                                                  (list _mid19645_
                                                        _left19656_
                                                        _right19658_
                                                        (fx+ _mid19645_
                                                             (gx#stx-e
                                                              _L19612_))))))))))
                                     _K1953619605_
                                     _hd1952619573_
                                     _hd1952319563_))))))
                    (_loop1953119585_ _target1952819579_ '()))
                  (_g1951419542_ _g1951519546_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1951419542_
                                                 _g1951519546_))))
                                        (_g1951419542_ _g1951519546_))))
                                (_g1951419542_ _g1951519546_))))
                        (_g1951419542_ _g1951519546_)))))
            (_g1951319868_ _stx19508_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#do|
      (lambda (_$stx19888_)
        (let* ((_g1989219963_
                (lambda (_g1989319959_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1989319959_)))
               (_g1989120252_
                (lambda (_g1989319967_)
                  (if (gx#stx-pair? _g1989319967_)
                      (let ((_e1990219970_ (gx#syntax-e _g1989319967_)))
                        (let ((_hd1990119974_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1990219970_)))
                              (_tl1990019977_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1990219970_))))
                          (if (gx#stx-pair? _tl1990019977_)
                              (let ((_e1990519980_
                                     (gx#syntax-e _tl1990019977_)))
                                (let ((_hd1990419984_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1990519980_)))
                                      (_tl1990319987_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1990519980_))))
                                  (if (gx#stx-pair/null? _hd1990419984_)
                                      (let ((_g28324_
                                             (gx#syntax-split-splice
                                              _hd1990419984_
                                              '0)))
                                        (begin
                                          (let ((_g28325_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g28324_)
                                                       (##vector-length
                                                        _g28324_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g28325_ 2)))
                                                (error "Context expects 2 values"
                                                       _g28325_)))
                                          (let ((_target1990619990_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g28324_ 0)))
                                                (_tl1990819993_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g28324_ 1))))
                                            (if (gx#stx-null? _tl1990819993_)
                                                (letrec ((_loop1990919996_
                                                          (lambda (_hd1990720000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _step1991320003_
                           _init1991420005_
                           _var1991520007_)
                    (if (gx#stx-pair? _hd1990720000_)
                        (let ((_e1991020010_ (gx#syntax-e _hd1990720000_)))
                          (let ((_lp-hd1991120014_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1991020010_)))
                                (_lp-tl1991220017_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1991020010_))))
                            (if (gx#stx-pair? _lp-hd1991120014_)
                                (let ((_e1992120020_
                                       (gx#syntax-e _lp-hd1991120014_)))
                                  (let ((_hd1992020024_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1992120020_)))
                                        (_tl1991920027_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1992120020_))))
                                    (if (gx#stx-pair? _tl1991920027_)
                                        (let ((_e1992420030_
                                               (gx#syntax-e _tl1991920027_)))
                                          (let ((_hd1992320034_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1992420030_)))
                                                (_tl1992220037_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1992420030_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1992220037_)
                                                (let ((_g28364_
                                                       (gx#syntax-split-splice
                                                        _tl1992220037_
                                                        '0)))
                                                  (begin
                                                    (let ((_g28365_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g28364_)
                         (##vector-length _g28364_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g28365_ 2)))
                  (error "Context expects 2 values" _g28365_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1992520040_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g28364_
                                                              0)))
                                                          (_tl1992720043_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g28364_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1992720043_)
                                                          (letrec ((_loop1992820046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1992620050_ _step1993220053_)
                              (if (gx#stx-pair? _hd1992620050_)
                                  (let ((_e1992920056_
                                         (gx#syntax-e _hd1992620050_)))
                                    (let ((_lp-hd1993020060_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1992920056_)))
                                          (_lp-tl1993120063_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1992920056_))))
                                      (_loop1992820046_
                                       _lp-tl1993120063_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1993020060_
                                               _step1993220053_)))))
                                  (let ((_step1993320066_
                                         (reverse _step1993220053_)))
                                    (_loop1990919996_
                                     _lp-tl1991220017_
                                     (let ()
                                       (declare (not safe))
                                       (cons _step1993320066_
                                             _step1991320003_))
                                     (let ()
                                       (declare (not safe))
                                       (cons _hd1992320034_ _init1991420005_))
                                     (let ()
                                       (declare (not safe))
                                       (cons _hd1992020024_
                                             _var1991520007_))))))))
                    (_loop1992820046_ _target1992520040_ '()))
                  (_g1989219963_ _g1989319967_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1989219963_
                                                 _g1989319967_))))
                                        (_g1989219963_ _g1989319967_))))
                                (_g1989219963_ _g1989319967_))))
                        (let ((_step1991620070_ (reverse _step1991320003_))
                              (_init1991720073_ (reverse _init1991420005_))
                              (_var1991820075_ (reverse _var1991520007_)))
                          (if (gx#stx-pair? _tl1990319987_)
                              (let ((_e1993620078_
                                     (gx#syntax-e _tl1990319987_)))
                                (let ((_hd1993520082_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1993620078_)))
                                      (_tl1993420085_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1993620078_))))
                                  (if (gx#stx-pair? _hd1993520082_)
                                      (let ((_e1993920088_
                                             (gx#syntax-e _hd1993520082_)))
                                        (let ((_hd1993820092_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1993920088_)))
                                              (_tl1993720095_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1993920088_))))
                                          (if (gx#stx-pair/null?
                                               _tl1993720095_)
                                              (let ((_g28326_
                                                     (gx#syntax-split-splice
                                                      _tl1993720095_
                                                      '0)))
                                                (begin
                                                  (let ((_g28327_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g28326_)
                                                               (##vector-length
                                                                _g28326_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g28327_ 2)))
                (error "Context expects 2 values" _g28327_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1994020098_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g28326_
                                                            0)))
                                                        (_tl1994220101_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g28326_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl1994220101_)
                                                        (letrec ((_loop1994320104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1994120108_ _fini1994720111_)
                            (if (gx#stx-pair? _hd1994120108_)
                                (let ((_e1994420114_
                                       (gx#syntax-e _hd1994120108_)))
                                  (let ((_lp-hd1994520118_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1994420114_)))
                                        (_lp-tl1994620121_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1994420114_))))
                                    (_loop1994320104_
                                     _lp-tl1994620121_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd1994520118_
                                             _fini1994720111_)))))
                                (let ((_fini1994820124_
                                       (reverse _fini1994720111_)))
                                  (if (gx#stx-pair/null? _tl1993420085_)
                                      (let ((_g28328_
                                             (gx#syntax-split-splice
                                              _tl1993420085_
                                              '0)))
                                        (begin
                                          (let ((_g28329_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g28328_)
                                                       (##vector-length
                                                        _g28328_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g28329_ 2)))
                                                (error "Context expects 2 values"
                                                       _g28329_)))
                                          (let ((_target1994920128_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g28328_ 0)))
                                                (_tl1995120131_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g28328_ 1))))
                                            (if (gx#stx-null? _tl1995120131_)
                                                (letrec ((_loop1995220134_
                                                          (lambda (_hd1995020138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1995620141_)
                    (if (gx#stx-pair? _hd1995020138_)
                        (let ((_e1995320144_ (gx#syntax-e _hd1995020138_)))
                          (let ((_lp-hd1995420148_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1995320144_)))
                                (_lp-tl1995520151_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1995320144_))))
                            (_loop1995220134_
                             _lp-tl1995520151_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1995420148_ _body1995620141_)))))
                        (let ((_body1995720154_ (reverse _body1995620141_)))
                          ((lambda (_L20158_
                                    _L20160_
                                    _L20161_
                                    _L20162_
                                    _L20163_
                                    _L20164_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (let ((__tmp28363
                                         (lambda (_g2019720200_ _g2019820203_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g2019720200_
                                                   _g2019820203_)))))
                                    (declare (not safe))
                                    (foldr1 __tmp28363 '() _L20164_)))
                                 (let ((__tmp28362 (gx#datum->syntax '#f 'let))
                                       (__tmp28330
                                        (let ((__tmp28361
                                               (gx#datum->syntax '#f '$loop))
                                              (__tmp28331
                                               (let ((__tmp28357
                                                      (begin
                                                        (gx#syntax-check-splice-targets
                                                         _L20163_
                                                         _L20164_)
                                                        (let ((__tmp28358
                                                               (lambda (_g2021420218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2021520221_
                                _g2021620223_)
                         (let ((__tmp28359
                                (let ((__tmp28360
                                       (let ()
                                         (declare (not safe))
                                         (cons _g2021420218_ '()))))
                                  (declare (not safe))
                                  (cons _g2021520221_ __tmp28360))))
                           (declare (not safe))
                           (cons __tmp28359 _g2021620223_)))))
                  (declare (not safe))
                  (foldr2 __tmp28358 '() _L20163_ _L20164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp28332
                                                      (let ((__tmp28333
                                                             (let ((__tmp28356
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'if))
                           (__tmp28334
                            (let ((__tmp28335
                                   (let ((__tmp28351
                                          (let ((__tmp28355
                                                 (gx#datum->syntax '#f 'begin))
                                                (__tmp28352
                                                 (let ((__tmp28353
                                                        (let ((__tmp28354
                                                               (lambda (_g2021220226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2021320229_)
                         (let ()
                           (declare (not safe))
                           (cons _g2021220226_ _g2021320229_)))))
                  (declare (not safe))
                  (foldr1 __tmp28354 '() _L20160_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '#!void __tmp28353))))
                                            (declare (not safe))
                                            (cons __tmp28355 __tmp28352)))
                                         (__tmp28336
                                          (let ((__tmp28337
                                                 (let ((__tmp28350
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin))
                                                       (__tmp28338
                                                        (let ((__tmp28349
                                                               (lambda (_g2020520232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2020620235_)
                         (let ()
                           (declare (not safe))
                           (cons _g2020520232_ _g2020620235_))))
                      (__tmp28339
                       (let ((__tmp28340
                              (let ((__tmp28348 (gx#datum->syntax '#f '$loop))
                                    (__tmp28341
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _L20162_
                                        _L20164_)
                                       (let ((__tmp28342
                                              (lambda (_g2020720238_
                                                       _g2020820241_
                                                       _g2020920243_)
                                                (let ((__tmp28343
                                                       (let ((__tmp28347
                                                              (gx#datum->syntax
                                                               '#f
                                                               'begin))
                                                             (__tmp28344
                                                              (let ((__tmp28345
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp28346
                                    (lambda (_g2021020246_ _g2021120249_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g2021020246_ _g2021120249_)))))
                               (declare (not safe))
                               (foldr1 __tmp28346 '() _g2020720238_))))
                        (declare (not safe))
                        (cons _g2020820241_ __tmp28345))))
                 (declare (not safe))
                 (cons __tmp28347 __tmp28344))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp28343
                                                        _g2020920243_)))))
                                         (declare (not safe))
                                         (foldr2 __tmp28342
                                                 '()
                                                 _L20162_
                                                 _L20164_)))))
                                (declare (not safe))
                                (cons __tmp28348 __tmp28341))))
                         (declare (not safe))
                         (cons __tmp28340 '()))))
                  (declare (not safe))
                  (foldr1 __tmp28349 __tmp28339 _L20158_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp28350
                                                         __tmp28338))))
                                            (declare (not safe))
                                            (cons __tmp28337 '()))))
                                     (declare (not safe))
                                     (cons __tmp28351 __tmp28336))))
                              (declare (not safe))
                              (cons _L20161_ __tmp28335))))
                       (declare (not safe))
                       (cons __tmp28356 __tmp28334))))
                (declare (not safe))
                (cons __tmp28333 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp28357
                                                       __tmp28332))))
                                          (declare (not safe))
                                          (cons __tmp28361 __tmp28331))))
                                   (declare (not safe))
                                   (cons __tmp28362 __tmp28330))
                                 (_g1989219963_ _g1989319967_)))
                           _body1995720154_
                           _fini1994820124_
                           _hd1993820092_
                           _step1991620070_
                           _init1991720073_
                           _var1991820075_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1995220134_
                                                   _target1994920128_
                                                   '()))
                                                (_g1989219963_
                                                 _g1989319967_)))))
                                      (_g1989219963_ _g1989319967_)))))))
                  (_loop1994320104_ _target1994020098_ '()))
                (_g1989219963_ _g1989319967_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1989219963_ _g1989319967_))))
                                      (_g1989219963_ _g1989319967_))))
                              (_g1989219963_ _g1989319967_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1990919996_
                                                   _target1990619990_
                                                   '()
                                                   '()
                                                   '()))
                                                (_g1989219963_
                                                 _g1989319967_)))))
                                      (_g1989219963_ _g1989319967_))))
                              (_g1989219963_ _g1989319967_))))
                      (_g1989219963_ _g1989319967_)))))
          (_g1989120252_ _$stx19888_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#do-while|
      (lambda (_$stx20260_)
        (let* ((_g2026420287_
                (lambda (_g2026520283_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2026520283_)))
               (_g2026320358_
                (lambda (_g2026520291_)
                  (if (gx#stx-pair? _g2026520291_)
                      (let ((_e2027220294_ (gx#syntax-e _g2026520291_)))
                        (let ((_hd2027120298_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2027220294_)))
                              (_tl2027020301_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2027220294_))))
                          (if (gx#stx-pair? _tl2027020301_)
                              (let ((_e2027520304_
                                     (gx#syntax-e _tl2027020301_)))
                                (let ((_hd2027420308_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2027520304_)))
                                      (_tl2027320311_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2027520304_))))
                                  (if (gx#stx-pair? _tl2027320311_)
                                      (let ((_e2027820314_
                                             (gx#syntax-e _tl2027320311_)))
                                        (let ((_hd2027720318_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2027820314_)))
                                              (_tl2027620321_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2027820314_))))
                                          (if (gx#stx-pair? _hd2027720318_)
                                              (let ((_e2028120324_
                                                     (gx#syntax-e
                                                      _hd2027720318_)))
                                                (let ((_hd2028020328_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2028120324_)))
                                                      (_tl2027920331_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2028120324_))))
                                                  ((lambda (_L20334_
                                                            _L20336_
                                                            _L20337_
                                                            _L20338_)
                                                     (let ((__tmp28372
                                                            (gx#datum->syntax
                                                             '#f
                                                             'do))
                                                           (__tmp28366
                                                            (let ((__tmp28367
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp28368
                                  (let ((__tmp28369
                                         (let ((__tmp28371
                                                (gx#datum->syntax '#f 'not))
                                               (__tmp28370
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L20337_ '()))))
                                           (declare (not safe))
                                           (cons __tmp28371 __tmp28370))))
                                    (declare (not safe))
                                    (cons __tmp28369 _L20336_))))
                             (declare (not safe))
                             (cons __tmp28368 _L20334_))))
                      (declare (not safe))
                      (cons _L20338_ __tmp28367))))
               (declare (not safe))
               (cons __tmp28372 __tmp28366)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl2027620321_
                                                   _tl2027920331_
                                                   _hd2028020328_
                                                   _hd2027420308_)))
                                              (_g2026420287_ _g2026520291_))))
                                      (_g2026420287_ _g2026520291_))))
                              (_g2026420287_ _g2026520291_))))
                      (_g2026420287_ _g2026520291_)))))
          (_g2026320358_ _$stx20260_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#begin0|
      (lambda (_$stx20362_)
        (let* ((___stx2607126072_ _$stx20362_)
               (_g2036720398_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2607126072_))))
          (let ((___kont2607426075_ (lambda (_L20510_) _L20510_))
                (___kont2607626077_
                 (lambda (_L20455_ _L20457_)
                   (let ((__tmp28387 (gx#datum->syntax '#f 'let))
                         (__tmp28373
                          (let ((__tmp28384
                                 (let ((__tmp28386 (gx#datum->syntax '#f '$r))
                                       (__tmp28385
                                        (let ()
                                          (declare (not safe))
                                          (cons _L20457_ '()))))
                                   (declare (not safe))
                                   (cons __tmp28386 __tmp28385)))
                                (__tmp28374
                                 (let ((__tmp28377
                                        (let ((__tmp28383
                                               (gx#datum->syntax
                                                '#f
                                                '%#expression))
                                              (__tmp28378
                                               (let ((__tmp28379
                                                      (let ((__tmp28382
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp28380
                                                             (let ((__tmp28381
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g2047420477_ _g2047520480_)
                              (let ()
                                (declare (not safe))
                                (cons _g2047420477_ _g2047520480_)))))
                       (declare (not safe))
                       (foldr1 __tmp28381 '() _L20455_))))
                (declare (not safe))
                (cons __tmp28382 __tmp28380))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp28379 '()))))
                                          (declare (not safe))
                                          (cons __tmp28383 __tmp28378)))
                                       (__tmp28375
                                        (let ((__tmp28376
                                               (gx#datum->syntax '#f '$r)))
                                          (declare (not safe))
                                          (cons __tmp28376 '()))))
                                   (declare (not safe))
                                   (cons __tmp28377 __tmp28375))))
                            (declare (not safe))
                            (cons __tmp28384 __tmp28374))))
                     (declare (not safe))
                     (cons __tmp28387 __tmp28373)))))
            (let ((___match2611426115_
                   (lambda (_e2038020405_
                            _hd2037920409_
                            _tl2037820412_
                            _e2038320415_
                            _hd2038220419_
                            _tl2038120422_
                            ___splice2607826079_
                            _target2038420425_
                            _tl2038620428_)
                     (letrec ((_loop2038720431_
                               (lambda (_hd2038520435_ _rest2039120438_)
                                 (if (gx#stx-pair? _hd2038520435_)
                                     (let ((_e2038820441_
                                            (gx#syntax-e _hd2038520435_)))
                                       (let ((_lp-tl2039020448_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2038820441_)))
                                             (_lp-hd2038920445_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2038820441_))))
                                         (_loop2038720431_
                                          _lp-tl2039020448_
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd2038920445_
                                                  _rest2039120438_)))))
                                     (let ((_rest2039220451_
                                            (reverse _rest2039120438_)))
                                       (___kont2607626077_
                                        _rest2039220451_
                                        _hd2038220419_))))))
                       (_loop2038720431_ _target2038420425_ '())))))
              (if (gx#stx-pair? ___stx2607126072_)
                  (let ((_e2037220490_ (gx#syntax-e ___stx2607126072_)))
                    (let ((_tl2037020497_
                           (let () (declare (not safe)) (##cdr _e2037220490_)))
                          (_hd2037120494_
                           (let ()
                             (declare (not safe))
                             (##car _e2037220490_))))
                      (if (gx#stx-pair? _tl2037020497_)
                          (let ((_e2037520500_ (gx#syntax-e _tl2037020497_)))
                            (let ((_tl2037320507_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2037520500_)))
                                  (_hd2037420504_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2037520500_))))
                              (if (gx#stx-null? _tl2037320507_)
                                  (___kont2607426075_ _hd2037420504_)
                                  (if (gx#stx-pair/null? _tl2037320507_)
                                      (let ((___splice2607826079_
                                             (gx#syntax-split-splice
                                              _tl2037320507_
                                              '0)))
                                        (let ((_tl2038620428_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2607826079_
                                                  '1)))
                                              (_target2038420425_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2607826079_
                                                  '0))))
                                          (if (gx#stx-null? _tl2038620428_)
                                              (___match2611426115_
                                               _e2037220490_
                                               _hd2037120494_
                                               _tl2037020497_
                                               _e2037520500_
                                               _hd2037420504_
                                               _tl2037320507_
                                               ___splice2607826079_
                                               _target2038420425_
                                               _tl2038620428_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2036720398_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2036720398_))))))
                          (let () (declare (not safe)) (_g2036720398_)))))
                  (let () (declare (not safe)) (_g2036720398_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#rec|
      (lambda (_$stx20528_)
        (let* ((___stx2611726118_ _$stx20528_)
               (_g2053420587_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2611726118_))))
          (let ((___kont2612026121_
                 (lambda (_L20789_ _L20791_)
                   (let ((__tmp28393 (gx#datum->syntax '#f 'letrec))
                         (__tmp28388
                          (let ((__tmp28390
                                 (let ((__tmp28391
                                        (let ((__tmp28392
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L20789_ '()))))
                                          (declare (not safe))
                                          (cons _L20791_ __tmp28392))))
                                   (declare (not safe))
                                   (cons __tmp28391 '())))
                                (__tmp28389
                                 (let ()
                                   (declare (not safe))
                                   (cons _L20791_ '()))))
                            (declare (not safe))
                            (cons __tmp28390 __tmp28389))))
                     (declare (not safe))
                     (cons __tmp28393 __tmp28388))))
                (___kont2612226123_
                 (lambda (_L20733_ _L20735_)
                   (let ((__tmp28401 (gx#datum->syntax '#f 'letrec-values))
                         (__tmp28394
                          (let ((__tmp28398
                                 (let ((__tmp28399
                                        (let ((__tmp28400
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L20733_ '()))))
                                          (declare (not safe))
                                          (cons _L20735_ __tmp28400))))
                                   (declare (not safe))
                                   (cons __tmp28399 '())))
                                (__tmp28395
                                 (let ((__tmp28396
                                        (let ((__tmp28397
                                               (gx#datum->syntax '#f 'values)))
                                          (declare (not safe))
                                          (cons __tmp28397 _L20735_))))
                                   (declare (not safe))
                                   (cons __tmp28396 '()))))
                            (declare (not safe))
                            (cons __tmp28398 __tmp28395))))
                     (declare (not safe))
                     (cons __tmp28401 __tmp28394))))
                (___kont2612426125_
                 (lambda (_L20654_ _L20656_ _L20657_)
                   (let ((__tmp28412 (gx#datum->syntax '#f 'letrec))
                         (__tmp28402
                          (let ((__tmp28404
                                 (let ((__tmp28405
                                        (let ((__tmp28406
                                               (let ((__tmp28407
                                                      (let ((__tmp28411
                                                             (gx#datum->syntax
                                                              '#f
                                                              'lambda))
                                                            (__tmp28408
                                                             (let ((__tmp28409
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp28410
                                   (lambda (_g2067720680_ _g2067820683_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g2067720680_ _g2067820683_)))))
                              (declare (not safe))
                              (foldr1 __tmp28410 '() _L20654_))))
                       (declare (not safe))
                       (cons _L20656_ __tmp28409))))
                (declare (not safe))
                (cons __tmp28411 __tmp28408))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp28407 '()))))
                                          (declare (not safe))
                                          (cons _L20657_ __tmp28406))))
                                   (declare (not safe))
                                   (cons __tmp28405 '())))
                                (__tmp28403
                                 (let ()
                                   (declare (not safe))
                                   (cons _L20657_ '()))))
                            (declare (not safe))
                            (cons __tmp28404 __tmp28403))))
                     (declare (not safe))
                     (cons __tmp28412 __tmp28402)))))
            (let* ((___match2620426205_
                    (lambda (_e2056620594_
                             _hd2056520598_
                             _tl2056420601_
                             _e2056920604_
                             _hd2056820608_
                             _tl2056720611_
                             _e2057220614_
                             _hd2057120618_
                             _tl2057020621_
                             ___splice2612626127_
                             _target2057320624_
                             _tl2057520627_)
                      (letrec ((_loop2057620630_
                                (lambda (_hd2057420634_ _body2058020637_)
                                  (if (gx#stx-pair? _hd2057420634_)
                                      (let ((_e2057720640_
                                             (gx#syntax-e _hd2057420634_)))
                                        (let ((_lp-tl2057920647_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2057720640_)))
                                              (_lp-hd2057820644_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2057720640_))))
                                          (_loop2057620630_
                                           _lp-tl2057920647_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd2057820644_
                                                   _body2058020637_)))))
                                      (let ((_body2058120650_
                                             (reverse _body2058020637_)))
                                        (let ((_L20654_ _body2058120650_)
                                              (_L20656_ _tl2057020621_)
                                              (_L20657_ _hd2057120618_))
                                          (if (gx#identifier? _L20657_)
                                              (___kont2612426125_
                                               _L20654_
                                               _L20656_
                                               _L20657_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2053420587_)))))))))
                        (_loop2057620630_ _target2057320624_ '()))))
                   (___match2617826179_
                    (lambda (_e2055120693_
                             _hd2055020697_
                             _tl2054920700_
                             _e2055420703_
                             _hd2055320707_
                             _tl2055220710_
                             _e2055720713_
                             _hd2055620717_
                             _tl2055520720_
                             _e2056020723_
                             _hd2055920727_
                             _tl2055820730_)
                      (let ((_L20733_ _hd2055920727_)
                            (_L20735_ _tl2055520720_))
                        (if (gx#identifier-list? _L20735_)
                            (___kont2612226123_ _L20733_ _L20735_)
                            (if (gx#stx-pair/null? _tl2055220710_)
                                (let ((___splice2612626127_
                                       (gx#syntax-split-splice
                                        _tl2055220710_
                                        '0)))
                                  (let ((_tl2057520627_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice2612626127_
                                            '1)))
                                        (_target2057320624_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice2612626127_
                                            '0))))
                                    (if (gx#stx-null? _tl2057520627_)
                                        (___match2620426205_
                                         _e2055120693_
                                         _hd2055020697_
                                         _tl2054920700_
                                         _e2055420703_
                                         _hd2055320707_
                                         _tl2055220710_
                                         _e2055720713_
                                         _hd2055620717_
                                         _tl2055520720_
                                         ___splice2612626127_
                                         _target2057320624_
                                         _tl2057520627_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2053420587_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2053420587_)))))))
                   (___match2614826149_
                    (lambda (_e2054020759_
                             _hd2053920763_
                             _tl2053820766_
                             _e2054320769_
                             _hd2054220773_
                             _tl2054120776_
                             _e2054620779_
                             _hd2054520783_
                             _tl2054420786_)
                      (let ((_L20789_ _hd2054520783_)
                            (_L20791_ _hd2054220773_))
                        (if (gx#identifier? _L20791_)
                            (___kont2612026121_ _L20789_ _L20791_)
                            (if (gx#stx-pair? _hd2054220773_)
                                (let ((_e2055720713_
                                       (gx#syntax-e _hd2054220773_)))
                                  (let ((_tl2055520720_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2055720713_)))
                                        (_hd2055620717_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2055720713_))))
                                    (if (gx#identifier? _hd2055620717_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core/sugar~Sugar-2[1]#_g28413_|
                                             _hd2055620717_)
                                            (___match2617826179_
                                             _e2054020759_
                                             _hd2053920763_
                                             _tl2053820766_
                                             _e2054320769_
                                             _hd2054220773_
                                             _tl2054120776_
                                             _e2055720713_
                                             _hd2055620717_
                                             _tl2055520720_
                                             _e2054620779_
                                             _hd2054520783_
                                             _tl2054420786_)
                                            (if (gx#stx-pair/null?
                                                 _tl2054120776_)
                                                (let ((___splice2612626127_
                                                       (gx#syntax-split-splice
                                                        _tl2054120776_
                                                        '0)))
                                                  (let ((_tl2057520627_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2612626127_
                                                            '1)))
                                                        (_target2057320624_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2612626127_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2057520627_)
                                                        (___match2620426205_
                                                         _e2054020759_
                                                         _hd2053920763_
                                                         _tl2053820766_
                                                         _e2054320769_
                                                         _hd2054220773_
                                                         _tl2054120776_
                                                         _e2055720713_
                                                         _hd2055620717_
                                                         _tl2055520720_
                                                         ___splice2612626127_
                                                         _target2057320624_
                                                         _tl2057520627_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g2053420587_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2053420587_))))
                                        (if (gx#stx-pair/null? _tl2054120776_)
                                            (let ((___splice2612626127_
                                                   (gx#syntax-split-splice
                                                    _tl2054120776_
                                                    '0)))
                                              (let ((_tl2057520627_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2612626127_
                                                        '1)))
                                                    (_target2057320624_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2612626127_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl2057520627_)
                                                    (___match2620426205_
                                                     _e2054020759_
                                                     _hd2053920763_
                                                     _tl2053820766_
                                                     _e2054320769_
                                                     _hd2054220773_
                                                     _tl2054120776_
                                                     _e2055720713_
                                                     _hd2055620717_
                                                     _tl2055520720_
                                                     ___splice2612626127_
                                                     _target2057320624_
                                                     _tl2057520627_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2053420587_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g2053420587_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g2053420587_))))))))
              (if (gx#stx-pair? ___stx2611726118_)
                  (let ((_e2054020759_ (gx#syntax-e ___stx2611726118_)))
                    (let ((_tl2053820766_
                           (let () (declare (not safe)) (##cdr _e2054020759_)))
                          (_hd2053920763_
                           (let ()
                             (declare (not safe))
                             (##car _e2054020759_))))
                      (if (gx#stx-pair? _tl2053820766_)
                          (let ((_e2054320769_ (gx#syntax-e _tl2053820766_)))
                            (let ((_tl2054120776_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2054320769_)))
                                  (_hd2054220773_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2054320769_))))
                              (if (gx#stx-pair? _tl2054120776_)
                                  (let ((_e2054620779_
                                         (gx#syntax-e _tl2054120776_)))
                                    (let ((_tl2054420786_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2054620779_)))
                                          (_hd2054520783_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2054620779_))))
                                      (if (gx#stx-null? _tl2054420786_)
                                          (___match2614826149_
                                           _e2054020759_
                                           _hd2053920763_
                                           _tl2053820766_
                                           _e2054320769_
                                           _hd2054220773_
                                           _tl2054120776_
                                           _e2054620779_
                                           _hd2054520783_
                                           _tl2054420786_)
                                          (if (gx#stx-pair? _hd2054220773_)
                                              (let ((_e2055720713_
                                                     (gx#syntax-e
                                                      _hd2054220773_)))
                                                (let ((_tl2055520720_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2055720713_)))
                                                      (_hd2055620717_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2055720713_))))
                                                  (if (gx#stx-pair/null?
                                                       _tl2054120776_)
                                                      (let ((___splice2612626127_
                                                             (gx#syntax-split-splice
                                                              _tl2054120776_
                                                              '0)))
                                                        (let ((_tl2057520627_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice2612626127_ '1)))
                      (_target2057320624_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice2612626127_ '0))))
                  (if (gx#stx-null? _tl2057520627_)
                      (___match2620426205_
                       _e2054020759_
                       _hd2053920763_
                       _tl2053820766_
                       _e2054320769_
                       _hd2054220773_
                       _tl2054120776_
                       _e2055720713_
                       _hd2055620717_
                       _tl2055520720_
                       ___splice2612626127_
                       _target2057320624_
                       _tl2057520627_)
                      (let () (declare (not safe)) (_g2053420587_)))))
              (let () (declare (not safe)) (_g2053420587_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g2053420587_))))))
                                  (if (gx#stx-pair? _hd2054220773_)
                                      (let ((_e2055720713_
                                             (gx#syntax-e _hd2054220773_)))
                                        (let ((_tl2055520720_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2055720713_)))
                                              (_hd2055620717_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2055720713_))))
                                          (if (gx#stx-pair/null?
                                               _tl2054120776_)
                                              (let ((___splice2612626127_
                                                     (gx#syntax-split-splice
                                                      _tl2054120776_
                                                      '0)))
                                                (let ((_tl2057520627_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2612626127_
                                                          '1)))
                                                      (_target2057320624_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2612626127_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl2057520627_)
                                                      (___match2620426205_
                                                       _e2054020759_
                                                       _hd2053920763_
                                                       _tl2053820766_
                                                       _e2054320769_
                                                       _hd2054220773_
                                                       _tl2054120776_
                                                       _e2055720713_
                                                       _hd2055620717_
                                                       _tl2055520720_
                                                       ___splice2612626127_
                                                       _target2057320624_
                                                       _tl2057520627_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2053420587_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2053420587_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2053420587_))))))
                          (let () (declare (not safe)) (_g2053420587_)))))
                  (let () (declare (not safe)) (_g2053420587_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet|
      (lambda (_stx20811_)
        (letrec ((_let-bind?20814_
                  (lambda (_x21737_)
                    (let* ((___stx2620726208_ _x21737_)
                           (_g2174221761_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2620726208_))))
                      (let ((___kont2621026211_
                             (lambda (_L21829_ _L21831_)
                               (_let-head?20817_ _L21831_)))
                            (___kont2621226213_ (lambda (_L21789_) '#t))
                            (___kont2621426215_ (lambda () '#f)))
                        (if (gx#stx-pair? ___stx2620726208_)
                            (let ((_e2174821809_
                                   (gx#syntax-e ___stx2620726208_)))
                              (let ((_tl2174621816_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2174821809_)))
                                    (_hd2174721813_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2174821809_))))
                                (if (gx#stx-pair? _tl2174621816_)
                                    (let ((_e2175121819_
                                           (gx#syntax-e _tl2174621816_)))
                                      (let ((_tl2174921826_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2175121819_)))
                                            (_hd2175021823_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2175121819_))))
                                        (if (gx#stx-null? _tl2174921826_)
                                            (___kont2621026211_
                                             _hd2175021823_
                                             _hd2174721813_)
                                            (___kont2621426215_))))
                                    (if (gx#stx-null? _tl2174621816_)
                                        (___kont2621226213_ _hd2174721813_)
                                        (___kont2621426215_)))))
                            (___kont2621426215_))))))
                 (_let-bind20816_
                  (lambda (_x21639_)
                    (let* ((___stx2624126242_ _x21639_)
                           (_g2164321662_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2624126242_))))
                      (let ((___kont2624426245_
                             (lambda (_L21718_ _L21720_) _x21639_))
                            (___kont2624626247_
                             (lambda (_L21679_)
                               (let ((__tmp28415 (gx#datum->syntax '#f '_))
                                     (__tmp28414
                                      (let ()
                                        (declare (not safe))
                                        (cons _L21679_ '()))))
                                 (declare (not safe))
                                 (cons __tmp28415 __tmp28414)))))
                        (if (gx#stx-pair? ___stx2624126242_)
                            (let ((_e2164921698_
                                   (gx#syntax-e ___stx2624126242_)))
                              (let ((_tl2164721705_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2164921698_)))
                                    (_hd2164821702_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2164921698_))))
                                (if (gx#stx-pair? _tl2164721705_)
                                    (let ((_e2165221708_
                                           (gx#syntax-e _tl2164721705_)))
                                      (let ((_tl2165021715_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2165221708_)))
                                            (_hd2165121712_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2165221708_))))
                                        (if (gx#stx-null? _tl2165021715_)
                                            (___kont2624426245_
                                             _hd2165121712_
                                             _hd2164821702_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2164321662_)))))
                                    (if (gx#stx-null? _tl2164721705_)
                                        (___kont2624626247_ _hd2164821702_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2164321662_))))))
                            (let () (declare (not safe)) (_g2164321662_)))))))
                 (_let-head?20817_
                  (lambda (_x21579_)
                    (let* ((___stx2627326274_ _x21579_)
                           (_g2158321594_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2627326274_))))
                      (let ((___kont2627626277_
                             (lambda (_L21622_)
                               (gx#stx-andmap gx#identifier? _L21622_)))
                            (___kont2627826279_
                             (lambda () (gx#identifier? _x21579_))))
                        (if (gx#stx-pair? ___stx2627326274_)
                            (let ((_e2158821612_
                                   (gx#syntax-e ___stx2627326274_)))
                              (let ((_tl2158621619_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2158821612_)))
                                    (_hd2158721616_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2158821612_))))
                                (if (gx#identifier? _hd2158721616_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g28416_|
                                         _hd2158721616_)
                                        (___kont2627626277_ _tl2158621619_)
                                        (___kont2627826279_))
                                    (___kont2627826279_))))
                            (___kont2627826279_))))))
                 (_let-head20818_
                  (lambda (_x21519_)
                    (let* ((___stx2629326294_ _x21519_)
                           (_g2152321534_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2629326294_))))
                      (let ((___kont2629626297_ (lambda (_L21562_) _L21562_))
                            (___kont2629826299_ (lambda () (list _x21519_))))
                        (if (gx#stx-pair? ___stx2629326294_)
                            (let ((_e2152821552_
                                   (gx#syntax-e ___stx2629326294_)))
                              (let ((_tl2152621559_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2152821552_)))
                                    (_hd2152721556_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2152821552_))))
                                (if (gx#identifier? _hd2152721556_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar~Sugar-2[1]#_g28417_|
                                         _hd2152721556_)
                                        (___kont2629626297_ _tl2152621559_)
                                        (___kont2629826299_))
                                    (___kont2629826299_))))
                            (___kont2629826299_)))))))
          (let* ((___stx2631326314_ _stx20811_)
                 (_g2082220894_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx2631326314_))))
            (let ((___kont2631626317_
                   (lambda (_L21492_ _L21494_ _L21495_ _L21496_)
                     (let ((__tmp28418
                            (let ((__tmp28419
                                   (let ((__tmp28420
                                          (let ((__tmp28421
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L21494_ '()))))
                                            (declare (not safe))
                                            (cons _L21495_ __tmp28421))))
                                     (declare (not safe))
                                     (cons __tmp28420 '()))))
                              (declare (not safe))
                              (cons __tmp28419 _L21492_))))
                       (declare (not safe))
                       (cons _L21496_ __tmp28418))))
                  (___kont2631826319_
                   (lambda (_L21414_ _L21416_)
                     (let ((__tmp28429 (gx#datum->syntax '#f 'and))
                           (__tmp28422
                            (let ((__tmp28423
                                   (let ((__tmp28424
                                          (let ((__tmp28428
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp28425
                                                 (let ((__tmp28426
                                                        (let ((__tmp28427
                                                               (lambda (_g2143621439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2143721442_)
                         (let ()
                           (declare (not safe))
                           (cons _g2143621439_ _g2143721442_)))))
                  (declare (not safe))
                  (foldr1 __tmp28427 '() _L21414_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp28426))))
                                            (declare (not safe))
                                            (cons __tmp28428 __tmp28425))))
                                     (declare (not safe))
                                     (cons __tmp28424 '()))))
                              (declare (not safe))
                              (cons _L21416_ __tmp28423))))
                       (declare (not safe))
                       (cons __tmp28429 __tmp28422))))
                  (___kont2632226323_
                   (lambda (_L20981_ _L20983_)
                     (let* ((_g2101421040_
                             (lambda (_g2101521036_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2101521036_)))
                            (_g2101321325_
                             (lambda (_g2101521044_)
                               (if (gx#stx-pair/null? _g2101521044_)
                                   (let ((_g28430_
                                          (gx#syntax-split-splice
                                           _g2101521044_
                                           '0)))
                                     (begin
                                       (let ((_g28431_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g28430_)
                                                    (##vector-length _g28430_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g28431_ 2)))
                                             (error "Context expects 2 values"
                                                    _g28431_)))
                                       (let ((_target2101821047_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g28430_ 0)))
                                             (_tl2102021050_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g28430_ 1))))
                                         (if (gx#stx-null? _tl2102021050_)
                                             (letrec ((_loop2102121053_
                                                       (lambda (_hd2101921057_
                                                                _e2102521060_
                                                                _hd2102621062_)
                                                         (if (gx#stx-pair?
                                                              _hd2101921057_)
                                                             (let ((_e2102221065_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd2101921057_)))
                       (let ((_lp-hd2102321069_
                              (let ()
                                (declare (not safe))
                                (##car _e2102221065_)))
                             (_lp-tl2102421072_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2102221065_))))
                         (if (gx#stx-pair? _lp-hd2102321069_)
                             (let ((_e2103121075_
                                    (gx#syntax-e _lp-hd2102321069_)))
                               (let ((_hd2103021079_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e2103121075_)))
                                     (_tl2102921082_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e2103121075_))))
                                 (if (gx#stx-pair? _tl2102921082_)
                                     (let ((_e2103421085_
                                            (gx#syntax-e _tl2102921082_)))
                                       (let ((_hd2103321089_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e2103421085_)))
                                             (_tl2103221092_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e2103421085_))))
                                         (if (gx#stx-null? _tl2103221092_)
                                             (_loop2102121053_
                                              _lp-tl2102421072_
                                              (let ()
                                                (declare (not safe))
                                                (cons _hd2103321089_
                                                      _e2102521060_))
                                              (let ()
                                                (declare (not safe))
                                                (cons _hd2103021079_
                                                      _hd2102621062_)))
                                             (_g2101421040_ _g2101521044_))))
                                     (_g2101421040_ _g2101521044_))))
                             (_g2101421040_ _g2101521044_))))
                     (let ((_e2102721095_ (reverse _e2102521060_))
                           (_hd2102821098_ (reverse _hd2102621062_)))
                       ((lambda (_L21101_ _L21103_)
                          (let ()
                            (let* ((_g2111921136_
                                    (lambda (_g2112021132_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g2112021132_)))
                                   (_g2111821313_
                                    (lambda (_g2112021140_)
                                      (if (gx#stx-pair/null? _g2112021140_)
                                          (let ((_g28432_
                                                 (gx#syntax-split-splice
                                                  _g2112021140_
                                                  '0)))
                                            (begin
                                              (let ((_g28433_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g28432_)
                                                           (##vector-length
                                                            _g28432_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g28433_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g28433_)))
                                              (let ((_target2112221143_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g28432_
                                                        0)))
                                                    (_tl2112421146_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g28432_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl2112421146_)
                                                    (letrec ((_loop2112521149_
                                                              (lambda (_hd2112321153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _$e2112921156_)
                        (if (gx#stx-pair? _hd2112321153_)
                            (let ((_e2112621159_ (gx#syntax-e _hd2112321153_)))
                              (let ((_lp-hd2112721163_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2112621159_)))
                                    (_lp-tl2112821166_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2112621159_))))
                                (_loop2112521149_
                                 _lp-tl2112821166_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd2112721163_ _$e2112921156_)))))
                            (let ((_$e2113021169_ (reverse _$e2112921156_)))
                              ((lambda (_L21173_)
                                 (let ()
                                   (let* ((_g2119021207_
                                           (lambda (_g2119121203_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2119121203_)))
                                          (_g2118921301_
                                           (lambda (_g2119121211_)
                                             (if (gx#stx-pair/null?
                                                  _g2119121211_)
                                                 (let ((_g28434_
                                                        (gx#syntax-split-splice
                                                         _g2119121211_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28435_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g28434_)
                          (##vector-length _g28434_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g28435_ 2)))
                   (error "Context expects 2 values" _g28435_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2119321214_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g28434_
                                                               0)))
                                                           (_tl2119521217_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g28434_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl2119521217_)
                                                           (letrec ((_loop2119621220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2119421224_ _hd-bind2120021227_)
                               (if (gx#stx-pair? _hd2119421224_)
                                   (let ((_e2119721230_
                                          (gx#syntax-e _hd2119421224_)))
                                     (let ((_lp-hd2119821234_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2119721230_)))
                                           (_lp-tl2119921237_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2119721230_))))
                                       (_loop2119621220_
                                        _lp-tl2119921237_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd2119821234_
                                                _hd-bind2120021227_)))))
                                   (let ((_hd-bind2120121240_
                                          (reverse _hd-bind2120021227_)))
                                     ((lambda (_L21244_)
                                        (let ()
                                          (let ()
                                            (let ((__tmp28457
                                                   (gx#datum->syntax
                                                    '#f
                                                    'let-values))
                                                  (__tmp28436
                                                   (let ((__tmp28452
                                                          (begin
                                                            (gx#syntax-check-splice-targets
                                                             _L21101_
                                                             _L21173_)
                                                            (let ((__tmp28453
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g2126921273_ _g2127021276_ _g2127121278_)
                             (let ((__tmp28454
                                    (let ((__tmp28456
                                           (let ()
                                             (declare (not safe))
                                             (cons _g2127021276_ '())))
                                          (__tmp28455
                                           (let ()
                                             (declare (not safe))
                                             (cons _g2126921273_ '()))))
                                      (declare (not safe))
                                      (cons __tmp28456 __tmp28455))))
                               (declare (not safe))
                               (cons __tmp28454 _g2127121278_)))))
                      (declare (not safe))
                      (foldr2 __tmp28453 '() _L21101_ _L21173_))))
                 (__tmp28437
                  (let ((__tmp28438
                         (let ((__tmp28451 (gx#datum->syntax '#f 'and))
                               (__tmp28439
                                (let ((__tmp28450
                                       (lambda (_g2126221281_ _g2126321284_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g2126221281_
                                                 _g2126321284_))))
                                      (__tmp28440
                                       (let ((__tmp28441
                                              (let ((__tmp28449
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let-values))
                                                    (__tmp28442
                                                     (let ((__tmp28445
                                                            (begin
                                                              (gx#syntax-check-splice-targets
                                                               _L21173_
                                                               _L21244_)
                                                              (let ((__tmp28446
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g2126621287_
                                      _g2126721290_
                                      _g2126821292_)
                               (let ((__tmp28447
                                      (let ((__tmp28448
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2126621287_ '()))))
                                        (declare (not safe))
                                        (cons _g2126721290_ __tmp28448))))
                                 (declare (not safe))
                                 (cons __tmp28447 _g2126821292_)))))
                        (declare (not safe))
                        (foldr2 __tmp28446 '() _L21173_ _L21244_))))
                   (__tmp28443
                    (let ((__tmp28444
                           (lambda (_g2126421295_ _g2126521298_)
                             (let ()
                               (declare (not safe))
                               (cons _g2126421295_ _g2126521298_)))))
                      (declare (not safe))
                      (foldr1 __tmp28444 '() _L20981_))))
               (declare (not safe))
               (cons __tmp28445 __tmp28443))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp28449 __tmp28442))))
                                         (declare (not safe))
                                         (cons __tmp28441 '()))))
                                  (declare (not safe))
                                  (foldr1 __tmp28450 __tmp28440 _L21173_))))
                           (declare (not safe))
                           (cons __tmp28451 __tmp28439))))
                    (declare (not safe))
                    (cons __tmp28438 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp28452
                                                           __tmp28437))))
                                              (declare (not safe))
                                              (cons __tmp28457 __tmp28436)))))
                                      _hd-bind2120121240_))))))
                     (_loop2119621220_ _target2119321214_ '()))
                   (_g2119021207_ _g2119121211_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2119021207_
                                                  _g2119121211_)))))
                                     (_g2118921301_
                                      (gx#stx-map
                                       _let-head20818_
                                       (let ((__tmp28458
                                              (lambda (_g2130421307_
                                                       _g2130521310_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g2130421307_
                                                        _g2130521310_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp28458 '() _L21103_)))))))
                               _$e2113021169_))))))
              (_loop2112521149_ _target2112221143_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2111921136_
                                                     _g2112021140_)))))
                                          (_g2111921136_ _g2112021140_)))))
                              (_g2111821313_
                               (gx#gentemps
                                (let ((__tmp28459
                                       (lambda (_g2131621319_ _g2131721322_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g2131621319_
                                                 _g2131721322_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp28459 '() _L21103_)))))))
                        _e2102721095_
                        _hd2102821098_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop2102121053_
                                                _target2101821047_
                                                '()
                                                '()))
                                             (_g2101421040_ _g2101521044_)))))
                                   (_g2101421040_ _g2101521044_)))))
                       (_g2101321325_
                        (gx#stx-map
                         _let-bind20816_
                         (let ((__tmp28460
                                (lambda (_g2132821331_ _g2132921334_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2132821331_ _g2132921334_)))))
                           (declare (not safe))
                           (foldr1 __tmp28460 '() _L20983_))))))))
              (let* ((___match2641026411_
                      (lambda (_e2086720901_
                               _hd2086620905_
                               _tl2086520908_
                               _e2087020911_
                               _hd2086920915_
                               _tl2086820918_
                               ___splice2632426325_
                               _target2087120921_
                               _tl2087320924_)
                        (letrec ((_loop2087420927_
                                  (lambda (_hd2087220931_ _bind2087820934_)
                                    (if (gx#stx-pair? _hd2087220931_)
                                        (let ((_e2087520937_
                                               (gx#syntax-e _hd2087220931_)))
                                          (let ((_lp-tl2087720944_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2087520937_)))
                                                (_lp-hd2087620941_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2087520937_))))
                                            (_loop2087420927_
                                             _lp-tl2087720944_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2087620941_
                                                     _bind2087820934_)))))
                                        (let ((_bind2087920947_
                                               (reverse _bind2087820934_)))
                                          (if (gx#stx-pair/null?
                                               _tl2086820918_)
                                              (let ((___splice2632626327_
                                                     (gx#syntax-split-splice
                                                      _tl2086820918_
                                                      '0)))
                                                (let ((_tl2088220954_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2632626327_
                                                          '1)))
                                                      (_target2088020951_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2632626327_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl2088220954_)
                                                      (letrec ((_loop2088320957_
                                                                (lambda (_hd2088120961_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body2088720964_)
                          (if (gx#stx-pair? _hd2088120961_)
                              (let ((_e2088420967_
                                     (gx#syntax-e _hd2088120961_)))
                                (let ((_lp-tl2088620974_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2088420967_)))
                                      (_lp-hd2088520971_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2088420967_))))
                                  (_loop2088320957_
                                   _lp-tl2088620974_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd2088520971_
                                           _body2088720964_)))))
                              (let ((_body2088820977_
                                     (reverse _body2088720964_)))
                                (let ((_L20981_ _body2088820977_)
                                      (_L20983_ _bind2087920947_))
                                  (if (gx#stx-andmap
                                       _let-bind?20814_
                                       (let ((__tmp28461
                                              (lambda (_g2100521008_
                                                       _g2100621011_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g2100521008_
                                                        _g2100621011_)))))
                                         (declare (not safe))
                                         (foldr1 __tmp28461 '() _L20983_)))
                                      (___kont2632226323_ _L20981_ _L20983_)
                                      (let ()
                                        (declare (not safe))
                                        (_g2082220894_)))))))))
                (_loop2088320957_ _target2088020951_ '()))
              (let () (declare (not safe)) (_g2082220894_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g2082220894_))))))))
                          (_loop2087420927_ _target2087120921_ '()))))
                     (___match2639026391_
                      (lambda (_e2084421344_
                               _hd2084321348_
                               _tl2084221351_
                               _e2084721354_
                               _hd2084621358_
                               _tl2084521361_
                               _e2085021364_
                               _hd2084921368_
                               _tl2084821371_
                               _e2085321374_
                               _hd2085221378_
                               _tl2085121381_
                               ___splice2632026321_
                               _target2085421384_
                               _tl2085621387_)
                        (letrec ((_loop2085721390_
                                  (lambda (_hd2085521394_ _body2086121397_)
                                    (if (gx#stx-pair? _hd2085521394_)
                                        (let ((_e2085821400_
                                               (gx#syntax-e _hd2085521394_)))
                                          (let ((_lp-tl2086021407_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2085821400_)))
                                                (_lp-hd2085921404_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2085821400_))))
                                            (_loop2085721390_
                                             _lp-tl2086021407_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2085921404_
                                                     _body2086121397_)))))
                                        (let ((_body2086221410_
                                               (reverse _body2086121397_)))
                                          (___kont2631826319_
                                           _body2086221410_
                                           _hd2085221378_))))))
                          (_loop2085721390_ _target2085421384_ '()))))
                     (___match2635426355_
                      (lambda (_e2083021452_
                               _hd2082921456_
                               _tl2082821459_
                               _e2083321462_
                               _hd2083221466_
                               _tl2083121469_
                               _e2083621472_
                               _hd2083521476_
                               _tl2083421479_
                               _e2083921482_
                               _hd2083821486_
                               _tl2083721489_)
                        (let ((_L21492_ _tl2083121469_)
                              (_L21494_ _hd2083821486_)
                              (_L21495_ _hd2083521476_)
                              (_L21496_ _hd2082921456_))
                          (if (_let-head?20817_ _L21495_)
                              (___kont2631626317_
                               _L21492_
                               _L21494_
                               _L21495_
                               _L21496_)
                              (if (gx#stx-pair? _hd2083521476_)
                                  (let ((_e2085321374_
                                         (gx#syntax-e _hd2083521476_)))
                                    (let ((_tl2085121381_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2085321374_)))
                                          (_hd2085221378_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2085321374_))))
                                      (if (gx#stx-pair/null? _hd2083221466_)
                                          (let ((___splice2632426325_
                                                 (gx#syntax-split-splice
                                                  _hd2083221466_
                                                  '0)))
                                            (let ((_tl2087320924_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2632426325_
                                                      '1)))
                                                  (_target2087120921_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2632426325_
                                                      '0))))
                                              (if (gx#stx-null? _tl2087320924_)
                                                  (___match2641026411_
                                                   _e2083021452_
                                                   _hd2082921456_
                                                   _tl2082821459_
                                                   _e2083321462_
                                                   _hd2083221466_
                                                   _tl2083121469_
                                                   ___splice2632426325_
                                                   _target2087120921_
                                                   _tl2087320924_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2082220894_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2082220894_)))))
                                  (if (gx#stx-pair/null? _hd2083221466_)
                                      (let ((___splice2632426325_
                                             (gx#syntax-split-splice
                                              _hd2083221466_
                                              '0)))
                                        (let ((_tl2087320924_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2632426325_
                                                  '1)))
                                              (_target2087120921_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2632426325_
                                                  '0))))
                                          (if (gx#stx-null? _tl2087320924_)
                                              (___match2641026411_
                                               _e2083021452_
                                               _hd2082921456_
                                               _tl2082821459_
                                               _e2083321462_
                                               _hd2083221466_
                                               _tl2083121469_
                                               ___splice2632426325_
                                               _target2087120921_
                                               _tl2087320924_)
                                              (let ()
                                                (declare (not safe))
                                                (_g2082220894_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2082220894_)))))))))
                (if (gx#stx-pair? ___stx2631326314_)
                    (let ((_e2083021452_ (gx#syntax-e ___stx2631326314_)))
                      (let ((_tl2082821459_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2083021452_)))
                            (_hd2082921456_
                             (let ()
                               (declare (not safe))
                               (##car _e2083021452_))))
                        (if (gx#stx-pair? _tl2082821459_)
                            (let ((_e2083321462_ (gx#syntax-e _tl2082821459_)))
                              (let ((_tl2083121469_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2083321462_)))
                                    (_hd2083221466_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2083321462_))))
                                (if (gx#stx-pair? _hd2083221466_)
                                    (let ((_e2083621472_
                                           (gx#syntax-e _hd2083221466_)))
                                      (let ((_tl2083421479_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2083621472_)))
                                            (_hd2083521476_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2083621472_))))
                                        (if (gx#stx-pair? _tl2083421479_)
                                            (let ((_e2083921482_
                                                   (gx#syntax-e
                                                    _tl2083421479_)))
                                              (let ((_tl2083721489_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2083921482_)))
                                                    (_hd2083821486_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2083921482_))))
                                                (if (gx#stx-null?
                                                     _tl2083721489_)
                                                    (___match2635426355_
                                                     _e2083021452_
                                                     _hd2082921456_
                                                     _tl2082821459_
                                                     _e2083321462_
                                                     _hd2083221466_
                                                     _tl2083121469_
                                                     _e2083621472_
                                                     _hd2083521476_
                                                     _tl2083421479_
                                                     _e2083921482_
                                                     _hd2083821486_
                                                     _tl2083721489_)
                                                    (if (gx#stx-pair?
                                                         _hd2083521476_)
                                                        (let ((_e2085321374_
                                                               (gx#syntax-e
                                                                _hd2083521476_)))
                                                          (let ((_tl2085121381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e2085321374_)))
                        (_hd2085221378_
                         (let () (declare (not safe)) (##car _e2085321374_))))
                    (if (gx#stx-pair/null? _hd2083221466_)
                        (let ((___splice2632426325_
                               (gx#syntax-split-splice _hd2083221466_ '0)))
                          (let ((_tl2087320924_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2632426325_ '1)))
                                (_target2087120921_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2632426325_ '0))))
                            (if (gx#stx-null? _tl2087320924_)
                                (___match2641026411_
                                 _e2083021452_
                                 _hd2082921456_
                                 _tl2082821459_
                                 _e2083321462_
                                 _hd2083221466_
                                 _tl2083121469_
                                 ___splice2632426325_
                                 _target2087120921_
                                 _tl2087320924_)
                                (let ()
                                  (declare (not safe))
                                  (_g2082220894_)))))
                        (let () (declare (not safe)) (_g2082220894_)))))
                (if (gx#stx-pair/null? _hd2083221466_)
                    (let ((___splice2632426325_
                           (gx#syntax-split-splice _hd2083221466_ '0)))
                      (let ((_tl2087320924_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice2632426325_ '1)))
                            (_target2087120921_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice2632426325_ '0))))
                        (if (gx#stx-null? _tl2087320924_)
                            (___match2641026411_
                             _e2083021452_
                             _hd2082921456_
                             _tl2082821459_
                             _e2083321462_
                             _hd2083221466_
                             _tl2083121469_
                             ___splice2632426325_
                             _target2087120921_
                             _tl2087320924_)
                            (let () (declare (not safe)) (_g2082220894_)))))
                    (let () (declare (not safe)) (_g2082220894_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _hd2083521476_)
                                                (let ((_e2085321374_
                                                       (gx#syntax-e
                                                        _hd2083521476_)))
                                                  (let ((_tl2085121381_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2085321374_)))
                                                        (_hd2085221378_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2085321374_))))
                                                    (if (gx#stx-null?
                                                         _tl2085121381_)
                                                        (if (gx#stx-null?
                                                             _tl2083421479_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2083121469_)
                        (let ((___splice2632026321_
                               (gx#syntax-split-splice _tl2083121469_ '0)))
                          (let ((_tl2085621387_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2632026321_ '1)))
                                (_target2085421384_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2632026321_ '0))))
                            (if (gx#stx-null? _tl2085621387_)
                                (___match2639026391_
                                 _e2083021452_
                                 _hd2082921456_
                                 _tl2082821459_
                                 _e2083321462_
                                 _hd2083221466_
                                 _tl2083121469_
                                 _e2083621472_
                                 _hd2083521476_
                                 _tl2083421479_
                                 _e2085321374_
                                 _hd2085221378_
                                 _tl2085121381_
                                 ___splice2632026321_
                                 _target2085421384_
                                 _tl2085621387_)
                                (if (gx#stx-pair/null? _hd2083221466_)
                                    (let ((___splice2632426325_
                                           (gx#syntax-split-splice
                                            _hd2083221466_
                                            '0)))
                                      (let ((_tl2087320924_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice2632426325_
                                                '1)))
                                            (_target2087120921_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice2632426325_
                                                '0))))
                                        (if (gx#stx-null? _tl2087320924_)
                                            (___match2641026411_
                                             _e2083021452_
                                             _hd2082921456_
                                             _tl2082821459_
                                             _e2083321462_
                                             _hd2083221466_
                                             _tl2083121469_
                                             ___splice2632426325_
                                             _target2087120921_
                                             _tl2087320924_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2082220894_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2082220894_))))))
                        (if (gx#stx-pair/null? _hd2083221466_)
                            (let ((___splice2632426325_
                                   (gx#syntax-split-splice _hd2083221466_ '0)))
                              (let ((_tl2087320924_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice2632426325_ '1)))
                                    (_target2087120921_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice2632426325_
                                        '0))))
                                (if (gx#stx-null? _tl2087320924_)
                                    (___match2641026411_
                                     _e2083021452_
                                     _hd2082921456_
                                     _tl2082821459_
                                     _e2083321462_
                                     _hd2083221466_
                                     _tl2083121469_
                                     ___splice2632426325_
                                     _target2087120921_
                                     _tl2087320924_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2082220894_)))))
                            (let () (declare (not safe)) (_g2082220894_))))
                    (if (gx#stx-pair/null? _hd2083221466_)
                        (let ((___splice2632426325_
                               (gx#syntax-split-splice _hd2083221466_ '0)))
                          (let ((_tl2087320924_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2632426325_ '1)))
                                (_target2087120921_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2632426325_ '0))))
                            (if (gx#stx-null? _tl2087320924_)
                                (___match2641026411_
                                 _e2083021452_
                                 _hd2082921456_
                                 _tl2082821459_
                                 _e2083321462_
                                 _hd2083221466_
                                 _tl2083121469_
                                 ___splice2632426325_
                                 _target2087120921_
                                 _tl2087320924_)
                                (let ()
                                  (declare (not safe))
                                  (_g2082220894_)))))
                        (let () (declare (not safe)) (_g2082220894_))))
                (if (gx#stx-pair/null? _hd2083221466_)
                    (let ((___splice2632426325_
                           (gx#syntax-split-splice _hd2083221466_ '0)))
                      (let ((_tl2087320924_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice2632426325_ '1)))
                            (_target2087120921_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice2632426325_ '0))))
                        (if (gx#stx-null? _tl2087320924_)
                            (___match2641026411_
                             _e2083021452_
                             _hd2082921456_
                             _tl2082821459_
                             _e2083321462_
                             _hd2083221466_
                             _tl2083121469_
                             ___splice2632426325_
                             _target2087120921_
                             _tl2087320924_)
                            (let () (declare (not safe)) (_g2082220894_)))))
                    (let () (declare (not safe)) (_g2082220894_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd2083221466_)
                                                    (let ((___splice2632426325_
                                                           (gx#syntax-split-splice
                                                            _hd2083221466_
                                                            '0)))
                                                      (let ((_tl2087320924_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice2632426325_ '1)))
                    (_target2087120921_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice2632426325_ '0))))
                (if (gx#stx-null? _tl2087320924_)
                    (___match2641026411_
                     _e2083021452_
                     _hd2082921456_
                     _tl2082821459_
                     _e2083321462_
                     _hd2083221466_
                     _tl2083121469_
                     ___splice2632426325_
                     _target2087120921_
                     _tl2087320924_)
                    (let () (declare (not safe)) (_g2082220894_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2082220894_)))))))
                                    (if (gx#stx-pair/null? _hd2083221466_)
                                        (let ((___splice2632426325_
                                               (gx#syntax-split-splice
                                                _hd2083221466_
                                                '0)))
                                          (let ((_tl2087320924_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2632426325_
                                                    '1)))
                                                (_target2087120921_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2632426325_
                                                    '0))))
                                            (if (gx#stx-null? _tl2087320924_)
                                                (___match2641026411_
                                                 _e2083021452_
                                                 _hd2082921456_
                                                 _tl2082821459_
                                                 _e2083321462_
                                                 _hd2083221466_
                                                 _tl2083121469_
                                                 ___splice2632426325_
                                                 _target2087120921_
                                                 _tl2087320924_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2082220894_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2082220894_))))))
                            (let () (declare (not safe)) (_g2082220894_)))))
                    (let () (declare (not safe)) (_g2082220894_)))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#alet*|
      (lambda (_$stx21854_)
        (let* ((___stx2641326414_ _$stx21854_)
               (_g2186021911_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2641326414_))))
          (let ((___kont2641626417_ (lambda () '#t))
                (___kont2641826419_
                 (lambda (_L22069_)
                   (let ((__tmp28465 (gx#datum->syntax '#f 'let))
                         (__tmp28462
                          (let ((__tmp28463
                                 (let ((__tmp28464
                                        (lambda (_g2208522088_ _g2208622091_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g2208522088_
                                                  _g2208622091_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp28464 '() _L22069_))))
                            (declare (not safe))
                            (cons '() __tmp28463))))
                     (declare (not safe))
                     (cons __tmp28465 __tmp28462))))
                (___kont2642226423_
                 (lambda (_L21978_ _L21980_ _L21981_ _L21982_)
                   (let ((__tmp28473 (gx#datum->syntax '#f 'alet))
                         (__tmp28466
                          (let ((__tmp28472
                                 (let ()
                                   (declare (not safe))
                                   (cons _L21981_ '())))
                                (__tmp28467
                                 (let ((__tmp28468
                                        (let ((__tmp28469
                                               (let ((__tmp28470
                                                      (let ((__tmp28471
                                                             (lambda (_g2200322006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2200422009_)
                       (let ()
                         (declare (not safe))
                         (cons _g2200322006_ _g2200422009_)))))
                (declare (not safe))
                (foldr1 __tmp28471 '() _L21978_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L21980_ __tmp28470))))
                                          (declare (not safe))
                                          (cons _L21982_ __tmp28469))))
                                   (declare (not safe))
                                   (cons __tmp28468 '()))))
                            (declare (not safe))
                            (cons __tmp28472 __tmp28467))))
                     (declare (not safe))
                     (cons __tmp28473 __tmp28466)))))
            (let* ((___match2649026491_
                    (lambda (_e2189021918_
                             _hd2188921922_
                             _tl2188821925_
                             _e2189321928_
                             _hd2189221932_
                             _tl2189121935_
                             _e2189621938_
                             _hd2189521942_
                             _tl2189421945_
                             ___splice2642426425_
                             _target2189721948_
                             _tl2189921951_)
                      (letrec ((_loop2190021954_
                                (lambda (_hd2189821958_ _body2190421961_)
                                  (if (gx#stx-pair? _hd2189821958_)
                                      (let ((_e2190121964_
                                             (gx#syntax-e _hd2189821958_)))
                                        (let ((_lp-tl2190321971_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2190121964_)))
                                              (_lp-hd2190221968_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2190121964_))))
                                          (_loop2190021954_
                                           _lp-tl2190321971_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd2190221968_
                                                   _body2190421961_)))))
                                      (let ((_body2190521974_
                                             (reverse _body2190421961_)))
                                        (___kont2642226423_
                                         _body2190521974_
                                         _tl2189421945_
                                         _hd2189521942_
                                         _hd2188921922_))))))
                        (_loop2190021954_ _target2189721948_ '()))))
                   (___match2646426465_
                    (lambda (_e2187122019_
                             _hd2187022023_
                             _tl2186922026_
                             _e2187422029_
                             _hd2187322033_
                             _tl2187222036_
                             ___splice2642026421_
                             _target2187522039_
                             _tl2187722042_)
                      (letrec ((_loop2187822045_
                                (lambda (_hd2187622049_ _body2188222052_)
                                  (if (gx#stx-pair? _hd2187622049_)
                                      (let ((_e2187922055_
                                             (gx#syntax-e _hd2187622049_)))
                                        (let ((_lp-tl2188122062_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2187922055_)))
                                              (_lp-hd2188022059_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2187922055_))))
                                          (_loop2187822045_
                                           _lp-tl2188122062_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd2188022059_
                                                   _body2188222052_)))))
                                      (let ((_body2188322065_
                                             (reverse _body2188222052_)))
                                        (___kont2641826419_
                                         _body2188322065_))))))
                        (_loop2187822045_ _target2187522039_ '())))))
              (if (gx#stx-pair? ___stx2641326414_)
                  (let ((_e2186422101_ (gx#syntax-e ___stx2641326414_)))
                    (let ((_tl2186222108_
                           (let () (declare (not safe)) (##cdr _e2186422101_)))
                          (_hd2186322105_
                           (let ()
                             (declare (not safe))
                             (##car _e2186422101_))))
                      (if (gx#stx-pair? _tl2186222108_)
                          (let ((_e2186722111_ (gx#syntax-e _tl2186222108_)))
                            (let ((_tl2186522118_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2186722111_)))
                                  (_hd2186622115_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2186722111_))))
                              (if (gx#stx-null? _hd2186622115_)
                                  (if (gx#stx-null? _tl2186522118_)
                                      (___kont2641626417_)
                                      (if (gx#stx-pair/null? _tl2186522118_)
                                          (let ((___splice2642026421_
                                                 (gx#syntax-split-splice
                                                  _tl2186522118_
                                                  '0)))
                                            (let ((_tl2187722042_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2642026421_
                                                      '1)))
                                                  (_target2187522039_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2642026421_
                                                      '0))))
                                              (if (gx#stx-null? _tl2187722042_)
                                                  (___match2646426465_
                                                   _e2186422101_
                                                   _hd2186322105_
                                                   _tl2186222108_
                                                   _e2186722111_
                                                   _hd2186622115_
                                                   _tl2186522118_
                                                   ___splice2642026421_
                                                   _target2187522039_
                                                   _tl2187722042_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2186021911_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2186021911_))))
                                  (if (gx#stx-pair? _hd2186622115_)
                                      (let ((_e2189621938_
                                             (gx#syntax-e _hd2186622115_)))
                                        (let ((_tl2189421945_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2189621938_)))
                                              (_hd2189521942_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2189621938_))))
                                          (if (gx#stx-pair/null?
                                               _tl2186522118_)
                                              (let ((___splice2642426425_
                                                     (gx#syntax-split-splice
                                                      _tl2186522118_
                                                      '0)))
                                                (let ((_tl2189921951_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2642426425_
                                                          '1)))
                                                      (_target2189721948_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2642426425_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl2189921951_)
                                                      (___match2649026491_
                                                       _e2186422101_
                                                       _hd2186322105_
                                                       _tl2186222108_
                                                       _e2186722111_
                                                       _hd2186622115_
                                                       _tl2186522118_
                                                       _e2189621938_
                                                       _hd2189521942_
                                                       _tl2189421945_
                                                       ___splice2642426425_
                                                       _target2189721948_
                                                       _tl2189921951_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2186021911_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2186021911_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g2186021911_))))))
                          (let () (declare (not safe)) (_g2186021911_)))))
                  (let () (declare (not safe)) (_g2186021911_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#@list|
      (lambda (_$stx22131_)
        (let* ((___stx2649326494_ _$stx22131_)
               (_g2214222220_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2649326494_))))
          (let ((___kont2649626497_
                 (lambda ()
                   (let ((__tmp28475 (gx#datum->syntax '#f 'quote))
                         (__tmp28474
                          (let () (declare (not safe)) (cons '() '()))))
                     (declare (not safe))
                     (cons __tmp28475 __tmp28474))))
                (___kont2649826499_
                 (lambda (_L22551_)
                   (let ((__tmp28477 (gx#datum->syntax '#f 'quote))
                         (__tmp28476
                          (let () (declare (not safe)) (cons _L22551_ '()))))
                     (declare (not safe))
                     (cons __tmp28477 __tmp28476))))
                (___kont2650026501_
                 (lambda (_L22499_)
                   (let ((__tmp28479 (gx#datum->syntax '#f 'quasiquote))
                         (__tmp28478
                          (let () (declare (not safe)) (cons _L22499_ '()))))
                     (declare (not safe))
                     (cons __tmp28479 __tmp28478))))
                (___kont2650226503_ (lambda (_L22446_) _L22446_))
                (___kont2650426505_ (lambda (_L22388_ _L22390_) _L22390_))
                (___kont2650626507_
                 (lambda (_L22330_ _L22332_ _L22333_ _L22334_)
                   (let ((__tmp28485 (gx#datum->syntax '#f 'foldr))
                         (__tmp28480
                          (let ((__tmp28484 (gx#datum->syntax '#f 'cons))
                                (__tmp28481
                                 (let ((__tmp28483
                                        (let ()
                                          (declare (not safe))
                                          (cons _L22334_ _L22330_)))
                                       (__tmp28482
                                        (let ()
                                          (declare (not safe))
                                          (cons _L22333_ '()))))
                                   (declare (not safe))
                                   (cons __tmp28483 __tmp28482))))
                            (declare (not safe))
                            (cons __tmp28484 __tmp28481))))
                     (declare (not safe))
                     (cons __tmp28485 __tmp28480))))
                (___kont2650826509_
                 (lambda (_L22276_ _L22278_ _L22279_)
                   (let ((__tmp28489 (gx#datum->syntax '#f 'cons))
                         (__tmp28486
                          (let ((__tmp28487
                                 (let ((__tmp28488
                                        (let ()
                                          (declare (not safe))
                                          (cons _L22279_ _L22276_))))
                                   (declare (not safe))
                                   (cons __tmp28488 '()))))
                            (declare (not safe))
                            (cons _L22278_ __tmp28487))))
                     (declare (not safe))
                     (cons __tmp28489 __tmp28486))))
                (___kont2651026511_ (lambda (_L22237_) _L22237_)))
            (let* ((___match2663226633_
                    (lambda (_e2219522300_
                             _hd2219422304_
                             _tl2219322307_
                             _e2219822310_
                             _hd2219722314_
                             _tl2219622317_
                             _e2220122320_
                             _hd2220022324_
                             _tl2219922327_)
                      (let ((_L22330_ _tl2219922327_)
                            (_L22332_ _hd2220022324_)
                            (_L22333_ _hd2219722314_)
                            (_L22334_ _hd2219422304_))
                        (if (gx#ellipsis? _L22332_)
                            (___kont2650626507_
                             _L22330_
                             _L22332_
                             _L22333_
                             _L22334_)
                            (___kont2650826509_
                             _tl2219622317_
                             _hd2219722314_
                             _hd2219422304_)))))
                   (___match2661426615_
                    (lambda (_e2218222358_
                             _hd2218122362_
                             _tl2218022365_
                             _e2218522368_
                             _hd2218422372_
                             _tl2218322375_
                             _e2218822378_
                             _hd2218722382_
                             _tl2218622385_)
                      (let ((_L22388_ _hd2218722382_)
                            (_L22390_ _hd2218422372_))
                        (if (gx#ellipsis? _L22388_)
                            (___kont2650426505_ _L22388_ _L22390_)
                            (___match2663226633_
                             _e2218222358_
                             _hd2218122362_
                             _tl2218022365_
                             _e2218522368_
                             _hd2218422372_
                             _tl2218322375_
                             _e2218822378_
                             _hd2218722382_
                             _tl2218622385_))))))
              (if (gx#stx-pair? ___stx2649326494_)
                  (let ((_e2214622573_ (gx#syntax-e ___stx2649326494_)))
                    (let ((_tl2214422580_
                           (let () (declare (not safe)) (##cdr _e2214622573_)))
                          (_hd2214522577_
                           (let ()
                             (declare (not safe))
                             (##car _e2214622573_))))
                      (if (gx#stx-null? _tl2214422580_)
                          (___kont2649626497_)
                          (if (gx#stx-pair? _tl2214422580_)
                              (let ((_e2215322531_
                                     (gx#syntax-e _tl2214422580_)))
                                (let ((_tl2215122538_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2215322531_)))
                                      (_hd2215222535_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2215322531_))))
                                  (if (gx#identifier? _hd2215222535_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g28491_|
                                           _hd2215222535_)
                                          (if (gx#stx-pair? _tl2215122538_)
                                              (let ((_e2215622541_
                                                     (gx#syntax-e
                                                      _tl2215122538_)))
                                                (let ((_tl2215422548_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2215622541_)))
                                                      (_hd2215522545_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2215622541_))))
                                                  (if (gx#stx-null?
                                                       _tl2215422548_)
                                                      (___kont2649826499_
                                                       _hd2215522545_)
                                                      (___match2663226633_
                                                       _e2214622573_
                                                       _hd2214522577_
                                                       _tl2214422580_
                                                       _e2215322531_
                                                       _hd2215222535_
                                                       _tl2215122538_
                                                       _e2215622541_
                                                       _hd2215522545_
                                                       _tl2215422548_))))
                                              (___kont2650826509_
                                               _tl2215122538_
                                               _hd2215222535_
                                               _hd2214522577_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g28490_|
                                               _hd2215222535_)
                                              (if (gx#stx-pair? _tl2215122538_)
                                                  (let ((_e2216622489_
                                                         (gx#syntax-e
                                                          _tl2215122538_)))
                                                    (let ((_tl2216422496_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2216622489_)))
                                                          (_hd2216522493_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2216622489_))))
                                                      (if (gx#stx-null?
                                                           _tl2216422496_)
                                                          (___kont2650026501_
                                                           _hd2216522493_)
                                                          (___match2663226633_
                                                           _e2214622573_
                                                           _hd2214522577_
                                                           _tl2214422580_
                                                           _e2215322531_
                                                           _hd2215222535_
                                                           _tl2215122538_
                                                           _e2216622489_
                                                           _hd2216522493_
                                                           _tl2216422496_))))
                                                  (___kont2650826509_
                                                   _tl2215122538_
                                                   _hd2215222535_
                                                   _hd2214522577_))
                                              (if (gx#stx-pair? _tl2215122538_)
                                                  (let ((_e2218822378_
                                                         (gx#syntax-e
                                                          _tl2215122538_)))
                                                    (let ((_tl2218622385_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2218822378_)))
                                                          (_hd2218722382_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2218822378_))))
                                                      (if (gx#stx-null?
                                                           _tl2218622385_)
                                                          (___match2661426615_
                                                           _e2214622573_
                                                           _hd2214522577_
                                                           _tl2214422580_
                                                           _e2215322531_
                                                           _hd2215222535_
                                                           _tl2215122538_
                                                           _e2218822378_
                                                           _hd2218722382_
                                                           _tl2218622385_)
                                                          (___match2663226633_
                                                           _e2214622573_
                                                           _hd2214522577_
                                                           _tl2214422580_
                                                           _e2215322531_
                                                           _hd2215222535_
                                                           _tl2215122538_
                                                           _e2218822378_
                                                           _hd2218722382_
                                                           _tl2218622385_))))
                                                  (___kont2650826509_
                                                   _tl2215122538_
                                                   _hd2215222535_
                                                   _hd2214522577_))))
                                      (if (gx#stx-datum? _hd2215222535_)
                                          (let ((_e2217422432_
                                                 (gx#stx-e _hd2215222535_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e2217422432_ '::))
                                                (if (gx#stx-pair?
                                                     _tl2215122538_)
                                                    (let ((_e2217722436_
                                                           (gx#syntax-e
                                                            _tl2215122538_)))
                                                      (let ((_tl2217522443_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2217722436_)))
                    (_hd2217622440_
                     (let () (declare (not safe)) (##car _e2217722436_))))
                (if (gx#stx-null? _tl2217522443_)
                    (___kont2650226503_ _hd2217622440_)
                    (___match2663226633_
                     _e2214622573_
                     _hd2214522577_
                     _tl2214422580_
                     _e2215322531_
                     _hd2215222535_
                     _tl2215122538_
                     _e2217722436_
                     _hd2217622440_
                     _tl2217522443_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2650826509_
                                                     _tl2215122538_
                                                     _hd2215222535_
                                                     _hd2214522577_))
                                                (if (gx#stx-pair?
                                                     _tl2215122538_)
                                                    (let ((_e2218822378_
                                                           (gx#syntax-e
                                                            _tl2215122538_)))
                                                      (let ((_tl2218622385_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2218822378_)))
                    (_hd2218722382_
                     (let () (declare (not safe)) (##car _e2218822378_))))
                (if (gx#stx-null? _tl2218622385_)
                    (___match2661426615_
                     _e2214622573_
                     _hd2214522577_
                     _tl2214422580_
                     _e2215322531_
                     _hd2215222535_
                     _tl2215122538_
                     _e2218822378_
                     _hd2218722382_
                     _tl2218622385_)
                    (___match2663226633_
                     _e2214622573_
                     _hd2214522577_
                     _tl2214422580_
                     _e2215322531_
                     _hd2215222535_
                     _tl2215122538_
                     _e2218822378_
                     _hd2218722382_
                     _tl2218622385_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2650826509_
                                                     _tl2215122538_
                                                     _hd2215222535_
                                                     _hd2214522577_))))
                                          (if (gx#stx-pair? _tl2215122538_)
                                              (let ((_e2218822378_
                                                     (gx#syntax-e
                                                      _tl2215122538_)))
                                                (let ((_tl2218622385_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2218822378_)))
                                                      (_hd2218722382_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2218822378_))))
                                                  (if (gx#stx-null?
                                                       _tl2218622385_)
                                                      (___match2661426615_
                                                       _e2214622573_
                                                       _hd2214522577_
                                                       _tl2214422580_
                                                       _e2215322531_
                                                       _hd2215222535_
                                                       _tl2215122538_
                                                       _e2218822378_
                                                       _hd2218722382_
                                                       _tl2218622385_)
                                                      (___match2663226633_
                                                       _e2214622573_
                                                       _hd2214522577_
                                                       _tl2214422580_
                                                       _e2215322531_
                                                       _hd2215222535_
                                                       _tl2215122538_
                                                       _e2218822378_
                                                       _hd2218722382_
                                                       _tl2218622385_))))
                                              (___kont2650826509_
                                               _tl2215122538_
                                               _hd2215222535_
                                               _hd2214522577_))))))
                              (___kont2651026511_ _tl2214422580_)))))
                  (let () (declare (not safe)) (_g2214222220_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#quasiquote|
      (lambda (_stx22591_)
        (letrec ((_simple-quote?22594_
                  (lambda (_e23286_)
                    (let* ((___stx2665326654_ _e23286_)
                           (_g2329423331_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2665326654_))))
                      (let ((___kont2665626657_ (lambda () '#f))
                            (___kont2665826659_ (lambda () '#f))
                            (___kont2666026661_
                             (lambda (_L23445_ _L23447_)
                               (if (_simple-quote?22594_ _L23447_)
                                   (_simple-quote?22594_ _L23445_)
                                   '#f)))
                            (___kont2666226663_
                             (lambda (_L23406_)
                               (_simple-quote?22594_
                                (let ((__tmp28492
                                       (lambda (_g2341923422_ _g2342023425_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g2341923422_
                                                 _g2342023425_)))))
                                  (declare (not safe))
                                  (foldr1 __tmp28492 '() _L23406_)))))
                            (___kont2666626667_
                             (lambda (_L23353_)
                               (_simple-quote?22594_ _L23353_)))
                            (___kont2666826669_ (lambda () '#t)))
                        (let* ((_g2329223365_
                                (lambda ()
                                  (if (gx#stx-box? ___stx2665326654_)
                                      (let ((_e2332523349_
                                             (unbox (gx#syntax-e
                                                     ___stx2665326654_))))
                                        (___kont2666626667_ _e2332523349_))
                                      (___kont2666826669_))))
                               (___match2672426725_
                                (lambda (_e2331423372_
                                         ___splice2666426665_
                                         _target2331523376_
                                         _tl2331723379_)
                                  (letrec ((_loop2331823382_
                                            (lambda (_hd2331623386_
                                                     _e2332223389_)
                                              (if (gx#stx-pair? _hd2331623386_)
                                                  (let ((_e2331923392_
                                                         (gx#syntax-e
                                                          _hd2331623386_)))
                                                    (let ((_lp-tl2332123399_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2331923392_)))
                                                          (_lp-hd2332023396_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2331923392_))))
                                                      (_loop2331823382_
                                                       _lp-tl2332123399_
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _lp-hd2332023396_
                                                               _e2332223389_)))))
                                                  (let ((_e2332323402_
                                                         (reverse _e2332223389_)))
                                                    (___kont2666226663_
                                                     _e2332323402_))))))
                                    (_loop2331823382_
                                     _target2331523376_
                                     '()))))
                               (_g2329123428_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx2665326654_)
                                      (let ((_e2331423372_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx2665326654_))))
                                        (if (gx#stx-pair/null? _e2331423372_)
                                            (let ((___splice2666426665_
                                                   (gx#syntax-split-splice
                                                    _e2331423372_
                                                    '0)))
                                              (let ((_tl2331723379_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2666426665_
                                                        '1)))
                                                    (_target2331523376_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2666426665_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl2331723379_)
                                                    (___match2672426725_
                                                     _e2331423372_
                                                     ___splice2666426665_
                                                     _target2331523376_
                                                     _tl2331723379_)
                                                    (___kont2666826669_))))
                                            (___kont2666826669_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g2329223365_))))))
                          (if (gx#stx-pair? ___stx2665326654_)
                              (let ((_e2329823496_
                                     (gx#syntax-e ___stx2665326654_)))
                                (let ((_tl2329623503_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2329823496_)))
                                      (_hd2329723500_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2329823496_))))
                                  (if (gx#identifier? _hd2329723500_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g28494_|
                                           _hd2329723500_)
                                          (if (gx#stx-pair? _tl2329623503_)
                                              (let ((_e2330123506_
                                                     (gx#syntax-e
                                                      _tl2329623503_)))
                                                (let ((_tl2329923513_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2330123506_)))
                                                      (_hd2330023510_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2330123506_))))
                                                  (if (gx#stx-null?
                                                       _tl2329923513_)
                                                      (___kont2665626657_)
                                                      (___kont2666026661_
                                                       _tl2329623503_
                                                       _hd2329723500_))))
                                              (___kont2666026661_
                                               _tl2329623503_
                                               _hd2329723500_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g28493_|
                                               _hd2329723500_)
                                              (if (gx#stx-pair? _tl2329623503_)
                                                  (let ((_e2330723475_
                                                         (gx#syntax-e
                                                          _tl2329623503_)))
                                                    (let ((_tl2330523482_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2330723475_)))
                                                          (_hd2330623479_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2330723475_))))
                                                      (if (gx#stx-null?
                                                           _tl2330523482_)
                                                          (___kont2665826659_)
                                                          (___kont2666026661_
                                                           _tl2329623503_
                                                           _hd2329723500_))))
                                                  (___kont2666026661_
                                                   _tl2329623503_
                                                   _hd2329723500_))
                                              (___kont2666026661_
                                               _tl2329623503_
                                               _hd2329723500_)))
                                      (___kont2666026661_
                                       _tl2329623503_
                                       _hd2329723500_))))
                              (let ()
                                (declare (not safe))
                                (_g2329123428_))))))))
                 (_generate22596_
                  (lambda (_e22658_ _d22660_)
                    (let* ((___stx2673126732_ _e22658_)
                           (_g2266922727_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2673126732_))))
                      (let ((___kont2673426735_
                             (lambda (_L23238_)
                               (let* ((_g2325123259_
                                       (lambda (_g2325223255_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2325223255_)))
                                      (_g2325023278_
                                       (lambda (_g2325223263_)
                                         ((lambda (_L23266_)
                                            (let ()
                                              (let ((__tmp28501
                                                     (gx#datum->syntax
                                                      '#f
                                                      'list))
                                                    (__tmp28495
                                                     (let ((__tmp28497
                                                            (let ((__tmp28500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'quote))
                          (__tmp28498
                           (let ((__tmp28499
                                  (gx#datum->syntax '#f 'quasiquote)))
                             (declare (not safe))
                             (cons __tmp28499 '()))))
                      (declare (not safe))
                      (cons __tmp28500 __tmp28498)))
                   (__tmp28496
                    (let () (declare (not safe)) (cons _L23266_ '()))))
               (declare (not safe))
               (cons __tmp28497 __tmp28496))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp28501 __tmp28495))))
                                          _g2325223263_))))
                                 (_g2325023278_
                                  (_generate22596_
                                   _L23238_
                                   (let ()
                                     (declare (not safe))
                                     (fx+ _d22660_ '1)))))))
                            (___kont2673626737_
                             (lambda (_L23167_)
                               (if (let ()
                                     (declare (not safe))
                                     (fxzero? _d22660_))
                                   _L23167_
                                   (let* ((_g2318023188_
                                           (lambda (_g2318123184_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2318123184_)))
                                          (_g2317923207_
                                           (lambda (_g2318123192_)
                                             ((lambda (_L23195_)
                                                (let ()
                                                  (let ((__tmp28508
                                                         (gx#datum->syntax
                                                          '#f
                                                          'list))
                                                        (__tmp28502
                                                         (let ((__tmp28504
                                                                (let ((__tmp28507
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'quote))
                              (__tmp28505
                               (let ((__tmp28506
                                      (gx#datum->syntax '#f 'unquote)))
                                 (declare (not safe))
                                 (cons __tmp28506 '()))))
                          (declare (not safe))
                          (cons __tmp28507 __tmp28505)))
                       (__tmp28503
                        (let () (declare (not safe)) (cons _L23195_ '()))))
                   (declare (not safe))
                   (cons __tmp28504 __tmp28503))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp28508
                                                          __tmp28502))))
                                              _g2318123192_))))
                                     (_g2317923207_
                                      (_generate22596_
                                       _L23167_
                                       (let ()
                                         (declare (not safe))
                                         (fx- _d22660_ '1))))))))
                            (___kont2673826739_
                             (lambda (_L23096_)
                               (if (let ()
                                     (declare (not safe))
                                     (fxzero? _d22660_))
                                   (let ((__tmp28523
                                          (gx#datum->syntax '#f 'foldr))
                                         (__tmp28516
                                          (let ((__tmp28522
                                                 (gx#datum->syntax '#f 'cons))
                                                (__tmp28517
                                                 (let ((__tmp28519
                                                        (let ((__tmp28521
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp28520
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '() '()))))
                  (declare (not safe))
                  (cons __tmp28521 __tmp28520)))
               (__tmp28518 (let () (declare (not safe)) (cons _L23096_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp28519
                                                         __tmp28518))))
                                            (declare (not safe))
                                            (cons __tmp28522 __tmp28517))))
                                     (declare (not safe))
                                     (cons __tmp28523 __tmp28516))
                                   (let* ((_g2310923117_
                                           (lambda (_g2311023113_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2311023113_)))
                                          (_g2310823136_
                                           (lambda (_g2311023121_)
                                             ((lambda (_L23124_)
                                                (let ()
                                                  (let ((__tmp28515
                                                         (gx#datum->syntax
                                                          '#f
                                                          'list))
                                                        (__tmp28509
                                                         (let ((__tmp28511
                                                                (let ((__tmp28514
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'quote))
                              (__tmp28512
                               (let ((__tmp28513
                                      (gx#datum->syntax
                                       '#f
                                       'unquote-splicing)))
                                 (declare (not safe))
                                 (cons __tmp28513 '()))))
                          (declare (not safe))
                          (cons __tmp28514 __tmp28512)))
                       (__tmp28510
                        (let () (declare (not safe)) (cons _L23124_ '()))))
                   (declare (not safe))
                   (cons __tmp28511 __tmp28510))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp28515
                                                          __tmp28509))))
                                              _g2311023121_))))
                                     (_g2310823136_
                                      (_generate22596_
                                       _L23096_
                                       (let ()
                                         (declare (not safe))
                                         (fx- _d22660_ '1))))))))
                            (___kont2674026741_
                             (lambda (_L23021_ _L23023_)
                               (let* ((_g2303823046_
                                       (lambda (_g2303923042_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2303923042_)))
                                      (_g2303723065_
                                       (lambda (_g2303923050_)
                                         ((lambda (_L23053_)
                                            (let ()
                                              (let ((__tmp28528
                                                     (gx#datum->syntax
                                                      '#f
                                                      'foldr))
                                                    (__tmp28524
                                                     (let ((__tmp28527
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cons))
                                                           (__tmp28525
                                                            (let ((__tmp28526
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L23023_ '()))))
                      (declare (not safe))
                      (cons _L23053_ __tmp28526))))
               (declare (not safe))
               (cons __tmp28527 __tmp28525))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp28528 __tmp28524))))
                                          _g2303923050_))))
                                 (_g2303723065_
                                  (_generate22596_ _L23021_ _d22660_)))))
                            (___kont2674226743_
                             (lambda (_L22907_ _L22909_)
                               (let* ((_g2292022935_
                                       (lambda (_g2292122931_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2292122931_)))
                                      (_g2291922980_
                                       (lambda (_g2292122939_)
                                         (if (gx#stx-pair? _g2292122939_)
                                             (let ((_e2292622942_
                                                    (gx#syntax-e
                                                     _g2292122939_)))
                                               (let ((_hd2292522946_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2292622942_)))
                                                     (_tl2292422949_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2292622942_))))
                                                 (if (gx#stx-pair?
                                                      _tl2292422949_)
                                                     (let ((_e2292922952_
                                                            (gx#syntax-e
                                                             _tl2292422949_)))
                                                       (let ((_hd2292822956_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2292922952_)))
                     (_tl2292722959_
                      (let () (declare (not safe)) (##cdr _e2292922952_))))
                 (if (gx#stx-null? _tl2292722959_)
                     ((lambda (_L22962_ _L22964_)
                        (let ()
                          (let ((__tmp28531 (gx#datum->syntax '#f 'cons))
                                (__tmp28529
                                 (let ((__tmp28530
                                        (let ()
                                          (declare (not safe))
                                          (cons _L22962_ '()))))
                                   (declare (not safe))
                                   (cons _L22964_ __tmp28530))))
                            (declare (not safe))
                            (cons __tmp28531 __tmp28529))))
                      _hd2292822956_
                      _hd2292522946_)
                     (_g2292022935_ _g2292122939_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2292022935_
                                                      _g2292122939_))))
                                             (_g2292022935_ _g2292122939_)))))
                                 (_g2291922980_
                                  (list (_generate22596_ _L22909_ _d22660_)
                                        (_generate22596_
                                         _L22907_
                                         _d22660_))))))
                            (___kont2674426745_
                             (lambda (_L22837_)
                               (let* ((_g2285122859_
                                       (lambda (_g2285222855_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2285222855_)))
                                      (_g2285022878_
                                       (lambda (_g2285222863_)
                                         ((lambda (_L22866_)
                                            (let ()
                                              (let ((__tmp28533
                                                     (gx#datum->syntax
                                                      '#f
                                                      'list->vector))
                                                    (__tmp28532
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L22866_ '()))))
                                                (declare (not safe))
                                                (cons __tmp28533 __tmp28532))))
                                          _g2285222863_))))
                                 (_g2285022878_
                                  (_generate22596_
                                   (let ((__tmp28534
                                          (lambda (_g2288122884_ _g2288222887_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g2288122884_
                                                    _g2288222887_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp28534 '() _L22837_))
                                   _d22660_)))))
                            (___kont2674826749_
                             (lambda (_L22755_)
                               (let* ((_g2276522773_
                                       (lambda (_g2276622769_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2276622769_)))
                                      (_g2276422792_
                                       (lambda (_g2276622777_)
                                         ((lambda (_L22780_)
                                            (let ()
                                              (let ((__tmp28536
                                                     (gx#datum->syntax
                                                      '#f
                                                      'box))
                                                    (__tmp28535
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L22780_ '()))))
                                                (declare (not safe))
                                                (cons __tmp28536 __tmp28535))))
                                          _g2276622777_))))
                                 (_g2276422792_
                                  (_generate22596_ _L22755_ _d22660_)))))
                            (___kont2675026751_
                             (lambda (_L22734_)
                               (let ((__tmp28538 (gx#datum->syntax '#f 'quote))
                                     (__tmp28537
                                      (let ()
                                        (declare (not safe))
                                        (cons _L22734_ '()))))
                                 (declare (not safe))
                                 (cons __tmp28538 __tmp28537)))))
                        (let* ((_g2266722796_
                                (lambda ()
                                  (if (gx#stx-box? ___stx2673126732_)
                                      (let ((_e2272022751_
                                             (unbox (gx#syntax-e
                                                     ___stx2673126732_))))
                                        (___kont2674826749_ _e2272022751_))
                                      (___kont2675026751_ ___stx2673126732_))))
                               (___match2685026851_
                                (lambda (_e2270922803_
                                         ___splice2674626747_
                                         _target2271022807_
                                         _tl2271222810_)
                                  (letrec ((_loop2271322813_
                                            (lambda (_hd2271122817_
                                                     _e2271722820_)
                                              (if (gx#stx-pair? _hd2271122817_)
                                                  (let ((_e2271422823_
                                                         (gx#syntax-e
                                                          _hd2271122817_)))
                                                    (let ((_lp-tl2271622830_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2271422823_)))
                                                          (_lp-hd2271522827_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2271422823_))))
                                                      (_loop2271322813_
                                                       _lp-tl2271622830_
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _lp-hd2271522827_
                                                               _e2271722820_)))))
                                                  (let ((_e2271822833_
                                                         (reverse _e2271722820_)))
                                                    (___kont2674426745_
                                                     _e2271822833_))))))
                                    (_loop2271322813_
                                     _target2271022807_
                                     '()))))
                               (_g2266622890_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx2673126732_)
                                      (let ((_e2270922803_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx2673126732_))))
                                        (if (gx#stx-pair/null? _e2270922803_)
                                            (let ((___splice2674626747_
                                                   (gx#syntax-split-splice
                                                    _e2270922803_
                                                    '0)))
                                              (let ((_tl2271222810_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2674626747_
                                                        '1)))
                                                    (_target2271022807_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2674626747_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl2271222810_)
                                                    (___match2685026851_
                                                     _e2270922803_
                                                     ___splice2674626747_
                                                     _target2271022807_
                                                     _tl2271222810_)
                                                    (___kont2675026751_
                                                     ___stx2673126732_))))
                                            (___kont2675026751_
                                             ___stx2673126732_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g2266722796_))))))
                          (if (gx#stx-pair? ___stx2673126732_)
                              (let ((_e2267423218_
                                     (gx#syntax-e ___stx2673126732_)))
                                (let ((_tl2267223225_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2267423218_)))
                                      (_hd2267323222_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2267423218_))))
                                  (if (gx#identifier? _hd2267323222_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar~Sugar-2[1]#_g28542_|
                                           _hd2267323222_)
                                          (if (gx#stx-pair? _tl2267223225_)
                                              (let ((_e2267723228_
                                                     (gx#syntax-e
                                                      _tl2267223225_)))
                                                (let ((_tl2267523235_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2267723228_)))
                                                      (_hd2267623232_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2267723228_))))
                                                  (if (gx#stx-null?
                                                       _tl2267523235_)
                                                      (___kont2673426735_
                                                       _hd2267623232_)
                                                      (___kont2674226743_
                                                       _tl2267223225_
                                                       _hd2267323222_))))
                                              (___kont2674226743_
                                               _tl2267223225_
                                               _hd2267323222_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar~Sugar-2[1]#_g28541_|
                                               _hd2267323222_)
                                              (if (gx#stx-pair? _tl2267223225_)
                                                  (let ((_e2268423157_
                                                         (gx#syntax-e
                                                          _tl2267223225_)))
                                                    (let ((_tl2268223164_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2268423157_)))
                                                          (_hd2268323161_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2268423157_))))
                                                      (if (gx#stx-null?
                                                           _tl2268223164_)
                                                          (___kont2673626737_
                                                           _hd2268323161_)
                                                          (___kont2674226743_
                                                           _tl2267223225_
                                                           _hd2267323222_))))
                                                  (___kont2674226743_
                                                   _tl2267223225_
                                                   _hd2267323222_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar~Sugar-2[1]#_g28540_|
                                                   _hd2267323222_)
                                                  (if (gx#stx-pair?
                                                       _tl2267223225_)
                                                      (let ((_e2269123086_
                                                             (gx#syntax-e
                                                              _tl2267223225_)))
                                                        (let ((_tl2268923093_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2269123086_)))
                      (_hd2269023090_
                       (let () (declare (not safe)) (##car _e2269123086_))))
                  (if (gx#stx-null? _tl2268923093_)
                      (___kont2673826739_ _hd2269023090_)
                      (___kont2674226743_ _tl2267223225_ _hd2267323222_))))
              (___kont2674226743_ _tl2267223225_ _hd2267323222_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2674226743_
                                                   _tl2267223225_
                                                   _hd2267323222_))))
                                      (if (gx#stx-pair? _hd2267323222_)
                                          (let ((_e2269923001_
                                                 (gx#syntax-e _hd2267323222_)))
                                            (let ((_tl2269723008_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2269923001_)))
                                                  (_hd2269823005_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2269923001_))))
                                              (if (gx#identifier?
                                                   _hd2269823005_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar~Sugar-2[1]#_g28539_|
                                                       _hd2269823005_)
                                                      (if (gx#stx-pair?
                                                           _tl2269723008_)
                                                          (let ((_e2270223011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2269723008_)))
                    (let ((_tl2270023018_
                           (let () (declare (not safe)) (##cdr _e2270223011_)))
                          (_hd2270123015_
                           (let ()
                             (declare (not safe))
                             (##car _e2270223011_))))
                      (if (gx#stx-null? _tl2270023018_)
                          (if (let () (declare (not safe)) (fxzero? _d22660_))
                              (let ((_L23021_ _tl2267223225_)
                                    (_L23023_ _hd2270123015_))
                                (___kont2674026741_ _L23021_ _L23023_))
                              (___kont2674226743_
                               _tl2267223225_
                               _hd2267323222_))
                          (___kont2674226743_ _tl2267223225_ _hd2267323222_))))
                  (___kont2674226743_ _tl2267223225_ _hd2267323222_))
              (___kont2674226743_ _tl2267223225_ _hd2267323222_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2674226743_
                                                   _tl2267223225_
                                                   _hd2267323222_))))
                                          (___kont2674226743_
                                           _tl2267223225_
                                           _hd2267323222_)))))
                              (let ()
                                (declare (not safe))
                                (_g2266622890_)))))))))
          (let* ((_g2259822612_
                  (lambda (_g2259922608_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2259922608_)))
                 (_g2259722654_
                  (lambda (_g2259922616_)
                    (if (gx#stx-pair? _g2259922616_)
                        (let ((_e2260322619_ (gx#syntax-e _g2259922616_)))
                          (let ((_hd2260222623_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2260322619_)))
                                (_tl2260122626_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2260322619_))))
                            (if (gx#stx-pair? _tl2260122626_)
                                (let ((_e2260622629_
                                       (gx#syntax-e _tl2260122626_)))
                                  (let ((_hd2260522633_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2260622629_)))
                                        (_tl2260422636_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2260622629_))))
                                    (if (gx#stx-null? _tl2260422636_)
                                        ((lambda (_L22639_)
                                           (if (_simple-quote?22594_ _L22639_)
                                               (let ((__tmp28544
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp28543
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L22639_ '()))))
                                                 (declare (not safe))
                                                 (cons __tmp28544 __tmp28543))
                                               (_generate22596_ _L22639_ '0)))
                                         _hd2260522633_)
                                        (_g2259822612_ _g2259922616_))))
                                (_g2259822612_ _g2259922616_))))
                        (_g2259822612_ _g2259922616_)))))
            (_g2259722654_ _stx22591_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#delay|
      (lambda (_$stx23526_)
        (let* ((___stx2685726858_ _$stx23526_)
               (_g2353123552_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2685726858_))))
          (let ((___kont2686026861_
                 (lambda (_L23620_)
                   (let ((__tmp28546 (gx#datum->syntax '#f 'quote))
                         (__tmp28545
                          (let () (declare (not safe)) (cons _L23620_ '()))))
                     (declare (not safe))
                     (cons __tmp28546 __tmp28545))))
                (___kont2686226863_
                 (lambda (_L23579_)
                   (let ((__tmp28552 (gx#datum->syntax '#f 'make-promise))
                         (__tmp28547
                          (let ((__tmp28548
                                 (let ((__tmp28551
                                        (gx#datum->syntax '#f 'lambda%))
                                       (__tmp28549
                                        (let ((__tmp28550
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L23579_ '()))))
                                          (declare (not safe))
                                          (cons '() __tmp28550))))
                                   (declare (not safe))
                                   (cons __tmp28551 __tmp28549))))
                            (declare (not safe))
                            (cons __tmp28548 '()))))
                     (declare (not safe))
                     (cons __tmp28552 __tmp28547)))))
            (let ((___match2687826879_
                   (lambda (_e2353623600_
                            _hd2353523604_
                            _tl2353423607_
                            _e2353923610_
                            _hd2353823614_
                            _tl2353723617_)
                     (let ((_L23620_ _hd2353823614_))
                       (if (gx#stx-datum? _L23620_)
                           (___kont2686026861_ _L23620_)
                           (___kont2686226863_ _hd2353823614_))))))
              (if (gx#stx-pair? ___stx2685726858_)
                  (let ((_e2353623600_ (gx#syntax-e ___stx2685726858_)))
                    (let ((_tl2353423607_
                           (let () (declare (not safe)) (##cdr _e2353623600_)))
                          (_hd2353523604_
                           (let ()
                             (declare (not safe))
                             (##car _e2353623600_))))
                      (if (gx#stx-pair? _tl2353423607_)
                          (let ((_e2353923610_ (gx#syntax-e _tl2353423607_)))
                            (let ((_tl2353723617_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2353923610_)))
                                  (_hd2353823614_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2353923610_))))
                              (if (gx#stx-null? _tl2353723617_)
                                  (___match2687826879_
                                   _e2353623600_
                                   _hd2353523604_
                                   _tl2353423607_
                                   _e2353923610_
                                   _hd2353823614_
                                   _tl2353723617_)
                                  (let ()
                                    (declare (not safe))
                                    (_g2353123552_)))))
                          (let () (declare (not safe)) (_g2353123552_)))))
                  (let () (declare (not safe)) (_g2353123552_))))))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#cut|
      (lambda (_stx23637_)
        (letrec ((_generate23640_
                  (lambda (_rest23759_)
                    (let _lp23762_ ((_rest23765_ _rest23759_)
                                    (_hd23767_ '())
                                    (_body23768_ '()))
                      (let* ((___stx2691526916_ _rest23765_)
                             (_g2377123783_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2691526916_))))
                        (let ((___kont2691826919_
                               (lambda (_L23811_ _L23813_)
                                 (let* ((___stx2689526896_ _L23813_)
                                        (_g2383023837_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2689526896_))))
                                   (let ((___kont2689826899_
                                          (lambda ()
                                            (let ((_arg23873_ (gx#genident)))
                                              (_lp23762_
                                               _L23811_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _arg23873_ _hd23767_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _arg23873_
                                                       _body23768_))))))
                                         (___kont2690026901_
                                          (lambda ()
                                            (if (gx#stx-null? _L23811_)
                                                (let ((_tail23859_
                                                       (gx#genident)))
                                                  (values (let ()
                                                            (declare
                                                              (not safe))
                                                            (foldl1 cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tail23859_
                            _hd23767_))
                  (let ((__tmp28553 (list _tail23859_)))
                    (declare (not safe))
                    (foldl1 cons __tmp28553 _body23768_))
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; cut ellipsis <...> not in tail position"
                                                 _stx23637_
                                                 _L23813_))))
                                         (___kont2690226903_
                                          (lambda ()
                                            (_lp23762_
                                             _L23811_
                                             _hd23767_
                                             (let ()
                                               (declare (not safe))
                                               (cons _L23813_ _body23768_))))))
                                     (if (gx#identifier? ___stx2689526896_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core/sugar~Sugar-2[1]#_g28555_|
                                              ___stx2689526896_)
                                             (___kont2689826899_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core/sugar~Sugar-2[1]#_g28554_|
                                                  ___stx2689526896_)
                                                 (___kont2690026901_)
                                                 (___kont2690226903_)))
                                         (___kont2690226903_))))))
                              (___kont2692026921_
                               (lambda ()
                                 (values (reverse _hd23767_)
                                         (reverse _body23768_)
                                         '#f))))
                          (if (gx#stx-pair? ___stx2691526916_)
                              (let ((_e2377723801_
                                     (gx#syntax-e ___stx2691526916_)))
                                (let ((_tl2377523808_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2377723801_)))
                                      (_hd2377623805_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2377723801_))))
                                  (___kont2691826919_
                                   _tl2377523808_
                                   _hd2377623805_)))
                              (___kont2692026921_))))))))
          (let* ((_g2364323654_
                  (lambda (_g2364423650_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2364423650_)))
                 (_g2364223755_
                  (lambda (_g2364423658_)
                    (if (gx#stx-pair? _g2364423658_)
                        (let ((_e2364823661_ (gx#syntax-e _g2364423658_)))
                          (let ((_hd2364723665_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2364823661_)))
                                (_tl2364623668_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2364823661_))))
                            ((lambda (_L23671_)
                               (if (and (gx#stx-list? _L23671_)
                                        (let ((__tmp28566
                                               (gx#stx-null? _L23671_)))
                                          (declare (not safe))
                                          (not __tmp28566)))
                                   (let ((_g28556_ (_generate23640_ _L23671_)))
                                     (begin
                                       (let ((_g28557_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g28556_)
                                                    (##vector-length _g28556_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g28557_ 3)))
                                             (error "Context expects 3 values"
                                                    _g28557_)))
                                       (let ((_hd23684_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g28556_ 0)))
                                             (_body23686_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g28556_ 1)))
                                             (_tail?23687_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g28556_ 2))))
                                         (let* ((_g2368923697_
                                                 (lambda (_g2369023693_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2369023693_)))
                                                (_g2368823751_
                                                 (lambda (_g2369023701_)
                                                   ((lambda (_L23704_)
                                                      (let ()
                                                        (let* ((_g2371723725_
                                                                (lambda (_g2371823721_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2371823721_)))
                       (_g2371623747_
                        (lambda (_g2371823729_)
                          ((lambda (_L23732_)
                             (let ()
                               (let ()
                                 (if _tail?23687_
                                     (let ((__tmp28565
                                            (gx#datum->syntax '#f 'lambda%))
                                           (__tmp28561
                                            (let ((__tmp28562
                                                   (let ((__tmp28563
                                                          (let ((__tmp28564
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'apply)))
                    (declare (not safe))
                    (cons __tmp28564 _L23732_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp28563 '()))))
                                              (declare (not safe))
                                              (cons _L23704_ __tmp28562))))
                                       (declare (not safe))
                                       (cons __tmp28565 __tmp28561))
                                     (let ((__tmp28560
                                            (gx#datum->syntax '#f 'lambda%))
                                           (__tmp28558
                                            (let ((__tmp28559
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L23732_ '()))))
                                              (declare (not safe))
                                              (cons _L23704_ __tmp28559))))
                                       (declare (not safe))
                                       (cons __tmp28560 __tmp28558))))))
                           _g2371823729_))))
                  (_g2371623747_ _body23686_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2369023701_))))
                                           (_g2368823751_ _hd23684_)))))
                                   (_g2364323654_ _g2364423658_)))
                             _tl2364623668_)))
                        (_g2364323654_ _g2364423658_)))))
            (_g2364223755_ _stx23637_)))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<>|
      (lambda (_$stx23885_)
        (let ((_g2388823895_
               (lambda (_g2388923891_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g2388923891_))))
          (_g2388823895_ _$stx23885_))))
    (define |gerbil/core/sugar~Sugar-2[:0:]#<...>|
      (lambda (_$stx23899_)
        (let ((_g2390223909_
               (lambda (_g2390323905_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g2390323905_))))
          (_g2390223909_ _$stx23899_))))))
