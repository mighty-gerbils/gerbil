(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1710699090)
  (begin
    (define displayln
      (lambda _args56965_
        (let _lp56967_ ((_rest56969_ _args56965_))
          (let* ((_rest5697056978_ _rest56969_)
                 (_else5697256986_ (lambda () (newline)))
                 (_K5697456992_
                  (lambda (_rest56989_ _hd56990_)
                    (display _hd56990_)
                    (let () (declare (not safe)) (_lp56967_ _rest56989_)))))
            (if (let () (declare (not safe)) (##pair? _rest5697056978_))
                (let ((_hd5697556995_
                       (let () (declare (not safe)) (##car _rest5697056978_)))
                      (_tl5697656997_
                       (let () (declare (not safe)) (##cdr _rest5697056978_))))
                  (let* ((_hd57000_ _hd5697556995_)
                         (_rest57002_ _tl5697656997_))
                    (declare (not safe))
                    (_K5697456992_ _rest57002_ _hd57000_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args56963_ (for-each display _args56963_)))
    (define file-newer?
      (lambda (_file156956_ _file256957_)
        (letrec ((_modification-time56959_
                  (lambda (_file56961_)
                    (let ((__tmp57386
                           (file-info-last-modification-time
                            (file-info _file56961_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp57386)))))
          (let ((__tmp57388
                 (let ()
                   (declare (not safe))
                   (_modification-time56959_ _file156956_)))
                (__tmp57387
                 (let ()
                   (declare (not safe))
                   (_modification-time56959_ _file256957_))))
            (declare (not safe))
            (##fl> __tmp57388 __tmp57387)))))
    (define create-directory*__%
      (lambda (_dir56930_ _perms56931_)
        (letrec ((_create156933_
                  (lambda (_path56944_)
                    (if (file-exists? _path56944_)
                        (if (let ((__tmp57389 (file-type _path56944_)))
                              (declare (not safe))
                              (eq? __tmp57389 'directory))
                            '#!void
                            (let ()
                              (declare (not safe))
                              (error '"Path component is not a directory"
                                     _path56944_)))
                        (if _perms56931_
                            (create-directory
                             (list 'path:
                                   _path56944_
                                   'permissions:
                                   _perms56931_))
                            (create-directory _path56944_))))))
          (if (file-exists? _dir56930_)
              '#!void
              (let _lp56935_ ((_start56937_ '0))
                (let ((_$e56939_
                       (let ()
                         (declare (not safe))
                         (string-index__% _dir56930_ '#\/ _start56937_))))
                  (if _$e56939_
                      ((lambda (_x56942_)
                         (if (let () (declare (not safe)) (##fx> _x56942_ '0))
                             (let ((__tmp57390
                                    (substring _dir56930_ '0 _x56942_)))
                               (declare (not safe))
                               (_create156933_ __tmp57390))
                             '#!void)
                         (let ((__tmp57391
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x56942_ '1))))
                           (declare (not safe))
                           (_lp56935_ __tmp57391)))
                       _$e56939_)
                      (let ()
                        (declare (not safe))
                        (_create156933_ _dir56930_)))))))))
    (define create-directory*__0
      (lambda (_dir56949_)
        (let ((_perms56951_ '493))
          (declare (not safe))
          (create-directory*__% _dir56949_ _perms56951_))))
    (define create-directory*
      (lambda _g57393_
        (let ((_g57392_ (let () (declare (not safe)) (##length _g57393_))))
          (cond ((let () (declare (not safe)) (##fx= _g57392_ 1))
                 (apply (lambda (_dir56949_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir56949_)))
                        _g57393_))
                ((let () (declare (not safe)) (##fx= _g57392_ 2))
                 (apply (lambda (_dir56953_ _perms56954_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir56953_ _perms56954_)))
                        _g57393_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g57393_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g57394_ '#t))
    (define true?
      (lambda (_obj56926_) (let () (declare (not safe)) (eq? _obj56926_ '#t))))
    (define false (lambda _g57395_ '#f))
    (define void (lambda _g57396_ '#!void))
    (define void?
      (lambda (_obj56922_)
        (let () (declare (not safe)) (eq? _obj56922_ '#!void))))
    (define dssl-object?
      (lambda (_obj56920_)
        (if (memq _obj56920_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj56918_)
        (let () (declare (not safe)) (eq? _obj56918_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj56916_)
        (let () (declare (not safe)) (eq? _obj56916_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj56914_)
        (let () (declare (not safe)) (eq? _obj56914_ '#!optional))))
    (define immediate?
      (lambda (_obj56910_)
        (let* ((_t56912_ (let () (declare (not safe)) (##type _obj56910_)))
               (__tmp57397
                (let () (declare (not safe)) (##fxand _t56912_ '1))))
          (declare (not safe))
          (##fxzero? __tmp57397))))
    (define nonnegative-fixnum?
      (lambda (_obj56908_)
        (if (let () (declare (not safe)) (fixnum? _obj56908_))
            (let ((__tmp57398 (fxnegative? _obj56908_)))
              (declare (not safe))
              (not __tmp57398))
            '#f)))
    (define values-count
      (lambda (_obj56906_)
        (if (let () (declare (not safe)) (##values? _obj56906_))
            (let () (declare (not safe)) (##vector-length _obj56906_))
            '1)))
    (define values-ref
      (lambda (_obj56903_ _k56904_)
        (if (let () (declare (not safe)) (##values? _obj56903_))
            (let () (declare (not safe)) (##vector-ref _obj56903_ _k56904_))
            _obj56903_)))
    (define values->list
      (lambda (_obj56901_)
        (if (let () (declare (not safe)) (##values? _obj56901_))
            (let () (declare (not safe)) (##vector->list _obj56901_))
            (list _obj56901_))))
    (define subvector->list__%
      (lambda (_obj56886_ _start56887_)
        (let ((_lst56889_
               (let () (declare (not safe)) (##vector->list _obj56886_))))
          (list-tail _lst56889_ _start56887_))))
    (define subvector->list__0
      (lambda (_obj56894_)
        (let ((_start56896_ '0))
          (declare (not safe))
          (subvector->list__% _obj56894_ _start56896_))))
    (define subvector->list
      (lambda _g57400_
        (let ((_g57399_ (let () (declare (not safe)) (##length _g57400_))))
          (cond ((let () (declare (not safe)) (##fx= _g57399_ 1))
                 (apply (lambda (_obj56894_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj56894_)))
                        _g57400_))
                ((let () (declare (not safe)) (##fx= _g57399_ 2))
                 (apply (lambda (_obj56898_ _start56899_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj56898_ _start56899_)))
                        _g57400_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g57400_))))))
    (define cons*
      (lambda (_x56876_ _y56877_ . _rest56878_)
        (letrec ((_recur56880_
                  (lambda (_x56882_ _rest56883_)
                    (if (let () (declare (not safe)) (pair? _rest56883_))
                        (let ((__tmp57401
                               (let ((__tmp57403
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest56883_)))
                                     (__tmp57402
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest56883_))))
                                 (declare (not safe))
                                 (_recur56880_ __tmp57403 __tmp57402))))
                          (declare (not safe))
                          (cons _x56882_ __tmp57401))
                        _x56882_))))
          (let ((__tmp57404
                 (let ()
                   (declare (not safe))
                   (_recur56880_ _y56877_ _rest56878_))))
            (declare (not safe))
            (cons _x56876_ __tmp57404)))))
    (define foldl1
      (lambda (_f56834_ _iv56835_ _lst56836_)
        (let _lp56838_ ((_rest56840_ _lst56836_) (_r56841_ _iv56835_))
          (let* ((_rest5684256850_ _rest56840_)
                 (_else5684456858_ (lambda () _r56841_))
                 (_K5684656864_
                  (lambda (_rest56861_ _x56862_)
                    (let ((__tmp57405 (_f56834_ _x56862_ _r56841_)))
                      (declare (not safe))
                      (_lp56838_ _rest56861_ __tmp57405)))))
            (if (let () (declare (not safe)) (##pair? _rest5684256850_))
                (let ((_hd5684756867_
                       (let () (declare (not safe)) (##car _rest5684256850_)))
                      (_tl5684856869_
                       (let () (declare (not safe)) (##cdr _rest5684256850_))))
                  (let* ((_x56872_ _hd5684756867_)
                         (_rest56874_ _tl5684856869_))
                    (declare (not safe))
                    (_K5684656864_ _rest56874_ _x56872_)))
                (let () (declare (not safe)) (_else5684456858_)))))))
    (define foldl2
      (lambda (_f56757_ _iv56758_ _lst156759_ _lst256760_)
        (let _lp56762_ ((_rest156764_ _lst156759_)
                        (_rest256765_ _lst256760_)
                        (_r56766_ _iv56758_))
          (let* ((_rest15676756775_ _rest156764_)
                 (_else5676956783_ (lambda () _r56766_))
                 (_K5677156822_
                  (lambda (_rest156786_ _x156787_)
                    (let* ((_rest25678856796_ _rest256765_)
                           (_else5679056804_ (lambda () _r56766_))
                           (_K5679256810_
                            (lambda (_rest256807_ _x256808_)
                              (let ((__tmp57406
                                     (_f56757_ _x156787_ _x256808_ _r56766_)))
                                (declare (not safe))
                                (_lp56762_
                                 _rest156786_
                                 _rest256807_
                                 __tmp57406)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25678856796_))
                          (let ((_hd5679356813_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25678856796_)))
                                (_tl5679456815_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25678856796_))))
                            (let* ((_x256818_ _hd5679356813_)
                                   (_rest256820_ _tl5679456815_))
                              (declare (not safe))
                              (_K5679256810_ _rest256820_ _x256818_)))
                          (let () (declare (not safe)) (_else5679056804_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15676756775_))
                (let ((_hd5677256825_
                       (let () (declare (not safe)) (##car _rest15676756775_)))
                      (_tl5677356827_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15676756775_))))
                  (let* ((_x156830_ _hd5677256825_)
                         (_rest156832_ _tl5677356827_))
                    (declare (not safe))
                    (_K5677156822_ _rest156832_ _x156830_)))
                (let () (declare (not safe)) (_else5676956783_)))))))
    (define foldl
      (lambda _g57408_
        (let ((_g57407_ (let () (declare (not safe)) (##length _g57408_))))
          (cond ((let () (declare (not safe)) (##fx= _g57407_ 3))
                 (apply (lambda (_f56742_ _iv56743_ _lst56744_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f56742_ _iv56743_ _lst56744_)))
                        _g57408_))
                ((let () (declare (not safe)) (##fx= _g57407_ 4))
                 (apply (lambda (_f56746_ _iv56747_ _lst156748_ _lst256749_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f56746_
                                    _iv56747_
                                    _lst156748_
                                    _lst256749_)))
                        _g57408_))
                ((let () (declare (not safe)) (##fx>= _g57407_ 4))
                 (apply foldl* _g57408_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g57408_))))))
    (define foldl*
      (lambda (_f56730_ _iv56731_ . _rest56732_)
        (let _recur56734_ ((_iv56736_ _iv56731_) (_rest56737_ _rest56732_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest56737_))
              (let ((__tmp57410
                     (apply _f56730_
                            (let ((__tmp57412
                                   (lambda (_xs56739_ _r56740_)
                                     (let ((__tmp57413 (car _xs56739_)))
                                       (declare (not safe))
                                       (cons __tmp57413 _r56740_))))
                                  (__tmp57411 (list _iv56736_)))
                              (declare (not safe))
                              (foldr1 __tmp57412 __tmp57411 _rest56737_))))
                    (__tmp57409 (map cdr _rest56737_)))
                (declare (not safe))
                (_recur56734_ __tmp57410 __tmp57409))
              _iv56736_))))
    (define foldr1
      (lambda (_f56689_ _iv56690_ _lst56691_)
        (let _recur56693_ ((_rest56695_ _lst56691_))
          (let* ((_rest5669656704_ _rest56695_)
                 (_else5669856712_ (lambda () _iv56690_))
                 (_K5670056718_
                  (lambda (_rest56715_ _x56716_)
                    (_f56689_
                     _x56716_
                     (let ()
                       (declare (not safe))
                       (_recur56693_ _rest56715_))))))
            (if (let () (declare (not safe)) (##pair? _rest5669656704_))
                (let ((_hd5670156721_
                       (let () (declare (not safe)) (##car _rest5669656704_)))
                      (_tl5670256723_
                       (let () (declare (not safe)) (##cdr _rest5669656704_))))
                  (let* ((_x56726_ _hd5670156721_)
                         (_rest56728_ _tl5670256723_))
                    (declare (not safe))
                    (_K5670056718_ _rest56728_ _x56726_)))
                (let () (declare (not safe)) (_else5669856712_)))))))
    (define foldr2
      (lambda (_f56613_ _iv56614_ _lst156615_ _lst256616_)
        (let _recur56618_ ((_rest156620_ _lst156615_)
                           (_rest256621_ _lst256616_))
          (let* ((_rest15662256630_ _rest156620_)
                 (_else5662456638_ (lambda () _iv56614_))
                 (_K5662656677_
                  (lambda (_rest156641_ _x156642_)
                    (let* ((_rest25664356651_ _rest256621_)
                           (_else5664556659_ (lambda () _iv56614_))
                           (_K5664756665_
                            (lambda (_rest256662_ _x256663_)
                              (_f56613_
                               _x156642_
                               _x256663_
                               (let ()
                                 (declare (not safe))
                                 (_recur56618_ _rest156641_ _rest256662_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25664356651_))
                          (let ((_hd5664856668_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25664356651_)))
                                (_tl5664956670_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25664356651_))))
                            (let* ((_x256673_ _hd5664856668_)
                                   (_rest256675_ _tl5664956670_))
                              (declare (not safe))
                              (_K5664756665_ _rest256675_ _x256673_)))
                          (let () (declare (not safe)) (_else5664556659_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15662256630_))
                (let ((_hd5662756680_
                       (let () (declare (not safe)) (##car _rest15662256630_)))
                      (_tl5662856682_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15662256630_))))
                  (let* ((_x156685_ _hd5662756680_)
                         (_rest156687_ _tl5662856682_))
                    (declare (not safe))
                    (_K5662656677_ _rest156687_ _x156685_)))
                (let () (declare (not safe)) (_else5662456638_)))))))
    (define foldr
      (lambda _g57415_
        (let ((_g57414_ (let () (declare (not safe)) (##length _g57415_))))
          (cond ((let () (declare (not safe)) (##fx= _g57414_ 3))
                 (apply (lambda (_f56598_ _iv56599_ _lst56600_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f56598_ _iv56599_ _lst56600_)))
                        _g57415_))
                ((let () (declare (not safe)) (##fx= _g57414_ 4))
                 (apply (lambda (_f56602_ _iv56603_ _lst156604_ _lst256605_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f56602_
                                    _iv56603_
                                    _lst156604_
                                    _lst256605_)))
                        _g57415_))
                ((let () (declare (not safe)) (##fx>= _g57414_ 4))
                 (apply foldr* _g57415_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g57415_))))))
    (define foldr*
      (lambda (_f56587_ _iv56588_ . _rest56589_)
        (let _recur56591_ ((_rest56593_ _rest56589_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest56593_))
              (apply _f56587_
                     (let ((__tmp57418
                            (lambda (_xs56595_ _r56596_)
                              (let ((__tmp57419 (car _xs56595_)))
                                (declare (not safe))
                                (cons __tmp57419 _r56596_))))
                           (__tmp57416
                            (list (let ((__tmp57417 (map cdr _rest56593_)))
                                    (declare (not safe))
                                    (_recur56591_ __tmp57417)))))
                       (declare (not safe))
                       (foldr1 __tmp57418 __tmp57416 _rest56593_)))
              _iv56588_))))
    (define remove-nulls!
      (lambda (_l56474_)
        (let* ((_l5647556488_ _l56474_)
               (_E5647956492_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _l5647556488_)))))
          (let ((_K5648456577_
                 (lambda (_r56575_)
                   (let () (declare (not safe)) (remove-nulls! _r56575_))))
                (_K5648156564_
                 (lambda (_r56504_)
                   (let _loop56506_ ((_l56508_ _l56474_) (_r56509_ _r56504_))
                     (let* ((_r5651056523_ _r56509_)
                            (_E5651456527_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _r5651056523_)))))
                       (let ((_K5651956554_
                              (lambda (_rr56552_)
                                (set-cdr!
                                 _l56508_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr56552_)))))
                             (_K5651656541_
                              (lambda (_rr56539_)
                                (let ()
                                  (declare (not safe))
                                  (_loop56506_ _r56509_ _rr56539_))))
                             (_K5651556532_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5651056523_))
                             (let ((_tl5652156559_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5651056523_)))
                                   (_hd5652056557_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5651056523_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5652056557_))
                                   (let ((_rr56562_ _tl5652156559_))
                                     (declare (not safe))
                                     (_K5651956554_ _rr56562_))
                                   (let ((_rr56547_ _tl5652156559_))
                                     (declare (not safe))
                                     (_K5651656541_ _rr56547_))))
                             '#!void))))
                   _l56474_))
                (_K5648056497_ (lambda () _l56474_)))
            (if (let () (declare (not safe)) (##pair? _l5647556488_))
                (let ((_tl5648656582_
                       (let () (declare (not safe)) (##cdr _l5647556488_)))
                      (_hd5648556580_
                       (let () (declare (not safe)) (##car _l5647556488_))))
                  (if (let () (declare (not safe)) (##null? _hd5648556580_))
                      (let ((_r56585_ _tl5648656582_))
                        (declare (not safe))
                        (remove-nulls! _r56585_))
                      (let ((_r56570_ _tl5648656582_))
                        (declare (not safe))
                        (_K5648156564_ _r56570_))))
                (let () (declare (not safe)) (_K5648056497_)))))))
    (define append1!
      (lambda (_l56469_ _x56470_)
        (let ((_l256472_ (let () (declare (not safe)) (cons _x56470_ '()))))
          (if (let () (declare (not safe)) (pair? _l56469_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l56469_))
               _l256472_)
              _l256472_))))
    (define append-reverse-until
      (lambda (_pred56422_ _rhead56423_ _tail56424_)
        (let _loop56426_ ((_rhead56428_ _rhead56423_)
                          (_tail56429_ _tail56424_))
          (let* ((_rhead5643056439_ _rhead56428_)
                 (_E5643356443_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching" _rhead5643056439_)))))
            (let ((_K5643756466_ (lambda () (values '() _tail56429_)))
                  (_K5643456450_
                   (lambda (_r56447_ _a56448_)
                     (if (_pred56422_ _a56448_)
                         (values _rhead56428_ _tail56429_)
                         (let ((__tmp57420
                                (let ()
                                  (declare (not safe))
                                  (cons _a56448_ _tail56429_))))
                           (declare (not safe))
                           (_loop56426_ _r56447_ __tmp57420))))))
              (let ((_try-match5643256462_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rhead5643056439_))
                           (let ((_tl5643656455_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rhead5643056439_)))
                                 (_hd5643556453_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rhead5643056439_))))
                             (let ((_a56458_ _hd5643556453_)
                                   (_r56460_ _tl5643656455_))
                               (let ()
                                 (declare (not safe))
                                 (_K5643456450_ _r56460_ _a56458_))))
                           (let () (declare (not safe)) (_E5643356443_))))))
                (if (let () (declare (not safe)) (##null? _rhead5643056439_))
                    (let () (declare (not safe)) (_K5643756466_))
                    (let ()
                      (declare (not safe))
                      (_try-match5643256462_)))))))))
    (define andmap1
      (lambda (_f56382_ _lst56383_)
        (let _lp56385_ ((_rest56387_ _lst56383_))
          (let* ((_rest5638856396_ _rest56387_)
                 (_else5639056404_ (lambda () '#t))
                 (_K5639256410_
                  (lambda (_rest56407_ _x56408_)
                    (if (_f56382_ _x56408_)
                        (let () (declare (not safe)) (_lp56385_ _rest56407_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5638856396_))
                (let ((_hd5639356413_
                       (let () (declare (not safe)) (##car _rest5638856396_)))
                      (_tl5639456415_
                       (let () (declare (not safe)) (##cdr _rest5638856396_))))
                  (let* ((_x56418_ _hd5639356413_)
                         (_rest56420_ _tl5639456415_))
                    (declare (not safe))
                    (_K5639256410_ _rest56420_ _x56418_)))
                (let () (declare (not safe)) (_else5639056404_)))))))
    (define andmap2
      (lambda (_f56307_ _lst156308_ _lst256309_)
        (let _lp56311_ ((_rest156313_ _lst156308_) (_rest256314_ _lst256309_))
          (let* ((_rest15631556323_ _rest156313_)
                 (_else5631756331_ (lambda () '#t))
                 (_K5631956370_
                  (lambda (_rest156334_ _x156335_)
                    (let* ((_rest25633656344_ _rest256314_)
                           (_else5633856352_ (lambda () '#t))
                           (_K5634056358_
                            (lambda (_rest256355_ _x256356_)
                              (if (_f56307_ _x156335_ _x256356_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp56311_ _rest156334_ _rest256355_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25633656344_))
                          (let ((_hd5634156361_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25633656344_)))
                                (_tl5634256363_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25633656344_))))
                            (let* ((_x256366_ _hd5634156361_)
                                   (_rest256368_ _tl5634256363_))
                              (declare (not safe))
                              (_K5634056358_ _rest256368_ _x256366_)))
                          (let () (declare (not safe)) (_else5633856352_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15631556323_))
                (let ((_hd5632056373_
                       (let () (declare (not safe)) (##car _rest15631556323_)))
                      (_tl5632156375_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15631556323_))))
                  (let* ((_x156378_ _hd5632056373_)
                         (_rest156380_ _tl5632156375_))
                    (declare (not safe))
                    (_K5631956370_ _rest156380_ _x156378_)))
                (let () (declare (not safe)) (_else5631756331_)))))))
    (define andmap
      (lambda _g57422_
        (let ((_g57421_ (let () (declare (not safe)) (##length _g57422_))))
          (cond ((let () (declare (not safe)) (##fx= _g57421_ 2))
                 (apply (lambda (_f56295_ _lst56296_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f56295_ _lst56296_)))
                        _g57422_))
                ((let () (declare (not safe)) (##fx= _g57421_ 3))
                 (apply (lambda (_f56298_ _lst156299_ _lst256300_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f56298_ _lst156299_ _lst256300_)))
                        _g57422_))
                ((let () (declare (not safe)) (##fx>= _g57421_ 3))
                 (apply andmap* _g57422_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g57422_))))))
    (define andmap*
      (lambda (_f56288_ . _rest56289_)
        (let _recur56291_ ((_rest56293_ _rest56289_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest56293_))
              (if (apply _f56288_ (map car _rest56293_))
                  (let ((__tmp57423 (map cdr _rest56293_)))
                    (declare (not safe))
                    (_recur56291_ __tmp57423))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f56245_ _lst56246_)
        (let _lp56248_ ((_rest56250_ _lst56246_))
          (let* ((_rest5625156259_ _rest56250_)
                 (_else5625356267_ (lambda () '#f))
                 (_K5625556276_
                  (lambda (_rest56270_ _x56271_)
                    (let ((_$e56273_ (_f56245_ _x56271_)))
                      (if _$e56273_
                          _$e56273_
                          (let ()
                            (declare (not safe))
                            (_lp56248_ _rest56270_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5625156259_))
                (let ((_hd5625656279_
                       (let () (declare (not safe)) (##car _rest5625156259_)))
                      (_tl5625756281_
                       (let () (declare (not safe)) (##cdr _rest5625156259_))))
                  (let* ((_x56284_ _hd5625656279_)
                         (_rest56286_ _tl5625756281_))
                    (declare (not safe))
                    (_K5625556276_ _rest56286_ _x56284_)))
                (let () (declare (not safe)) (_else5625356267_)))))))
    (define ormap2
      (lambda (_f56167_ _lst156168_ _lst256169_)
        (let _lp56171_ ((_rest156173_ _lst156168_) (_rest256174_ _lst256169_))
          (let* ((_rest15617556183_ _rest156173_)
                 (_else5617756191_ (lambda () '#f))
                 (_K5617956233_
                  (lambda (_rest156194_ _x156195_)
                    (let* ((_rest25619656204_ _rest256174_)
                           (_else5619856212_ (lambda () '#f))
                           (_K5620056221_
                            (lambda (_rest256215_ _x256216_)
                              (let ((_$e56218_ (_f56167_ _x156195_ _x256216_)))
                                (if _$e56218_
                                    _$e56218_
                                    (let ()
                                      (declare (not safe))
                                      (_lp56171_
                                       _rest156194_
                                       _rest256215_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25619656204_))
                          (let ((_hd5620156224_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25619656204_)))
                                (_tl5620256226_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25619656204_))))
                            (let* ((_x256229_ _hd5620156224_)
                                   (_rest256231_ _tl5620256226_))
                              (declare (not safe))
                              (_K5620056221_ _rest256231_ _x256229_)))
                          (let () (declare (not safe)) (_else5619856212_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15617556183_))
                (let ((_hd5618056236_
                       (let () (declare (not safe)) (##car _rest15617556183_)))
                      (_tl5618156238_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15617556183_))))
                  (let* ((_x156241_ _hd5618056236_)
                         (_rest156243_ _tl5618156238_))
                    (declare (not safe))
                    (_K5617956233_ _rest156243_ _x156241_)))
                (let () (declare (not safe)) (_else5617756191_)))))))
    (define ormap
      (lambda _g57425_
        (let ((_g57424_ (let () (declare (not safe)) (##length _g57425_))))
          (cond ((let () (declare (not safe)) (##fx= _g57424_ 2))
                 (apply (lambda (_f56155_ _lst56156_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f56155_ _lst56156_)))
                        _g57425_))
                ((let () (declare (not safe)) (##fx= _g57424_ 3))
                 (apply (lambda (_f56158_ _lst156159_ _lst256160_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f56158_ _lst156159_ _lst256160_)))
                        _g57425_))
                ((let () (declare (not safe)) (##fx>= _g57424_ 3))
                 (apply ormap* _g57425_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g57425_))))))
    (define ormap*
      (lambda (_f56145_ . _rest56146_)
        (let _recur56148_ ((_rest56150_ _rest56146_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest56150_))
              (let ((_$e56152_ (apply _f56145_ (map car _rest56150_))))
                (if _$e56152_
                    _$e56152_
                    (let ((__tmp57426 (map cdr _rest56150_)))
                      (declare (not safe))
                      (_recur56148_ __tmp57426))))
              '#f))))
    (define filter-map1
      (lambda (_f56100_ _lst56101_)
        (let _recur56103_ ((_rest56105_ _lst56101_))
          (let* ((_rest5610656114_ _rest56105_)
                 (_else5610856122_ (lambda () '()))
                 (_K5611056133_
                  (lambda (_rest56125_ _x56126_)
                    (let ((_$e56128_ (_f56100_ _x56126_)))
                      (if _$e56128_
                          ((lambda (_r56131_)
                             (let ((__tmp57427
                                    (let ()
                                      (declare (not safe))
                                      (_recur56103_ _rest56125_))))
                               (declare (not safe))
                               (cons _r56131_ __tmp57427)))
                           _$e56128_)
                          (let ()
                            (declare (not safe))
                            (_recur56103_ _rest56125_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5610656114_))
                (let ((_hd5611156136_
                       (let () (declare (not safe)) (##car _rest5610656114_)))
                      (_tl5611256138_
                       (let () (declare (not safe)) (##cdr _rest5610656114_))))
                  (let* ((_x56141_ _hd5611156136_)
                         (_rest56143_ _tl5611256138_))
                    (declare (not safe))
                    (_K5611056133_ _rest56143_ _x56141_)))
                (let () (declare (not safe)) (_else5610856122_)))))))
    (define filter-map2
      (lambda (_f56020_ _lst156021_ _lst256022_)
        (let _recur56024_ ((_rest156026_ _lst156021_)
                           (_rest256027_ _lst256022_))
          (let* ((_rest15602856036_ _rest156026_)
                 (_else5603056044_ (lambda () '()))
                 (_K5603256088_
                  (lambda (_rest156047_ _x156048_)
                    (let* ((_rest25604956057_ _rest256027_)
                           (_else5605156065_ (lambda () '()))
                           (_K5605356076_
                            (lambda (_rest256068_ _x256069_)
                              (let ((_$e56071_ (_f56020_ _x156048_ _x256069_)))
                                (if _$e56071_
                                    ((lambda (_r56074_)
                                       (let ((__tmp57428
                                              (let ()
                                                (declare (not safe))
                                                (_recur56024_
                                                 _rest156047_
                                                 _rest256068_))))
                                         (declare (not safe))
                                         (cons _r56074_ __tmp57428)))
                                     _$e56071_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur56024_
                                       _rest156047_
                                       _rest256068_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25604956057_))
                          (let ((_hd5605456079_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25604956057_)))
                                (_tl5605556081_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25604956057_))))
                            (let* ((_x256084_ _hd5605456079_)
                                   (_rest256086_ _tl5605556081_))
                              (declare (not safe))
                              (_K5605356076_ _rest256086_ _x256084_)))
                          (let () (declare (not safe)) (_else5605156065_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15602856036_))
                (let ((_hd5603356091_
                       (let () (declare (not safe)) (##car _rest15602856036_)))
                      (_tl5603456093_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15602856036_))))
                  (let* ((_x156096_ _hd5603356091_)
                         (_rest156098_ _tl5603456093_))
                    (declare (not safe))
                    (_K5603256088_ _rest156098_ _x156096_)))
                (let () (declare (not safe)) (_else5603056044_)))))))
    (define filter-map
      (lambda _g57430_
        (let ((_g57429_ (let () (declare (not safe)) (##length _g57430_))))
          (cond ((let () (declare (not safe)) (##fx= _g57429_ 2))
                 (apply (lambda (_f56008_ _lst56009_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f56008_ _lst56009_)))
                        _g57430_))
                ((let () (declare (not safe)) (##fx= _g57429_ 3))
                 (apply (lambda (_f56011_ _lst156012_ _lst256013_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f56011_ _lst156012_ _lst256013_)))
                        _g57430_))
                ((let () (declare (not safe)) (##fx>= _g57429_ 3))
                 (apply filter-map* _g57430_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g57430_))))))
    (define filter-map*
      (lambda (_f55996_ . _rest55997_)
        (let _recur55999_ ((_rest56001_ _rest55997_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest56001_))
              (let ((_$e56003_ (apply _f55996_ (map car _rest56001_))))
                (if _$e56003_
                    ((lambda (_r56006_)
                       (let ((__tmp57432
                              (let ((__tmp57433 (map cdr _rest56001_)))
                                (declare (not safe))
                                (_recur55999_ __tmp57433))))
                         (declare (not safe))
                         (cons _r56006_ __tmp57432)))
                     _$e56003_)
                    (let ((__tmp57431 (map cdr _rest56001_)))
                      (declare (not safe))
                      (_recur55999_ __tmp57431))))
              '()))))
    (define assgetq__%
      (lambda (_key55974_ _lst55976_ _default55978_)
        (let ((_$e55981_
               (if (let () (declare (not safe)) (pair? _lst55976_))
                   (assq _key55974_ _lst55976_)
                   '#f)))
          (if _$e55981_
              (cdr _$e55981_)
              (if (let () (declare (not safe)) (procedure? _default55978_))
                  (_default55978_ _key55974_)
                  _default55978_)))))
    (define assgetq__0
      (lambda (_key55987_ _lst55988_)
        (let ((_default55990_ '#f))
          (declare (not safe))
          (assgetq__% _key55987_ _lst55988_ _default55990_))))
    (define assgetq
      (lambda _g57435_
        (let ((_g57434_ (let () (declare (not safe)) (##length _g57435_))))
          (cond ((let () (declare (not safe)) (##fx= _g57434_ 2))
                 (apply (lambda (_key55987_ _lst55988_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key55987_ _lst55988_)))
                        _g57435_))
                ((let () (declare (not safe)) (##fx= _g57434_ 3))
                 (apply (lambda (_key55992_ _lst55993_ _default55994_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key55992_ _lst55993_ _default55994_)))
                        _g57435_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g57435_))))))
    (define assgetv__%
      (lambda (_key55951_ _lst55953_ _default55955_)
        (let ((_$e55958_
               (if (let () (declare (not safe)) (pair? _lst55953_))
                   (assv _key55951_ _lst55953_)
                   '#f)))
          (if _$e55958_
              (cdr _$e55958_)
              (if (let () (declare (not safe)) (procedure? _default55955_))
                  (_default55955_ _key55951_)
                  _default55955_)))))
    (define assgetv__0
      (lambda (_key55964_ _lst55965_)
        (let ((_default55967_ '#f))
          (declare (not safe))
          (assgetv__% _key55964_ _lst55965_ _default55967_))))
    (define assgetv
      (lambda _g57437_
        (let ((_g57436_ (let () (declare (not safe)) (##length _g57437_))))
          (cond ((let () (declare (not safe)) (##fx= _g57436_ 2))
                 (apply (lambda (_key55964_ _lst55965_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key55964_ _lst55965_)))
                        _g57437_))
                ((let () (declare (not safe)) (##fx= _g57436_ 3))
                 (apply (lambda (_key55969_ _lst55970_ _default55971_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key55969_ _lst55970_ _default55971_)))
                        _g57437_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g57437_))))))
    (define assget__%
      (lambda (_key55928_ _lst55930_ _default55932_)
        (let ((_$e55935_
               (if (let () (declare (not safe)) (pair? _lst55930_))
                   (assoc _key55928_ _lst55930_)
                   '#f)))
          (if _$e55935_
              (cdr _$e55935_)
              (if (let () (declare (not safe)) (procedure? _default55932_))
                  (_default55932_ _key55928_)
                  _default55932_)))))
    (define assget__0
      (lambda (_key55941_ _lst55942_)
        (let ((_default55944_ '#f))
          (declare (not safe))
          (assget__% _key55941_ _lst55942_ _default55944_))))
    (define assget
      (lambda _g57439_
        (let ((_g57438_ (let () (declare (not safe)) (##length _g57439_))))
          (cond ((let () (declare (not safe)) (##fx= _g57438_ 2))
                 (apply (lambda (_key55941_ _lst55942_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key55941_ _lst55942_)))
                        _g57439_))
                ((let () (declare (not safe)) (##fx= _g57438_ 3))
                 (apply (lambda (_key55946_ _lst55947_ _default55948_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key55946_ _lst55947_ _default55948_)))
                        _g57439_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g57439_))))))
    (define pgetq__%
      (lambda (_key55857_ _lst55859_ _default55861_)
        (let _lp55864_ ((_rest55867_ _lst55859_))
          (let* ((_rest5586955879_ _rest55867_)
                 (_else5587155887_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default55861_))
                        (_default55861_ _key55857_)
                        _default55861_)))
                 (_K5587355896_
                  (lambda (_rest55890_ _v55891_ _k55893_)
                    (if (let () (declare (not safe)) (eq? _k55893_ _key55857_))
                        _v55891_
                        (let ()
                          (declare (not safe))
                          (_lp55864_ _rest55890_))))))
            (if (let () (declare (not safe)) (##pair? _rest5586955879_))
                (let ((_hd5587455899_
                       (let () (declare (not safe)) (##car _rest5586955879_)))
                      (_tl5587555901_
                       (let () (declare (not safe)) (##cdr _rest5586955879_))))
                  (let ((_k55904_ _hd5587455899_))
                    (if (let () (declare (not safe)) (##pair? _tl5587555901_))
                        (let ((_hd5587655906_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5587555901_)))
                              (_tl5587755908_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5587555901_))))
                          (let* ((_v55911_ _hd5587655906_)
                                 (_rest55913_ _tl5587755908_))
                            (declare (not safe))
                            (_K5587355896_ _rest55913_ _v55911_ _k55904_)))
                        (let () (declare (not safe)) (_else5587155887_)))))
                (let () (declare (not safe)) (_else5587155887_)))))))
    (define pgetq__0
      (lambda (_key55918_ _lst55919_)
        (let ((_default55921_ '#f))
          (declare (not safe))
          (pgetq__% _key55918_ _lst55919_ _default55921_))))
    (define pgetq
      (lambda _g57441_
        (let ((_g57440_ (let () (declare (not safe)) (##length _g57441_))))
          (cond ((let () (declare (not safe)) (##fx= _g57440_ 2))
                 (apply (lambda (_key55918_ _lst55919_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key55918_ _lst55919_)))
                        _g57441_))
                ((let () (declare (not safe)) (##fx= _g57440_ 3))
                 (apply (lambda (_key55923_ _lst55924_ _default55925_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key55923_ _lst55924_ _default55925_)))
                        _g57441_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g57441_))))))
    (define pgetv__%
      (lambda (_key55786_ _lst55788_ _default55790_)
        (let _lp55793_ ((_rest55796_ _lst55788_))
          (let* ((_rest5579855808_ _rest55796_)
                 (_else5580055816_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default55790_))
                        (_default55790_ _key55786_)
                        _default55790_)))
                 (_K5580255825_
                  (lambda (_rest55819_ _v55820_ _k55822_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k55822_ _key55786_))
                        _v55820_
                        (let ()
                          (declare (not safe))
                          (_lp55793_ _rest55819_))))))
            (if (let () (declare (not safe)) (##pair? _rest5579855808_))
                (let ((_hd5580355828_
                       (let () (declare (not safe)) (##car _rest5579855808_)))
                      (_tl5580455830_
                       (let () (declare (not safe)) (##cdr _rest5579855808_))))
                  (let ((_k55833_ _hd5580355828_))
                    (if (let () (declare (not safe)) (##pair? _tl5580455830_))
                        (let ((_hd5580555835_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5580455830_)))
                              (_tl5580655837_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5580455830_))))
                          (let* ((_v55840_ _hd5580555835_)
                                 (_rest55842_ _tl5580655837_))
                            (declare (not safe))
                            (_K5580255825_ _rest55842_ _v55840_ _k55833_)))
                        (let () (declare (not safe)) (_else5580055816_)))))
                (let () (declare (not safe)) (_else5580055816_)))))))
    (define pgetv__0
      (lambda (_key55847_ _lst55848_)
        (let ((_default55850_ '#f))
          (declare (not safe))
          (pgetv__% _key55847_ _lst55848_ _default55850_))))
    (define pgetv
      (lambda _g57443_
        (let ((_g57442_ (let () (declare (not safe)) (##length _g57443_))))
          (cond ((let () (declare (not safe)) (##fx= _g57442_ 2))
                 (apply (lambda (_key55847_ _lst55848_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key55847_ _lst55848_)))
                        _g57443_))
                ((let () (declare (not safe)) (##fx= _g57442_ 3))
                 (apply (lambda (_key55852_ _lst55853_ _default55854_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key55852_ _lst55853_ _default55854_)))
                        _g57443_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g57443_))))))
    (define pget__%
      (lambda (_key55715_ _lst55717_ _default55719_)
        (let _lp55722_ ((_rest55725_ _lst55717_))
          (let* ((_rest5572755737_ _rest55725_)
                 (_else5572955745_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default55719_))
                        (_default55719_ _key55715_)
                        _default55719_)))
                 (_K5573155754_
                  (lambda (_rest55748_ _v55749_ _k55751_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k55751_ _key55715_))
                        _v55749_
                        (let ()
                          (declare (not safe))
                          (_lp55722_ _rest55748_))))))
            (if (let () (declare (not safe)) (##pair? _rest5572755737_))
                (let ((_hd5573255757_
                       (let () (declare (not safe)) (##car _rest5572755737_)))
                      (_tl5573355759_
                       (let () (declare (not safe)) (##cdr _rest5572755737_))))
                  (let ((_k55762_ _hd5573255757_))
                    (if (let () (declare (not safe)) (##pair? _tl5573355759_))
                        (let ((_hd5573455764_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5573355759_)))
                              (_tl5573555766_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5573355759_))))
                          (let* ((_v55769_ _hd5573455764_)
                                 (_rest55771_ _tl5573555766_))
                            (declare (not safe))
                            (_K5573155754_ _rest55771_ _v55769_ _k55762_)))
                        (let () (declare (not safe)) (_else5572955745_)))))
                (let () (declare (not safe)) (_else5572955745_)))))))
    (define pget__0
      (lambda (_key55776_ _lst55777_)
        (let ((_default55779_ '#f))
          (declare (not safe))
          (pget__% _key55776_ _lst55777_ _default55779_))))
    (define pget
      (lambda _g57445_
        (let ((_g57444_ (let () (declare (not safe)) (##length _g57445_))))
          (cond ((let () (declare (not safe)) (##fx= _g57444_ 2))
                 (apply (lambda (_key55776_ _lst55777_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key55776_ _lst55777_)))
                        _g57445_))
                ((let () (declare (not safe)) (##fx= _g57444_ 3))
                 (apply (lambda (_key55781_ _lst55782_ _default55783_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key55781_ _lst55782_ _default55783_)))
                        _g57445_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g57445_))))))
    (define find
      (lambda (_pred55708_ _lst55709_)
        (let ((_$e55711_
               (let () (declare (not safe)) (memf _pred55708_ _lst55709_))))
          (if _$e55711_ (car _$e55711_) '#f))))
    (define memf
      (lambda (_proc55668_ _lst55669_)
        (let _lp55671_ ((_rest55673_ _lst55669_))
          (let* ((_rest5567455682_ _rest55673_)
                 (_else5567655690_ (lambda () '#f))
                 (_K5567855696_
                  (lambda (_tl55693_ _hd55694_)
                    (if (_proc55668_ _hd55694_)
                        _rest55673_
                        (let () (declare (not safe)) (_lp55671_ _tl55693_))))))
            (if (let () (declare (not safe)) (##pair? _rest5567455682_))
                (let ((_hd5567955699_
                       (let () (declare (not safe)) (##car _rest5567455682_)))
                      (_tl5568055701_
                       (let () (declare (not safe)) (##cdr _rest5567455682_))))
                  (let* ((_hd55704_ _hd5567955699_) (_tl55706_ _tl5568055701_))
                    (declare (not safe))
                    (_K5567855696_ _tl55706_ _hd55704_)))
                (let () (declare (not safe)) (_else5567655690_)))))))
    (define remove1
      (lambda (_el55621_ _lst55623_)
        (let _lp55626_ ((_rest55629_ _lst55623_) (_r55631_ '()))
          (let* ((_rest5563355641_ _rest55629_)
                 (_else5563555649_ (lambda () _lst55623_))
                 (_K5563755656_
                  (lambda (_rest55652_ _hd55653_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el55621_ _hd55653_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest55652_ _r55631_))
                        (let ((__tmp57446
                               (let ()
                                 (declare (not safe))
                                 (cons _hd55653_ _r55631_))))
                          (declare (not safe))
                          (_lp55626_ _rest55652_ __tmp57446))))))
            (if (let () (declare (not safe)) (##pair? _rest5563355641_))
                (let ((_hd5563855659_
                       (let () (declare (not safe)) (##car _rest5563355641_)))
                      (_tl5563955661_
                       (let () (declare (not safe)) (##cdr _rest5563355641_))))
                  (let* ((_hd55664_ _hd5563855659_)
                         (_rest55666_ _tl5563955661_))
                    (declare (not safe))
                    (_K5563755656_ _rest55666_ _hd55664_)))
                (let () (declare (not safe)) (_else5563555649_)))))))
    (define remv
      (lambda (_el55574_ _lst55576_)
        (let _lp55579_ ((_rest55582_ _lst55576_) (_r55584_ '()))
          (let* ((_rest5558655594_ _rest55582_)
                 (_else5558855602_ (lambda () _lst55576_))
                 (_K5559055609_
                  (lambda (_rest55605_ _hd55606_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el55574_ _hd55606_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest55605_ _r55584_))
                        (let ((__tmp57447
                               (let ()
                                 (declare (not safe))
                                 (cons _hd55606_ _r55584_))))
                          (declare (not safe))
                          (_lp55579_ _rest55605_ __tmp57447))))))
            (if (let () (declare (not safe)) (##pair? _rest5558655594_))
                (let ((_hd5559155612_
                       (let () (declare (not safe)) (##car _rest5558655594_)))
                      (_tl5559255614_
                       (let () (declare (not safe)) (##cdr _rest5558655594_))))
                  (let* ((_hd55617_ _hd5559155612_)
                         (_rest55619_ _tl5559255614_))
                    (declare (not safe))
                    (_K5559055609_ _rest55619_ _hd55617_)))
                (let () (declare (not safe)) (_else5558855602_)))))))
    (define remq
      (lambda (_el55527_ _lst55529_)
        (let _lp55532_ ((_rest55535_ _lst55529_) (_r55537_ '()))
          (let* ((_rest5553955547_ _rest55535_)
                 (_else5554155555_ (lambda () _lst55529_))
                 (_K5554355562_
                  (lambda (_rest55558_ _hd55559_)
                    (if (let () (declare (not safe)) (eq? _el55527_ _hd55559_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest55558_ _r55537_))
                        (let ((__tmp57448
                               (let ()
                                 (declare (not safe))
                                 (cons _hd55559_ _r55537_))))
                          (declare (not safe))
                          (_lp55532_ _rest55558_ __tmp57448))))))
            (if (let () (declare (not safe)) (##pair? _rest5553955547_))
                (let ((_hd5554455565_
                       (let () (declare (not safe)) (##car _rest5553955547_)))
                      (_tl5554555567_
                       (let () (declare (not safe)) (##cdr _rest5553955547_))))
                  (let* ((_hd55570_ _hd5554455565_)
                         (_rest55572_ _tl5554555567_))
                    (declare (not safe))
                    (_K5554355562_ _rest55572_ _hd55570_)))
                (let () (declare (not safe)) (_else5554155555_)))))))
    (define remf
      (lambda (_proc55486_ _lst55487_)
        (let _lp55489_ ((_rest55491_ _lst55487_) (_r55492_ '()))
          (let* ((_rest5549355501_ _rest55491_)
                 (_else5549555509_ (lambda () _lst55487_))
                 (_K5549755515_
                  (lambda (_rest55512_ _hd55513_)
                    (if (_proc55486_ _hd55513_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest55512_ _r55492_))
                        (let ((__tmp57449
                               (let ()
                                 (declare (not safe))
                                 (cons _hd55513_ _r55492_))))
                          (declare (not safe))
                          (_lp55489_ _rest55512_ __tmp57449))))))
            (if (let () (declare (not safe)) (##pair? _rest5549355501_))
                (let ((_hd5549855518_
                       (let () (declare (not safe)) (##car _rest5549355501_)))
                      (_tl5549955520_
                       (let () (declare (not safe)) (##cdr _rest5549355501_))))
                  (let* ((_hd55523_ _hd5549855518_)
                         (_rest55525_ _tl5549955520_))
                    (declare (not safe))
                    (_K5549755515_ _rest55525_ _hd55523_)))
                (let () (declare (not safe)) (_else5549555509_)))))))
    (define 1+ (lambda (_x55484_) (+ _x55484_ '1)))
    (define 1- (lambda (_x55482_) (- _x55482_ '1)))
    (define fx1+ (lambda (_x55480_) (fx+ _x55480_ '1)))
    (define fx1- (lambda (_x55478_) (fx- _x55478_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x55476_)
        (if (let () (declare (not safe)) (fixnum? _x55476_))
            (let () (declare (not safe)) (##fx>= _x55476_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x55474_)
        (if (let () (declare (not safe)) (fixnum? _x55474_))
            (let () (declare (not safe)) (##fx> _x55474_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x55472_) (let () (declare (not safe)) (eq? _x55472_ '0))))
    (define fx<0?
      (lambda (_x55470_)
        (if (let () (declare (not safe)) (fixnum? _x55470_))
            (let () (declare (not safe)) (##fx< _x55470_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x55468_)
        (if (let () (declare (not safe)) (fixnum? _x55468_))
            (let () (declare (not safe)) (##fx<= _x55468_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x55466_)
        (if (let () (declare (not safe)) (symbol? _x55466_))
            (let ((__tmp57450 (uninterned-symbol? _x55466_)))
              (declare (not safe))
              (not __tmp57450))
            '#f)))
    (define display-as-string
      (lambda (_x55438_ _port55439_)
        (if (or (let () (declare (not safe)) (string? _x55438_))
                (let () (declare (not safe)) (symbol? _x55438_))
                (keyword? _x55438_)
                (let () (declare (not safe)) (number? _x55438_))
                (let () (declare (not safe)) (char? _x55438_)))
            (display _x55438_ _port55439_)
            (if (let () (declare (not safe)) (pair? _x55438_))
                (begin
                  (let ((__tmp57451 (car _x55438_)))
                    (declare (not safe))
                    (display-as-string __tmp57451 _port55439_))
                  (let ((__tmp57452 (cdr _x55438_)))
                    (declare (not safe))
                    (display-as-string __tmp57452 _port55439_)))
                (if (let () (declare (not safe)) (vector? _x55438_))
                    (vector-for-each
                     (lambda (_g5545255454_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5545255454_ _port55439_)))
                     _x55438_)
                    (if (or (let () (declare (not safe)) (null? _x55438_))
                            (let ()
                              (declare (not safe))
                              (eq? _x55438_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x55438_))
                            (let () (declare (not safe)) (boolean? _x55438_)))
                        '#!void
                        (let ()
                          (declare (not safe))
                          (error '"cannot convert as string" _x55438_))))))))
    (define as-string__0
      (lambda (_x55426_)
        (if (let () (declare (not safe)) (string? _x55426_))
            _x55426_
            (if (let () (declare (not safe)) (symbol? _x55426_))
                (symbol->string _x55426_)
                (if (keyword? _x55426_)
                    (keyword->string _x55426_)
                    (if (let () (declare (not safe)) (number? _x55426_))
                        (number->string _x55426_)
                        (call-with-output-string
                         '()
                         (lambda (_g5542755429_)
                           (let ()
                             (declare (not safe))
                             (display-as-string
                              _x55426_
                              _g5542755429_))))))))))
    (define as-string__1
      (lambda _args55432_
        (call-with-output-string
         '()
         (lambda (_g5543355435_)
           (let ()
             (declare (not safe))
             (display-as-string _args55432_ _g5543355435_))))))
    (define as-string
      (lambda _g57454_
        (let ((_g57453_ (let () (declare (not safe)) (##length _g57454_))))
          (cond ((let () (declare (not safe)) (##fx= _g57453_ 1))
                 (apply (lambda (_x55426_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x55426_)))
                        _g57454_))
                (#t (apply as-string__1 _g57454_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g57454_))))))
    (define make-symbol__0
      (lambda (_x55422_)
        (if (let () (declare (not safe)) (interned-symbol? _x55422_))
            _x55422_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x55422_))))))
    (define make-symbol__1
      (lambda _args55424_ (string->symbol (apply as-string _args55424_))))
    (define make-symbol
      (lambda _g57456_
        (let ((_g57455_ (let () (declare (not safe)) (##length _g57456_))))
          (cond ((let () (declare (not safe)) (##fx= _g57455_ 1))
                 (apply (lambda (_x55422_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x55422_)))
                        _g57456_))
                (#t (apply make-symbol__1 _g57456_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g57456_))))))
    (define make-keyword__0
      (lambda (_x55418_)
        (if (let () (declare (not safe)) (interned-keyword? _x55418_))
            _x55418_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x55418_))))))
    (define make-keyword__1
      (lambda _args55420_ (string->keyword (apply as-string _args55420_))))
    (define make-keyword
      (lambda _g57458_
        (let ((_g57457_ (let () (declare (not safe)) (##length _g57458_))))
          (cond ((let () (declare (not safe)) (##fx= _g57457_ 1))
                 (apply (lambda (_x55418_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x55418_)))
                        _g57458_))
                (#t (apply make-keyword__1 _g57458_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g57458_))))))
    (define interned-keyword?
      (lambda (_x55416_)
        (if (keyword? _x55416_)
            (let ((__tmp57459 (uninterned-keyword? _x55416_)))
              (declare (not safe))
              (not __tmp57459))
            '#f)))
    (define symbol->keyword
      (lambda (_sym55414_)
        ((if (uninterned-symbol? _sym55414_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym55414_))))
    (define keyword->symbol
      (lambda (_kw55412_)
        ((if (uninterned-keyword? _kw55412_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw55412_))))
    (define bytes->string__%
      (lambda (_bstr55390_ _enc55391_)
        (if (let () (declare (not safe)) (eq? _enc55391_ 'UTF-8))
            (utf8->string _bstr55390_)
            (let* ((_in55393_
                    (open-input-u8vector
                     (let ((__tmp57460
                            (let ((__tmp57461
                                   (let ((__tmp57462
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr55390_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp57462))))
                              (declare (not safe))
                              (cons _enc55391_ __tmp57461))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp57460))))
                   (_len55395_ (u8vector-length _bstr55390_))
                   (_out55397_ (make-string _len55395_))
                   (_n55399_
                    (read-substring _out55397_ '0 _len55395_ _in55393_)))
              (string-shrink! _out55397_ _n55399_)
              _out55397_))))
    (define bytes->string__0
      (lambda (_bstr55405_)
        (let ((_enc55407_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr55405_ _enc55407_))))
    (define bytes->string
      (lambda _g57464_
        (let ((_g57463_ (let () (declare (not safe)) (##length _g57464_))))
          (cond ((let () (declare (not safe)) (##fx= _g57463_ 1))
                 (apply (lambda (_bstr55405_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr55405_)))
                        _g57464_))
                ((let () (declare (not safe)) (##fx= _g57463_ 2))
                 (apply (lambda (_bstr55409_ _enc55410_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr55409_ _enc55410_)))
                        _g57464_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g57464_))))))
    (define string->bytes__%
      (lambda (_str55376_ _enc55377_)
        (if (let () (declare (not safe)) (eq? _enc55377_ 'UTF-8))
            (string->utf8 _str55376_)
            (let ((__tmp57465 (string-length _str55376_)))
              (declare (not safe))
              (substring->bytes _str55376_ '0 __tmp57465 _enc55377_)))))
    (define string->bytes__0
      (lambda (_str55382_)
        (let ((_enc55384_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str55382_ _enc55384_))))
    (define string->bytes
      (lambda _g57467_
        (let ((_g57466_ (let () (declare (not safe)) (##length _g57467_))))
          (cond ((let () (declare (not safe)) (##fx= _g57466_ 1))
                 (apply (lambda (_str55382_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str55382_)))
                        _g57467_))
                ((let () (declare (not safe)) (##fx= _g57466_ 2))
                 (apply (lambda (_str55386_ _enc55387_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str55386_ _enc55387_)))
                        _g57467_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g57467_))))))
    (define substring->bytes__%
      (lambda (_str55354_ _start55355_ _end55356_ _enc55357_)
        (if (let () (declare (not safe)) (eq? _enc55357_ 'UTF-8))
            (string->utf8 _str55354_ _start55355_ _end55356_)
            (let ((_out55359_
                   (open-output-u8vector
                    (let ((__tmp57468
                           (let ()
                             (declare (not safe))
                             (cons _enc55357_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp57468)))))
              (write-substring _str55354_ _start55355_ _end55356_ _out55359_)
              (get-output-u8vector _out55359_)))))
    (define substring->bytes__0
      (lambda (_str55364_ _start55365_ _end55366_)
        (let ((_enc55368_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str55364_
           _start55365_
           _end55366_
           _enc55368_))))
    (define substring->bytes
      (lambda _g57470_
        (let ((_g57469_ (let () (declare (not safe)) (##length _g57470_))))
          (cond ((let () (declare (not safe)) (##fx= _g57469_ 3))
                 (apply (lambda (_str55364_ _start55365_ _end55366_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str55364_
                             _start55365_
                             _end55366_)))
                        _g57470_))
                ((let () (declare (not safe)) (##fx= _g57469_ 4))
                 (apply (lambda (_str55370_ _start55371_ _end55372_ _enc55373_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str55370_
                             _start55371_
                             _end55372_
                             _enc55373_)))
                        _g57470_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g57470_))))))
    (define string-empty?
      (lambda (_str55351_)
        (let ((__tmp57471 (string-length _str55351_)))
          (declare (not safe))
          (##fxzero? __tmp57471))))
    (define string-prefix?
      (lambda (_prefix55341_ _str55342_)
        (let ((_str-len55344_ (string-length _str55342_))
              (_prefix-len55345_ (string-length _prefix55341_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len55345_ _str-len55344_))
              (let _lp55347_ ((_i55349_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i55349_ _prefix-len55345_))
                    (if (let ((__tmp57474
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str55342_ _i55349_)))
                              (__tmp57473
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix55341_ _i55349_))))
                          (declare (not safe))
                          (eq? __tmp57474 __tmp57473))
                        (let ((__tmp57472
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i55349_ '1))))
                          (declare (not safe))
                          (_lp55347_ __tmp57472))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str55319_ _char55320_ _start55321_)
        (let ((_len55323_ (string-length _str55319_)))
          (let _lp55325_ ((_k55327_ _start55321_))
            (if (let () (declare (not safe)) (##fx< _k55327_ _len55323_))
                (if (let ((__tmp57476
                           (let ()
                             (declare (not safe))
                             (##string-ref _str55319_ _k55327_))))
                      (declare (not safe))
                      (eq? _char55320_ __tmp57476))
                    _k55327_
                    (let ((__tmp57475
                           (let () (declare (not safe)) (##fx+ _k55327_ '1))))
                      (declare (not safe))
                      (_lp55325_ __tmp57475)))
                '#f)))))
    (define string-index__0
      (lambda (_str55332_ _char55333_)
        (let ((_start55335_ '0))
          (declare (not safe))
          (string-index__% _str55332_ _char55333_ _start55335_))))
    (define string-index
      (lambda _g57478_
        (let ((_g57477_ (let () (declare (not safe)) (##length _g57478_))))
          (cond ((let () (declare (not safe)) (##fx= _g57477_ 2))
                 (apply (lambda (_str55332_ _char55333_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str55332_ _char55333_)))
                        _g57478_))
                ((let () (declare (not safe)) (##fx= _g57477_ 3))
                 (apply (lambda (_str55337_ _char55338_ _start55339_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str55337_
                             _char55338_
                             _start55339_)))
                        _g57478_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g57478_))))))
    (define string-rindex__%
      (lambda (_str55290_ _char55291_ _start55292_)
        (let* ((_len55294_ (string-length _str55290_))
               (_start55299_
                (let ((_$e55296_ _start55292_))
                  (if _$e55296_
                      _$e55296_
                      (let () (declare (not safe)) (##fx- _len55294_ '1))))))
          (let _lp55302_ ((_k55304_ _start55299_))
            (if (let () (declare (not safe)) (##fx>= _k55304_ '0))
                (if (let ((__tmp57480
                           (let ()
                             (declare (not safe))
                             (##string-ref _str55290_ _k55304_))))
                      (declare (not safe))
                      (eq? _char55291_ __tmp57480))
                    _k55304_
                    (let ((__tmp57479
                           (let () (declare (not safe)) (##fx- _k55304_ '1))))
                      (declare (not safe))
                      (_lp55302_ __tmp57479)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str55309_ _char55310_)
        (let ((_start55312_ '#f))
          (declare (not safe))
          (string-rindex__% _str55309_ _char55310_ _start55312_))))
    (define string-rindex
      (lambda _g57482_
        (let ((_g57481_ (let () (declare (not safe)) (##length _g57482_))))
          (cond ((let () (declare (not safe)) (##fx= _g57481_ 2))
                 (apply (lambda (_str55309_ _char55310_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str55309_ _char55310_)))
                        _g57482_))
                ((let () (declare (not safe)) (##fx= _g57481_ 3))
                 (apply (lambda (_str55314_ _char55315_ _start55316_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str55314_
                             _char55315_
                             _start55316_)))
                        _g57482_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g57482_))))))
    (define string-split
      (lambda (_str55274_ _char55275_)
        (let ((_len55277_ (string-length _str55274_)))
          (let _lp55279_ ((_start55281_ '0) (_r55282_ '()))
            (let ((_$e55284_
                   (let ()
                     (declare (not safe))
                     (string-index__% _str55274_ _char55275_ _start55281_))))
              (if _$e55284_
                  ((lambda (_end55287_)
                     (let ((__tmp57486
                            (let ()
                              (declare (not safe))
                              (##fx+ _end55287_ '1)))
                           (__tmp57484
                            (let ((__tmp57485
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str55274_
                                      _start55281_
                                      _end55287_))))
                              (declare (not safe))
                              (cons __tmp57485 _r55282_))))
                       (declare (not safe))
                       (_lp55279_ __tmp57486 __tmp57484)))
                   _$e55284_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start55281_ _len55277_))
                      (let ((__tmp57483
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str55274_
                                      _start55281_
                                      _len55277_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp57483 _r55282_))
                      (reverse _r55282_))))))))
    (define string-join
      (lambda (_strs55179_ _join55180_)
        (letrec ((_join-length55182_
                  (lambda (_strs55233_ _jlen55234_)
                    (let _lp55236_ ((_rest55238_ _strs55233_) (_len55239_ '0))
                      (let* ((_rest5524055248_ _rest55238_)
                             (_else5524255256_ (lambda () '0))
                             (_K5524455262_
                              (lambda (_rest55259_ _hd55260_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd55260_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest55259_))
                                        (let ((__tmp57488
                                               (let ((__tmp57489
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd55260_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp57489
                                                        _jlen55234_
                                                        _len55239_))))
                                          (declare (not safe))
                                          (_lp55236_ _rest55259_ __tmp57488))
                                        (let ((__tmp57487
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd55260_))))
                                          (declare (not safe))
                                          (##fx+ __tmp57487 _len55239_)))
                                    (let ()
                                      (declare (not safe))
                                      (error '"expected string" _hd55260_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5524055248_))
                            (let ((_hd5524555265_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5524055248_)))
                                  (_tl5524655267_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5524055248_))))
                              (let* ((_hd55270_ _hd5524555265_)
                                     (_rest55272_ _tl5524655267_))
                                (declare (not safe))
                                (_K5524455262_ _rest55272_ _hd55270_)))
                            (let ()
                              (declare (not safe))
                              (_else5524255256_))))))))
          (let* ((_join55184_
                  (if (let () (declare (not safe)) (char? _join55180_))
                      (string _join55180_)
                      (if (let () (declare (not safe)) (string? _join55180_))
                          _join55180_
                          (let ()
                            (declare (not safe))
                            (error '"expected string or char" _join55180_)))))
                 (_jlen55186_
                  (let () (declare (not safe)) (##string-length _join55184_)))
                 (_olen55188_
                  (let ()
                    (declare (not safe))
                    (_join-length55182_ _strs55179_ _jlen55186_)))
                 (_ostr55190_ (make-string _olen55188_)))
            (let _lp55193_ ((_rest55195_ _strs55179_) (_k55196_ '0))
              (let* ((_rest5519755205_ _rest55195_)
                     (_else5519955213_ (lambda () '""))
                     (_K5520155221_
                      (lambda (_rest55216_ _hd55217_)
                        (let ((_hdlen55219_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd55217_))))
                          (if (let () (declare (not safe)) (pair? _rest55216_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd55217_
                                   '0
                                   _hdlen55219_
                                   _ostr55190_
                                   _k55196_))
                                (let ((__tmp57490
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k55196_ _hdlen55219_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join55184_
                                   '0
                                   _jlen55186_
                                   _ostr55190_
                                   __tmp57490))
                                (let ((__tmp57491
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k55196_
                                                _hdlen55219_
                                                _jlen55186_))))
                                  (declare (not safe))
                                  (_lp55193_ _rest55216_ __tmp57491)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd55217_
                                   '0
                                   _hdlen55219_
                                   _ostr55190_
                                   _k55196_))
                                _ostr55190_))))))
                (if (let () (declare (not safe)) (##pair? _rest5519755205_))
                    (let ((_hd5520255224_
                           (let ()
                             (declare (not safe))
                             (##car _rest5519755205_)))
                          (_tl5520355226_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5519755205_))))
                      (let* ((_hd55229_ _hd5520255224_)
                             (_rest55231_ _tl5520355226_))
                        (declare (not safe))
                        (_K5520155221_ _rest55231_ _hd55229_)))
                    (let () (declare (not safe)) (_else5519955213_)))))))))
    (define read-u8vector
      (lambda (_bytes55176_ _port55177_)
        (read-subu8vector
         _bytes55176_
         '0
         (u8vector-length _bytes55176_)
         _port55177_)))
    (define write-u8vector
      (lambda (_bytes55173_ _port55174_)
        (write-subu8vector
         _bytes55173_
         '0
         (u8vector-length _bytes55173_)
         _port55174_)))
    (define read-string
      (lambda (_str55170_ _port55171_)
        (read-substring _str55170_ '0 (string-length _str55170_) _port55171_)))
    (define write-string
      (lambda (_str55167_ _port55168_)
        (write-substring
         _str55167_
         '0
         (string-length _str55167_)
         _port55168_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag55136_
               _dbg-exprs55137_
               _dbg-thunks55138_
               _expr55139_
               _thunk55140_)
        (letrec ((_o55142_ (current-output-port))
                 (_e55143_ (current-error-port))
                 (_p55144_ (DBG-printer))
                 (_f55145_
                  (lambda () (force-output _o55142_) (force-output _e55143_)))
                 (_d55146_ (lambda (_x55153_) (display _x55153_ _e55143_)))
                 (_w55147_ (lambda (_x55155_) (_p55144_ _x55155_ _e55143_)))
                 (_n55148_ (lambda () (newline _e55143_)))
                 (_v55149_
                  (lambda (_l55158_)
                    (for-each
                     (lambda (_x55160_)
                       (let () (declare (not safe)) (_d55146_ '" "))
                       (let () (declare (not safe)) (_w55147_ _x55160_)))
                     _l55158_)
                    (let () (declare (not safe)) (_n55148_))))
                 (_x55150_
                  (lambda (_expr55162_ _thunk55163_)
                    (let () (declare (not safe)) (_f55145_))
                    (let () (declare (not safe)) (_d55146_ '"  "))
                    (let () (declare (not safe)) (_w55147_ _expr55162_))
                    (let () (declare (not safe)) (_d55146_ '" =>"))
                    (call-with-values
                     _thunk55163_
                     (lambda _x55165_
                       (let () (declare (not safe)) (_v55149_ _x55165_))
                       (let () (declare (not safe)) (_f55145_))
                       (apply values _x55165_))))))
          (if _tag55136_
              (begin
                (if (let () (declare (not safe)) (eq? _tag55136_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_f55145_))
                      (let () (declare (not safe)) (_d55146_ _tag55136_))
                      (let () (declare (not safe)) (_n55148_))))
                (for-each _x55150_ _dbg-exprs55137_ _dbg-thunks55138_)
                (if _thunk55140_
                    (let ()
                      (declare (not safe))
                      (_x55150_ _expr55139_ _thunk55140_))
                    '#!void))
              (if _thunk55140_ (_thunk55140_) '#!void)))))))
