(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx284260_)
      (let* ((_g284264284282_
              (lambda (_g284265284278_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g284265284278_))))
             (_g284263284337_
              (lambda (_g284265284286_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g284265284286_))
                    (let ((_e284270284289_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g284265284286_))))
                      (let ((_hd284269284293_
                             (let ()
                               (declare (not safe))
                               (##car _e284270284289_)))
                            (_tl284268284296_
                             (let ()
                               (declare (not safe))
                               (##cdr _e284270284289_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl284268284296_))
                            (let ((_e284273284299_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl284268284296_))))
                              (let ((_hd284272284303_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e284273284299_)))
                                    (_tl284271284306_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e284273284299_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl284271284306_))
                                    (let ((_e284276284309_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl284271284306_))))
                                      (let ((_hd284275284313_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e284276284309_)))
                                            (_tl284274284316_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e284276284309_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl284274284316_))
                                            ((lambda (_L284319_ _L284321_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L284321_))
                                                   (let ((__tmp291977
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp291972
                                                          (let ((__tmp291974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp291976
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp291975
                                (let ()
                                  (declare (not safe))
                                  (cons _L284321_ '()))))
                           (declare (not safe))
                           (cons __tmp291976 __tmp291975)))
                        (__tmp291973
                         (let () (declare (not safe)) (cons _L284319_ '()))))
                    (declare (not safe))
                    (cons __tmp291974 __tmp291973))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp291977
                                                           __tmp291972))
                                                   (_g284264284282_
                                                    _g284265284286_)))
                                             _hd284275284313_
                                             _hd284272284303_)
                                            (_g284264284282_
                                             _g284265284286_))))
                                    (_g284264284282_ _g284265284286_))))
                            (_g284264284282_ _g284265284286_))))
                    (_g284264284282_ _g284265284286_)))))
        (_g284263284337_ _$stx284260_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx284341_)
      (let* ((_g284345284374_
              (lambda (_g284346284370_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g284346284370_))))
             (_g284344284474_
              (lambda (_g284346284378_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g284346284378_))
                    (let ((_e284351284381_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g284346284378_))))
                      (let ((_hd284350284385_
                             (let ()
                               (declare (not safe))
                               (##car _e284351284381_)))
                            (_tl284349284388_
                             (let ()
                               (declare (not safe))
                               (##cdr _e284351284381_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl284349284388_))
                            (let ((_g291978_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl284349284388_
                                      '0))))
                              (begin
                                (let ((_g291979_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g291978_)
                                             (##vector-length _g291978_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g291979_ 2)))
                                      (error "Context expects 2 values"
                                             _g291979_)))
                                (let ((_target284352284391_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g291978_ 0)))
                                      (_tl284354284394_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g291978_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl284354284394_))
                                      (letrec ((_loop284355284397_
                                                (lambda (_hd284353284401_
                                                         _type284359284404_
                                                         _symbol284360284406_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd284353284401_))
                                                      (let ((_e284356284409_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd284353284401_))))
                (let ((_lp-hd284357284413_
                       (let () (declare (not safe)) (##car _e284356284409_)))
                      (_lp-tl284358284416_
                       (let () (declare (not safe)) (##cdr _e284356284409_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd284357284413_))
                      (let ((_e284365284419_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd284357284413_))))
                        (let ((_hd284364284423_
                               (let ()
                                 (declare (not safe))
                                 (##car _e284365284419_)))
                              (_tl284363284426_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e284365284419_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl284363284426_))
                              (let ((_e284368284429_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl284363284426_))))
                                (let ((_hd284367284433_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e284368284429_)))
                                      (_tl284366284436_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e284368284429_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl284366284436_))
                                      (_loop284355284397_
                                       _lp-tl284358284416_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd284367284433_
                                               _type284359284404_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd284364284423_
                                               _symbol284360284406_)))
                                      (_g284345284374_ _g284346284378_))))
                              (_g284345284374_ _g284346284378_))))
                      (_g284345284374_ _g284346284378_))))
              (let ((_type284361284439_ (reverse _type284359284404_))
                    (_symbol284362284442_ (reverse _symbol284360284406_)))
                ((lambda (_L284445_ _L284447_)
                   (let ((__tmp291986
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp291980
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L284445_
                               _L284447_))
                            (let ((__tmp291981
                                   (lambda (_g284462284466_
                                            _g284463284469_
                                            _g284464284471_)
                                     (let ((__tmp291982
                                            (let ((__tmp291985
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp291983
                                                   (let ((__tmp291984
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g284462284466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g284463284469_
                                                           __tmp291984))))
                                              (declare (not safe))
                                              (cons __tmp291985 __tmp291983))))
                                       (declare (not safe))
                                       (cons __tmp291982 _g284464284471_)))))
                              (declare (not safe))
                              (foldr2 __tmp291981 '() _L284445_ _L284447_)))))
                     (declare (not safe))
                     (cons __tmp291986 __tmp291980)))
                 _type284361284439_
                 _symbol284362284442_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop284355284397_
                                         _target284352284391_
                                         '()
                                         '()))
                                      (_g284345284374_ _g284346284378_)))))
                            (_g284345284374_ _g284346284378_))))
                    (_g284345284374_ _g284346284378_)))))
        (_g284344284474_ _$stx284341_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx284479_)
      (let* ((___stx291537291538_ _$stx284479_)
             (_g284484284526_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx291537291538_)))))
        (let ((___kont291540291541_
               (lambda (_L284654_ _L284656_ _L284657_ _L284658_)
                 (let ((__tmp292000
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp291987
                        (let ((__tmp291997
                               (let ((__tmp291999
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp291998
                                      (let ()
                                        (declare (not safe))
                                        (cons _L284658_ '()))))
                                 (declare (not safe))
                                 (cons __tmp291999 __tmp291998)))
                              (__tmp291988
                               (let ((__tmp291994
                                      (let ((__tmp291996
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp291995
                                             (let ()
                                               (declare (not safe))
                                               (cons _L284657_ '()))))
                                        (declare (not safe))
                                        (cons __tmp291996 __tmp291995)))
                                     (__tmp291989
                                      (let ((__tmp291991
                                             (let ((__tmp291993
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp291992
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L284656_ '()))))
                                               (declare (not safe))
                                               (cons __tmp291993 __tmp291992)))
                                            (__tmp291990
                                             (let ()
                                               (declare (not safe))
                                               (cons _L284654_ '()))))
                                        (declare (not safe))
                                        (cons __tmp291991 __tmp291990))))
                                 (declare (not safe))
                                 (cons __tmp291994 __tmp291989))))
                          (declare (not safe))
                          (cons __tmp291997 __tmp291988))))
                   (declare (not safe))
                   (cons __tmp292000 __tmp291987))))
              (___kont291542291543_
               (lambda (_L284573_ _L284575_ _L284576_ _L284577_)
                 (let ((__tmp292001
                        (let ((__tmp292002
                               (let ((__tmp292003
                                      (let ((__tmp292004
                                             (let ((__tmp292005
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp292005 '()))))
                                        (declare (not safe))
                                        (cons _L284573_ __tmp292004))))
                                 (declare (not safe))
                                 (cons _L284575_ __tmp292003))))
                          (declare (not safe))
                          (cons _L284576_ __tmp292002))))
                   (declare (not safe))
                   (cons _L284577_ __tmp292001)))))
          (let ((___match291576291577_
                 (lambda (_e284492284604_
                          _hd284491284608_
                          _tl284490284611_
                          _e284495284614_
                          _hd284494284618_
                          _tl284493284621_
                          _e284498284624_
                          _hd284497284628_
                          _tl284496284631_
                          _e284501284634_
                          _hd284500284638_
                          _tl284499284641_
                          _e284504284644_
                          _hd284503284648_
                          _tl284502284651_)
                   (let ((_L284654_ _hd284503284648_)
                         (_L284656_ _hd284500284638_)
                         (_L284657_ _hd284497284628_)
                         (_L284658_ _hd284494284618_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L284658_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L284657_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L284656_)))
                         (___kont291540291541_
                          _L284654_
                          _L284656_
                          _L284657_
                          _L284658_)
                         (let () (declare (not safe)) (_g284484284526_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx291537291538_))
                (let ((_e284492284604_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx291537291538_))))
                  (let ((_tl284490284611_
                         (let () (declare (not safe)) (##cdr _e284492284604_)))
                        (_hd284491284608_
                         (let ()
                           (declare (not safe))
                           (##car _e284492284604_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl284490284611_))
                        (let ((_e284495284614_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl284490284611_))))
                          (let ((_tl284493284621_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e284495284614_)))
                                (_hd284494284618_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e284495284614_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl284493284621_))
                                (let ((_e284498284624_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl284493284621_))))
                                  (let ((_tl284496284631_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e284498284624_)))
                                        (_hd284497284628_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e284498284624_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl284496284631_))
                                        (let ((_e284501284634_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl284496284631_))))
                                          (let ((_tl284499284641_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e284501284634_)))
                                                (_hd284500284638_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e284501284634_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl284499284641_))
                                                (let ((_e284504284644_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl284499284641_))))
                                                  (let ((_tl284502284651_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e284504284644_)))
                                                        (_hd284503284648_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e284504284644_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl284502284651_))
                                                        (___match291576291577_
                                                         _e284492284604_
                                                         _hd284491284608_
                                                         _tl284490284611_
                                                         _e284495284614_
                                                         _hd284494284618_
                                                         _tl284493284621_
                                                         _e284498284624_
                                                         _hd284497284628_
                                                         _tl284496284631_
                                                         _e284501284634_
                                                         _hd284500284638_
                                                         _tl284499284641_
                                                         _e284504284644_
                                                         _hd284503284648_
                                                         _tl284502284651_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g284484284526_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl284499284641_))
                                                    (___kont291542291543_
                                                     _hd284500284638_
                                                     _hd284497284628_
                                                     _hd284494284618_
                                                     _hd284491284608_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g284484284526_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g284484284526_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g284484284526_)))))
                        (let () (declare (not safe)) (_g284484284526_)))))
                (let () (declare (not safe)) (_g284484284526_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx284683_)
      (let* ((_g284687284722_
              (lambda (_g284688284718_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g284688284718_))))
             (_g284686284841_
              (lambda (_g284688284726_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g284688284726_))
                    (let ((_e284694284729_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g284688284726_))))
                      (let ((_hd284693284733_
                             (let ()
                               (declare (not safe))
                               (##car _e284694284729_)))
                            (_tl284692284736_
                             (let ()
                               (declare (not safe))
                               (##cdr _e284694284729_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl284692284736_))
                            (let ((_g292006_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl284692284736_
                                      '0))))
                              (begin
                                (let ((_g292007_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g292006_)
                                             (##vector-length _g292006_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g292007_ 2)))
                                      (error "Context expects 2 values"
                                             _g292007_)))
                                (let ((_target284695284739_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g292006_ 0)))
                                      (_tl284697284742_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g292006_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl284697284742_))
                                      (letrec ((_loop284698284745_
                                                (lambda (_hd284696284749_
                                                         _symbol284702284752_
                                                         _method284703284754_
                                                         _type-t284704284756_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd284696284749_))
                                                      (let ((_e284699284759_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd284696284749_))))
                (let ((_lp-hd284700284763_
                       (let () (declare (not safe)) (##car _e284699284759_)))
                      (_lp-tl284701284766_
                       (let () (declare (not safe)) (##cdr _e284699284759_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd284700284763_))
                      (let ((_e284710284769_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd284700284763_))))
                        (let ((_hd284709284773_
                               (let ()
                                 (declare (not safe))
                                 (##car _e284710284769_)))
                              (_tl284708284776_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e284710284769_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl284708284776_))
                              (let ((_e284713284779_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl284708284776_))))
                                (let ((_hd284712284783_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e284713284779_)))
                                      (_tl284711284786_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e284713284779_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl284711284786_))
                                      (let ((_e284716284789_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl284711284786_))))
                                        (let ((_hd284715284793_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e284716284789_)))
                                              (_tl284714284796_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e284716284789_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl284714284796_))
                                              (_loop284698284745_
                                               _lp-tl284701284766_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd284715284793_
                                                       _symbol284702284752_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd284712284783_
                                                       _method284703284754_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd284709284773_
                                                       _type-t284704284756_)))
                                              (_g284687284722_
                                               _g284688284726_))))
                                      (_g284687284722_ _g284688284726_))))
                              (_g284687284722_ _g284688284726_))))
                      (_g284687284722_ _g284688284726_))))
              (let ((_symbol284705284799_ (reverse _symbol284702284752_))
                    (_method284706284802_ (reverse _method284703284754_))
                    (_type-t284707284804_ (reverse _type-t284704284756_)))
                ((lambda (_L284807_ _L284809_ _L284810_)
                   (let ((__tmp292015
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp292008
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L284807_
                               _L284809_
                               _L284810_))
                            (let ((__tmp292009
                                   (lambda (_g284826284831_
                                            _g284827284834_
                                            _g284828284836_
                                            _g284829284838_)
                                     (let ((__tmp292010
                                            (let ((__tmp292014
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp292011
                                                   (let ((__tmp292012
                                                          (let ((__tmp292013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g284826284831_ '()))))
                    (declare (not safe))
                    (cons _g284827284834_ __tmp292013))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g284828284836_
                                                           __tmp292012))))
                                              (declare (not safe))
                                              (cons __tmp292014 __tmp292011))))
                                       (declare (not safe))
                                       (cons __tmp292010 _g284829284838_)))))
                              (declare (not safe))
                              (foldr* __tmp292009
                                      '()
                                      _L284807_
                                      _L284809_
                                      _L284810_)))))
                     (declare (not safe))
                     (cons __tmp292015 __tmp292008)))
                 _symbol284705284799_
                 _method284706284802_
                 _type-t284707284804_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop284698284745_
                                         _target284695284739_
                                         '()
                                         '()
                                         '()))
                                      (_g284687284722_ _g284688284726_)))))
                            (_g284687284722_ _g284688284726_))))
                    (_g284687284722_ _g284688284726_)))))
        (_g284686284841_ _$stx284683_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx284846_)
      (let* ((_g284850284883_
              (lambda (_g284851284879_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g284851284879_))))
             (_g284849284997_
              (lambda (_g284851284887_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g284851284887_))
                    (let ((_e284857284890_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g284851284887_))))
                      (let ((_hd284856284894_
                             (let ()
                               (declare (not safe))
                               (##car _e284857284890_)))
                            (_tl284855284897_
                             (let ()
                               (declare (not safe))
                               (##cdr _e284857284890_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl284855284897_))
                            (let ((_e284860284900_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl284855284897_))))
                              (let ((_hd284859284904_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e284860284900_)))
                                    (_tl284858284907_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e284860284900_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl284858284907_))
                                    (let ((_g292016_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl284858284907_
                                              '0))))
                                      (begin
                                        (let ((_g292017_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g292016_)
                                                     (##vector-length
                                                      _g292016_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g292017_ 2)))
                                              (error "Context expects 2 values"
                                                     _g292017_)))
                                        (let ((_target284861284910_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g292016_ 0)))
                                              (_tl284863284913_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g292016_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl284863284913_))
                                              (letrec ((_loop284864284916_
                                                        (lambda (_hd284862284920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol284868284923_
                         _method284869284925_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd284862284920_))
                      (let ((_e284865284928_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd284862284920_))))
                        (let ((_lp-hd284866284932_
                               (let ()
                                 (declare (not safe))
                                 (##car _e284865284928_)))
                              (_lp-tl284867284935_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e284865284928_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd284866284932_))
                              (let ((_e284874284938_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd284866284932_))))
                                (let ((_hd284873284942_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e284874284938_)))
                                      (_tl284872284945_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e284874284938_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl284872284945_))
                                      (let ((_e284877284948_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl284872284945_))))
                                        (let ((_hd284876284952_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e284877284948_)))
                                              (_tl284875284955_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e284877284948_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl284875284955_))
                                              (_loop284864284916_
                                               _lp-tl284867284935_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd284876284952_
                                                       _symbol284868284923_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd284873284942_
                                                       _method284869284925_)))
                                              (_g284850284883_
                                               _g284851284887_))))
                                      (_g284850284883_ _g284851284887_))))
                              (_g284850284883_ _g284851284887_))))
                      (let ((_symbol284870284958_
                             (reverse _symbol284868284923_))
                            (_method284871284961_
                             (reverse _method284869284925_)))
                        ((lambda (_L284964_ _L284966_ _L284967_)
                           (let ((__tmp292025
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp292018
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L284964_
                                       _L284966_))
                                    (let ((__tmp292019
                                           (lambda (_g284985284989_
                                                    _g284986284992_
                                                    _g284987284994_)
                                             (let ((__tmp292020
                                                    (let ((__tmp292024
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp292021
                                                           (let ((__tmp292022
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp292023
                                 (let ()
                                   (declare (not safe))
                                   (cons _g284985284989_ '()))))
                            (declare (not safe))
                            (cons _g284986284992_ __tmp292023))))
                     (declare (not safe))
                     (cons _L284967_ __tmp292022))))
              (declare (not safe))
              (cons __tmp292024 __tmp292021))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp292020
                                                     _g284987284994_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp292019
                                              '()
                                              _L284964_
                                              _L284966_)))))
                             (declare (not safe))
                             (cons __tmp292025 __tmp292018)))
                         _symbol284870284958_
                         _method284871284961_
                         _hd284859284904_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop284864284916_
                                                 _target284861284910_
                                                 '()
                                                 '()))
                                              (_g284850284883_
                                               _g284851284887_)))))
                                    (_g284850284883_ _g284851284887_))))
                            (_g284850284883_ _g284851284887_))))
                    (_g284850284883_ _g284851284887_)))))
        (_g284849284997_ _$stx284846_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx285002_)
      (let* ((_g285006285020_
              (lambda (_g285007285016_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g285007285016_))))
             (_g285005285061_
              (lambda (_g285007285024_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g285007285024_))
                    (let ((_e285011285027_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g285007285024_))))
                      (let ((_hd285010285031_
                             (let ()
                               (declare (not safe))
                               (##car _e285011285027_)))
                            (_tl285009285034_
                             (let ()
                               (declare (not safe))
                               (##cdr _e285011285027_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl285009285034_))
                            (let ((_e285014285037_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl285009285034_))))
                              (let ((_hd285013285041_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e285014285037_)))
                                    (_tl285012285044_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e285014285037_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl285012285044_))
                                    ((lambda (_L285047_)
                                       (let ((__tmp292030
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp292026
                                              (let ((__tmp292027
                                                     (let ((__tmp292029
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp292028
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L285047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp292029 __tmp292028))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp292027 '()))))
                                         (declare (not safe))
                                         (cons __tmp292030 __tmp292026)))
                                     _hd285013285041_)
                                    (_g285006285020_ _g285007285024_))))
                            (_g285006285020_ _g285007285024_))))
                    (_g285006285020_ _g285007285024_)))))
        (_g285005285061_ _$stx285002_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx285065_)
      (let* ((_g285069285115_
              (lambda (_g285070285111_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g285070285111_))))
             (_g285068285268_
              (lambda (_g285070285119_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g285070285119_))
                    (let ((_e285082285122_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g285070285119_))))
                      (let ((_hd285081285126_
                             (let ()
                               (declare (not safe))
                               (##car _e285082285122_)))
                            (_tl285080285129_
                             (let ()
                               (declare (not safe))
                               (##cdr _e285082285122_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl285080285129_))
                            (let ((_e285085285132_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl285080285129_))))
                              (let ((_hd285084285136_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e285085285132_)))
                                    (_tl285083285139_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e285085285132_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl285083285139_))
                                    (let ((_e285088285142_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl285083285139_))))
                                      (let ((_hd285087285146_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e285088285142_)))
                                            (_tl285086285149_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e285088285142_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl285086285149_))
                                            (let ((_e285091285152_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl285086285149_))))
                                              (let ((_hd285090285156_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e285091285152_)))
                                                    (_tl285089285159_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e285091285152_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl285089285159_))
                                                    (let ((_e285094285162_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl285089285159_))))
                                                      (let ((_hd285093285166_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e285094285162_)))
                    (_tl285092285169_
                     (let () (declare (not safe)) (##cdr _e285094285162_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl285092285169_))
                    (let ((_e285097285172_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl285092285169_))))
                      (let ((_hd285096285176_
                             (let ()
                               (declare (not safe))
                               (##car _e285097285172_)))
                            (_tl285095285179_
                             (let ()
                               (declare (not safe))
                               (##cdr _e285097285172_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl285095285179_))
                            (let ((_e285100285182_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl285095285179_))))
                              (let ((_hd285099285186_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e285100285182_)))
                                    (_tl285098285189_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e285100285182_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl285098285189_))
                                    (let ((_e285103285192_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl285098285189_))))
                                      (let ((_hd285102285196_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e285103285192_)))
                                            (_tl285101285199_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e285103285192_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl285101285199_))
                                            (let ((_e285106285202_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl285101285199_))))
                                              (let ((_hd285105285206_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e285106285202_)))
                                                    (_tl285104285209_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e285106285202_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl285104285209_))
                                                    (let ((_e285109285212_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl285104285209_))))
                                                      (let ((_hd285108285216_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e285109285212_)))
                    (_tl285107285219_
                     (let () (declare (not safe)) (##cdr _e285109285212_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl285107285219_))
                    ((lambda (_L285222_
                              _L285224_
                              _L285225_
                              _L285226_
                              _L285227_
                              _L285228_
                              _L285229_
                              _L285230_
                              _L285231_)
                       (let ((__tmp292068
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'make-!class)))
                             (__tmp292031
                              (let ((__tmp292065
                                     (let ((__tmp292067
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'quote)))
                                           (__tmp292066
                                            (let ()
                                              (declare (not safe))
                                              (cons _L285231_ '()))))
                                       (declare (not safe))
                                       (cons __tmp292067 __tmp292066)))
                                    (__tmp292032
                                     (let ((__tmp292062
                                            (let ((__tmp292064
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote)))
                                                  (__tmp292063
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L285230_ '()))))
                                              (declare (not safe))
                                              (cons __tmp292064 __tmp292063)))
                                           (__tmp292033
                                            (let ((__tmp292058
                                                   (let ((__tmp292061
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'quote)))
                                                         (__tmp292059
                                                          (let ((__tmp292060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'precedence-lists))))
                    (declare (not safe))
                    (cons __tmp292060 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp292061
                                                           __tmp292059)))
                                                  (__tmp292034
                                                   (let ((__tmp292055
                                                          (let ((__tmp292057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote)))
                        (__tmp292056
                         (let () (declare (not safe)) (cons _L285228_ '()))))
                    (declare (not safe))
                    (cons __tmp292057 __tmp292056)))
                 (__tmp292035
                  (let ((__tmp292052
                         (let ((__tmp292054
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp292053
                                (let ()
                                  (declare (not safe))
                                  (cons _L285227_ '()))))
                           (declare (not safe))
                           (cons __tmp292054 __tmp292053)))
                        (__tmp292036
                         (let ((__tmp292049
                                (let ((__tmp292051
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote)))
                                      (__tmp292050
                                       (let ()
                                         (declare (not safe))
                                         (cons _L285226_ '()))))
                                  (declare (not safe))
                                  (cons __tmp292051 __tmp292050)))
                               (__tmp292037
                                (let ((__tmp292046
                                       (let ((__tmp292048
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote)))
                                             (__tmp292047
                                              (let ()
                                                (declare (not safe))
                                                (cons _L285225_ '()))))
                                         (declare (not safe))
                                         (cons __tmp292048 __tmp292047)))
                                      (__tmp292038
                                       (let ((__tmp292043
                                              (let ((__tmp292045
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote)))
                                                    (__tmp292044
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L285224_ '()))))
                                                (declare (not safe))
                                                (cons __tmp292045
                                                      __tmp292044)))
                                             (__tmp292039
                                              (let ((__tmp292040
                                                     (let ((__tmp292042
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp292041
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L285222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp292042 __tmp292041))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp292040 '()))))
                                         (declare (not safe))
                                         (cons __tmp292043 __tmp292039))))
                                  (declare (not safe))
                                  (cons __tmp292046 __tmp292038))))
                           (declare (not safe))
                           (cons __tmp292049 __tmp292037))))
                    (declare (not safe))
                    (cons __tmp292052 __tmp292036))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp292055
                                                           __tmp292035))))
                                              (declare (not safe))
                                              (cons __tmp292058 __tmp292034))))
                                       (declare (not safe))
                                       (cons __tmp292062 __tmp292033))))
                                (declare (not safe))
                                (cons __tmp292065 __tmp292032))))
                         (declare (not safe))
                         (cons __tmp292068 __tmp292031)))
                     _hd285108285216_
                     _hd285105285206_
                     _hd285102285196_
                     _hd285099285186_
                     _hd285096285176_
                     _hd285093285166_
                     _hd285090285156_
                     _hd285087285146_
                     _hd285084285136_)
                    (_g285069285115_ _g285070285119_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g285069285115_
                                                     _g285070285119_))))
                                            (_g285069285115_
                                             _g285070285119_))))
                                    (_g285069285115_ _g285070285119_))))
                            (_g285069285115_ _g285070285119_))))
                    (_g285069285115_ _g285070285119_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g285069285115_
                                                     _g285070285119_))))
                                            (_g285069285115_
                                             _g285070285119_))))
                                    (_g285069285115_ _g285070285119_))))
                            (_g285069285115_ _g285070285119_))))
                    (_g285069285115_ _g285070285119_)))))
        (_g285068285268_ _$stx285065_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx285272_)
      (let* ((_g285276285290_
              (lambda (_g285277285286_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g285277285286_))))
             (_g285275285331_
              (lambda (_g285277285294_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g285277285294_))
                    (let ((_e285281285297_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g285277285294_))))
                      (let ((_hd285280285301_
                             (let ()
                               (declare (not safe))
                               (##car _e285281285297_)))
                            (_tl285279285304_
                             (let ()
                               (declare (not safe))
                               (##cdr _e285281285297_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl285279285304_))
                            (let ((_e285284285307_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl285279285304_))))
                              (let ((_hd285283285311_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e285284285307_)))
                                    (_tl285282285314_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e285284285307_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl285282285314_))
                                    ((lambda (_L285317_)
                                       (let ((__tmp292073
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp292069
                                              (let ((__tmp292070
                                                     (let ((__tmp292072
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp292071
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L285317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp292072 __tmp292071))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp292070 '()))))
                                         (declare (not safe))
                                         (cons __tmp292073 __tmp292069)))
                                     _hd285283285311_)
                                    (_g285276285290_ _g285277285294_))))
                            (_g285276285290_ _g285277285294_))))
                    (_g285276285290_ _g285277285294_)))))
        (_g285275285331_ _$stx285272_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx285335_)
      (let* ((_g285339285353_
              (lambda (_g285340285349_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g285340285349_))))
             (_g285338285394_
              (lambda (_g285340285357_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g285340285357_))
                    (let ((_e285344285360_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g285340285357_))))
                      (let ((_hd285343285364_
                             (let ()
                               (declare (not safe))
                               (##car _e285344285360_)))
                            (_tl285342285367_
                             (let ()
                               (declare (not safe))
                               (##cdr _e285344285360_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl285342285367_))
                            (let ((_e285347285370_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl285342285367_))))
                              (let ((_hd285346285374_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e285347285370_)))
                                    (_tl285345285377_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e285347285370_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl285345285377_))
                                    ((lambda (_L285380_)
                                       (let ((__tmp292078
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp292074
                                              (let ((__tmp292075
                                                     (let ((__tmp292077
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp292076
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L285380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp292077 __tmp292076))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp292075 '()))))
                                         (declare (not safe))
                                         (cons __tmp292078 __tmp292074)))
                                     _hd285346285374_)
                                    (_g285339285353_ _g285340285357_))))
                            (_g285339285353_ _g285340285357_))))
                    (_g285339285353_ _g285340285357_)))))
        (_g285338285394_ _$stx285335_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx285398_)
      (let* ((_g285402285424_
              (lambda (_g285403285420_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g285403285420_))))
             (_g285401285493_
              (lambda (_g285403285428_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g285403285428_))
                    (let ((_e285409285431_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g285403285428_))))
                      (let ((_hd285408285435_
                             (let ()
                               (declare (not safe))
                               (##car _e285409285431_)))
                            (_tl285407285438_
                             (let ()
                               (declare (not safe))
                               (##cdr _e285409285431_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl285407285438_))
                            (let ((_e285412285441_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl285407285438_))))
                              (let ((_hd285411285445_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e285412285441_)))
                                    (_tl285410285448_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e285412285441_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl285410285448_))
                                    (let ((_e285415285451_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl285410285448_))))
                                      (let ((_hd285414285455_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e285415285451_)))
                                            (_tl285413285458_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e285415285451_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl285413285458_))
                                            (let ((_e285418285461_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl285413285458_))))
                                              (let ((_hd285417285465_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e285418285461_)))
                                                    (_tl285416285468_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e285418285461_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl285416285468_))
                                                    ((lambda (_L285471_
                                                              _L285473_
                                                              _L285474_)
                                                       (let ((__tmp292088
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp292079
                      (let ((__tmp292085
                             (let ((__tmp292087
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp292086
                                    (let ()
                                      (declare (not safe))
                                      (cons _L285474_ '()))))
                               (declare (not safe))
                               (cons __tmp292087 __tmp292086)))
                            (__tmp292080
                             (let ((__tmp292082
                                    (let ((__tmp292084
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp292083
                                           (let ()
                                             (declare (not safe))
                                             (cons _L285473_ '()))))
                                      (declare (not safe))
                                      (cons __tmp292084 __tmp292083)))
                                   (__tmp292081
                                    (let ()
                                      (declare (not safe))
                                      (cons _L285471_ '()))))
                               (declare (not safe))
                               (cons __tmp292082 __tmp292081))))
                        (declare (not safe))
                        (cons __tmp292085 __tmp292080))))
                 (declare (not safe))
                 (cons __tmp292088 __tmp292079)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd285417285465_
                                                     _hd285414285455_
                                                     _hd285411285445_)
                                                    (_g285402285424_
                                                     _g285403285428_))))
                                            (_g285402285424_
                                             _g285403285428_))))
                                    (_g285402285424_ _g285403285428_))))
                            (_g285402285424_ _g285403285428_))))
                    (_g285402285424_ _g285403285428_)))))
        (_g285401285493_ _$stx285398_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx285497_)
      (let* ((_g285501285523_
              (lambda (_g285502285519_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g285502285519_))))
             (_g285500285592_
              (lambda (_g285502285527_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g285502285527_))
                    (let ((_e285508285530_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g285502285527_))))
                      (let ((_hd285507285534_
                             (let ()
                               (declare (not safe))
                               (##car _e285508285530_)))
                            (_tl285506285537_
                             (let ()
                               (declare (not safe))
                               (##cdr _e285508285530_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl285506285537_))
                            (let ((_e285511285540_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl285506285537_))))
                              (let ((_hd285510285544_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e285511285540_)))
                                    (_tl285509285547_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e285511285540_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl285509285547_))
                                    (let ((_e285514285550_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl285509285547_))))
                                      (let ((_hd285513285554_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e285514285550_)))
                                            (_tl285512285557_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e285514285550_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl285512285557_))
                                            (let ((_e285517285560_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl285512285557_))))
                                              (let ((_hd285516285564_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e285517285560_)))
                                                    (_tl285515285567_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e285517285560_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl285515285567_))
                                                    ((lambda (_L285570_
                                                              _L285572_
                                                              _L285573_)
                                                       (let ((__tmp292098
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp292089
                      (let ((__tmp292095
                             (let ((__tmp292097
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp292096
                                    (let ()
                                      (declare (not safe))
                                      (cons _L285573_ '()))))
                               (declare (not safe))
                               (cons __tmp292097 __tmp292096)))
                            (__tmp292090
                             (let ((__tmp292092
                                    (let ((__tmp292094
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp292093
                                           (let ()
                                             (declare (not safe))
                                             (cons _L285572_ '()))))
                                      (declare (not safe))
                                      (cons __tmp292094 __tmp292093)))
                                   (__tmp292091
                                    (let ()
                                      (declare (not safe))
                                      (cons _L285570_ '()))))
                               (declare (not safe))
                               (cons __tmp292092 __tmp292091))))
                        (declare (not safe))
                        (cons __tmp292095 __tmp292090))))
                 (declare (not safe))
                 (cons __tmp292098 __tmp292089)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd285516285564_
                                                     _hd285513285554_
                                                     _hd285510285544_)
                                                    (_g285501285523_
                                                     _g285502285527_))))
                                            (_g285501285523_
                                             _g285502285527_))))
                                    (_g285501285523_ _g285502285527_))))
                            (_g285501285523_ _g285502285527_))))
                    (_g285501285523_ _g285502285527_)))))
        (_g285500285592_ _$stx285497_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx285596_)
      (let* ((___stx291605291606_ _$stx285596_)
             (_g285604285672_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx291605291606_)))))
        (let ((___kont291608291609_
               (lambda (_L285950_ _L285952_)
                 (let ((__tmp292114
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp292099
                        (let ((__tmp292110
                               (let ((__tmp292113
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp292111
                                      (let ((__tmp292112
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp292112 '()))))
                                 (declare (not safe))
                                 (cons __tmp292113 __tmp292111)))
                              (__tmp292100
                               (let ((__tmp292107
                                      (let ((__tmp292109
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp292108
                                             (let ()
                                               (declare (not safe))
                                               (cons _L285952_ '()))))
                                        (declare (not safe))
                                        (cons __tmp292109 __tmp292108)))
                                     (__tmp292101
                                      (let ((__tmp292102
                                             (let ((__tmp292103
                                                    (let ((__tmp292104
                                                           (let ((__tmp292106
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp292105
                          (let () (declare (not safe)) (cons _L285950_ '()))))
                     (declare (not safe))
                     (cons __tmp292106 __tmp292105))))
              (declare (not safe))
              (cons __tmp292104 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L285950_ __tmp292103))))
                                        (declare (not safe))
                                        (cons '#f __tmp292102))))
                                 (declare (not safe))
                                 (cons __tmp292107 __tmp292101))))
                          (declare (not safe))
                          (cons __tmp292110 __tmp292100))))
                   (declare (not safe))
                   (cons __tmp292114 __tmp292099))))
              (___kont291610291611_
               (lambda (_L285881_ _L285883_)
                 (let ((__tmp292115
                        (let ((__tmp292116
                               (let ((__tmp292117
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L285881_ __tmp292117))))
                          (declare (not safe))
                          (cons 'primitive: __tmp292116))))
                   (declare (not safe))
                   (cons _L285883_ __tmp292115))))
              (___kont291612291613_
               (lambda (_L285820_ _L285822_)
                 (let ((__tmp292131
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp292118
                        (let ((__tmp292127
                               (let ((__tmp292130
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp292128
                                      (let ((__tmp292129
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp292129 '()))))
                                 (declare (not safe))
                                 (cons __tmp292130 __tmp292128)))
                              (__tmp292119
                               (let ((__tmp292124
                                      (let ((__tmp292126
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp292125
                                             (let ()
                                               (declare (not safe))
                                               (cons _L285822_ '()))))
                                        (declare (not safe))
                                        (cons __tmp292126 __tmp292125)))
                                     (__tmp292120
                                      (let ((__tmp292121
                                             (let ((__tmp292123
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp292122
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L285820_ '()))))
                                               (declare (not safe))
                                               (cons __tmp292123
                                                     __tmp292122))))
                                        (declare (not safe))
                                        (cons __tmp292121 '()))))
                                 (declare (not safe))
                                 (cons __tmp292124 __tmp292120))))
                          (declare (not safe))
                          (cons __tmp292127 __tmp292119))))
                   (declare (not safe))
                   (cons __tmp292131 __tmp292118))))
              (___kont291614291615_
               (lambda (_L285752_ _L285754_)
                 (let ((__tmp292145
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp292132
                        (let ((__tmp292141
                               (let ((__tmp292144
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp292142
                                      (let ((__tmp292143
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp292143 '()))))
                                 (declare (not safe))
                                 (cons __tmp292144 __tmp292142)))
                              (__tmp292133
                               (let ((__tmp292138
                                      (let ((__tmp292140
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp292139
                                             (let ()
                                               (declare (not safe))
                                               (cons _L285754_ '()))))
                                        (declare (not safe))
                                        (cons __tmp292140 __tmp292139)))
                                     (__tmp292134
                                      (let ((__tmp292135
                                             (let ((__tmp292137
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp292136
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L285752_ '()))))
                                               (declare (not safe))
                                               (cons __tmp292137
                                                     __tmp292136))))
                                        (declare (not safe))
                                        (cons __tmp292135 '()))))
                                 (declare (not safe))
                                 (cons __tmp292138 __tmp292134))))
                          (declare (not safe))
                          (cons __tmp292141 __tmp292133))))
                   (declare (not safe))
                   (cons __tmp292145 __tmp292132))))
              (___kont291616291617_
               (lambda (_L285699_ _L285701_)
                 (let ((__tmp292146
                        (let ((__tmp292147
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L285699_ __tmp292147))))
                   (declare (not safe))
                   (cons _L285701_ __tmp292146)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx291605291606_))
              (let ((_e285610285906_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx291605291606_))))
                (let ((_tl285608285913_
                       (let () (declare (not safe)) (##cdr _e285610285906_)))
                      (_hd285609285910_
                       (let () (declare (not safe)) (##car _e285610285906_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl285608285913_))
                      (let ((_e285613285916_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl285608285913_))))
                        (let ((_tl285611285923_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285613285916_)))
                              (_hd285612285920_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285613285916_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl285611285923_))
                              (let ((_e285616285926_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl285611285923_))))
                                (let ((_tl285614285933_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e285616285926_)))
                                      (_hd285615285930_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e285616285926_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd285615285930_))
                                      (let ((_e285617285936_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd285615285930_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e285617285936_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl285614285933_))
                                                (let ((_e285620285940_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl285614285933_))))
                                                  (let ((_tl285618285947_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e285620285940_)))
                                                        (_hd285619285944_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e285620285940_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl285618285947_))
                                                        (___kont291608291609_
                                                         _hd285619285944_
                                                         _hd285612285920_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd285612285920_))
                                                            (let ((_e285629285867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd285612285920_))))
                      (declare (not safe))
                      (_g285604285672_))
                    (let () (declare (not safe)) (_g285604285672_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd285612285920_))
                                                    (let ((_e285629285867_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd285612285920_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e285629285867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl285614285933_))
                      (___kont291610291611_ _hd285615285930_ _hd285609285910_)
                      (let () (declare (not safe)) (_g285604285672_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl285614285933_))
                      (___kont291614291615_ _hd285615285930_ _hd285612285920_)
                      (let () (declare (not safe)) (_g285604285672_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl285614285933_))
                                                        (___kont291614291615_
                                                         _hd285615285930_
                                                         _hd285612285920_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g285604285672_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd285612285920_))
                                                (let ((_e285629285867_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd285612285920_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e285629285867_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl285614285933_))
                                                          (___kont291610291611_
                                                           _hd285615285930_
                                                           _hd285609285910_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl285614285933_))
                      (let ((_e285647285810_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl285614285933_))))
                        (let ((_tl285645285817_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e285647285810_)))
                              (_hd285646285814_
                               (let ()
                                 (declare (not safe))
                                 (##car _e285647285810_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl285645285817_))
                              (___kont291612291613_
                               _hd285646285814_
                               _hd285615285930_)
                              (let ()
                                (declare (not safe))
                                (_g285604285672_)))))
                      (let () (declare (not safe)) (_g285604285672_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl285614285933_))
                  (___kont291614291615_ _hd285615285930_ _hd285612285920_)
                  (let () (declare (not safe)) (_g285604285672_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl285614285933_))
                                                    (___kont291614291615_
                                                     _hd285615285930_
                                                     _hd285612285920_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g285604285672_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd285612285920_))
                                          (let ((_e285629285867_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd285612285920_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e285629285867_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl285614285933_))
                                                    (___kont291610291611_
                                                     _hd285615285930_
                                                     _hd285609285910_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl285614285933_))
                                                        (let ((_e285647285810_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl285614285933_))))
                  (let ((_tl285645285817_
                         (let () (declare (not safe)) (##cdr _e285647285810_)))
                        (_hd285646285814_
                         (let ()
                           (declare (not safe))
                           (##car _e285647285810_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl285645285817_))
                        (___kont291612291613_
                         _hd285646285814_
                         _hd285615285930_)
                        (let () (declare (not safe)) (_g285604285672_)))))
                (let () (declare (not safe)) (_g285604285672_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl285614285933_))
                                                    (___kont291614291615_
                                                     _hd285615285930_
                                                     _hd285612285920_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g285604285672_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl285614285933_))
                                              (___kont291614291615_
                                               _hd285615285930_
                                               _hd285612285920_)
                                              (let ()
                                                (declare (not safe))
                                                (_g285604285672_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd285612285920_))
                                  (let ((_e285629285867_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd285612285920_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl285611285923_))
                                        (___kont291616291617_
                                         _hd285612285920_
                                         _hd285609285910_)
                                        (let ()
                                          (declare (not safe))
                                          (_g285604285672_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl285611285923_))
                                      (___kont291616291617_
                                       _hd285612285920_
                                       _hd285609285910_)
                                      (let ()
                                        (declare (not safe))
                                        (_g285604285672_)))))))
                      (let () (declare (not safe)) (_g285604285672_)))))
              (let () (declare (not safe)) (_g285604285672_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx285974_)
      (let* ((___stx291745291746_ _$stx285974_)
             (_g285979286034_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx291745291746_)))))
        (let ((___kont291748291749_
               (lambda (_L286219_ _L286221_)
                 (let ((__tmp292163
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp292148
                        (let ((__tmp292159
                               (let ((__tmp292162
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp292160
                                      (let ((__tmp292161
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp292161 '()))))
                                 (declare (not safe))
                                 (cons __tmp292162 __tmp292160)))
                              (__tmp292149
                               (let ((__tmp292150
                                      (let ((__tmp292158
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp292151
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L286219_
                                                  _L286221_))
                                               (let ((__tmp292152
                                                      (lambda (_g286238286242_
                                                               _g286239286245_
                                                               _g286240286247_)
                                                        (let ((__tmp292153
                                                               (let ((__tmp292157
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp292154
                              (let ((__tmp292155
                                     (let ((__tmp292156
                                            (let ()
                                              (declare (not safe))
                                              (cons _g286238286242_ '()))))
                                       (declare (not safe))
                                       (cons _g286239286245_ __tmp292156))))
                                (declare (not safe))
                                (cons 'primitive: __tmp292155))))
                         (declare (not safe))
                         (cons __tmp292157 __tmp292154))))
                  (declare (not safe))
                  (cons __tmp292153 _g286240286247_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp292152
                                                         '()
                                                         _L286219_
                                                         _L286221_)))))
                                        (declare (not safe))
                                        (cons __tmp292158 __tmp292151))))
                                 (declare (not safe))
                                 (cons __tmp292150 '()))))
                          (declare (not safe))
                          (cons __tmp292159 __tmp292149))))
                   (declare (not safe))
                   (cons __tmp292163 __tmp292148))))
              (___kont291752291753_
               (lambda (_L286105_ _L286107_)
                 (let ((__tmp292178
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp292164
                        (let ((__tmp292174
                               (let ((__tmp292177
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp292175
                                      (let ((__tmp292176
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp292176 '()))))
                                 (declare (not safe))
                                 (cons __tmp292177 __tmp292175)))
                              (__tmp292165
                               (let ((__tmp292166
                                      (let ((__tmp292173
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp292167
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L286105_
                                                  _L286107_))
                                               (let ((__tmp292168
                                                      (lambda (_g286122286126_
                                                               _g286123286129_
                                                               _g286124286131_)
                                                        (let ((__tmp292169
                                                               (let ((__tmp292172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp292170
                              (let ((__tmp292171
                                     (let ()
                                       (declare (not safe))
                                       (cons _g286122286126_ '()))))
                                (declare (not safe))
                                (cons _g286123286129_ __tmp292171))))
                         (declare (not safe))
                         (cons __tmp292172 __tmp292170))))
                  (declare (not safe))
                  (cons __tmp292169 _g286124286131_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp292168
                                                         '()
                                                         _L286105_
                                                         _L286107_)))))
                                        (declare (not safe))
                                        (cons __tmp292173 __tmp292167))))
                                 (declare (not safe))
                                 (cons __tmp292166 '()))))
                          (declare (not safe))
                          (cons __tmp292174 __tmp292165))))
                   (declare (not safe))
                   (cons __tmp292178 __tmp292164)))))
          (let* ((___match291796291797_
                  (lambda (_e286011286041_
                           _hd286010286045_
                           _tl286009286048_
                           ___splice291754291755_
                           _target286012286051_
                           _tl286014286054_)
                    (letrec ((_loop286015286057_
                              (lambda (_hd286013286061_
                                       _dispatch286019286064_
                                       _arity286020286066_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd286013286061_))
                                    (let ((_e286016286069_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd286013286061_))))
                                      (let ((_lp-tl286018286076_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e286016286069_)))
                                            (_lp-hd286017286073_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e286016286069_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd286017286073_))
                                            (let ((_e286025286079_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd286017286073_))))
                                              (let ((_tl286023286086_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e286025286079_)))
                                                    (_hd286024286083_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e286025286079_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl286023286086_))
                                                    (let ((_e286028286089_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl286023286086_))))
                                                      (let ((_tl286026286096_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e286028286089_)))
                    (_hd286027286093_
                     (let () (declare (not safe)) (##car _e286028286089_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl286026286096_))
                    (_loop286015286057_
                     _lp-tl286018286076_
                     (let ()
                       (declare (not safe))
                       (cons _hd286027286093_ _dispatch286019286064_))
                     (let ()
                       (declare (not safe))
                       (cons _hd286024286083_ _arity286020286066_)))
                    (let () (declare (not safe)) (_g285979286034_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g285979286034_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g285979286034_)))))
                                    (let ((_arity286022286102_
                                           (reverse _arity286020286066_))
                                          (_dispatch286021286099_
                                           (reverse _dispatch286019286064_)))
                                      (___kont291752291753_
                                       _dispatch286021286099_
                                       _arity286022286102_))))))
                      (_loop286015286057_ _target286012286051_ '() '()))))
                 (___match291788291789_
                  (lambda (_e286011286041_ _hd286010286045_ _tl286009286048_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl286009286048_))
                        (let ((___splice291754291755_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl286009286048_
                                  '0))))
                          (let ((_tl286014286054_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice291754291755_ '1)))
                                (_target286012286051_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice291754291755_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl286014286054_))
                                (___match291796291797_
                                 _e286011286041_
                                 _hd286010286045_
                                 _tl286009286048_
                                 ___splice291754291755_
                                 _target286012286051_
                                 _tl286014286054_)
                                (let ()
                                  (declare (not safe))
                                  (_g285979286034_)))))
                        (let () (declare (not safe)) (_g285979286034_)))))
                 (___match291782291783_
                  (lambda (_e285985286141_
                           _hd285984286145_
                           _tl285983286148_
                           _e285988286151_
                           _hd285987286155_
                           _tl285986286158_
                           _e285989286161_
                           ___splice291750291751_
                           _target285990286165_
                           _tl285992286168_)
                    (letrec ((_loop285993286171_
                              (lambda (_hd285991286175_
                                       _dispatch285997286178_
                                       _arity285998286180_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd285991286175_))
                                    (let ((_e285994286183_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd285991286175_))))
                                      (let ((_lp-tl285996286190_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e285994286183_)))
                                            (_lp-hd285995286187_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e285994286183_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd285995286187_))
                                            (let ((_e286003286193_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd285995286187_))))
                                              (let ((_tl286001286200_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e286003286193_)))
                                                    (_hd286002286197_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e286003286193_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl286001286200_))
                                                    (let ((_e286006286203_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl286001286200_))))
                                                      (let ((_tl286004286210_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e286006286203_)))
                    (_hd286005286207_
                     (let () (declare (not safe)) (##car _e286006286203_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl286004286210_))
                    (_loop285993286171_
                     _lp-tl285996286190_
                     (let ()
                       (declare (not safe))
                       (cons _hd286005286207_ _dispatch285997286178_))
                     (let ()
                       (declare (not safe))
                       (cons _hd286002286197_ _arity285998286180_)))
                    (___match291788291789_
                     _e285985286141_
                     _hd285984286145_
                     _tl285983286148_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match291788291789_
                                                     _e285985286141_
                                                     _hd285984286145_
                                                     _tl285983286148_))))
                                            (___match291788291789_
                                             _e285985286141_
                                             _hd285984286145_
                                             _tl285983286148_))))
                                    (let ((_arity286000286216_
                                           (reverse _arity285998286180_))
                                          (_dispatch285999286213_
                                           (reverse _dispatch285997286178_)))
                                      (___kont291748291749_
                                       _dispatch285999286213_
                                       _arity286000286216_))))))
                      (_loop285993286171_ _target285990286165_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx291745291746_))
                (let ((_e285985286141_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx291745291746_))))
                  (let ((_tl285983286148_
                         (let () (declare (not safe)) (##cdr _e285985286141_)))
                        (_hd285984286145_
                         (let ()
                           (declare (not safe))
                           (##car _e285985286141_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl285983286148_))
                        (let ((_e285988286151_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl285983286148_))))
                          (let ((_tl285986286158_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e285988286151_)))
                                (_hd285987286155_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e285988286151_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd285987286155_))
                                (let ((_e285989286161_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd285987286155_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e285989286161_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl285986286158_))
                                          (let ((___splice291750291751_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl285986286158_
                                                    '0))))
                                            (let ((_tl285992286168_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice291750291751_
                                                      '1)))
                                                  (_target285990286165_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice291750291751_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl285992286168_))
                                                  (___match291782291783_
                                                   _e285985286141_
                                                   _hd285984286145_
                                                   _tl285983286148_
                                                   _e285988286151_
                                                   _hd285987286155_
                                                   _tl285986286158_
                                                   _e285989286161_
                                                   ___splice291750291751_
                                                   _target285990286165_
                                                   _tl285992286168_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl285983286148_))
                                                      (let ((___splice291754291755_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl285983286148_ '0))))
                (let ((_tl286014286054_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice291754291755_ '1)))
                      (_target286012286051_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice291754291755_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl286014286054_))
                      (___match291796291797_
                       _e285985286141_
                       _hd285984286145_
                       _tl285983286148_
                       ___splice291754291755_
                       _target286012286051_
                       _tl286014286054_)
                      (let () (declare (not safe)) (_g285979286034_)))))
              (let () (declare (not safe)) (_g285979286034_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl285983286148_))
                                              (let ((___splice291754291755_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl285983286148_
                                                        '0))))
                                                (let ((_tl286014286054_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice291754291755_
                                                          '1)))
                                                      (_target286012286051_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice291754291755_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl286014286054_))
                                                      (___match291796291797_
                                                       _e285985286141_
                                                       _hd285984286145_
                                                       _tl285983286148_
                                                       ___splice291754291755_
                                                       _target286012286051_
                                                       _tl286014286054_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g285979286034_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g285979286034_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl285983286148_))
                                          (let ((___splice291754291755_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl285983286148_
                                                    '0))))
                                            (let ((_tl286014286054_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice291754291755_
                                                      '1)))
                                                  (_target286012286051_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice291754291755_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl286014286054_))
                                                  (___match291796291797_
                                                   _e285985286141_
                                                   _hd285984286145_
                                                   _tl285983286148_
                                                   ___splice291754291755_
                                                   _target286012286051_
                                                   _tl286014286054_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g285979286034_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g285979286034_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl285983286148_))
                                    (let ((___splice291754291755_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl285983286148_
                                              '0))))
                                      (let ((_tl286014286054_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice291754291755_
                                                '1)))
                                            (_target286012286051_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice291754291755_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl286014286054_))
                                            (___match291796291797_
                                             _e285985286141_
                                             _hd285984286145_
                                             _tl285983286148_
                                             ___splice291754291755_
                                             _target286012286051_
                                             _tl286014286054_)
                                            (let ()
                                              (declare (not safe))
                                              (_g285979286034_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g285979286034_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl285983286148_))
                            (let ((___splice291754291755_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl285983286148_
                                      '0))))
                              (let ((_tl286014286054_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice291754291755_
                                        '1)))
                                    (_target286012286051_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice291754291755_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl286014286054_))
                                    (___match291796291797_
                                     _e285985286141_
                                     _hd285984286145_
                                     _tl285983286148_
                                     ___splice291754291755_
                                     _target286012286051_
                                     _tl286014286054_)
                                    (let ()
                                      (declare (not safe))
                                      (_g285979286034_)))))
                            (let () (declare (not safe)) (_g285979286034_))))))
                (let () (declare (not safe)) (_g285979286034_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx286256_)
      (let* ((_g286260286278_
              (lambda (_g286261286274_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g286261286274_))))
             (_g286259286333_
              (lambda (_g286261286282_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g286261286282_))
                    (let ((_e286266286285_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g286261286282_))))
                      (let ((_hd286265286289_
                             (let ()
                               (declare (not safe))
                               (##car _e286266286285_)))
                            (_tl286264286292_
                             (let ()
                               (declare (not safe))
                               (##cdr _e286266286285_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl286264286292_))
                            (let ((_e286269286295_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl286264286292_))))
                              (let ((_hd286268286299_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e286269286295_)))
                                    (_tl286267286302_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e286269286295_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl286267286302_))
                                    (let ((_e286272286305_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl286267286302_))))
                                      (let ((_hd286271286309_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e286272286305_)))
                                            (_tl286270286312_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e286272286305_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl286270286312_))
                                            ((lambda (_L286315_ _L286317_)
                                               (let ((__tmp292192
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp292179
                                                      (let ((__tmp292188
                                                             (let ((__tmp292191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp292189
                            (let ((__tmp292190
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp292190 '()))))
                       (declare (not safe))
                       (cons __tmp292191 __tmp292189)))
                    (__tmp292180
                     (let ((__tmp292185
                            (let ((__tmp292187
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp292186
                                   (let ()
                                     (declare (not safe))
                                     (cons _L286317_ '()))))
                              (declare (not safe))
                              (cons __tmp292187 __tmp292186)))
                           (__tmp292181
                            (let ((__tmp292182
                                   (let ((__tmp292184
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp292183
                                          (let ()
                                            (declare (not safe))
                                            (cons _L286315_ '()))))
                                     (declare (not safe))
                                     (cons __tmp292184 __tmp292183))))
                              (declare (not safe))
                              (cons __tmp292182 '()))))
                       (declare (not safe))
                       (cons __tmp292185 __tmp292181))))
                (declare (not safe))
                (cons __tmp292188 __tmp292180))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp292192
                                                       __tmp292179)))
                                             _hd286271286309_
                                             _hd286268286299_)
                                            (_g286260286278_
                                             _g286261286282_))))
                                    (_g286260286278_ _g286261286282_))))
                            (_g286260286278_ _g286261286282_))))
                    (_g286260286278_ _g286261286282_)))))
        (_g286259286333_ _$stx286256_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx286337_)
      (let* ((_g286341286359_
              (lambda (_g286342286355_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g286342286355_))))
             (_g286340286414_
              (lambda (_g286342286363_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g286342286363_))
                    (let ((_e286347286366_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g286342286363_))))
                      (let ((_hd286346286370_
                             (let ()
                               (declare (not safe))
                               (##car _e286347286366_)))
                            (_tl286345286373_
                             (let ()
                               (declare (not safe))
                               (##cdr _e286347286366_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl286345286373_))
                            (let ((_e286350286376_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl286345286373_))))
                              (let ((_hd286349286380_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e286350286376_)))
                                    (_tl286348286383_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e286350286376_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl286348286383_))
                                    (let ((_e286353286386_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl286348286383_))))
                                      (let ((_hd286352286390_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e286353286386_)))
                                            (_tl286351286393_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e286353286386_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl286351286393_))
                                            ((lambda (_L286396_ _L286398_)
                                               (let ((__tmp292206
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp292193
                                                      (let ((__tmp292202
                                                             (let ((__tmp292205
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp292203
                            (let ((__tmp292204
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp292204 '()))))
                       (declare (not safe))
                       (cons __tmp292205 __tmp292203)))
                    (__tmp292194
                     (let ((__tmp292199
                            (let ((__tmp292201
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp292200
                                   (let ()
                                     (declare (not safe))
                                     (cons _L286398_ '()))))
                              (declare (not safe))
                              (cons __tmp292201 __tmp292200)))
                           (__tmp292195
                            (let ((__tmp292196
                                   (let ((__tmp292198
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp292197
                                          (let ()
                                            (declare (not safe))
                                            (cons _L286396_ '()))))
                                     (declare (not safe))
                                     (cons __tmp292198 __tmp292197))))
                              (declare (not safe))
                              (cons __tmp292196 '()))))
                       (declare (not safe))
                       (cons __tmp292199 __tmp292195))))
                (declare (not safe))
                (cons __tmp292202 __tmp292194))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp292206
                                                       __tmp292193)))
                                             _hd286352286390_
                                             _hd286349286380_)
                                            (_g286341286359_
                                             _g286342286363_))))
                                    (_g286341286359_ _g286342286363_))))
                            (_g286341286359_ _g286342286363_))))
                    (_g286341286359_ _g286342286363_)))))
        (_g286340286414_ _$stx286337_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx286418_)
      (let* ((___stx291799291800_ _$stx286418_)
             (_g286425286496_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx291799291800_)))))
        (let ((___kont291802291803_
               (lambda (_L286787_ _L286789_)
                 (let ((__tmp292212
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp292207
                        (let ((__tmp292208
                               (let ((__tmp292209
                                      (let ((__tmp292211
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp292210
                                             (let ()
                                               (declare (not safe))
                                               (cons _L286787_ '()))))
                                        (declare (not safe))
                                        (cons __tmp292211 __tmp292210))))
                                 (declare (not safe))
                                 (cons __tmp292209 '()))))
                          (declare (not safe))
                          (cons _L286789_ __tmp292208))))
                   (declare (not safe))
                   (cons __tmp292212 __tmp292207))))
              (___kont291804291805_
               (lambda (_L286706_ _L286708_)
                 (let ((__tmp292221
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp292213
                        (let ((__tmp292214
                               (let ((__tmp292215
                                      (let ((__tmp292220
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp292216
                                             (let ((__tmp292217
                                                    (lambda (_g286727286730_
                                                             _g286728286733_)
                                                      (let ((__tmp292218
                                                             (let ((__tmp292219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g286727286730_ __tmp292219))))
                (declare (not safe))
                (cons __tmp292218 _g286728286733_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp292217
                                                       '()
                                                       _L286706_))))
                                        (declare (not safe))
                                        (cons __tmp292220 __tmp292216))))
                                 (declare (not safe))
                                 (cons __tmp292215 '()))))
                          (declare (not safe))
                          (cons _L286708_ __tmp292214))))
                   (declare (not safe))
                   (cons __tmp292221 __tmp292213))))
              (___kont291808291809_
               (lambda (_L286618_ _L286620_)
                 (let ((__tmp292228
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp292222
                        (let ((__tmp292223
                               (let ((__tmp292224
                                      (let ((__tmp292227
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp292225
                                             (let ((__tmp292226
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L286618_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp292226))))
                                        (declare (not safe))
                                        (cons __tmp292227 __tmp292225))))
                                 (declare (not safe))
                                 (cons __tmp292224 '()))))
                          (declare (not safe))
                          (cons _L286620_ __tmp292223))))
                   (declare (not safe))
                   (cons __tmp292228 __tmp292222))))
              (___kont291810291811_
               (lambda (_L286553_ _L286555_)
                 (let ((__tmp292238
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp292229
                        (let ((__tmp292230
                               (let ((__tmp292231
                                      (let ((__tmp292237
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp292232
                                             (let ((__tmp292233
                                                    (let ((__tmp292234
                                                           (lambda (_g286572286575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g286573286578_)
                     (let ((__tmp292235
                            (let ((__tmp292236
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g286572286575_ __tmp292236))))
                       (declare (not safe))
                       (cons __tmp292235 _g286573286578_)))))
              (declare (not safe))
              (foldr1 __tmp292234 '() _L286553_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp292233))))
                                        (declare (not safe))
                                        (cons __tmp292237 __tmp292232))))
                                 (declare (not safe))
                                 (cons __tmp292231 '()))))
                          (declare (not safe))
                          (cons _L286555_ __tmp292230))))
                   (declare (not safe))
                   (cons __tmp292238 __tmp292229)))))
          (let* ((___match291918291919_
                  (lambda (_e286478286503_
                           _hd286477286507_
                           _tl286476286510_
                           _e286481286513_
                           _hd286480286517_
                           _tl286479286520_
                           ___splice291812291813_
                           _target286482286523_
                           _tl286484286526_)
                    (letrec ((_loop286485286529_
                              (lambda (_hd286483286533_ _arity286489286536_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd286483286533_))
                                    (let ((_e286486286539_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd286483286533_))))
                                      (let ((_lp-tl286488286546_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e286486286539_)))
                                            (_lp-hd286487286543_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e286486286539_))))
                                        (_loop286485286529_
                                         _lp-tl286488286546_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd286487286543_
                                                 _arity286489286536_)))))
                                    (let ((_arity286490286549_
                                           (reverse _arity286489286536_)))
                                      (___kont291810291811_
                                       _arity286490286549_
                                       _hd286480286517_))))))
                      (_loop286485286529_ _target286482286523_ '()))))
                 (___match291878291879_
                  (lambda (_e286446286642_
                           _hd286445286646_
                           _tl286444286649_
                           _e286449286652_
                           _hd286448286656_
                           _tl286447286659_
                           _e286452286662_
                           _hd286451286666_
                           _tl286450286669_
                           _e286453286672_
                           ___splice291806291807_
                           _target286454286676_
                           _tl286456286679_)
                    (letrec ((_loop286457286682_
                              (lambda (_hd286455286686_ _arity286461286689_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd286455286686_))
                                    (let ((_e286458286692_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd286455286686_))))
                                      (let ((_lp-tl286460286699_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e286458286692_)))
                                            (_lp-hd286459286696_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e286458286692_))))
                                        (_loop286457286682_
                                         _lp-tl286460286699_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd286459286696_
                                                 _arity286461286689_)))))
                                    (let ((_arity286462286702_
                                           (reverse _arity286461286689_)))
                                      (___kont291804291805_
                                       _arity286462286702_
                                       _hd286448286656_))))))
                      (_loop286457286682_ _target286454286676_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx291799291800_))
                (let ((_e286431286743_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx291799291800_))))
                  (let ((_tl286429286750_
                         (let () (declare (not safe)) (##cdr _e286431286743_)))
                        (_hd286430286747_
                         (let ()
                           (declare (not safe))
                           (##car _e286431286743_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl286429286750_))
                        (let ((_e286434286753_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl286429286750_))))
                          (let ((_tl286432286760_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e286434286753_)))
                                (_hd286433286757_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e286434286753_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl286432286760_))
                                (let ((_e286437286763_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl286432286760_))))
                                  (let ((_tl286435286770_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e286437286763_)))
                                        (_hd286436286767_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e286437286763_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd286436286767_))
                                        (let ((_e286438286773_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd286436286767_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e286438286773_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl286435286770_))
                                                  (let ((_e286441286777_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl286435286770_))))
                                                    (let ((_tl286439286784_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e286441286777_)))
                                                          (_hd286440286781_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e286441286777_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl286439286784_))
                                                          (___kont291802291803_
                                                           _hd286440286781_
                                                           _hd286433286757_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl286435286770_))
                      (let ((___splice291806291807_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl286435286770_ '0))))
                        (let ((_tl286456286679_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice291806291807_ '1)))
                              (_target286454286676_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice291806291807_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl286456286679_))
                              (___match291878291879_
                               _e286431286743_
                               _hd286430286747_
                               _tl286429286750_
                               _e286434286753_
                               _hd286433286757_
                               _tl286432286760_
                               _e286437286763_
                               _hd286436286767_
                               _tl286435286770_
                               _e286438286773_
                               ___splice291806291807_
                               _target286454286676_
                               _tl286456286679_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl286432286760_))
                                  (let ((___splice291812291813_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl286432286760_
                                            '0))))
                                    (let ((_tl286484286526_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice291812291813_
                                              '1)))
                                          (_target286482286523_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice291812291813_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl286484286526_))
                                          (___match291918291919_
                                           _e286431286743_
                                           _hd286430286747_
                                           _tl286429286750_
                                           _e286434286753_
                                           _hd286433286757_
                                           _tl286432286760_
                                           ___splice291812291813_
                                           _target286482286523_
                                           _tl286484286526_)
                                          (let ()
                                            (declare (not safe))
                                            (_g286425286496_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g286425286496_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl286432286760_))
                          (let ((___splice291812291813_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl286432286760_
                                    '0))))
                            (let ((_tl286484286526_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice291812291813_ '1)))
                                  (_target286482286523_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice291812291813_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl286484286526_))
                                  (___match291918291919_
                                   _e286431286743_
                                   _hd286430286747_
                                   _tl286429286750_
                                   _e286434286753_
                                   _hd286433286757_
                                   _tl286432286760_
                                   ___splice291812291813_
                                   _target286482286523_
                                   _tl286484286526_)
                                  (let ()
                                    (declare (not safe))
                                    (_g286425286496_)))))
                          (let () (declare (not safe)) (_g286425286496_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl286435286770_))
                                                      (let ((___splice291806291807_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl286435286770_ '0))))
                (let ((_tl286456286679_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice291806291807_ '1)))
                      (_target286454286676_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice291806291807_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl286456286679_))
                      (___match291878291879_
                       _e286431286743_
                       _hd286430286747_
                       _tl286429286750_
                       _e286434286753_
                       _hd286433286757_
                       _tl286432286760_
                       _e286437286763_
                       _hd286436286767_
                       _tl286435286770_
                       _e286438286773_
                       ___splice291806291807_
                       _target286454286676_
                       _tl286456286679_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl286435286770_))
                          (___kont291808291809_
                           _hd286436286767_
                           _hd286433286757_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl286432286760_))
                              (let ((___splice291812291813_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl286432286760_
                                        '0))))
                                (let ((_tl286484286526_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice291812291813_
                                          '1)))
                                      (_target286482286523_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice291812291813_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl286484286526_))
                                      (___match291918291919_
                                       _e286431286743_
                                       _hd286430286747_
                                       _tl286429286750_
                                       _e286434286753_
                                       _hd286433286757_
                                       _tl286432286760_
                                       ___splice291812291813_
                                       _target286482286523_
                                       _tl286484286526_)
                                      (let ()
                                        (declare (not safe))
                                        (_g286425286496_)))))
                              (let ()
                                (declare (not safe))
                                (_g286425286496_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl286435286770_))
                  (___kont291808291809_ _hd286436286767_ _hd286433286757_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl286432286760_))
                      (let ((___splice291812291813_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl286432286760_ '0))))
                        (let ((_tl286484286526_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice291812291813_ '1)))
                              (_target286482286523_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice291812291813_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl286484286526_))
                              (___match291918291919_
                               _e286431286743_
                               _hd286430286747_
                               _tl286429286750_
                               _e286434286753_
                               _hd286433286757_
                               _tl286432286760_
                               ___splice291812291813_
                               _target286482286523_
                               _tl286484286526_)
                              (let ()
                                (declare (not safe))
                                (_g286425286496_)))))
                      (let () (declare (not safe)) (_g286425286496_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl286435286770_))
                                                  (___kont291808291809_
                                                   _hd286436286767_
                                                   _hd286433286757_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl286432286760_))
                                                      (let ((___splice291812291813_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl286432286760_ '0))))
                (let ((_tl286484286526_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice291812291813_ '1)))
                      (_target286482286523_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice291812291813_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl286484286526_))
                      (___match291918291919_
                       _e286431286743_
                       _hd286430286747_
                       _tl286429286750_
                       _e286434286753_
                       _hd286433286757_
                       _tl286432286760_
                       ___splice291812291813_
                       _target286482286523_
                       _tl286484286526_)
                      (let () (declare (not safe)) (_g286425286496_)))))
              (let () (declare (not safe)) (_g286425286496_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl286435286770_))
                                            (___kont291808291809_
                                             _hd286436286767_
                                             _hd286433286757_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl286432286760_))
                                                (let ((___splice291812291813_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl286432286760_
                                                          '0))))
                                                  (let ((_tl286484286526_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice291812291813_
                                                            '1)))
                                                        (_target286482286523_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice291812291813_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl286484286526_))
                                                        (___match291918291919_
                                                         _e286431286743_
                                                         _hd286430286747_
                                                         _tl286429286750_
                                                         _e286434286753_
                                                         _hd286433286757_
                                                         _tl286432286760_
                                                         ___splice291812291813_
                                                         _target286482286523_
                                                         _tl286484286526_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g286425286496_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g286425286496_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl286432286760_))
                                    (let ((___splice291812291813_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl286432286760_
                                              '0))))
                                      (let ((_tl286484286526_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice291812291813_
                                                '1)))
                                            (_target286482286523_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice291812291813_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl286484286526_))
                                            (___match291918291919_
                                             _e286431286743_
                                             _hd286430286747_
                                             _tl286429286750_
                                             _e286434286753_
                                             _hd286433286757_
                                             _tl286432286760_
                                             ___splice291812291813_
                                             _target286482286523_
                                             _tl286484286526_)
                                            (let ()
                                              (declare (not safe))
                                              (_g286425286496_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g286425286496_))))))
                        (let () (declare (not safe)) (_g286425286496_)))))
                (let () (declare (not safe)) (_g286425286496_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx286813_)
      (let* ((___stx291921291922_ _$stx286813_)
             (_g286818286853_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx291921291922_)))))
        (let ((___kont291924291925_
               (lambda (_L286975_ _L286977_)
                 (let ((__tmp292244
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp292239
                        (let ((__tmp292240
                               (let ((__tmp292241
                                      (let ((__tmp292243
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp292242
                                             (let ()
                                               (declare (not safe))
                                               (cons _L286975_ '()))))
                                        (declare (not safe))
                                        (cons __tmp292243 __tmp292242))))
                                 (declare (not safe))
                                 (cons __tmp292241 '()))))
                          (declare (not safe))
                          (cons _L286977_ __tmp292240))))
                   (declare (not safe))
                   (cons __tmp292244 __tmp292239))))
              (___kont291926291927_
               (lambda (_L286910_ _L286912_)
                 (let ((__tmp292253
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp292245
                        (let ((__tmp292246
                               (let ((__tmp292247
                                      (let ((__tmp292252
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp292248
                                             (let ((__tmp292249
                                                    (lambda (_g286929286932_
                                                             _g286930286935_)
                                                      (let ((__tmp292250
                                                             (let ((__tmp292251
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g286929286932_ __tmp292251))))
                (declare (not safe))
                (cons __tmp292250 _g286930286935_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp292249
                                                       '()
                                                       _L286910_))))
                                        (declare (not safe))
                                        (cons __tmp292252 __tmp292248))))
                                 (declare (not safe))
                                 (cons __tmp292247 '()))))
                          (declare (not safe))
                          (cons _L286912_ __tmp292246))))
                   (declare (not safe))
                   (cons __tmp292253 __tmp292245)))))
          (let ((___match291970291971_
                 (lambda (_e286835286860_
                          _hd286834286864_
                          _tl286833286867_
                          _e286838286870_
                          _hd286837286874_
                          _tl286836286877_
                          ___splice291928291929_
                          _target286839286880_
                          _tl286841286883_)
                   (letrec ((_loop286842286886_
                             (lambda (_hd286840286890_ _arity286846286893_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd286840286890_))
                                   (let ((_e286843286896_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd286840286890_))))
                                     (let ((_lp-tl286845286903_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e286843286896_)))
                                           (_lp-hd286844286900_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e286843286896_))))
                                       (_loop286842286886_
                                        _lp-tl286845286903_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd286844286900_
                                                _arity286846286893_)))))
                                   (let ((_arity286847286906_
                                          (reverse _arity286846286893_)))
                                     (___kont291926291927_
                                      _arity286847286906_
                                      _hd286837286874_))))))
                     (_loop286842286886_ _target286839286880_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx291921291922_))
                (let ((_e286824286945_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx291921291922_))))
                  (let ((_tl286822286952_
                         (let () (declare (not safe)) (##cdr _e286824286945_)))
                        (_hd286823286949_
                         (let ()
                           (declare (not safe))
                           (##car _e286824286945_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl286822286952_))
                        (let ((_e286827286955_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl286822286952_))))
                          (let ((_tl286825286962_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e286827286955_)))
                                (_hd286826286959_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e286827286955_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl286825286962_))
                                (let ((_e286830286965_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl286825286962_))))
                                  (let ((_tl286828286972_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e286830286965_)))
                                        (_hd286829286969_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e286830286965_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl286828286972_))
                                        (___kont291924291925_
                                         _hd286829286969_
                                         _hd286826286959_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl286825286962_))
                                            (let ((___splice291928291929_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl286825286962_
                                                      '0))))
                                              (let ((_tl286841286883_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice291928291929_
                                                        '1)))
                                                    (_target286839286880_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice291928291929_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl286841286883_))
                                                    (___match291970291971_
                                                     _e286824286945_
                                                     _hd286823286949_
                                                     _tl286822286952_
                                                     _e286827286955_
                                                     _hd286826286959_
                                                     _tl286825286962_
                                                     ___splice291928291929_
                                                     _target286839286880_
                                                     _tl286841286883_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g286818286853_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g286818286853_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl286825286962_))
                                    (let ((___splice291928291929_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl286825286962_
                                              '0))))
                                      (let ((_tl286841286883_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice291928291929_
                                                '1)))
                                            (_target286839286880_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice291928291929_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl286841286883_))
                                            (___match291970291971_
                                             _e286824286945_
                                             _hd286823286949_
                                             _tl286822286952_
                                             _e286827286955_
                                             _hd286826286959_
                                             _tl286825286962_
                                             ___splice291928291929_
                                             _target286839286880_
                                             _tl286841286883_)
                                            (let ()
                                              (declare (not safe))
                                              (_g286818286853_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g286818286853_))))))
                        (let () (declare (not safe)) (_g286818286853_)))))
                (let () (declare (not safe)) (_g286818286853_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx286997_)
      (let* ((_g287001287036_
              (lambda (_g287002287032_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287002287032_))))
             (_g287000287164_
              (lambda (_g287002287040_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287002287040_))
                    (let ((_e287007287043_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287002287040_))))
                      (let ((_hd287006287047_
                             (let ()
                               (declare (not safe))
                               (##car _e287007287043_)))
                            (_tl287005287050_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287007287043_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl287005287050_))
                            (let ((_g292254_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl287005287050_
                                      '0))))
                              (begin
                                (let ((_g292255_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g292254_)
                                             (##vector-length _g292254_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g292255_ 2)))
                                      (error "Context expects 2 values"
                                             _g292255_)))
                                (let ((_target287008287053_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g292254_ 0)))
                                      (_tl287010287056_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g292254_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl287010287056_))
                                      (letrec ((_loop287011287059_
                                                (lambda (_hd287009287063_
                                                         _arity287015287066_
                                                         _prim287016287068_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd287009287063_))
                                                      (let ((_e287012287071_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd287009287063_))))
                (let ((_lp-hd287013287075_
                       (let () (declare (not safe)) (##car _e287012287071_)))
                      (_lp-tl287014287078_
                       (let () (declare (not safe)) (##cdr _e287012287071_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd287013287075_))
                      (let ((_e287021287081_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd287013287075_))))
                        (let ((_hd287020287085_
                               (let ()
                                 (declare (not safe))
                                 (##car _e287021287081_)))
                              (_tl287019287088_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e287021287081_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl287019287088_))
                              (let ((_g292264_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl287019287088_
                                        '0))))
                                (begin
                                  (let ((_g292265_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g292264_)
                                               (##vector-length _g292264_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g292265_ 2)))
                                        (error "Context expects 2 values"
                                               _g292265_)))
                                  (let ((_target287022287091_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g292264_ 0)))
                                        (_tl287024287094_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g292264_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl287024287094_))
                                        (letrec ((_loop287025287097_
                                                  (lambda (_hd287023287101_
                                                           _arity287029287104_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd287023287101_))
                                                        (let ((_e287026287107_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd287023287101_))))
                  (let ((_lp-hd287027287111_
                         (let () (declare (not safe)) (##car _e287026287107_)))
                        (_lp-tl287028287114_
                         (let ()
                           (declare (not safe))
                           (##cdr _e287026287107_))))
                    (_loop287025287097_
                     _lp-tl287028287114_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd287027287111_ _arity287029287104_)))))
                (let ((_arity287030287117_ (reverse _arity287029287104_)))
                  (_loop287011287059_
                   _lp-tl287014287078_
                   (let ()
                     (declare (not safe))
                     (cons _arity287030287117_ _arity287015287066_))
                   (let ()
                     (declare (not safe))
                     (cons _hd287020287085_ _prim287016287068_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop287025287097_
                                           _target287022287091_
                                           '()))
                                        (_g287001287036_ _g287002287040_)))))
                              (_g287001287036_ _g287002287040_))))
                      (_g287001287036_ _g287002287040_))))
              (let ((_arity287017287121_ (reverse _arity287015287066_))
                    (_prim287018287124_ (reverse _prim287016287068_)))
                ((lambda (_L287127_ _L287129_)
                   (let ((__tmp292263
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp292256
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L287127_
                               _L287129_))
                            (let ((__tmp292257
                                   (lambda (_g287144287150_
                                            _g287145287153_
                                            _g287146287155_)
                                     (let ((__tmp292258
                                            (let ((__tmp292262
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp292259
                                                   (let ((__tmp292260
                                                          (let ((__tmp292261
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g287147287158_ _g287148287161_)
                           (let ()
                             (declare (not safe))
                             (cons _g287147287158_ _g287148287161_)))))
                    (declare (not safe))
                    (foldr1 __tmp292261 '() _g287144287150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g287145287153_
                                                           __tmp292260))))
                                              (declare (not safe))
                                              (cons __tmp292262 __tmp292259))))
                                       (declare (not safe))
                                       (cons __tmp292258 _g287146287155_)))))
                              (declare (not safe))
                              (foldr2 __tmp292257 '() _L287127_ _L287129_)))))
                     (declare (not safe))
                     (cons __tmp292263 __tmp292256)))
                 _arity287017287121_
                 _prim287018287124_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop287011287059_
                                         _target287008287053_
                                         '()
                                         '()))
                                      (_g287001287036_ _g287002287040_)))))
                            (_g287001287036_ _g287002287040_))))
                    (_g287001287036_ _g287002287040_)))))
        (_g287000287164_ _$stx286997_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx287170_)
      (let* ((_g287174287209_
              (lambda (_g287175287205_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287175287205_))))
             (_g287173287337_
              (lambda (_g287175287213_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287175287213_))
                    (let ((_e287180287216_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287175287213_))))
                      (let ((_hd287179287220_
                             (let ()
                               (declare (not safe))
                               (##car _e287180287216_)))
                            (_tl287178287223_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287180287216_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl287178287223_))
                            (let ((_g292266_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl287178287223_
                                      '0))))
                              (begin
                                (let ((_g292267_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g292266_)
                                             (##vector-length _g292266_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g292267_ 2)))
                                      (error "Context expects 2 values"
                                             _g292267_)))
                                (let ((_target287181287226_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g292266_ 0)))
                                      (_tl287183287229_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g292266_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl287183287229_))
                                      (letrec ((_loop287184287232_
                                                (lambda (_hd287182287236_
                                                         _arity287188287239_
                                                         _prim287189287241_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd287182287236_))
                                                      (let ((_e287185287244_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd287182287236_))))
                (let ((_lp-hd287186287248_
                       (let () (declare (not safe)) (##car _e287185287244_)))
                      (_lp-tl287187287251_
                       (let () (declare (not safe)) (##cdr _e287185287244_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd287186287248_))
                      (let ((_e287194287254_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd287186287248_))))
                        (let ((_hd287193287258_
                               (let ()
                                 (declare (not safe))
                                 (##car _e287194287254_)))
                              (_tl287192287261_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e287194287254_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl287192287261_))
                              (let ((_g292276_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl287192287261_
                                        '0))))
                                (begin
                                  (let ((_g292277_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g292276_)
                                               (##vector-length _g292276_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g292277_ 2)))
                                        (error "Context expects 2 values"
                                               _g292277_)))
                                  (let ((_target287195287264_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g292276_ 0)))
                                        (_tl287197287267_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g292276_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl287197287267_))
                                        (letrec ((_loop287198287270_
                                                  (lambda (_hd287196287274_
                                                           _arity287202287277_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd287196287274_))
                                                        (let ((_e287199287280_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd287196287274_))))
                  (let ((_lp-hd287200287284_
                         (let () (declare (not safe)) (##car _e287199287280_)))
                        (_lp-tl287201287287_
                         (let ()
                           (declare (not safe))
                           (##cdr _e287199287280_))))
                    (_loop287198287270_
                     _lp-tl287201287287_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd287200287284_ _arity287202287277_)))))
                (let ((_arity287203287290_ (reverse _arity287202287277_)))
                  (_loop287184287232_
                   _lp-tl287187287251_
                   (let ()
                     (declare (not safe))
                     (cons _arity287203287290_ _arity287188287239_))
                   (let ()
                     (declare (not safe))
                     (cons _hd287193287258_ _prim287189287241_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop287198287270_
                                           _target287195287264_
                                           '()))
                                        (_g287174287209_ _g287175287213_)))))
                              (_g287174287209_ _g287175287213_))))
                      (_g287174287209_ _g287175287213_))))
              (let ((_arity287190287294_ (reverse _arity287188287239_))
                    (_prim287191287297_ (reverse _prim287189287241_)))
                ((lambda (_L287300_ _L287302_)
                   (let ((__tmp292275
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp292268
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L287300_
                               _L287302_))
                            (let ((__tmp292269
                                   (lambda (_g287317287323_
                                            _g287318287326_
                                            _g287319287328_)
                                     (let ((__tmp292270
                                            (let ((__tmp292274
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp292271
                                                   (let ((__tmp292272
                                                          (let ((__tmp292273
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g287320287331_ _g287321287334_)
                           (let ()
                             (declare (not safe))
                             (cons _g287320287331_ _g287321287334_)))))
                    (declare (not safe))
                    (foldr1 __tmp292273 '() _g287317287323_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g287318287326_
                                                           __tmp292272))))
                                              (declare (not safe))
                                              (cons __tmp292274 __tmp292271))))
                                       (declare (not safe))
                                       (cons __tmp292270 _g287319287328_)))))
                              (declare (not safe))
                              (foldr2 __tmp292269 '() _L287300_ _L287302_)))))
                     (declare (not safe))
                     (cons __tmp292275 __tmp292268)))
                 _arity287190287294_
                 _prim287191287297_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop287184287232_
                                         _target287181287226_
                                         '()
                                         '()))
                                      (_g287174287209_ _g287175287213_)))))
                            (_g287174287209_ _g287175287213_))))
                    (_g287174287209_ _g287175287213_)))))
        (_g287173287337_ _$stx287170_)))))
