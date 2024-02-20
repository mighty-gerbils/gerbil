(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1708451991)
  (begin
    (define displayln
      (lambda _args53848_
        (let _lp53850_ ((_rest53852_ _args53848_))
          (let* ((_rest5385353861_ _rest53852_)
                 (_else5385553869_ (lambda () (newline)))
                 (_K5385753875_
                  (lambda (_rest53872_ _hd53873_)
                    (display _hd53873_)
                    (let () (declare (not safe)) (_lp53850_ _rest53872_)))))
            (if (let () (declare (not safe)) (##pair? _rest5385353861_))
                (let ((_hd5385853878_
                       (let () (declare (not safe)) (##car _rest5385353861_)))
                      (_tl5385953880_
                       (let () (declare (not safe)) (##cdr _rest5385353861_))))
                  (let* ((_hd53883_ _hd5385853878_)
                         (_rest53885_ _tl5385953880_))
                    (declare (not safe))
                    (_K5385753875_ _rest53885_ _hd53883_)))
                (let () (declare (not safe)) (newline)))))))
    (define display* (lambda _args53846_ (for-each display _args53846_)))
    (define file-newer?
      (lambda (_file153839_ _file253840_)
        (letrec ((_modification-time53842_
                  (lambda (_file53844_)
                    (let ((__tmp54269
                           (file-info-last-modification-time
                            (file-info _file53844_ '#t))))
                      (declare (not safe))
                      (##time->seconds __tmp54269)))))
          (let ((__tmp54271
                 (let ()
                   (declare (not safe))
                   (_modification-time53842_ _file153839_)))
                (__tmp54270
                 (let ()
                   (declare (not safe))
                   (_modification-time53842_ _file253840_))))
            (declare (not safe))
            (##fl> __tmp54271 __tmp54270)))))
    (define create-directory*__%
      (lambda (_dir53813_ _perms53814_)
        (letrec ((_create153816_
                  (lambda (_path53827_)
                    (if (file-exists? _path53827_)
                        (if (let ((__tmp54272 (file-type _path53827_)))
                              (declare (not safe))
                              (eq? __tmp54272 'directory))
                            '#!void
                            (error '"Path component is not a directory"
                                   _path53827_))
                        (if _perms53814_
                            (create-directory
                             (list 'path:
                                   _path53827_
                                   'permissions:
                                   _perms53814_))
                            (create-directory _path53827_))))))
          (if (file-exists? _dir53813_)
              '#!void
              (let _lp53818_ ((_start53820_ '0))
                (let ((_$e53822_
                       (let ()
                         (declare (not safe))
                         (string-index__% _dir53813_ '#\/ _start53820_))))
                  (if _$e53822_
                      ((lambda (_x53825_)
                         (if (let () (declare (not safe)) (##fx> _x53825_ '0))
                             (let ((__tmp54273
                                    (substring _dir53813_ '0 _x53825_)))
                               (declare (not safe))
                               (_create153816_ __tmp54273))
                             '#!void)
                         (let ((__tmp54274
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _x53825_ '1))))
                           (declare (not safe))
                           (_lp53818_ __tmp54274)))
                       _$e53822_)
                      (let ()
                        (declare (not safe))
                        (_create153816_ _dir53813_)))))))))
    (define create-directory*__0
      (lambda (_dir53832_)
        (let ((_perms53834_ '493))
          (declare (not safe))
          (create-directory*__% _dir53832_ _perms53834_))))
    (define create-directory*
      (lambda _g54276_
        (let ((_g54275_ (let () (declare (not safe)) (##length _g54276_))))
          (cond ((let () (declare (not safe)) (##fx= _g54275_ 1))
                 (apply (lambda (_dir53832_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__0 _dir53832_)))
                        _g54276_))
                ((let () (declare (not safe)) (##fx= _g54275_ 2))
                 (apply (lambda (_dir53836_ _perms53837_)
                          (let ()
                            (declare (not safe))
                            (create-directory*__% _dir53836_ _perms53837_)))
                        _g54276_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g54276_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _g54277_ '#t))
    (define true?
      (lambda (_obj53809_) (let () (declare (not safe)) (eq? _obj53809_ '#t))))
    (define false (lambda _g54278_ '#f))
    (define void (lambda _g54279_ '#!void))
    (define void?
      (lambda (_obj53805_)
        (let () (declare (not safe)) (eq? _obj53805_ '#!void))))
    (define eof-object (lambda _g54280_ '#!eof))
    (define identity (lambda (_obj53802_) _obj53802_))
    (define dssl-object?
      (lambda (_obj53800_)
        (if (memq _obj53800_ '(#!key #!rest #!optional)) '#t '#f)))
    (define dssl-key-object?
      (lambda (_obj53798_)
        (let () (declare (not safe)) (eq? _obj53798_ '#!key))))
    (define dssl-rest-object?
      (lambda (_obj53796_)
        (let () (declare (not safe)) (eq? _obj53796_ '#!rest))))
    (define dssl-optional-object?
      (lambda (_obj53794_)
        (let () (declare (not safe)) (eq? _obj53794_ '#!optional))))
    (define immediate?
      (lambda (_obj53790_)
        (let* ((_t53792_ (let () (declare (not safe)) (##type _obj53790_)))
               (__tmp54281
                (let () (declare (not safe)) (##fxand _t53792_ '1))))
          (declare (not safe))
          (##fxzero? __tmp54281))))
    (define nonnegative-fixnum?
      (lambda (_obj53788_)
        (if (let () (declare (not safe)) (fixnum? _obj53788_))
            (let ((__tmp54282 (fxnegative? _obj53788_)))
              (declare (not safe))
              (not __tmp54282))
            '#f)))
    (define values-count
      (lambda (_obj53786_)
        (if (let () (declare (not safe)) (##values? _obj53786_))
            (let () (declare (not safe)) (##vector-length _obj53786_))
            '1)))
    (define values-ref
      (lambda (_obj53783_ _k53784_)
        (if (let () (declare (not safe)) (##values? _obj53783_))
            (let () (declare (not safe)) (##vector-ref _obj53783_ _k53784_))
            _obj53783_)))
    (define values->list
      (lambda (_obj53781_)
        (if (let () (declare (not safe)) (##values? _obj53781_))
            (let () (declare (not safe)) (##vector->list _obj53781_))
            (list _obj53781_))))
    (define subvector->list__%
      (lambda (_obj53766_ _start53767_)
        (let ((_lst53769_
               (let () (declare (not safe)) (##vector->list _obj53766_))))
          (list-tail _lst53769_ _start53767_))))
    (define subvector->list__0
      (lambda (_obj53774_)
        (let ((_start53776_ '0))
          (declare (not safe))
          (subvector->list__% _obj53774_ _start53776_))))
    (define subvector->list
      (lambda _g54284_
        (let ((_g54283_ (let () (declare (not safe)) (##length _g54284_))))
          (cond ((let () (declare (not safe)) (##fx= _g54283_ 1))
                 (apply (lambda (_obj53774_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__0 _obj53774_)))
                        _g54284_))
                ((let () (declare (not safe)) (##fx= _g54283_ 2))
                 (apply (lambda (_obj53778_ _start53779_)
                          (let ()
                            (declare (not safe))
                            (subvector->list__% _obj53778_ _start53779_)))
                        _g54284_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  subvector->list
                  _g54284_))))))
    (define make-list__%
      (lambda (_k53747_ _val53748_)
        (if (let () (declare (not safe)) (fixnum? _k53747_))
            '#!void
            (error '"expected argument 1 to be fixnum" _k53747_))
        (let _lp53750_ ((_n53752_ '0) (_r53753_ '()))
          (if (let () (declare (not safe)) (##fx< _n53752_ _k53747_))
              (let ((__tmp54286
                     (let () (declare (not safe)) (##fx+ _n53752_ '1)))
                    (__tmp54285
                     (let () (declare (not safe)) (cons _val53748_ _r53753_))))
                (declare (not safe))
                (_lp53750_ __tmp54286 __tmp54285))
              _r53753_))))
    (define make-list__0
      (lambda (_k53758_)
        (let ((_val53760_ '#f))
          (declare (not safe))
          (make-list__% _k53758_ _val53760_))))
    (define make-list
      (lambda _g54288_
        (let ((_g54287_ (let () (declare (not safe)) (##length _g54288_))))
          (cond ((let () (declare (not safe)) (##fx= _g54287_ 1))
                 (apply (lambda (_k53758_)
                          (let ()
                            (declare (not safe))
                            (make-list__0 _k53758_)))
                        _g54288_))
                ((let () (declare (not safe)) (##fx= _g54287_ 2))
                 (apply (lambda (_k53762_ _val53763_)
                          (let ()
                            (declare (not safe))
                            (make-list__% _k53762_ _val53763_)))
                        _g54288_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-list
                  _g54288_))))))
    (define cons*
      (lambda (_x53737_ _y53738_ . _rest53739_)
        (letrec ((_recur53741_
                  (lambda (_x53743_ _rest53744_)
                    (if (let () (declare (not safe)) (pair? _rest53744_))
                        (let ((__tmp54289
                               (let ((__tmp54291
                                      (let ()
                                        (declare (not safe))
                                        (##car _rest53744_)))
                                     (__tmp54290
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _rest53744_))))
                                 (declare (not safe))
                                 (_recur53741_ __tmp54291 __tmp54290))))
                          (declare (not safe))
                          (cons _x53743_ __tmp54289))
                        _x53743_))))
          (let ((__tmp54292
                 (let ()
                   (declare (not safe))
                   (_recur53741_ _y53738_ _rest53739_))))
            (declare (not safe))
            (cons _x53737_ __tmp54292)))))
    (define foldl1
      (lambda (_f53695_ _iv53696_ _lst53697_)
        (let _lp53699_ ((_rest53701_ _lst53697_) (_r53702_ _iv53696_))
          (let* ((_rest5370353711_ _rest53701_)
                 (_else5370553719_ (lambda () _r53702_))
                 (_K5370753725_
                  (lambda (_rest53722_ _x53723_)
                    (let ((__tmp54293 (_f53695_ _x53723_ _r53702_)))
                      (declare (not safe))
                      (_lp53699_ _rest53722_ __tmp54293)))))
            (if (let () (declare (not safe)) (##pair? _rest5370353711_))
                (let ((_hd5370853728_
                       (let () (declare (not safe)) (##car _rest5370353711_)))
                      (_tl5370953730_
                       (let () (declare (not safe)) (##cdr _rest5370353711_))))
                  (let* ((_x53733_ _hd5370853728_)
                         (_rest53735_ _tl5370953730_))
                    (declare (not safe))
                    (_K5370753725_ _rest53735_ _x53733_)))
                (let () (declare (not safe)) (_else5370553719_)))))))
    (define foldl2
      (lambda (_f53618_ _iv53619_ _lst153620_ _lst253621_)
        (let _lp53623_ ((_rest153625_ _lst153620_)
                        (_rest253626_ _lst253621_)
                        (_r53627_ _iv53619_))
          (let* ((_rest15362853636_ _rest153625_)
                 (_else5363053644_ (lambda () _r53627_))
                 (_K5363253683_
                  (lambda (_rest153647_ _x153648_)
                    (let* ((_rest25364953657_ _rest253626_)
                           (_else5365153665_ (lambda () _r53627_))
                           (_K5365353671_
                            (lambda (_rest253668_ _x253669_)
                              (let ((__tmp54294
                                     (_f53618_ _x153648_ _x253669_ _r53627_)))
                                (declare (not safe))
                                (_lp53623_
                                 _rest153647_
                                 _rest253668_
                                 __tmp54294)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25364953657_))
                          (let ((_hd5365453674_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25364953657_)))
                                (_tl5365553676_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25364953657_))))
                            (let* ((_x253679_ _hd5365453674_)
                                   (_rest253681_ _tl5365553676_))
                              (declare (not safe))
                              (_K5365353671_ _rest253681_ _x253679_)))
                          (let () (declare (not safe)) (_else5365153665_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15362853636_))
                (let ((_hd5363353686_
                       (let () (declare (not safe)) (##car _rest15362853636_)))
                      (_tl5363453688_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15362853636_))))
                  (let* ((_x153691_ _hd5363353686_)
                         (_rest153693_ _tl5363453688_))
                    (declare (not safe))
                    (_K5363253683_ _rest153693_ _x153691_)))
                (let () (declare (not safe)) (_else5363053644_)))))))
    (define foldl
      (lambda _g54296_
        (let ((_g54295_ (let () (declare (not safe)) (##length _g54296_))))
          (cond ((let () (declare (not safe)) (##fx= _g54295_ 3))
                 (apply (lambda (_f53603_ _iv53604_ _lst53605_)
                          (let ()
                            (declare (not safe))
                            (foldl1 _f53603_ _iv53604_ _lst53605_)))
                        _g54296_))
                ((let () (declare (not safe)) (##fx= _g54295_ 4))
                 (apply (lambda (_f53607_ _iv53608_ _lst153609_ _lst253610_)
                          (let ()
                            (declare (not safe))
                            (foldl2 _f53607_
                                    _iv53608_
                                    _lst153609_
                                    _lst253610_)))
                        _g54296_))
                ((let () (declare (not safe)) (##fx>= _g54295_ 4))
                 (apply foldl* _g54296_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g54296_))))))
    (define foldl*
      (lambda (_f53591_ _iv53592_ . _rest53593_)
        (let _recur53595_ ((_iv53597_ _iv53592_) (_rest53598_ _rest53593_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest53598_))
              (let ((__tmp54298
                     (apply _f53591_
                            (let ((__tmp54300
                                   (lambda (_xs53600_ _r53601_)
                                     (let ((__tmp54301 (car _xs53600_)))
                                       (declare (not safe))
                                       (cons __tmp54301 _r53601_))))
                                  (__tmp54299 (list _iv53597_)))
                              (declare (not safe))
                              (foldr1 __tmp54300 __tmp54299 _rest53598_))))
                    (__tmp54297 (map cdr _rest53598_)))
                (declare (not safe))
                (_recur53595_ __tmp54298 __tmp54297))
              _iv53597_))))
    (define foldr1
      (lambda (_f53550_ _iv53551_ _lst53552_)
        (let _recur53554_ ((_rest53556_ _lst53552_))
          (let* ((_rest5355753565_ _rest53556_)
                 (_else5355953573_ (lambda () _iv53551_))
                 (_K5356153579_
                  (lambda (_rest53576_ _x53577_)
                    (_f53550_
                     _x53577_
                     (let ()
                       (declare (not safe))
                       (_recur53554_ _rest53576_))))))
            (if (let () (declare (not safe)) (##pair? _rest5355753565_))
                (let ((_hd5356253582_
                       (let () (declare (not safe)) (##car _rest5355753565_)))
                      (_tl5356353584_
                       (let () (declare (not safe)) (##cdr _rest5355753565_))))
                  (let* ((_x53587_ _hd5356253582_)
                         (_rest53589_ _tl5356353584_))
                    (declare (not safe))
                    (_K5356153579_ _rest53589_ _x53587_)))
                (let () (declare (not safe)) (_else5355953573_)))))))
    (define foldr2
      (lambda (_f53474_ _iv53475_ _lst153476_ _lst253477_)
        (let _recur53479_ ((_rest153481_ _lst153476_)
                           (_rest253482_ _lst253477_))
          (let* ((_rest15348353491_ _rest153481_)
                 (_else5348553499_ (lambda () _iv53475_))
                 (_K5348753538_
                  (lambda (_rest153502_ _x153503_)
                    (let* ((_rest25350453512_ _rest253482_)
                           (_else5350653520_ (lambda () _iv53475_))
                           (_K5350853526_
                            (lambda (_rest253523_ _x253524_)
                              (_f53474_
                               _x153503_
                               _x253524_
                               (let ()
                                 (declare (not safe))
                                 (_recur53479_ _rest153502_ _rest253523_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25350453512_))
                          (let ((_hd5350953529_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25350453512_)))
                                (_tl5351053531_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25350453512_))))
                            (let* ((_x253534_ _hd5350953529_)
                                   (_rest253536_ _tl5351053531_))
                              (declare (not safe))
                              (_K5350853526_ _rest253536_ _x253534_)))
                          (let () (declare (not safe)) (_else5350653520_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15348353491_))
                (let ((_hd5348853541_
                       (let () (declare (not safe)) (##car _rest15348353491_)))
                      (_tl5348953543_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15348353491_))))
                  (let* ((_x153546_ _hd5348853541_)
                         (_rest153548_ _tl5348953543_))
                    (declare (not safe))
                    (_K5348753538_ _rest153548_ _x153546_)))
                (let () (declare (not safe)) (_else5348553499_)))))))
    (define foldr
      (lambda _g54303_
        (let ((_g54302_ (let () (declare (not safe)) (##length _g54303_))))
          (cond ((let () (declare (not safe)) (##fx= _g54302_ 3))
                 (apply (lambda (_f53459_ _iv53460_ _lst53461_)
                          (let ()
                            (declare (not safe))
                            (foldr1 _f53459_ _iv53460_ _lst53461_)))
                        _g54303_))
                ((let () (declare (not safe)) (##fx= _g54302_ 4))
                 (apply (lambda (_f53463_ _iv53464_ _lst153465_ _lst253466_)
                          (let ()
                            (declare (not safe))
                            (foldr2 _f53463_
                                    _iv53464_
                                    _lst153465_
                                    _lst253466_)))
                        _g54303_))
                ((let () (declare (not safe)) (##fx>= _g54302_ 4))
                 (apply foldr* _g54303_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g54303_))))))
    (define foldr*
      (lambda (_f53448_ _iv53449_ . _rest53450_)
        (let _recur53452_ ((_rest53454_ _rest53450_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest53454_))
              (apply _f53448_
                     (let ((__tmp54306
                            (lambda (_xs53456_ _r53457_)
                              (let ((__tmp54307 (car _xs53456_)))
                                (declare (not safe))
                                (cons __tmp54307 _r53457_))))
                           (__tmp54304
                            (list (let ((__tmp54305 (map cdr _rest53454_)))
                                    (declare (not safe))
                                    (_recur53452_ __tmp54305)))))
                       (declare (not safe))
                       (foldr1 __tmp54306 __tmp54304 _rest53454_)))
              _iv53449_))))
    (define drop
      (lambda (_l53445_ _k53446_)
        (if (let () (declare (not safe)) (##fxpositive? _k53446_))
            (let ((__tmp54309 (let () (declare (not safe)) (##cdr _l53445_)))
                  (__tmp54308
                   (let () (declare (not safe)) (##fx- _k53446_ '1))))
              (declare (not safe))
              (drop __tmp54309 __tmp54308))
            _l53445_)))
    (define remove-nulls!
      (lambda (_l53332_)
        (let* ((_l5333353346_ _l53332_)
               (_E5333753350_
                (lambda () (error '"No clause matching" _l5333353346_))))
          (let ((_K5334253435_
                 (lambda (_r53433_)
                   (let () (declare (not safe)) (remove-nulls! _r53433_))))
                (_K5333953422_
                 (lambda (_r53362_)
                   (let _loop53364_ ((_l53366_ _l53332_) (_r53367_ _r53362_))
                     (let* ((_r5336853381_ _r53367_)
                            (_E5337253385_
                             (lambda ()
                               (error '"No clause matching" _r5336853381_))))
                       (let ((_K5337753412_
                              (lambda (_rr53410_)
                                (set-cdr!
                                 _l53366_
                                 (let ()
                                   (declare (not safe))
                                   (remove-nulls! _rr53410_)))))
                             (_K5337453399_
                              (lambda (_rr53397_)
                                (let ()
                                  (declare (not safe))
                                  (_loop53364_ _r53367_ _rr53397_))))
                             (_K5337353390_ (lambda () '#!void)))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _r5336853381_))
                             (let ((_tl5337953417_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _r5336853381_)))
                                   (_hd5337853415_
                                    (let ()
                                      (declare (not safe))
                                      (##car _r5336853381_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _hd5337853415_))
                                   (let ((_rr53420_ _tl5337953417_))
                                     (declare (not safe))
                                     (_K5337753412_ _rr53420_))
                                   (let ((_rr53405_ _tl5337953417_))
                                     (declare (not safe))
                                     (_K5337453399_ _rr53405_))))
                             '#!void))))
                   _l53332_))
                (_K5333853355_ (lambda () _l53332_)))
            (if (let () (declare (not safe)) (##pair? _l5333353346_))
                (let ((_tl5334453440_
                       (let () (declare (not safe)) (##cdr _l5333353346_)))
                      (_hd5334353438_
                       (let () (declare (not safe)) (##car _l5333353346_))))
                  (if (let () (declare (not safe)) (##null? _hd5334353438_))
                      (let ((_r53443_ _tl5334453440_))
                        (declare (not safe))
                        (remove-nulls! _r53443_))
                      (let ((_r53428_ _tl5334453440_))
                        (declare (not safe))
                        (_K5333953422_ _r53428_))))
                (let () (declare (not safe)) (_K5333853355_)))))))
    (define append1!
      (lambda (_l53327_ _x53328_)
        (let ((_l253330_ (let () (declare (not safe)) (cons _x53328_ '()))))
          (if (let () (declare (not safe)) (pair? _l53327_))
              (set-cdr!
               (let () (declare (not safe)) (##last-pair _l53327_))
               _l253330_)
              _l253330_))))
    (define append-reverse
      (lambda (_rev-head53324_ _tail53325_)
        (let ()
          (declare (not safe))
          (foldl1 cons _tail53325_ _rev-head53324_))))
    (define append-reverse-until
      (lambda (_pred53277_ _rhead53278_ _tail53279_)
        (let _loop53281_ ((_rhead53283_ _rhead53278_)
                          (_tail53284_ _tail53279_))
          (let* ((_rhead5328553294_ _rhead53283_)
                 (_E5328853298_
                  (lambda () (error '"No clause matching" _rhead5328553294_))))
            (let ((_K5329253321_ (lambda () (values '() _tail53284_)))
                  (_K5328953305_
                   (lambda (_r53302_ _a53303_)
                     (if (_pred53277_ _a53303_)
                         (values _rhead53283_ _tail53284_)
                         (let ((__tmp54310
                                (let ()
                                  (declare (not safe))
                                  (cons _a53303_ _tail53284_))))
                           (declare (not safe))
                           (_loop53281_ _r53302_ __tmp54310))))))
              (let ((_try-match5328753317_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _rhead5328553294_))
                           (let ((_tl5329153310_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _rhead5328553294_)))
                                 (_hd5329053308_
                                  (let ()
                                    (declare (not safe))
                                    (##car _rhead5328553294_))))
                             (let ((_a53313_ _hd5329053308_)
                                   (_r53315_ _tl5329153310_))
                               (let ()
                                 (declare (not safe))
                                 (_K5328953305_ _r53315_ _a53313_))))
                           (let () (declare (not safe)) (_E5328853298_))))))
                (if (let () (declare (not safe)) (##null? _rhead5328553294_))
                    (let () (declare (not safe)) (_K5329253321_))
                    (let ()
                      (declare (not safe))
                      (_try-match5328753317_)))))))))
    (define andmap1
      (lambda (_f53237_ _lst53238_)
        (let _lp53240_ ((_rest53242_ _lst53238_))
          (let* ((_rest5324353251_ _rest53242_)
                 (_else5324553259_ (lambda () '#t))
                 (_K5324753265_
                  (lambda (_rest53262_ _x53263_)
                    (if (_f53237_ _x53263_)
                        (let () (declare (not safe)) (_lp53240_ _rest53262_))
                        '#f))))
            (if (let () (declare (not safe)) (##pair? _rest5324353251_))
                (let ((_hd5324853268_
                       (let () (declare (not safe)) (##car _rest5324353251_)))
                      (_tl5324953270_
                       (let () (declare (not safe)) (##cdr _rest5324353251_))))
                  (let* ((_x53273_ _hd5324853268_)
                         (_rest53275_ _tl5324953270_))
                    (declare (not safe))
                    (_K5324753265_ _rest53275_ _x53273_)))
                (let () (declare (not safe)) (_else5324553259_)))))))
    (define andmap2
      (lambda (_f53162_ _lst153163_ _lst253164_)
        (let _lp53166_ ((_rest153168_ _lst153163_) (_rest253169_ _lst253164_))
          (let* ((_rest15317053178_ _rest153168_)
                 (_else5317253186_ (lambda () '#t))
                 (_K5317453225_
                  (lambda (_rest153189_ _x153190_)
                    (let* ((_rest25319153199_ _rest253169_)
                           (_else5319353207_ (lambda () '#t))
                           (_K5319553213_
                            (lambda (_rest253210_ _x253211_)
                              (if (_f53162_ _x153190_ _x253211_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp53166_ _rest153189_ _rest253210_))
                                  '#f))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25319153199_))
                          (let ((_hd5319653216_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25319153199_)))
                                (_tl5319753218_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25319153199_))))
                            (let* ((_x253221_ _hd5319653216_)
                                   (_rest253223_ _tl5319753218_))
                              (declare (not safe))
                              (_K5319553213_ _rest253223_ _x253221_)))
                          (let () (declare (not safe)) (_else5319353207_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15317053178_))
                (let ((_hd5317553228_
                       (let () (declare (not safe)) (##car _rest15317053178_)))
                      (_tl5317653230_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15317053178_))))
                  (let* ((_x153233_ _hd5317553228_)
                         (_rest153235_ _tl5317653230_))
                    (declare (not safe))
                    (_K5317453225_ _rest153235_ _x153233_)))
                (let () (declare (not safe)) (_else5317253186_)))))))
    (define andmap
      (lambda _g54312_
        (let ((_g54311_ (let () (declare (not safe)) (##length _g54312_))))
          (cond ((let () (declare (not safe)) (##fx= _g54311_ 2))
                 (apply (lambda (_f53150_ _lst53151_)
                          (let ()
                            (declare (not safe))
                            (andmap1 _f53150_ _lst53151_)))
                        _g54312_))
                ((let () (declare (not safe)) (##fx= _g54311_ 3))
                 (apply (lambda (_f53153_ _lst153154_ _lst253155_)
                          (let ()
                            (declare (not safe))
                            (andmap2 _f53153_ _lst153154_ _lst253155_)))
                        _g54312_))
                ((let () (declare (not safe)) (##fx>= _g54311_ 3))
                 (apply andmap* _g54312_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g54312_))))))
    (define andmap*
      (lambda (_f53143_ . _rest53144_)
        (let _recur53146_ ((_rest53148_ _rest53144_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest53148_))
              (if (apply _f53143_ (map car _rest53148_))
                  (let ((__tmp54313 (map cdr _rest53148_)))
                    (declare (not safe))
                    (_recur53146_ __tmp54313))
                  '#f)
              '#t))))
    (define ormap1
      (lambda (_f53100_ _lst53101_)
        (let _lp53103_ ((_rest53105_ _lst53101_))
          (let* ((_rest5310653114_ _rest53105_)
                 (_else5310853122_ (lambda () '#f))
                 (_K5311053131_
                  (lambda (_rest53125_ _x53126_)
                    (let ((_$e53128_ (_f53100_ _x53126_)))
                      (if _$e53128_
                          _$e53128_
                          (let ()
                            (declare (not safe))
                            (_lp53103_ _rest53125_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5310653114_))
                (let ((_hd5311153134_
                       (let () (declare (not safe)) (##car _rest5310653114_)))
                      (_tl5311253136_
                       (let () (declare (not safe)) (##cdr _rest5310653114_))))
                  (let* ((_x53139_ _hd5311153134_)
                         (_rest53141_ _tl5311253136_))
                    (declare (not safe))
                    (_K5311053131_ _rest53141_ _x53139_)))
                (let () (declare (not safe)) (_else5310853122_)))))))
    (define ormap2
      (lambda (_f53022_ _lst153023_ _lst253024_)
        (let _lp53026_ ((_rest153028_ _lst153023_) (_rest253029_ _lst253024_))
          (let* ((_rest15303053038_ _rest153028_)
                 (_else5303253046_ (lambda () '#f))
                 (_K5303453088_
                  (lambda (_rest153049_ _x153050_)
                    (let* ((_rest25305153059_ _rest253029_)
                           (_else5305353067_ (lambda () '#f))
                           (_K5305553076_
                            (lambda (_rest253070_ _x253071_)
                              (let ((_$e53073_ (_f53022_ _x153050_ _x253071_)))
                                (if _$e53073_
                                    _$e53073_
                                    (let ()
                                      (declare (not safe))
                                      (_lp53026_
                                       _rest153049_
                                       _rest253070_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25305153059_))
                          (let ((_hd5305653079_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25305153059_)))
                                (_tl5305753081_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25305153059_))))
                            (let* ((_x253084_ _hd5305653079_)
                                   (_rest253086_ _tl5305753081_))
                              (declare (not safe))
                              (_K5305553076_ _rest253086_ _x253084_)))
                          (let () (declare (not safe)) (_else5305353067_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15303053038_))
                (let ((_hd5303553091_
                       (let () (declare (not safe)) (##car _rest15303053038_)))
                      (_tl5303653093_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15303053038_))))
                  (let* ((_x153096_ _hd5303553091_)
                         (_rest153098_ _tl5303653093_))
                    (declare (not safe))
                    (_K5303453088_ _rest153098_ _x153096_)))
                (let () (declare (not safe)) (_else5303253046_)))))))
    (define ormap
      (lambda _g54315_
        (let ((_g54314_ (let () (declare (not safe)) (##length _g54315_))))
          (cond ((let () (declare (not safe)) (##fx= _g54314_ 2))
                 (apply (lambda (_f53010_ _lst53011_)
                          (let ()
                            (declare (not safe))
                            (ormap1 _f53010_ _lst53011_)))
                        _g54315_))
                ((let () (declare (not safe)) (##fx= _g54314_ 3))
                 (apply (lambda (_f53013_ _lst153014_ _lst253015_)
                          (let ()
                            (declare (not safe))
                            (ormap2 _f53013_ _lst153014_ _lst253015_)))
                        _g54315_))
                ((let () (declare (not safe)) (##fx>= _g54314_ 3))
                 (apply ormap* _g54315_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g54315_))))))
    (define ormap*
      (lambda (_f53000_ . _rest53001_)
        (let _recur53003_ ((_rest53005_ _rest53001_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest53005_))
              (let ((_$e53007_ (apply _f53000_ (map car _rest53005_))))
                (if _$e53007_
                    _$e53007_
                    (let ((__tmp54316 (map cdr _rest53005_)))
                      (declare (not safe))
                      (_recur53003_ __tmp54316))))
              '#f))))
    (define filter
      (lambda (_f52958_ _lst52959_)
        (let _recur52961_ ((_lst52963_ _lst52959_))
          (let* ((_lst5296452972_ _lst52963_)
                 (_else5296652980_ (lambda () '()))
                 (_K5296852988_
                  (lambda (_rest52983_ _hd52984_)
                    (if (_f52958_ _hd52984_)
                        (let ((_tail52986_
                               (let ()
                                 (declare (not safe))
                                 (_recur52961_ _rest52983_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _tail52986_ _rest52983_))
                              _lst52963_
                              (let ()
                                (declare (not safe))
                                (cons _hd52984_ _tail52986_))))
                        (let ()
                          (declare (not safe))
                          (_recur52961_ _rest52983_))))))
            (if (let () (declare (not safe)) (##pair? _lst5296452972_))
                (let ((_hd5296952991_
                       (let () (declare (not safe)) (##car _lst5296452972_)))
                      (_tl5297052993_
                       (let () (declare (not safe)) (##cdr _lst5296452972_))))
                  (let* ((_hd52996_ _hd5296952991_)
                         (_rest52998_ _tl5297052993_))
                    (declare (not safe))
                    (_K5296852988_ _rest52998_ _hd52996_)))
                (let () (declare (not safe)) (_else5296652980_)))))))
    (define filter-map1
      (lambda (_f52913_ _lst52914_)
        (let _recur52916_ ((_rest52918_ _lst52914_))
          (let* ((_rest5291952927_ _rest52918_)
                 (_else5292152935_ (lambda () '()))
                 (_K5292352946_
                  (lambda (_rest52938_ _x52939_)
                    (let ((_$e52941_ (_f52913_ _x52939_)))
                      (if _$e52941_
                          ((lambda (_r52944_)
                             (let ((__tmp54317
                                    (let ()
                                      (declare (not safe))
                                      (_recur52916_ _rest52938_))))
                               (declare (not safe))
                               (cons _r52944_ __tmp54317)))
                           _$e52941_)
                          (let ()
                            (declare (not safe))
                            (_recur52916_ _rest52938_)))))))
            (if (let () (declare (not safe)) (##pair? _rest5291952927_))
                (let ((_hd5292452949_
                       (let () (declare (not safe)) (##car _rest5291952927_)))
                      (_tl5292552951_
                       (let () (declare (not safe)) (##cdr _rest5291952927_))))
                  (let* ((_x52954_ _hd5292452949_)
                         (_rest52956_ _tl5292552951_))
                    (declare (not safe))
                    (_K5292352946_ _rest52956_ _x52954_)))
                (let () (declare (not safe)) (_else5292152935_)))))))
    (define filter-map2
      (lambda (_f52833_ _lst152834_ _lst252835_)
        (let _recur52837_ ((_rest152839_ _lst152834_)
                           (_rest252840_ _lst252835_))
          (let* ((_rest15284152849_ _rest152839_)
                 (_else5284352857_ (lambda () '()))
                 (_K5284552901_
                  (lambda (_rest152860_ _x152861_)
                    (let* ((_rest25286252870_ _rest252840_)
                           (_else5286452878_ (lambda () '()))
                           (_K5286652889_
                            (lambda (_rest252881_ _x252882_)
                              (let ((_$e52884_ (_f52833_ _x152861_ _x252882_)))
                                (if _$e52884_
                                    ((lambda (_r52887_)
                                       (let ((__tmp54318
                                              (let ()
                                                (declare (not safe))
                                                (_recur52837_
                                                 _rest152860_
                                                 _rest252881_))))
                                         (declare (not safe))
                                         (cons _r52887_ __tmp54318)))
                                     _$e52884_)
                                    (let ()
                                      (declare (not safe))
                                      (_recur52837_
                                       _rest152860_
                                       _rest252881_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _rest25286252870_))
                          (let ((_hd5286752892_
                                 (let ()
                                   (declare (not safe))
                                   (##car _rest25286252870_)))
                                (_tl5286852894_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _rest25286252870_))))
                            (let* ((_x252897_ _hd5286752892_)
                                   (_rest252899_ _tl5286852894_))
                              (declare (not safe))
                              (_K5286652889_ _rest252899_ _x252897_)))
                          (let () (declare (not safe)) (_else5286452878_)))))))
            (if (let () (declare (not safe)) (##pair? _rest15284152849_))
                (let ((_hd5284652904_
                       (let () (declare (not safe)) (##car _rest15284152849_)))
                      (_tl5284752906_
                       (let ()
                         (declare (not safe))
                         (##cdr _rest15284152849_))))
                  (let* ((_x152909_ _hd5284652904_)
                         (_rest152911_ _tl5284752906_))
                    (declare (not safe))
                    (_K5284552901_ _rest152911_ _x152909_)))
                (let () (declare (not safe)) (_else5284352857_)))))))
    (define filter-map
      (lambda _g54320_
        (let ((_g54319_ (let () (declare (not safe)) (##length _g54320_))))
          (cond ((let () (declare (not safe)) (##fx= _g54319_ 2))
                 (apply (lambda (_f52821_ _lst52822_)
                          (let ()
                            (declare (not safe))
                            (filter-map1 _f52821_ _lst52822_)))
                        _g54320_))
                ((let () (declare (not safe)) (##fx= _g54319_ 3))
                 (apply (lambda (_f52824_ _lst152825_ _lst252826_)
                          (let ()
                            (declare (not safe))
                            (filter-map2 _f52824_ _lst152825_ _lst252826_)))
                        _g54320_))
                ((let () (declare (not safe)) (##fx>= _g54319_ 3))
                 (apply filter-map* _g54320_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g54320_))))))
    (define filter-map*
      (lambda (_f52809_ . _rest52810_)
        (let _recur52812_ ((_rest52814_ _rest52810_))
          (if (let () (declare (not safe)) (andmap1 pair? _rest52814_))
              (let ((_$e52816_ (apply _f52809_ (map car _rest52814_))))
                (if _$e52816_
                    ((lambda (_r52819_)
                       (let ((__tmp54321
                              (let ((__tmp54322 (map cdr _rest52814_)))
                                (declare (not safe))
                                (_recur52812_ __tmp54322))))
                         (declare (not safe))
                         (cons _r52819_ __tmp54321)))
                     _$e52816_)
                    (let ((__tmp54323 (map cdr _rest52814_)))
                      (declare (not safe))
                      (_recur52812_ __tmp54323))))
              '()))))
    (define iota__%
      (lambda (_count52777_ _start52778_ _step52779_)
        (if (let () (declare (not safe)) (fixnum? _count52777_))
            '#!void
            (error '"expected fixnum" _count52777_))
        (if (let () (declare (not safe)) (number? _start52778_))
            '#!void
            (error '"expected number" _start52778_))
        (if (let () (declare (not safe)) (number? _step52779_))
            '#!void
            (error '"expected number" _step52779_))
        (let ((_root52781_ (let () (declare (not safe)) (cons '#f '()))))
          (let _lp52783_ ((_i52785_ '0)
                          (_x52786_ _start52778_)
                          (_tl52787_ _root52781_))
            (if (let () (declare (not safe)) (##fx< _i52785_ _count52777_))
                (let ((_tl*52789_
                       (let () (declare (not safe)) (cons _x52786_ '()))))
                  (let ()
                    (declare (not safe))
                    (##set-cdr! _tl52787_ _tl*52789_))
                  (let ((__tmp54325
                         (let () (declare (not safe)) (##fx+ _i52785_ '1)))
                        (__tmp54324 (+ _x52786_ _step52779_)))
                    (declare (not safe))
                    (_lp52783_ __tmp54325 __tmp54324 _tl*52789_)))
                (let () (declare (not safe)) (##cdr _root52781_)))))))
    (define iota__0
      (lambda (_count52794_)
        (let* ((_start52796_ '0) (_step52798_ '1))
          (declare (not safe))
          (iota__% _count52794_ _start52796_ _step52798_))))
    (define iota__1
      (lambda (_count52800_ _start52801_)
        (let ((_step52803_ '1))
          (declare (not safe))
          (iota__% _count52800_ _start52801_ _step52803_))))
    (define iota
      (lambda _g54327_
        (let ((_g54326_ (let () (declare (not safe)) (##length _g54327_))))
          (cond ((let () (declare (not safe)) (##fx= _g54326_ 1))
                 (apply (lambda (_count52794_)
                          (let () (declare (not safe)) (iota__0 _count52794_)))
                        _g54327_))
                ((let () (declare (not safe)) (##fx= _g54326_ 2))
                 (apply (lambda (_count52800_ _start52801_)
                          (let ()
                            (declare (not safe))
                            (iota__1 _count52800_ _start52801_)))
                        _g54327_))
                ((let () (declare (not safe)) (##fx= _g54326_ 3))
                 (apply (lambda (_count52805_ _start52806_ _step52807_)
                          (let ()
                            (declare (not safe))
                            (iota__% _count52805_ _start52806_ _step52807_)))
                        _g54327_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  iota
                  _g54327_))))))
    (define last-pair
      (lambda (_lst52751_)
        (let* ((_lst5275252759_ _lst52751_)
               (_E5275452763_
                (lambda () (error '"No clause matching" _lst5275252759_)))
               (_K5275552768_
                (lambda (_rest52766_)
                  (if (let () (declare (not safe)) (pair? _rest52766_))
                      (let () (declare (not safe)) (last-pair _rest52766_))
                      _lst52751_))))
          (if (let () (declare (not safe)) (##pair? _lst5275252759_))
              (let* ((_tl5275752771_
                      (let () (declare (not safe)) (##cdr _lst5275252759_)))
                     (_rest52774_ _tl5275752771_))
                (declare (not safe))
                (_K5275552768_ _rest52774_))
              (let () (declare (not safe)) (_E5275452763_))))))
    (define last
      (lambda (_lst52749_)
        (car (let () (declare (not safe)) (last-pair _lst52749_)))))
    (define assgetq__%
      (lambda (_key52727_ _lst52729_ _default52731_)
        (let ((_$e52734_
               (if (let () (declare (not safe)) (pair? _lst52729_))
                   (assq _key52727_ _lst52729_)
                   '#f)))
          (if _$e52734_
              (cdr _$e52734_)
              (if (let () (declare (not safe)) (procedure? _default52731_))
                  (_default52731_ _key52727_)
                  _default52731_)))))
    (define assgetq__0
      (lambda (_key52740_ _lst52741_)
        (let ((_default52743_ '#f))
          (declare (not safe))
          (assgetq__% _key52740_ _lst52741_ _default52743_))))
    (define assgetq
      (lambda _g54329_
        (let ((_g54328_ (let () (declare (not safe)) (##length _g54329_))))
          (cond ((let () (declare (not safe)) (##fx= _g54328_ 2))
                 (apply (lambda (_key52740_ _lst52741_)
                          (let ()
                            (declare (not safe))
                            (assgetq__0 _key52740_ _lst52741_)))
                        _g54329_))
                ((let () (declare (not safe)) (##fx= _g54328_ 3))
                 (apply (lambda (_key52745_ _lst52746_ _default52747_)
                          (let ()
                            (declare (not safe))
                            (assgetq__% _key52745_ _lst52746_ _default52747_)))
                        _g54329_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetq
                  _g54329_))))))
    (define assgetv__%
      (lambda (_key52704_ _lst52706_ _default52708_)
        (let ((_$e52711_
               (if (let () (declare (not safe)) (pair? _lst52706_))
                   (assv _key52704_ _lst52706_)
                   '#f)))
          (if _$e52711_
              (cdr _$e52711_)
              (if (let () (declare (not safe)) (procedure? _default52708_))
                  (_default52708_ _key52704_)
                  _default52708_)))))
    (define assgetv__0
      (lambda (_key52717_ _lst52718_)
        (let ((_default52720_ '#f))
          (declare (not safe))
          (assgetv__% _key52717_ _lst52718_ _default52720_))))
    (define assgetv
      (lambda _g54331_
        (let ((_g54330_ (let () (declare (not safe)) (##length _g54331_))))
          (cond ((let () (declare (not safe)) (##fx= _g54330_ 2))
                 (apply (lambda (_key52717_ _lst52718_)
                          (let ()
                            (declare (not safe))
                            (assgetv__0 _key52717_ _lst52718_)))
                        _g54331_))
                ((let () (declare (not safe)) (##fx= _g54330_ 3))
                 (apply (lambda (_key52722_ _lst52723_ _default52724_)
                          (let ()
                            (declare (not safe))
                            (assgetv__% _key52722_ _lst52723_ _default52724_)))
                        _g54331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assgetv
                  _g54331_))))))
    (define assget__%
      (lambda (_key52681_ _lst52683_ _default52685_)
        (let ((_$e52688_
               (if (let () (declare (not safe)) (pair? _lst52683_))
                   (assoc _key52681_ _lst52683_)
                   '#f)))
          (if _$e52688_
              (cdr _$e52688_)
              (if (let () (declare (not safe)) (procedure? _default52685_))
                  (_default52685_ _key52681_)
                  _default52685_)))))
    (define assget__0
      (lambda (_key52694_ _lst52695_)
        (let ((_default52697_ '#f))
          (declare (not safe))
          (assget__% _key52694_ _lst52695_ _default52697_))))
    (define assget
      (lambda _g54333_
        (let ((_g54332_ (let () (declare (not safe)) (##length _g54333_))))
          (cond ((let () (declare (not safe)) (##fx= _g54332_ 2))
                 (apply (lambda (_key52694_ _lst52695_)
                          (let ()
                            (declare (not safe))
                            (assget__0 _key52694_ _lst52695_)))
                        _g54333_))
                ((let () (declare (not safe)) (##fx= _g54332_ 3))
                 (apply (lambda (_key52699_ _lst52700_ _default52701_)
                          (let ()
                            (declare (not safe))
                            (assget__% _key52699_ _lst52700_ _default52701_)))
                        _g54333_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  assget
                  _g54333_))))))
    (define pgetq__%
      (lambda (_key52610_ _lst52612_ _default52614_)
        (let _lp52617_ ((_rest52620_ _lst52612_))
          (let* ((_rest5262252632_ _rest52620_)
                 (_else5262452640_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default52614_))
                        (_default52614_ _key52610_)
                        _default52614_)))
                 (_K5262652649_
                  (lambda (_rest52643_ _v52644_ _k52646_)
                    (if (let () (declare (not safe)) (eq? _k52646_ _key52610_))
                        _v52644_
                        (let ()
                          (declare (not safe))
                          (_lp52617_ _rest52643_))))))
            (if (let () (declare (not safe)) (##pair? _rest5262252632_))
                (let ((_hd5262752652_
                       (let () (declare (not safe)) (##car _rest5262252632_)))
                      (_tl5262852654_
                       (let () (declare (not safe)) (##cdr _rest5262252632_))))
                  (let ((_k52657_ _hd5262752652_))
                    (if (let () (declare (not safe)) (##pair? _tl5262852654_))
                        (let ((_hd5262952659_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5262852654_)))
                              (_tl5263052661_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5262852654_))))
                          (let* ((_v52664_ _hd5262952659_)
                                 (_rest52666_ _tl5263052661_))
                            (declare (not safe))
                            (_K5262652649_ _rest52666_ _v52664_ _k52657_)))
                        (let () (declare (not safe)) (_else5262452640_)))))
                (let () (declare (not safe)) (_else5262452640_)))))))
    (define pgetq__0
      (lambda (_key52671_ _lst52672_)
        (let ((_default52674_ '#f))
          (declare (not safe))
          (pgetq__% _key52671_ _lst52672_ _default52674_))))
    (define pgetq
      (lambda _g54335_
        (let ((_g54334_ (let () (declare (not safe)) (##length _g54335_))))
          (cond ((let () (declare (not safe)) (##fx= _g54334_ 2))
                 (apply (lambda (_key52671_ _lst52672_)
                          (let ()
                            (declare (not safe))
                            (pgetq__0 _key52671_ _lst52672_)))
                        _g54335_))
                ((let () (declare (not safe)) (##fx= _g54334_ 3))
                 (apply (lambda (_key52676_ _lst52677_ _default52678_)
                          (let ()
                            (declare (not safe))
                            (pgetq__% _key52676_ _lst52677_ _default52678_)))
                        _g54335_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g54335_))))))
    (define pgetv__%
      (lambda (_key52539_ _lst52541_ _default52543_)
        (let _lp52546_ ((_rest52549_ _lst52541_))
          (let* ((_rest5255152561_ _rest52549_)
                 (_else5255352569_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default52543_))
                        (_default52543_ _key52539_)
                        _default52543_)))
                 (_K5255552578_
                  (lambda (_rest52572_ _v52573_ _k52575_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _k52575_ _key52539_))
                        _v52573_
                        (let ()
                          (declare (not safe))
                          (_lp52546_ _rest52572_))))))
            (if (let () (declare (not safe)) (##pair? _rest5255152561_))
                (let ((_hd5255652581_
                       (let () (declare (not safe)) (##car _rest5255152561_)))
                      (_tl5255752583_
                       (let () (declare (not safe)) (##cdr _rest5255152561_))))
                  (let ((_k52586_ _hd5255652581_))
                    (if (let () (declare (not safe)) (##pair? _tl5255752583_))
                        (let ((_hd5255852588_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5255752583_)))
                              (_tl5255952590_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5255752583_))))
                          (let* ((_v52593_ _hd5255852588_)
                                 (_rest52595_ _tl5255952590_))
                            (declare (not safe))
                            (_K5255552578_ _rest52595_ _v52593_ _k52586_)))
                        (let () (declare (not safe)) (_else5255352569_)))))
                (let () (declare (not safe)) (_else5255352569_)))))))
    (define pgetv__0
      (lambda (_key52600_ _lst52601_)
        (let ((_default52603_ '#f))
          (declare (not safe))
          (pgetv__% _key52600_ _lst52601_ _default52603_))))
    (define pgetv
      (lambda _g54337_
        (let ((_g54336_ (let () (declare (not safe)) (##length _g54337_))))
          (cond ((let () (declare (not safe)) (##fx= _g54336_ 2))
                 (apply (lambda (_key52600_ _lst52601_)
                          (let ()
                            (declare (not safe))
                            (pgetv__0 _key52600_ _lst52601_)))
                        _g54337_))
                ((let () (declare (not safe)) (##fx= _g54336_ 3))
                 (apply (lambda (_key52605_ _lst52606_ _default52607_)
                          (let ()
                            (declare (not safe))
                            (pgetv__% _key52605_ _lst52606_ _default52607_)))
                        _g54337_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g54337_))))))
    (define pget__%
      (lambda (_key52468_ _lst52470_ _default52472_)
        (let _lp52475_ ((_rest52478_ _lst52470_))
          (let* ((_rest5248052490_ _rest52478_)
                 (_else5248252498_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (procedure? _default52472_))
                        (_default52472_ _key52468_)
                        _default52472_)))
                 (_K5248452507_
                  (lambda (_rest52501_ _v52502_ _k52504_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _k52504_ _key52468_))
                        _v52502_
                        (let ()
                          (declare (not safe))
                          (_lp52475_ _rest52501_))))))
            (if (let () (declare (not safe)) (##pair? _rest5248052490_))
                (let ((_hd5248552510_
                       (let () (declare (not safe)) (##car _rest5248052490_)))
                      (_tl5248652512_
                       (let () (declare (not safe)) (##cdr _rest5248052490_))))
                  (let ((_k52515_ _hd5248552510_))
                    (if (let () (declare (not safe)) (##pair? _tl5248652512_))
                        (let ((_hd5248752517_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl5248652512_)))
                              (_tl5248852519_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl5248652512_))))
                          (let* ((_v52522_ _hd5248752517_)
                                 (_rest52524_ _tl5248852519_))
                            (declare (not safe))
                            (_K5248452507_ _rest52524_ _v52522_ _k52515_)))
                        (let () (declare (not safe)) (_else5248252498_)))))
                (let () (declare (not safe)) (_else5248252498_)))))))
    (define pget__0
      (lambda (_key52529_ _lst52530_)
        (let ((_default52532_ '#f))
          (declare (not safe))
          (pget__% _key52529_ _lst52530_ _default52532_))))
    (define pget
      (lambda _g54339_
        (let ((_g54338_ (let () (declare (not safe)) (##length _g54339_))))
          (cond ((let () (declare (not safe)) (##fx= _g54338_ 2))
                 (apply (lambda (_key52529_ _lst52530_)
                          (let ()
                            (declare (not safe))
                            (pget__0 _key52529_ _lst52530_)))
                        _g54339_))
                ((let () (declare (not safe)) (##fx= _g54338_ 3))
                 (apply (lambda (_key52534_ _lst52535_ _default52536_)
                          (let ()
                            (declare (not safe))
                            (pget__% _key52534_ _lst52535_ _default52536_)))
                        _g54339_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g54339_))))))
    (define find
      (lambda (_pred52461_ _lst52462_)
        (let ((_$e52464_
               (let () (declare (not safe)) (memf _pred52461_ _lst52462_))))
          (if _$e52464_ (car _$e52464_) '#f))))
    (define memf
      (lambda (_proc52421_ _lst52422_)
        (let _lp52424_ ((_rest52426_ _lst52422_))
          (let* ((_rest5242752435_ _rest52426_)
                 (_else5242952443_ (lambda () '#f))
                 (_K5243152449_
                  (lambda (_tl52446_ _hd52447_)
                    (if (_proc52421_ _hd52447_)
                        _rest52426_
                        (let () (declare (not safe)) (_lp52424_ _tl52446_))))))
            (if (let () (declare (not safe)) (##pair? _rest5242752435_))
                (let ((_hd5243252452_
                       (let () (declare (not safe)) (##car _rest5242752435_)))
                      (_tl5243352454_
                       (let () (declare (not safe)) (##cdr _rest5242752435_))))
                  (let* ((_hd52457_ _hd5243252452_) (_tl52459_ _tl5243352454_))
                    (declare (not safe))
                    (_K5243152449_ _tl52459_ _hd52457_)))
                (let () (declare (not safe)) (_else5242952443_)))))))
    (define remove1
      (lambda (_el52374_ _lst52376_)
        (let _lp52379_ ((_rest52382_ _lst52376_) (_r52384_ '()))
          (let* ((_rest5238652394_ _rest52382_)
                 (_else5238852402_ (lambda () _lst52376_))
                 (_K5239052409_
                  (lambda (_rest52405_ _hd52406_)
                    (if (let ()
                          (declare (not safe))
                          (equal? _el52374_ _hd52406_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest52405_ _r52384_))
                        (let ((__tmp54340
                               (let ()
                                 (declare (not safe))
                                 (cons _hd52406_ _r52384_))))
                          (declare (not safe))
                          (_lp52379_ _rest52405_ __tmp54340))))))
            (if (let () (declare (not safe)) (##pair? _rest5238652394_))
                (let ((_hd5239152412_
                       (let () (declare (not safe)) (##car _rest5238652394_)))
                      (_tl5239252414_
                       (let () (declare (not safe)) (##cdr _rest5238652394_))))
                  (let* ((_hd52417_ _hd5239152412_)
                         (_rest52419_ _tl5239252414_))
                    (declare (not safe))
                    (_K5239052409_ _rest52419_ _hd52417_)))
                (let () (declare (not safe)) (_else5238852402_)))))))
    (define remv
      (lambda (_el52327_ _lst52329_)
        (let _lp52332_ ((_rest52335_ _lst52329_) (_r52337_ '()))
          (let* ((_rest5233952347_ _rest52335_)
                 (_else5234152355_ (lambda () _lst52329_))
                 (_K5234352362_
                  (lambda (_rest52358_ _hd52359_)
                    (if (let ()
                          (declare (not safe))
                          (eqv? _el52327_ _hd52359_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest52358_ _r52337_))
                        (let ((__tmp54341
                               (let ()
                                 (declare (not safe))
                                 (cons _hd52359_ _r52337_))))
                          (declare (not safe))
                          (_lp52332_ _rest52358_ __tmp54341))))))
            (if (let () (declare (not safe)) (##pair? _rest5233952347_))
                (let ((_hd5234452365_
                       (let () (declare (not safe)) (##car _rest5233952347_)))
                      (_tl5234552367_
                       (let () (declare (not safe)) (##cdr _rest5233952347_))))
                  (let* ((_hd52370_ _hd5234452365_)
                         (_rest52372_ _tl5234552367_))
                    (declare (not safe))
                    (_K5234352362_ _rest52372_ _hd52370_)))
                (let () (declare (not safe)) (_else5234152355_)))))))
    (define remq
      (lambda (_el52280_ _lst52282_)
        (let _lp52285_ ((_rest52288_ _lst52282_) (_r52290_ '()))
          (let* ((_rest5229252300_ _rest52288_)
                 (_else5229452308_ (lambda () _lst52282_))
                 (_K5229652315_
                  (lambda (_rest52311_ _hd52312_)
                    (if (let () (declare (not safe)) (eq? _el52280_ _hd52312_))
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest52311_ _r52290_))
                        (let ((__tmp54342
                               (let ()
                                 (declare (not safe))
                                 (cons _hd52312_ _r52290_))))
                          (declare (not safe))
                          (_lp52285_ _rest52311_ __tmp54342))))))
            (if (let () (declare (not safe)) (##pair? _rest5229252300_))
                (let ((_hd5229752318_
                       (let () (declare (not safe)) (##car _rest5229252300_)))
                      (_tl5229852320_
                       (let () (declare (not safe)) (##cdr _rest5229252300_))))
                  (let* ((_hd52323_ _hd5229752318_)
                         (_rest52325_ _tl5229852320_))
                    (declare (not safe))
                    (_K5229652315_ _rest52325_ _hd52323_)))
                (let () (declare (not safe)) (_else5229452308_)))))))
    (define remf
      (lambda (_proc52239_ _lst52240_)
        (let _lp52242_ ((_rest52244_ _lst52240_) (_r52245_ '()))
          (let* ((_rest5224652254_ _rest52244_)
                 (_else5224852262_ (lambda () _lst52240_))
                 (_K5225052268_
                  (lambda (_rest52265_ _hd52266_)
                    (if (_proc52239_ _hd52266_)
                        (let ()
                          (declare (not safe))
                          (foldl1 cons _rest52265_ _r52245_))
                        (let ((__tmp54343
                               (let ()
                                 (declare (not safe))
                                 (cons _hd52266_ _r52245_))))
                          (declare (not safe))
                          (_lp52242_ _rest52265_ __tmp54343))))))
            (if (let () (declare (not safe)) (##pair? _rest5224652254_))
                (let ((_hd5225152271_
                       (let () (declare (not safe)) (##car _rest5224652254_)))
                      (_tl5225252273_
                       (let () (declare (not safe)) (##cdr _rest5224652254_))))
                  (let* ((_hd52276_ _hd5225152271_)
                         (_rest52278_ _tl5225252273_))
                    (declare (not safe))
                    (_K5225052268_ _rest52278_ _hd52276_)))
                (let () (declare (not safe)) (_else5224852262_)))))))
    (define 1+ (lambda (_x52237_) (+ _x52237_ '1)))
    (define 1- (lambda (_x52235_) (- _x52235_ '1)))
    (define fx1+ (lambda (_x52233_) (fx+ _x52233_ '1)))
    (define fx1- (lambda (_x52231_) (fx- _x52231_ '1)))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx>=0?
      (lambda (_x52229_)
        (if (let () (declare (not safe)) (fixnum? _x52229_))
            (let () (declare (not safe)) (##fx>= _x52229_ '0))
            '#f)))
    (define fx>0?
      (lambda (_x52227_)
        (if (let () (declare (not safe)) (fixnum? _x52227_))
            (let () (declare (not safe)) (##fx> _x52227_ '0))
            '#f)))
    (define fx=0?
      (lambda (_x52225_) (let () (declare (not safe)) (eq? _x52225_ '0))))
    (define fx<0?
      (lambda (_x52223_)
        (if (let () (declare (not safe)) (fixnum? _x52223_))
            (let () (declare (not safe)) (##fx< _x52223_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_x52221_)
        (if (let () (declare (not safe)) (fixnum? _x52221_))
            (let () (declare (not safe)) (##fx<= _x52221_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_x52219_)
        (if (let () (declare (not safe)) (symbol? _x52219_))
            (let ((__tmp54344 (uninterned-symbol? _x52219_)))
              (declare (not safe))
              (not __tmp54344))
            '#f)))
    (define display-as-string
      (lambda (_x52191_ _port52192_)
        (if (or (let () (declare (not safe)) (string? _x52191_))
                (let () (declare (not safe)) (symbol? _x52191_))
                (keyword? _x52191_)
                (let () (declare (not safe)) (number? _x52191_))
                (let () (declare (not safe)) (char? _x52191_)))
            (display _x52191_ _port52192_)
            (if (let () (declare (not safe)) (pair? _x52191_))
                (begin
                  (let ((__tmp54345 (car _x52191_)))
                    (declare (not safe))
                    (display-as-string __tmp54345 _port52192_))
                  (let ((__tmp54346 (cdr _x52191_)))
                    (declare (not safe))
                    (display-as-string __tmp54346 _port52192_)))
                (if (let () (declare (not safe)) (vector? _x52191_))
                    (vector-for-each
                     (lambda (_g5220552207_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _g5220552207_ _port52192_)))
                     _x52191_)
                    (if (or (let () (declare (not safe)) (null? _x52191_))
                            (let ()
                              (declare (not safe))
                              (eq? _x52191_ '#!void))
                            (let ()
                              (declare (not safe))
                              (eof-object? _x52191_))
                            (let () (declare (not safe)) (boolean? _x52191_)))
                        '#!void
                        (error '"cannot convert as string" _x52191_)))))))
    (define as-string__0
      (lambda (_x52179_)
        (if (let () (declare (not safe)) (string? _x52179_))
            _x52179_
            (if (let () (declare (not safe)) (symbol? _x52179_))
                (symbol->string _x52179_)
                (if (keyword? _x52179_)
                    (keyword->string _x52179_)
                    (call-with-output-string
                     '()
                     (lambda (_g5218052182_)
                       (let ()
                         (declare (not safe))
                         (display-as-string _x52179_ _g5218052182_)))))))))
    (define as-string__1
      (lambda _args52185_
        (call-with-output-string
         '()
         (lambda (_g5218652188_)
           (let ()
             (declare (not safe))
             (display-as-string _args52185_ _g5218652188_))))))
    (define as-string
      (lambda _g54348_
        (let ((_g54347_ (let () (declare (not safe)) (##length _g54348_))))
          (cond ((let () (declare (not safe)) (##fx= _g54347_ 1))
                 (apply (lambda (_x52179_)
                          (let ()
                            (declare (not safe))
                            (as-string__0 _x52179_)))
                        _g54348_))
                (#t (apply as-string__1 _g54348_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g54348_))))))
    (define make-symbol__0
      (lambda (_x52175_)
        (if (interned-symbol? _x52175_)
            _x52175_
            (string->symbol
             (let () (declare (not safe)) (as-string__0 _x52175_))))))
    (define make-symbol__1
      (lambda _args52177_ (string->symbol (apply as-string _args52177_))))
    (define make-symbol
      (lambda _g54350_
        (let ((_g54349_ (let () (declare (not safe)) (##length _g54350_))))
          (cond ((let () (declare (not safe)) (##fx= _g54349_ 1))
                 (apply (lambda (_x52175_)
                          (let ()
                            (declare (not safe))
                            (make-symbol__0 _x52175_)))
                        _g54350_))
                (#t (apply make-symbol__1 _g54350_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g54350_))))))
    (define make-keyword__0
      (lambda (_x52171_)
        (if (interned-keyword? _x52171_)
            _x52171_
            (string->keyword
             (let () (declare (not safe)) (as-string__0 _x52171_))))))
    (define make-keyword__1
      (lambda _args52173_ (string->keyword (apply as-string _args52173_))))
    (define make-keyword
      (lambda _g54352_
        (let ((_g54351_ (let () (declare (not safe)) (##length _g54352_))))
          (cond ((let () (declare (not safe)) (##fx= _g54351_ 1))
                 (apply (lambda (_x52171_)
                          (let ()
                            (declare (not safe))
                            (make-keyword__0 _x52171_)))
                        _g54352_))
                (#t (apply make-keyword__1 _g54352_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g54352_))))))
    (define interned-keyword?
      (lambda (_x52169_)
        (if (keyword? _x52169_)
            (let ((__tmp54353 (uninterned-keyword? _x52169_)))
              (declare (not safe))
              (not __tmp54353))
            '#f)))
    (define symbol->keyword
      (lambda (_sym52167_)
        ((if (uninterned-symbol? _sym52167_)
             string->uninterned-keyword
             string->keyword)
         (symbol->string _sym52167_))))
    (define keyword->symbol
      (lambda (_kw52165_)
        ((if (uninterned-keyword? _kw52165_)
             string->uninterned-symbol
             string->symbol)
         (keyword->string _kw52165_))))
    (define bytes->string__%
      (lambda (_bstr52143_ _enc52144_)
        (if (let () (declare (not safe)) (eq? _enc52144_ 'UTF-8))
            (utf8->string _bstr52143_)
            (let* ((_in52146_
                    (open-input-u8vector
                     (let ((__tmp54354
                            (let ((__tmp54355
                                   (let ((__tmp54356
                                          (let ()
                                            (declare (not safe))
                                            (cons _bstr52143_ '()))))
                                     (declare (not safe))
                                     (cons 'init: __tmp54356))))
                              (declare (not safe))
                              (cons _enc52144_ __tmp54355))))
                       (declare (not safe))
                       (cons 'char-encoding: __tmp54354))))
                   (_len52148_ (u8vector-length _bstr52143_))
                   (_out52150_ (make-string _len52148_))
                   (_n52152_
                    (read-substring _out52150_ '0 _len52148_ _in52146_)))
              (string-shrink! _out52150_ _n52152_)
              _out52150_))))
    (define bytes->string__0
      (lambda (_bstr52158_)
        (let ((_enc52160_ 'UTF-8))
          (declare (not safe))
          (bytes->string__% _bstr52158_ _enc52160_))))
    (define bytes->string
      (lambda _g54358_
        (let ((_g54357_ (let () (declare (not safe)) (##length _g54358_))))
          (cond ((let () (declare (not safe)) (##fx= _g54357_ 1))
                 (apply (lambda (_bstr52158_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__0 _bstr52158_)))
                        _g54358_))
                ((let () (declare (not safe)) (##fx= _g54357_ 2))
                 (apply (lambda (_bstr52162_ _enc52163_)
                          (let ()
                            (declare (not safe))
                            (bytes->string__% _bstr52162_ _enc52163_)))
                        _g54358_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g54358_))))))
    (define string->bytes__%
      (lambda (_str52129_ _enc52130_)
        (if (let () (declare (not safe)) (eq? _enc52130_ 'UTF-8))
            (string->utf8 _str52129_)
            (substring->bytes
             _str52129_
             '0
             (string-length _str52129_)
             _enc52130_))))
    (define string->bytes__0
      (lambda (_str52135_)
        (let ((_enc52137_ 'UTF-8))
          (declare (not safe))
          (string->bytes__% _str52135_ _enc52137_))))
    (define string->bytes
      (lambda _g54360_
        (let ((_g54359_ (let () (declare (not safe)) (##length _g54360_))))
          (cond ((let () (declare (not safe)) (##fx= _g54359_ 1))
                 (apply (lambda (_str52135_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__0 _str52135_)))
                        _g54360_))
                ((let () (declare (not safe)) (##fx= _g54359_ 2))
                 (apply (lambda (_str52139_ _enc52140_)
                          (let ()
                            (declare (not safe))
                            (string->bytes__% _str52139_ _enc52140_)))
                        _g54360_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g54360_))))))
    (define substring->bytes__%
      (lambda (_str52107_ _start52108_ _end52109_ _enc52110_)
        (if (let () (declare (not safe)) (eq? _enc52110_ 'UTF-8))
            (string->utf8 _str52107_ _start52108_ _end52109_)
            (let ((_out52112_
                   (open-output-u8vector
                    (let ((__tmp54361
                           (let ()
                             (declare (not safe))
                             (cons _enc52110_ '()))))
                      (declare (not safe))
                      (cons 'char-encoding: __tmp54361)))))
              (write-substring _str52107_ _start52108_ _end52109_ _out52112_)
              (get-output-u8vector _out52112_)))))
    (define substring->bytes__0
      (lambda (_str52117_ _start52118_ _end52119_)
        (let ((_enc52121_ 'UTF-8))
          (declare (not safe))
          (substring->bytes__%
           _str52117_
           _start52118_
           _end52119_
           _enc52121_))))
    (define substring->bytes
      (lambda _g54363_
        (let ((_g54362_ (let () (declare (not safe)) (##length _g54363_))))
          (cond ((let () (declare (not safe)) (##fx= _g54362_ 3))
                 (apply (lambda (_str52117_ _start52118_ _end52119_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__0
                             _str52117_
                             _start52118_
                             _end52119_)))
                        _g54363_))
                ((let () (declare (not safe)) (##fx= _g54362_ 4))
                 (apply (lambda (_str52123_ _start52124_ _end52125_ _enc52126_)
                          (let ()
                            (declare (not safe))
                            (substring->bytes__%
                             _str52123_
                             _start52124_
                             _end52125_
                             _enc52126_)))
                        _g54363_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g54363_))))))
    (define string-empty?
      (lambda (_str52104_)
        (let ((__tmp54364 (string-length _str52104_)))
          (declare (not safe))
          (##fxzero? __tmp54364))))
    (define string-prefix?
      (lambda (_prefix52094_ _str52095_)
        (let ((_str-len52097_ (string-length _str52095_))
              (_prefix-len52098_ (string-length _prefix52094_)))
          (if (let ()
                (declare (not safe))
                (##fx<= _prefix-len52098_ _str-len52097_))
              (let _lp52100_ ((_i52102_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _i52102_ _prefix-len52098_))
                    (if (let ((__tmp54366
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _str52095_ _i52102_)))
                              (__tmp54365
                               (let ()
                                 (declare (not safe))
                                 (##string-ref _prefix52094_ _i52102_))))
                          (declare (not safe))
                          (eq? __tmp54366 __tmp54365))
                        (let ((__tmp54367
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _i52102_ '1))))
                          (declare (not safe))
                          (_lp52100_ __tmp54367))
                        '#f)
                    '#t))
              '#f))))
    (define string-index__%
      (lambda (_str52072_ _char52073_ _start52074_)
        (let ((_len52076_ (string-length _str52072_)))
          (let _lp52078_ ((_k52080_ _start52074_))
            (if (let () (declare (not safe)) (##fx< _k52080_ _len52076_))
                (if (let ((__tmp54368
                           (let ()
                             (declare (not safe))
                             (##string-ref _str52072_ _k52080_))))
                      (declare (not safe))
                      (eq? _char52073_ __tmp54368))
                    _k52080_
                    (let ((__tmp54369
                           (let () (declare (not safe)) (##fx+ _k52080_ '1))))
                      (declare (not safe))
                      (_lp52078_ __tmp54369)))
                '#f)))))
    (define string-index__0
      (lambda (_str52085_ _char52086_)
        (let ((_start52088_ '0))
          (declare (not safe))
          (string-index__% _str52085_ _char52086_ _start52088_))))
    (define string-index
      (lambda _g54371_
        (let ((_g54370_ (let () (declare (not safe)) (##length _g54371_))))
          (cond ((let () (declare (not safe)) (##fx= _g54370_ 2))
                 (apply (lambda (_str52085_ _char52086_)
                          (let ()
                            (declare (not safe))
                            (string-index__0 _str52085_ _char52086_)))
                        _g54371_))
                ((let () (declare (not safe)) (##fx= _g54370_ 3))
                 (apply (lambda (_str52090_ _char52091_ _start52092_)
                          (let ()
                            (declare (not safe))
                            (string-index__%
                             _str52090_
                             _char52091_
                             _start52092_)))
                        _g54371_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g54371_))))))
    (define string-rindex__%
      (lambda (_str52043_ _char52044_ _start52045_)
        (let* ((_len52047_ (string-length _str52043_))
               (_start52052_
                (let ((_$e52049_ _start52045_))
                  (if _$e52049_
                      _$e52049_
                      (let () (declare (not safe)) (##fx- _len52047_ '1))))))
          (let _lp52055_ ((_k52057_ _start52052_))
            (if (let () (declare (not safe)) (##fx>= _k52057_ '0))
                (if (let ((__tmp54372
                           (let ()
                             (declare (not safe))
                             (##string-ref _str52043_ _k52057_))))
                      (declare (not safe))
                      (eq? _char52044_ __tmp54372))
                    _k52057_
                    (let ((__tmp54373
                           (let () (declare (not safe)) (##fx- _k52057_ '1))))
                      (declare (not safe))
                      (_lp52055_ __tmp54373)))
                '#f)))))
    (define string-rindex__0
      (lambda (_str52062_ _char52063_)
        (let ((_start52065_ '#f))
          (declare (not safe))
          (string-rindex__% _str52062_ _char52063_ _start52065_))))
    (define string-rindex
      (lambda _g54375_
        (let ((_g54374_ (let () (declare (not safe)) (##length _g54375_))))
          (cond ((let () (declare (not safe)) (##fx= _g54374_ 2))
                 (apply (lambda (_str52062_ _char52063_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__0 _str52062_ _char52063_)))
                        _g54375_))
                ((let () (declare (not safe)) (##fx= _g54374_ 3))
                 (apply (lambda (_str52067_ _char52068_ _start52069_)
                          (let ()
                            (declare (not safe))
                            (string-rindex__%
                             _str52067_
                             _char52068_
                             _start52069_)))
                        _g54375_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g54375_))))))
    (define string-split
      (lambda (_str52027_ _char52028_)
        (let ((_len52030_ (string-length _str52027_)))
          (let _lp52032_ ((_start52034_ '0) (_r52035_ '()))
            (let ((_$e52037_
                   (let ()
                     (declare (not safe))
                     (string-index__% _str52027_ _char52028_ _start52034_))))
              (if _$e52037_
                  ((lambda (_end52040_)
                     (let ((__tmp54378
                            (let ()
                              (declare (not safe))
                              (##fx+ _end52040_ '1)))
                           (__tmp54376
                            (let ((__tmp54377
                                   (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str52027_
                                      _start52034_
                                      _end52040_))))
                              (declare (not safe))
                              (cons __tmp54377 _r52035_))))
                       (declare (not safe))
                       (_lp52032_ __tmp54378 __tmp54376)))
                   _$e52037_)
                  (if (let ()
                        (declare (not safe))
                        (##fx< _start52034_ _len52030_))
                      (let ((__tmp54379
                             (list (let ()
                                     (declare (not safe))
                                     (##substring
                                      _str52027_
                                      _start52034_
                                      _len52030_)))))
                        (declare (not safe))
                        (foldl1 cons __tmp54379 _r52035_))
                      (reverse _r52035_))))))))
    (define string-join
      (lambda (_strs51932_ _join51933_)
        (letrec ((_join-length51935_
                  (lambda (_strs51986_ _jlen51987_)
                    (let _lp51989_ ((_rest51991_ _strs51986_) (_len51992_ '0))
                      (let* ((_rest5199352001_ _rest51991_)
                             (_else5199552009_ (lambda () '0))
                             (_K5199752015_
                              (lambda (_rest52012_ _hd52013_)
                                (if (let ()
                                      (declare (not safe))
                                      (string? _hd52013_))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest52012_))
                                        (let ((__tmp54380
                                               (let ((__tmp54381
                                                      (let ()
                                                        (declare (not safe))
                                                        (##string-length
                                                         _hd52013_))))
                                                 (declare (not safe))
                                                 (##fx+ __tmp54381
                                                        _jlen51987_
                                                        _len51992_))))
                                          (declare (not safe))
                                          (_lp51989_ _rest52012_ __tmp54380))
                                        (let ((__tmp54382
                                               (let ()
                                                 (declare (not safe))
                                                 (##string-length _hd52013_))))
                                          (declare (not safe))
                                          (##fx+ __tmp54382 _len51992_)))
                                    (error '"expected string" _hd52013_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest5199352001_))
                            (let ((_hd5199852018_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest5199352001_)))
                                  (_tl5199952020_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest5199352001_))))
                              (let* ((_hd52023_ _hd5199852018_)
                                     (_rest52025_ _tl5199952020_))
                                (declare (not safe))
                                (_K5199752015_ _rest52025_ _hd52023_)))
                            (let ()
                              (declare (not safe))
                              (_else5199552009_))))))))
          (let* ((_join51937_
                  (if (let () (declare (not safe)) (char? _join51933_))
                      (string _join51933_)
                      (if (let () (declare (not safe)) (string? _join51933_))
                          _join51933_
                          (error '"expected string or char" _join51933_))))
                 (_jlen51939_
                  (let () (declare (not safe)) (##string-length _join51937_)))
                 (_olen51941_
                  (let ()
                    (declare (not safe))
                    (_join-length51935_ _strs51932_ _jlen51939_)))
                 (_ostr51943_ (make-string _olen51941_)))
            (let _lp51946_ ((_rest51948_ _strs51932_) (_k51949_ '0))
              (let* ((_rest5195051958_ _rest51948_)
                     (_else5195251966_ (lambda () '""))
                     (_K5195451974_
                      (lambda (_rest51969_ _hd51970_)
                        (let ((_hdlen51972_
                               (let ()
                                 (declare (not safe))
                                 (##string-length _hd51970_))))
                          (if (let () (declare (not safe)) (pair? _rest51969_))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd51970_
                                   '0
                                   _hdlen51972_
                                   _ostr51943_
                                   _k51949_))
                                (let ((__tmp54383
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k51949_ _hdlen51972_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _join51937_
                                   '0
                                   _jlen51939_
                                   _ostr51943_
                                   __tmp54383))
                                (let ((__tmp54384
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _k51949_
                                                _hdlen51972_
                                                _jlen51939_))))
                                  (declare (not safe))
                                  (_lp51946_ _rest51969_ __tmp54384)))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _hd51970_
                                   '0
                                   _hdlen51972_
                                   _ostr51943_
                                   _k51949_))
                                _ostr51943_))))))
                (if (let () (declare (not safe)) (##pair? _rest5195051958_))
                    (let ((_hd5195551977_
                           (let ()
                             (declare (not safe))
                             (##car _rest5195051958_)))
                          (_tl5195651979_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest5195051958_))))
                      (let* ((_hd51982_ _hd5195551977_)
                             (_rest51984_ _tl5195651979_))
                        (declare (not safe))
                        (_K5195451974_ _rest51984_ _hd51982_)))
                    (let () (declare (not safe)) (_else5195251966_)))))))))
    (define read-u8vector
      (lambda (_bytes51929_ _port51930_)
        (read-subu8vector
         _bytes51929_
         '0
         (u8vector-length _bytes51929_)
         _port51930_)))
    (define write-u8vector
      (lambda (_bytes51926_ _port51927_)
        (write-subu8vector
         _bytes51926_
         '0
         (u8vector-length _bytes51926_)
         _port51927_)))
    (define read-string
      (lambda (_str51923_ _port51924_)
        (read-substring _str51923_ '0 (string-length _str51923_) _port51924_)))
    (define write-string
      (lambda (_str51920_ _port51921_)
        (write-substring
         _str51920_
         '0
         (string-length _str51920_)
         _port51921_)))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_tag51889_
               _dbg-exprs51890_
               _dbg-thunks51891_
               _expr51892_
               _thunk51893_)
        (letrec ((_o51895_ (current-output-port))
                 (_e51896_ (current-error-port))
                 (_p51897_ (DBG-printer))
                 (_f51898_
                  (lambda () (force-output _o51895_) (force-output _e51896_)))
                 (_d51899_ (lambda (_x51906_) (display _x51906_ _e51896_)))
                 (_w51900_ (lambda (_x51908_) (_p51897_ _x51908_ _e51896_)))
                 (_n51901_ (lambda () (newline _e51896_)))
                 (_v51902_
                  (lambda (_l51911_)
                    (for-each
                     (lambda (_x51913_)
                       (let () (declare (not safe)) (_d51899_ '" "))
                       (let () (declare (not safe)) (_w51900_ _x51913_)))
                     _l51911_)
                    (let () (declare (not safe)) (_n51901_))))
                 (_x51903_
                  (lambda (_expr51915_ _thunk51916_)
                    (let () (declare (not safe)) (_f51898_))
                    (let () (declare (not safe)) (_d51899_ '"  "))
                    (let () (declare (not safe)) (_w51900_ _expr51915_))
                    (let () (declare (not safe)) (_d51899_ '" =>"))
                    (call-with-values
                     _thunk51916_
                     (lambda _x51918_
                       (let () (declare (not safe)) (_v51902_ _x51918_))
                       (let () (declare (not safe)) (_f51898_))
                       (apply values _x51918_))))))
          (if _tag51889_
              (begin
                (if (let () (declare (not safe)) (eq? _tag51889_ '#!void))
                    '#!void
                    (begin
                      (let () (declare (not safe)) (_f51898_))
                      (let () (declare (not safe)) (_d51899_ _tag51889_))
                      (let () (declare (not safe)) (_n51901_))))
                (for-each _x51903_ _dbg-exprs51890_ _dbg-thunks51891_)
                (if _thunk51893_
                    (let ()
                      (declare (not safe))
                      (_x51903_ _expr51892_ _thunk51893_))
                    '#!void))
              (if _thunk51893_ (_thunk51893_) '#!void)))))))
