(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1708194425)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp180757 (list gx#expander::t))
            (__tmp180755
             (let ((__tmp180756
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp180756 '()))))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp180757
         '(id depth)
         __tmp180755
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _$args176685_
        (apply make-instance gx#syntax-pattern::t _$args176685_)))
    (define gx#syntax-pattern-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e
      (let ()
        (declare (not safe))
        (make-class-slot-accessor gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern::apply-macro-expander
      (lambda (_self176682_ _stx176683_)
        (let ()
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _stx176683_))))
    (let ()
      (declare (not safe))
      (bind-method!
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_stx176164_)
        (letrec ((_generate176166_
                  (lambda (_e176393_)
                    (letrec ((_BUG176395_
                              (lambda (_q176557_)
                                (error '"BUG: syntax; generate"
                                       _stx176164_
                                       _e176393_
                                       _q176557_)))
                             (_local-pattern-e176396_
                              (lambda (_pat176555_)
                                (let ((__tmp180758
                                       (##structure-ref
                                        _pat176555_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp180758))))
                             (_getvar176397_
                              (lambda (_q176552_ _vars176553_)
                                (let ()
                                  (declare (not safe))
                                  (assgetq _q176552_
                                           _vars176553_
                                           _BUG176395_))))
                             (_getarg176398_
                              (lambda (_arg176518_ _vars176519_)
                                (let* ((_arg176520176527_ _arg176518_)
                                       (_E176522176531_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _arg176520176527_)))
                                       (_K176523176540_
                                        (lambda (_e176534_ _tag176535_)
                                          (let ((_$e176537_ _tag176535_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'ref _$e176537_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_getvar176397_
                                                   _e176534_
                                                   _vars176519_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'pattern
                                                           _$e176537_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_local-pattern-e176396_
                                                       _e176534_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_BUG176395_
                                                       _arg176518_))))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _arg176520176527_))
                                      (let ((_hd176524176543_
                                             (let ()
                                               (declare (not safe))
                                               (##car _arg176520176527_)))
                                            (_tl176525176545_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _arg176520176527_))))
                                        (let* ((_tag176548_ _hd176524176543_)
                                               (_e176550_ _tl176525176545_))
                                          (declare (not safe))
                                          (_K176523176540_
                                           _e176550_
                                           _tag176548_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E176522176531_)))))))
                      (let _recur176400_ ((_e176402_ _e176393_)
                                          (_vars176403_ '()))
                        (let* ((_e176404176411_ _e176402_)
                               (_E176406176415_
                                (lambda ()
                                  (error '"No clause matching"
                                         _e176404176411_)))
                               (_K176407176506_
                                (lambda (_body176418_ _tag176419_)
                                  (let ((_$e176421_ _tag176419_))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e176421_))
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _body176418_))
                                        (if (let ()
                                              (declare (not safe))
                                              (eq? 'term _$e176421_))
                                            (let ((_id176424_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _body176418_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _id176424_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_marks176426_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _id176424_
                                                            '3
                                                            gx#identifier-wrap::t
                                                            '#f))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _marks176426_))
                                                        (let ((__tmp180759
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _body176418_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp180759))
                (let ((__tmp180761
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _body176418_)))
                      (__tmp180760
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _body176418_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp180761
                   __tmp180760
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _id176424_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _body176418_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (_BUG176395_
                                                         _e176402_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'pattern _$e176421_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_local-pattern-e176396_
                                                   _body176418_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'ref _$e176421_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_getvar176397_
                                                       _body176418_
                                                       _vars176403_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'cons
                                                               _$e176421_))
                                                        (let ((__tmp180764
                                                               (let ((__tmp180765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (car _body176418_)))
                         (declare (not safe))
                         (_recur176400_ __tmp180765 _vars176403_)))
                      (__tmp180762
                       (let ((__tmp180763 (cdr _body176418_)))
                         (declare (not safe))
                         (_recur176400_ __tmp180763 _vars176403_))))
                  (declare (not safe))
                  (gx#core-list 'cons __tmp180764 __tmp180762))
                (if (let () (declare (not safe)) (eq? 'vector _$e176421_))
                    (let ((__tmp180766
                           (let ()
                             (declare (not safe))
                             (_recur176400_ _body176418_ _vars176403_))))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp180766))
                    (if (let () (declare (not safe)) (eq? 'box _$e176421_))
                        (let ((__tmp180767
                               (let ()
                                 (declare (not safe))
                                 (_recur176400_ _body176418_ _vars176403_))))
                          (declare (not safe))
                          (gx#core-list 'box __tmp180767))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'splice _$e176421_))
                            (let* ((_body176427176438_ _body176418_)
                                   (_E176429176442_
                                    (lambda ()
                                      (error '"No clause matching"
                                             _body176427176438_)))
                                   (_K176430176480_
                                    (lambda (_args176445_
                                             _iv176446_
                                             _hd176447_
                                             _depth176448_)
                                      (let* ((_targets176454_
                                              (map (lambda (_g176449176451_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_getarg176398_
                                                        _g176449176451_
                                                        _vars176403_)))
                                                   _args176445_))
                                             (_fold-in176456_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _args176445_)))
                                             (_fold-out176458_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_lambda-args176460_
                                              (let ((__tmp180768
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _fold-out176458_
                                                             '()))))
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp180768
                                                        _fold-in176456_)))
                                             (_lambda-body176477_
                                              (if (fx> _depth176448_ '1)
                                                  (let ((_r-args176468_
                                                         (map (lambda (_arg176462_)
                                                                (let ((__tmp180769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cdr _arg176462_)))
                          (declare (not safe))
                          (cons 'ref __tmp180769)))
                      _args176445_))
                (_r-vars176469_
                 (let ((__tmp180770
                        (lambda (_arg176464_ _var176465_ _r176466_)
                          (let ((__tmp180771
                                 (let ((__tmp180772 (cdr _arg176464_)))
                                   (declare (not safe))
                                   (cons __tmp180772 _var176465_))))
                            (declare (not safe))
                            (cons __tmp180771 _r176466_)))))
                   (declare (not safe))
                   (foldr2 __tmp180770
                           _vars176403_
                           _args176445_
                           _fold-in176456_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp180773
                                                           (let ((__tmp180774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp180778
                                 (let ()
                                   (declare (not safe))
                                   (fx- _depth176448_ '1)))
                                (__tmp180775
                                 (let ((__tmp180776
                                        (let ((__tmp180777
                                               (let ()
                                                 (declare (not safe))
                                                 (cons 'var
                                                       _fold-out176458_))))
                                          (declare (not safe))
                                          (cons __tmp180777 _r-args176468_))))
                                   (declare (not safe))
                                   (cons _hd176447_ __tmp180776))))
                            (declare (not safe))
                            (cons __tmp180778 __tmp180775))))
                     (declare (not safe))
                     (cons 'splice __tmp180774))))
              (declare (not safe))
              (_recur176400_ __tmp180773 _r-vars176469_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_hd-vars176475_
                                                          (let ((__tmp180779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_arg176471_ _var176472_ _r176473_)
                           (let ((__tmp180780
                                  (let ((__tmp180781 (cdr _arg176471_)))
                                    (declare (not safe))
                                    (cons __tmp180781 _var176472_))))
                             (declare (not safe))
                             (cons __tmp180780 _r176473_)))))
                    (declare (not safe))
                    (foldr2 __tmp180779
                            _vars176403_
                            _args176445_
                            _fold-in176456_)))
                 (__tmp180782
                  (let ()
                    (declare (not safe))
                    (_recur176400_ _hd176447_ _hd-vars176475_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp180782
                                                     _fold-out176458_)))))
                                        (let ((__tmp180786
                                               (if (fx> (length _targets176454_)
                                                        '1)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _targets176454_))
                                                   '#!void))
                                              (__tmp180783
                                               (let ((__tmp180785
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _lambda-args176460_
                                                         _lambda-body176477_)))
                                                     (__tmp180784
                                                      (let ()
                                                        (declare (not safe))
                                                        (_recur176400_
                                                         _iv176446_
                                                         _vars176403_))))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp180785
                                                  __tmp180784
                                                  _targets176454_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp180786
                                           __tmp180783))))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _body176427176438_))
                                  (let ((_hd176431176483_
                                         (let ()
                                           (declare (not safe))
                                           (##car _body176427176438_)))
                                        (_tl176432176485_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _body176427176438_))))
                                    (let ((_depth176488_ _hd176431176483_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl176432176485_))
                                          (let ((_hd176433176490_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl176432176485_)))
                                                (_tl176434176492_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl176432176485_))))
                                            (let ((_hd176495_
                                                   _hd176433176490_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl176434176492_))
                                                  (let ((_hd176435176497_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl176434176492_)))
                                                        (_tl176436176499_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl176434176492_))))
                                                    (let* ((_iv176502_
                                                            _hd176435176497_)
                                                           (_args176504_
                                                            _tl176436176499_))
                                                      (declare (not safe))
                                                      (_K176430176480_
                                                       _args176504_
                                                       _iv176502_
                                                       _hd176495_
                                                       _depth176488_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E176429176442_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_E176429176442_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_E176429176442_))))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'var _$e176421_))
                                _body176418_
                                (let ()
                                  (declare (not safe))
                                  (_BUG176395_ _e176402_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (let ()
                                (declare (not safe))
                                (##pair? _e176404176411_))
                              (let ((_hd176408176509_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e176404176411_)))
                                    (_tl176409176511_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e176404176411_))))
                                (let* ((_tag176514_ _hd176408176509_)
                                       (_body176516_ _tl176409176511_))
                                  (declare (not safe))
                                  (_K176407176506_ _body176516_ _tag176514_)))
                              (let ()
                                (declare (not safe))
                                (_E176406176415_))))))))
                 (_parse176167_
                  (lambda (_e176208_)
                    (letrec ((_make-cons176210_
                              (lambda (_hd176385_ _tl176386_)
                                (let ((_g180787_ _hd176385_)
                                      (_g180789_ _tl176386_))
                                  (begin
                                    (let ((_g180788_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g180787_)
                                                 (##vector-length _g180787_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g180788_ 2)))
                                          (error "Context expects 2 values"
                                                 _g180788_)))
                                    (let ((_g180790_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g180789_)
                                                 (##vector-length _g180789_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g180790_ 2)))
                                          (error "Context expects 2 values"
                                                 _g180790_)))
                                    (let ((_hd-e176388_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g180787_ 0)))
                                          (_hd-vars176389_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g180787_ 1))))
                                      (let ((_tl-e176390_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g180789_ 0)))
                                            (_tl-vars176391_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g180789_ 1))))
                                        (values (let ((__tmp180791
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd-e176388_
                                                               _tl-e176390_))))
                                                  (declare (not safe))
                                                  (cons 'cons __tmp180791))
                                                (append _hd-vars176389_
                                                        _tl-vars176391_))))))))
                             (_make-splice176211_
                              (lambda (_where176324_
                                       _depth176325_
                                       _hd176326_
                                       _tl176327_)
                                (let ((_g180792_ _hd176326_)
                                      (_g180794_ _tl176327_))
                                  (begin
                                    (let ((_g180793_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g180792_)
                                                 (##vector-length _g180792_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g180793_ 2)))
                                          (error "Context expects 2 values"
                                                 _g180793_)))
                                    (let ((_g180795_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g180794_)
                                                 (##vector-length _g180794_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g180795_ 2)))
                                          (error "Context expects 2 values"
                                                 _g180795_)))
                                    (let ((_hd-e176329_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g180792_ 0)))
                                          (_hd-vars176330_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g180792_ 1))))
                                      (let ((_tl-e176331_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g180794_ 0)))
                                            (_tl-vars176332_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g180794_ 1))))
                                        (let _lp176334_ ((_rest176336_
                                                          _hd-vars176330_)
                                                         (_targets176337_ '())
                                                         (_vars176338_
                                                          _tl-vars176332_))
                                          (let* ((_rest176339176349_
                                                  _rest176336_)
                                                 (_else176341176357_
                                                  (lambda ()
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (null? _targets176337_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _stx176164_
                                                           _where176324_))
                                                        (values (let ((__tmp180796
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp180797
                                      (let ((__tmp180798
                                             (let ()
                                               (declare (not safe))
                                               (cons _tl-e176331_
                                                     _targets176337_))))
                                        (declare (not safe))
                                        (cons _hd-e176329_ __tmp180798))))
                                 (declare (not safe))
                                 (cons _depth176325_ __tmp180797))))
                          (declare (not safe))
                          (cons 'splice __tmp180796))
                        _vars176338_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K176343176366_
                                                  (lambda (_rest176360_
                                                           _hd-pat176361_
                                                           _hd-depth*176362_)
                                                    (let ((_hd-depth176364_
                                                           (fx- _hd-depth*176362_
                                                                _depth176325_)))
                                                      (if (fxpositive?
                                                           _hd-depth176364_)
                                                          (let ((__tmp180801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp180802
                                (let ()
                                  (declare (not safe))
                                  (cons 'ref _hd-pat176361_))))
                           (declare (not safe))
                           (cons __tmp180802 _targets176337_)))
                        (__tmp180799
                         (let ((__tmp180800
                                (let ()
                                  (declare (not safe))
                                  (cons _hd-depth176364_ _hd-pat176361_))))
                           (declare (not safe))
                           (cons __tmp180800 _vars176338_))))
                    (declare (not safe))
                    (_lp176334_ _rest176360_ __tmp180801 __tmp180799))
                  (if (let () (declare (not safe)) (fxzero? _hd-depth176364_))
                      (let ((__tmp180803
                             (let ((__tmp180804
                                    (let ()
                                      (declare (not safe))
                                      (cons 'pattern _hd-pat176361_))))
                               (declare (not safe))
                               (cons __tmp180804 _targets176337_))))
                        (declare (not safe))
                        (_lp176334_ _rest176360_ __tmp180803 _vars176338_))
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _stx176164_
                         _where176324_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _rest176339176349_))
                                                (let ((_hd176344176369_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _rest176339176349_)))
                                                      (_tl176345176371_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _rest176339176349_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd176344176369_))
                                                      (let ((_hd176346176374_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd176344176369_)))
                    (_tl176347176376_
                     (let () (declare (not safe)) (##cdr _hd176344176369_))))
                (let* ((_hd-depth*176379_ _hd176346176374_)
                       (_hd-pat176381_ _tl176347176376_)
                       (_rest176383_ _tl176345176371_))
                  (declare (not safe))
                  (_K176343176366_
                   _rest176383_
                   _hd-pat176381_
                   _hd-depth*176379_)))
              (let () (declare (not safe)) (_else176341176357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_else176341176357_)))))))))))
                             (_recur176212_
                              (lambda (_e176217_ _is-e?176218_)
                                (if (_is-e?176218_ _e176217_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _stx176164_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#syntax-local-pattern? _e176217_))
                                        (let* ((_pat176220_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _e176217_)))
                                               (_depth176222_
                                                (##structure-ref
                                                 _pat176220_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _depth176222_)
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'ref
                                                              _pat176220_))
                                                      (let ((__tmp180805
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _depth176222_ _pat176220_))))
                (declare (not safe))
                (cons __tmp180805 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (let ()
                                                        (declare (not safe))
                                                        (cons 'pattern
                                                              _pat176220_))
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _e176217_))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'term _e176217_))
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _e176217_))
                                                (let* ((_e176224176231_
                                                        _e176217_)
                                                       (_E176226176235_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _e176224176231_))))
                                                       (_E176225176314_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _e176224176231_))
                      (let ((_e176227176239_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _e176224176231_))))
                        (let ((_hd176228176242_
                               (let ()
                                 (declare (not safe))
                                 (##car _e176227176239_)))
                              (_tl176229176244_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e176227176239_))))
                          (let* ((_hd176247_ _hd176228176242_)
                                 (_rest176249_ _tl176229176244_))
                            (if '#t
                                (if (_is-e?176218_ _hd176247_)
                                    (let* ((_e176250176257_ _rest176249_)
                                           (_E176252176261_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad ellipsis syntax"
                                                 _stx176164_
                                                 _e176217_))))
                                           (_E176251176275_
                                            (lambda ()
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _e176250176257_))
                                                  (let ((_e176253176265_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _e176250176257_))))
                                                    (let ((_hd176254176268_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e176253176265_)))
                                                          (_tl176255176270_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e176253176265_))))
                                                      (let ((_rest176273_
                                                             _hd176254176268_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl176255176270_))
                                                            (if '#t
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (_recur176212_ _rest176273_ false))
                        (let () (declare (not safe)) (_E176252176261_)))
                    (let () (declare (not safe)) (_E176252176261_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E176252176261_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_E176251176275_)))
                                    (let _lp176279_ ((_rest176281_
                                                      _rest176249_)
                                                     (_depth176282_ '0))
                                      (let* ((_e176283176290_ _rest176281_)
                                             (_E176285176294_
                                              (lambda ()
                                                (if (fxpositive? _depth176282_)
                                                    (let ((__tmp180807
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur176212_
                                                              _hd176247_
                                                              _is-e?176218_)))
                                                          (__tmp180806
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur176212_
                                                              _rest176281_
                                                              _is-e?176218_))))
                                                      (declare (not safe))
                                                      (_make-splice176211_
                                                       _e176217_
                                                       _depth176282_
                                                       __tmp180807
                                                       __tmp180806))
                                                    (let ((__tmp180809
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur176212_
                                                              _hd176247_
                                                              _is-e?176218_)))
                                                          (__tmp180808
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_recur176212_
                                                              _rest176281_
                                                              _is-e?176218_))))
                                                      (declare (not safe))
                                                      (_make-cons176210_
                                                       __tmp180809
                                                       __tmp180808)))))
                                             (_E176284176310_
                                              (lambda ()
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _e176283176290_))
                                                    (let ((_e176286176298_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _e176283176290_))))
                                                      (let ((_hd176287176301_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e176286176298_)))
                    (_tl176288176303_
                     (let () (declare (not safe)) (##cdr _e176286176298_))))
                (let* ((_rest-hd176306_ _hd176287176301_)
                       (_rest-tl176308_ _tl176288176303_))
                  (if '#t
                      (if (_is-e?176218_ _rest-hd176306_)
                          (let ((__tmp180810
                                 (let ()
                                   (declare (not safe))
                                   (fx+ _depth176282_ '1))))
                            (declare (not safe))
                            (_lp176279_ _rest-tl176308_ __tmp180810))
                          (if (fxpositive? _depth176282_)
                              (let ((__tmp180812
                                     (let ()
                                       (declare (not safe))
                                       (_recur176212_
                                        _hd176247_
                                        _is-e?176218_)))
                                    (__tmp180811
                                     (let ()
                                       (declare (not safe))
                                       (_recur176212_
                                        _rest176281_
                                        _is-e?176218_))))
                                (declare (not safe))
                                (_make-splice176211_
                                 _e176217_
                                 _depth176282_
                                 __tmp180812
                                 __tmp180811))
                              (let ((__tmp180814
                                     (let ()
                                       (declare (not safe))
                                       (_recur176212_
                                        _hd176247_
                                        _is-e?176218_)))
                                    (__tmp180813
                                     (let ()
                                       (declare (not safe))
                                       (_recur176212_
                                        _rest176281_
                                        _is-e?176218_))))
                                (declare (not safe))
                                (_make-cons176210_ __tmp180814 __tmp180813))))
                      (let () (declare (not safe)) (_E176285176294_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E176285176294_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_E176284176310_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E176226176235_))))))
                      (let () (declare (not safe)) (_E176226176235_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_E176225176314_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _e176217_))
                                                    (let ((_g180815_
                                                           (let ((__tmp180817
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (vector->list
                           (let ()
                             (declare (not safe))
                             (gx#stx-unwrap__0 _e176217_)))))
                     (declare (not safe))
                     (_recur176212_ __tmp180817 _is-e?176218_))))
              (begin
                (let ((_g180816_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g180815_)
                             (##vector-length _g180815_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g180816_ 2)))
                      (error "Context expects 2 values" _g180816_)))
                (let ((_e176318_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g180815_ 0)))
                      (_vars176319_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g180815_ 1))))
                  (values (let ()
                            (declare (not safe))
                            (cons 'vector _e176318_))
                          _vars176319_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _e176217_))
                                                        (let ((_g180818_
                                                               (let ((__tmp180820
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (unbox (let ()
                                       (declare (not safe))
                                       (gx#stx-unwrap__0 _e176217_)))))
                         (declare (not safe))
                         (_recur176212_ __tmp180820 _is-e?176218_))))
                  (begin
                    (let ((_g180819_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g180818_)
                                 (##vector-length _g180818_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g180819_ 2)))
                          (error "Context expects 2 values" _g180819_)))
                    (let ((_e176321_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g180818_ 0)))
                          (_vars176322_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g180818_ 1))))
                      (values (let ()
                                (declare (not safe))
                                (cons 'box _e176321_))
                              _vars176322_))))
                (values (let () (declare (not safe)) (cons 'datum _e176217_))
                        '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g180821_
                             (let ()
                               (declare (not safe))
                               (_recur176212_ _e176208_ gx#ellipsis?))))
                        (begin
                          (let ((_g180822_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g180821_)
                                       (##vector-length _g180821_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g180822_ 2)))
                                (error "Context expects 2 values" _g180822_)))
                          (let ((_tree176214_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g180821_ 0)))
                                (_vars176215_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g180821_ 1))))
                            (if (let ()
                                  (declare (not safe))
                                  (null? _vars176215_))
                                _tree176214_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _stx176164_
                                   _vars176215_))))))))))
          (let* ((_e176168176178_ _stx176164_)
                 (_E176170176182_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _stx176164_))))
                 (_E176169176204_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e176168176178_))
                        (let ((_e176171176186_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e176168176178_))))
                          (let ((_hd176172176189_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e176171176186_)))
                                (_tl176173176191_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e176171176186_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl176173176191_))
                                (let ((_e176174176194_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl176173176191_))))
                                  (let ((_hd176175176197_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e176174176194_)))
                                        (_tl176176176199_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e176174176194_))))
                                    (let ((_form176202_ _hd176175176197_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl176176176199_))
                                          (if '#t
                                              (let ((__tmp180824
                                                     (let ((__tmp180825
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_parse176167_
                                                               _form176202_))))
                                                       (declare (not safe))
                                                       (_generate176166_
                                                        __tmp180825)))
                                                    (__tmp180823
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-source
                                                        _stx176164_))))
                                                (declare (not safe))
                                                (gx#stx-wrap-source
                                                 __tmp180824
                                                 __tmp180823))
                                              (let ()
                                                (declare (not safe))
                                                (_E176170176182_)))
                                          (let ()
                                            (declare (not safe))
                                            (_E176170176182_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E176170176182_)))))
                        (let () (declare (not safe)) (_E176170176182_))))))
            (let () (declare (not safe)) (_E176169176204_))))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_stx175428_
               _identifier=?175429_
               _unwrap-e175430_
               _wrap-e175431_)
        (letrec ((_generate-bindings175433_
                  (lambda (_target176028_
                           _ids176029_
                           _clauses176030_
                           _clause-ids176031_
                           _E176032_)
                    (letrec ((_generate1176034_
                              (lambda (_clause176131_
                                       _clause-id176132_
                                       _E176133_)
                                (let ((__tmp180830
                                       (let ()
                                         (declare (not safe))
                                         (cons _clause-id176132_ '())))
                                      (__tmp180826
                                       (let ((__tmp180827
                                              (let ((__tmp180829
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target176028_
                                                             '())))
                                                    (__tmp180828
                                                     (let ()
                                                       (declare (not safe))
                                                       (_generate-clause175435_
                                                        _target176028_
                                                        _ids176029_
                                                        _clause176131_
                                                        _E176133_))))
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 __tmp180829
                                                 __tmp180828))))
                                         (declare (not safe))
                                         (cons __tmp180827 '()))))
                                  (declare (not safe))
                                  (cons __tmp180830 __tmp180826)))))
                      (let _lp176036_ ((_rest176038_ _clauses176030_)
                                       (_rest-ids176039_ _clause-ids176031_)
                                       (_bindings176040_ '()))
                        (let* ((_rest176041176049_ _rest176038_)
                               (_else176043176057_
                                (lambda () _bindings176040_))
                               (_K176045176119_
                                (lambda (_rest176060_ _clause176061_)
                                  (let* ((_rest-ids176062176069_
                                          _rest-ids176039_)
                                         (_E176064176073_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids176062176069_)))
                                         (_K176065176107_
                                          (lambda (_rest-ids176076_
                                                   _clause-id176077_)
                                            (let* ((_rest-ids176078176086_
                                                    _rest-ids176076_)
                                                   (_else176080176094_
                                                    (lambda ()
                                                      (let ((__tmp180831
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (_generate1176034_
                        _clause176061_
                        _clause-id176077_
                        _E176032_))))
                (declare (not safe))
                (cons __tmp180831 _bindings176040_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K176082176099_
                                                    (lambda (_next-clause-id176097_)
                                                      (let ((__tmp180832
                                                             (let ((__tmp180833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (_generate1176034_
                               _clause176061_
                               _clause-id176077_
                               _next-clause-id176097_))))
                       (declare (not safe))
                       (cons __tmp180833 _bindings176040_))))
                (declare (not safe))
                (_lp176036_ _rest176060_ _rest-ids176076_ __tmp180832)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _rest-ids176078176086_))
                                                  (let* ((_hd176083176102_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest-ids176078176086_)))
                                                         (_next-clause-id176105_
                                                          _hd176083176102_))
                                                    (declare (not safe))
                                                    (_K176082176099_
                                                     _next-clause-id176105_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else176080176094_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _rest-ids176062176069_))
                                        (let ((_hd176066176110_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest-ids176062176069_)))
                                              (_tl176067176112_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _rest-ids176062176069_))))
                                          (let* ((_clause-id176115_
                                                  _hd176066176110_)
                                                 (_rest-ids176117_
                                                  _tl176067176112_))
                                            (declare (not safe))
                                            (_K176065176107_
                                             _rest-ids176117_
                                             _clause-id176115_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E176064176073_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest176041176049_))
                              (let ((_hd176046176122_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest176041176049_)))
                                    (_tl176047176124_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest176041176049_))))
                                (let* ((_clause176127_ _hd176046176122_)
                                       (_rest176129_ _tl176047176124_))
                                  (declare (not safe))
                                  (_K176045176119_
                                   _rest176129_
                                   _clause176127_)))
                              (let ()
                                (declare (not safe))
                                (_else176043176057_))))))))
                 (_generate-body175434_
                  (lambda (_bindings175988_ _body175989_)
                    (let _recur175991_ ((_rest175993_ _bindings175988_))
                      (let* ((_rest175994176002_ _rest175993_)
                             (_else175996176010_ (lambda () _body175989_))
                             (_K175998176016_
                              (lambda (_rest176013_ _hd176014_)
                                (let ((__tmp180835
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd176014_ '())))
                                      (__tmp180834
                                       (let ()
                                         (declare (not safe))
                                         (_recur175991_ _rest176013_))))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp180835
                                   __tmp180834)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest175994176002_))
                            (let ((_hd175999176019_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest175994176002_)))
                                  (_tl176000176021_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest175994176002_))))
                              (let* ((_hd176024_ _hd175999176019_)
                                     (_rest176026_ _tl176000176021_))
                                (declare (not safe))
                                (_K175998176016_ _rest176026_ _hd176024_)))
                            (let ()
                              (declare (not safe))
                              (_else175996176010_)))))))
                 (_generate-clause175435_
                  (lambda (_target175851_ _ids175852_ _clause175853_ _E175854_)
                    (letrec ((_generate1175856_
                              (lambda (_hd175943_ _fender175944_ _body175945_)
                                (let ((_g180836_
                                       (let ()
                                         (declare (not safe))
                                         (_parse-clause175437_
                                          _hd175943_
                                          _ids175852_))))
                                  (begin
                                    (let ((_g180837_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g180836_)
                                                 (##vector-length _g180836_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g180837_ 2)))
                                          (error "Context expects 2 values"
                                                 _g180837_)))
                                    (let ((_e175947_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g180836_ 0)))
                                          (_mvars175948_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g180836_ 1))))
                                      (let* ((_pvars175950_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _mvars175948_))))
                                             (_E175952_
                                              (let ((__tmp180838
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _target175851_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _E175854_ __tmp180838)))
                                             (_K175985_
                                              (let ((__tmp180839
                                                     (let ((__tmp180841
                                                            (map (lambda (_mvar175954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _pvar175955_)
                           (let* ((_mvar175956175963_ _mvar175954_)
                                  (_E175958175967_
                                   (lambda ()
                                     (error '"No clause matching"
                                            _mvar175956175963_)))
                                  (_K175959175973_
                                   (lambda (_depth175970_ _id175971_)
                                     (let ((__tmp180842
                                            (let ((__tmp180843
                                                   (let ((__tmp180845
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _id175971_)))
                                                         (__tmp180844
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#core-list
                                                             'quote
                                                             _pvar175955_))))
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'make-syntax-pattern
                                                      __tmp180845
                                                      __tmp180844
                                                      _depth175970_))))
                                              (declare (not safe))
                                              (cons __tmp180843 '()))))
                                       (declare (not safe))
                                       (cons _id175971_ __tmp180842)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _mvar175956175963_))
                                 (let ((_hd175960175976_
                                        (let ()
                                          (declare (not safe))
                                          (##car _mvar175956175963_)))
                                       (_tl175961175978_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _mvar175956175963_))))
                                   (let* ((_id175981_ _hd175960175976_)
                                          (_depth175983_ _tl175961175978_))
                                     (declare (not safe))
                                     (_K175959175973_
                                      _depth175983_
                                      _id175981_)))
                                 (let ()
                                   (declare (not safe))
                                   (_E175958175967_)))))
                         _mvars175948_
                         _pvars175950_))
                   (__tmp180840
                    (if (let () (declare (not safe)) (eq? _fender175944_ '#t))
                        _body175945_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _fender175944_
                           _body175945_
                           _E175952_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp180841 __tmp180840))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _pvars175950_
                                                 __tmp180839))))
                                        (let ()
                                          (declare (not safe))
                                          (_generate-match175436_
                                           _hd175943_
                                           _target175851_
                                           _e175947_
                                           _mvars175948_
                                           _K175985_
                                           _E175952_)))))))))
                      (let* ((_e175857175877_ _clause175853_)
                             (_E175866175881_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _e175857175877_))))
                             (_E175859175915_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e175857175877_))
                                    (let ((_e175867175885_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e175857175877_))))
                                      (let ((_hd175868175888_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e175867175885_)))
                                            (_tl175869175890_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e175867175885_))))
                                        (let ((_hd175893_ _hd175868175888_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl175869175890_))
                                              (let ((_e175870175895_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl175869175890_))))
                                                (let ((_hd175871175898_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e175870175895_)))
                                                      (_tl175872175900_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e175870175895_))))
                                                  (let ((_fender175903_
                                                         _hd175871175898_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl175872175900_))
                                                        (let ((_e175873175905_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl175872175900_))))
                  (let ((_hd175874175908_
                         (let () (declare (not safe)) (##car _e175873175905_)))
                        (_tl175875175910_
                         (let ()
                           (declare (not safe))
                           (##cdr _e175873175905_))))
                    (let ((_body175913_ _hd175874175908_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl175875175910_))
                          (if '#t
                              (let ()
                                (declare (not safe))
                                (_generate1175856_
                                 _hd175893_
                                 _fender175903_
                                 _body175913_))
                              (let () (declare (not safe)) (_E175866175881_)))
                          (let () (declare (not safe)) (_E175866175881_))))))
                (let () (declare (not safe)) (_E175866175881_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_E175866175881_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E175866175881_)))))
                             (_E175858175939_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _e175857175877_))
                                    (let ((_e175860175919_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _e175857175877_))))
                                      (let ((_hd175861175922_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e175860175919_)))
                                            (_tl175862175924_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e175860175919_))))
                                        (let ((_hd175927_ _hd175861175922_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl175862175924_))
                                              (let ((_e175863175929_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl175862175924_))))
                                                (let ((_hd175864175932_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e175863175929_)))
                                                      (_tl175865175934_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e175863175929_))))
                                                  (let ((_body175937_
                                                         _hd175864175932_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl175865175934_))
                                                        (if '#t
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_generate1175856_
                                                               _hd175927_
                                                               '#t
                                                               _body175937_))
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_E175859175915_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_E175859175915_))))))
                                              (let ()
                                                (declare (not safe))
                                                (_E175859175915_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_E175859175915_))))))
                        (let () (declare (not safe)) (_E175858175939_))))))
                 (_generate-match175436_
                  (lambda (_where175600_
                           _target175601_
                           _hd175602_
                           _mvars175603_
                           _K175604_
                           _E175605_)
                    (letrec ((_BUG175607_
                              (lambda (_q175849_)
                                (error '"BUG: syntax-case; generate"
                                       _stx175428_
                                       _hd175602_
                                       _q175849_)))
                             (_recur175608_
                              (lambda (_e175699_
                                       _vars175700_
                                       _target175701_
                                       _E175702_
                                       _k175703_)
                                (let* ((_e175704175711_ _e175699_)
                                       (_E175706175715_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e175704175711_)))
                                       (_K175707175837_
                                        (lambda (_body175718_ _tag175719_)
                                          (let ((_$e175721_ _tag175719_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (eq? 'any _$e175721_))
                                                (_k175703_ _vars175700_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (eq? 'id _$e175721_))
                                                    (let ((__tmp180850
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _target175701_)))
                                                          (__tmp180846
                                                           (let ((__tmp180848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp180849
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _wrap-e175431_
                                    _body175718_))))
                            (declare (not safe))
                            (gx#core-list
                             _identifier=?175429_
                             __tmp180849
                             _target175701_)))
                         (__tmp180847 (_k175703_ _vars175700_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp180848 __tmp180847 _E175702_))))
              (declare (not safe))
              (gx#core-list 'if __tmp180850 __tmp180846 _E175702_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (eq? 'var
                                                               _$e175721_))
                                                        (_k175703_
                                                         (let ((__tmp180851
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _body175718_ _target175701_))))
                   (declare (not safe))
                   (cons __tmp180851 _vars175700_)))
                (if (let () (declare (not safe)) (eq? 'cons _$e175721_))
                    (let ((_$e175724_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_$hd175725_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_$tl175726_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp180871
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _target175701_)))
                            (__tmp180852
                             (let ((__tmp180866
                                    (let ((__tmp180867
                                           (let ((__tmp180870
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$e175724_ '())))
                                                 (__tmp180868
                                                  (let ((__tmp180869
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#core-list
                                                            _unwrap-e175430_
                                                            _target175701_))))
                                                    (declare (not safe))
                                                    (cons __tmp180869 '()))))
                                             (declare (not safe))
                                             (cons __tmp180870 __tmp180868))))
                                      (declare (not safe))
                                      (cons __tmp180867 '())))
                                   (__tmp180853
                                    (let ((__tmp180856
                                           (let ((__tmp180862
                                                  (let ((__tmp180865
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$hd175725_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
                (__tmp180863
                 (let ((__tmp180864
                        (let ()
                          (declare (not safe))
                          (gx#core-list '##car _$e175724_))))
                   (declare (not safe))
                   (cons __tmp180864 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp180865
                                                          __tmp180863)))
                                                 (__tmp180857
                                                  (let ((__tmp180858
                                                         (let ((__tmp180861
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tl175726_ '())))
                       (__tmp180859
                        (let ((__tmp180860
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list '##cdr _$e175724_))))
                          (declare (not safe))
                          (cons __tmp180860 '()))))
                   (declare (not safe))
                   (cons __tmp180861 __tmp180859))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp180858 '()))))
                                             (declare (not safe))
                                             (cons __tmp180862 __tmp180857)))
                                          (__tmp180854
                                           (let* ((_body175727175734_
                                                   _body175718_)
                                                  (_E175729175738_
                                                   (lambda ()
                                                     (error '"No clause matching"
                                                            _body175727175734_)))
                                                  (_K175730175746_
                                                   (lambda (_tl175741_
                                                            _hd175742_)
                                                     (let ((__tmp180855
                                                            (lambda (_vars175744_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_recur175608_
                         _tl175741_
                         _vars175744_
                         _$tl175726_
                         _E175702_
                         _k175703_)))))
               (declare (not safe))
               (_recur175608_
                _hd175742_
                _vars175700_
                _$hd175725_
                _E175702_
                __tmp180855)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##pair? _body175727175734_))
                                                 (let ((_hd175731175749_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _body175727175734_)))
                                                       (_tl175732175751_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _body175727175734_))))
                                                   (let* ((_hd175754_
                                                           _hd175731175749_)
                                                          (_tl175756_
                                                           _tl175732175751_))
                                                     (declare (not safe))
                                                     (_K175730175746_
                                                      _tl175756_
                                                      _hd175754_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_E175729175738_))))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp180856
                                       __tmp180854))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp180866
                                __tmp180853))))
                        (declare (not safe))
                        (gx#core-list 'if __tmp180871 __tmp180852 _E175702_)))
                    (if (let () (declare (not safe)) (eq? 'splice _$e175721_))
                        (let* ((_body175757175764_ _body175718_)
                               (_E175759175768_
                                (lambda ()
                                  (error '"No clause matching"
                                         _body175757175764_)))
                               (_K175760175819_
                                (lambda (_tl175771_ _hd175772_)
                                  (let* ((_rlen175774_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-rlen175609_ _tl175771_)))
                                         (_$target175776_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_$hd175778_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_$tl175780_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_$lp175782_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_$lp-e175784_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_$lp-hd175786_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_$lp-tl175788_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_svars175790_
                                          (let ()
                                            (declare (not safe))
                                            (_splice-vars175610_ _hd175772_)))
                                         (_lvars175792_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars175790_)))
                                         (_tlvars175794_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _svars175790_)))
                                         (_linit175798_
                                          (map (lambda (_var175796_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _lvars175792_)))
                                    (letrec ((_make-loop175801_
                                              (lambda (_vars175805_)
                                                (let ((__tmp180874
                                                       (let ((__tmp180875
                                                              (let ((__tmp180911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _$lp175782_ '())))
                            (__tmp180876
                             (let ((__tmp180877
                                    (let ((__tmp180910
                                           (let ()
                                             (declare (not safe))
                                             (cons _$hd175778_ _lvars175792_)))
                                          (__tmp180878
                                           (let ((__tmp180909
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'stx-pair?
                                                     _$hd175778_)))
                                                 (__tmp180887
                                                  (let ((__tmp180904
                                                         (let ((__tmp180905
                                                                (let ((__tmp180908
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _$lp-e175784_ '())))
                              (__tmp180906
                               (let ((__tmp180907
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         _unwrap-e175430_
                                         _$hd175778_))))
                                 (declare (not safe))
                                 (cons __tmp180907 '()))))
                          (declare (not safe))
                          (cons __tmp180908 __tmp180906))))
                   (declare (not safe))
                   (cons __tmp180905 '())))
                (__tmp180888
                 (let ((__tmp180894
                        (let ((__tmp180900
                               (let ((__tmp180903
                                      (let ()
                                        (declare (not safe))
                                        (cons _$lp-hd175786_ '())))
                                     (__tmp180901
                                      (let ((__tmp180902
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##car
                                                _$lp-e175784_))))
                                        (declare (not safe))
                                        (cons __tmp180902 '()))))
                                 (declare (not safe))
                                 (cons __tmp180903 __tmp180901)))
                              (__tmp180895
                               (let ((__tmp180896
                                      (let ((__tmp180899
                                             (let ()
                                               (declare (not safe))
                                               (cons _$lp-tl175788_ '())))
                                            (__tmp180897
                                             (let ((__tmp180898
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#core-list
                                                       '##cdr
                                                       _$lp-e175784_))))
                                               (declare (not safe))
                                               (cons __tmp180898 '()))))
                                        (declare (not safe))
                                        (cons __tmp180899 __tmp180897))))
                                 (declare (not safe))
                                 (cons __tmp180896 '()))))
                          (declare (not safe))
                          (cons __tmp180900 __tmp180895)))
                       (__tmp180889
                        (let ((__tmp180890
                               (lambda (_hdvars175807_)
                                 (let ((__tmp180891
                                        (let ((__tmp180892
                                               (map (lambda (_svar175809_
                                                             _lvar175810_)
                                                      (let ((__tmp180893
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (assgetq _svar175809_ _hdvars175807_ _BUG175607_))))
                (declare (not safe))
                (gx#core-list 'cons __tmp180893 _lvar175810_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _svars175790_
                                                    _lvars175792_)))
                                          (declare (not safe))
                                          (cons _$lp-tl175788_ __tmp180892))))
                                   (declare (not safe))
                                   (cons _$lp175782_ __tmp180891)))))
                          (declare (not safe))
                          (_recur175608_
                           _hd175772_
                           '()
                           _$lp-hd175786_
                           _E175702_
                           __tmp180890))))
                   (declare (not safe))
                   (gx#core-list 'let-values __tmp180894 __tmp180889))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp180904
                                                     __tmp180888)))
                                                 (__tmp180879
                                                  (let ((__tmp180883
                                                         (map (lambda (_lvar175812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _tlvar175813_)
                        (let ((__tmp180886
                               (let ()
                                 (declare (not safe))
                                 (cons _tlvar175813_ '())))
                              (__tmp180884
                               (let ((__tmp180885
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list 'reverse _lvar175812_))))
                                 (declare (not safe))
                                 (cons __tmp180885 '()))))
                          (declare (not safe))
                          (cons __tmp180886 __tmp180884)))
                      _lvars175792_
                      _tlvars175794_))
                (__tmp180880
                 (_k175703_
                  (let ((__tmp180881
                         (lambda (_svar175815_ _tlvar175816_ _r175817_)
                           (let ((__tmp180882
                                  (let ()
                                    (declare (not safe))
                                    (cons _svar175815_ _tlvar175816_))))
                             (declare (not safe))
                             (cons __tmp180882 _r175817_)))))
                    (declare (not safe))
                    (foldl2 __tmp180881
                            _vars175805_
                            _svars175790_
                            _tlvars175794_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'let-values
                                                     __tmp180883
                                                     __tmp180880))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'if
                                              __tmp180909
                                              __tmp180887
                                              __tmp180879))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'lambda%
                                       __tmp180910
                                       __tmp180878))))
                               (declare (not safe))
                               (cons __tmp180877 '()))))
                        (declare (not safe))
                        (cons __tmp180911 __tmp180876))))
                 (declare (not safe))
                 (cons __tmp180875 '())))
              (__tmp180872
               (let ((__tmp180873
                      (let ()
                        (declare (not safe))
                        (cons _$target175776_ _linit175798_))))
                 (declare (not safe))
                 (cons _$lp175782_ __tmp180873))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp180874
                                                   __tmp180872)))))
                                      (let ((_body175803_
                                             (let ((__tmp180913
                                                    (let ((__tmp180914
                                                           (let ((__tmp180917
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp180918
                                 (let ()
                                   (declare (not safe))
                                   (cons _$tl175780_ '()))))
                            (declare (not safe))
                            (cons _$target175776_ __tmp180918)))
                         (__tmp180915
                          (let ((__tmp180916
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    'syntax-split-splice
                                    _target175701_
                                    _rlen175774_))))
                            (declare (not safe))
                            (cons __tmp180916 '()))))
                     (declare (not safe))
                     (cons __tmp180917 __tmp180915))))
              (declare (not safe))
              (cons __tmp180914 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp180912
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur175608_
                                                       _tl175771_
                                                       _vars175700_
                                                       _$tl175780_
                                                       _E175702_
                                                       _make-loop175801_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp180913
                                                __tmp180912))))
                                        (let ((__tmp180922
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _target175701_)))
                                              (__tmp180919
                                               (if (let ()
                                                     (declare (not safe))
                                                     (zero? _rlen175774_))
                                                   _body175803_
                                                   (let ((__tmp180920
                                                          (let ((__tmp180921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _target175701_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp180921 _rlen175774_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp180920
                                                      _body175803_
                                                      _E175702_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp180922
                                           __tmp180919
                                           _E175702_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _body175757175764_))
                              (let ((_hd175761175822_
                                     (let ()
                                       (declare (not safe))
                                       (##car _body175757175764_)))
                                    (_tl175762175824_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _body175757175764_))))
                                (let* ((_hd175827_ _hd175761175822_)
                                       (_tl175829_ _tl175762175824_))
                                  (declare (not safe))
                                  (_K175760175819_ _tl175829_ _hd175827_)))
                              (let () (declare (not safe)) (_E175759175768_))))
                        (if (let ()
                              (declare (not safe))
                              (eq? 'null _$e175721_))
                            (let ((__tmp180924
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list 'stx-null? _target175701_)))
                                  (__tmp180923 (_k175703_ _vars175700_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp180924
                               __tmp180923
                               _E175702_))
                            (if (let ()
                                  (declare (not safe))
                                  (eq? 'vector _$e175721_))
                                (let ((_$e175831_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp180933
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _target175701_)))
                                        (__tmp180925
                                         (let ((__tmp180927
                                                (let ((__tmp180928
                                                       (let ((__tmp180932
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$e175831_ '())))
                     (__tmp180929
                      (let ((__tmp180930
                             (let ((__tmp180931
                                    (let ()
                                      (declare (not safe))
                                      (gx#core-list
                                       _unwrap-e175430_
                                       _target175701_))))
                               (declare (not safe))
                               (gx#core-list 'vector->list __tmp180931))))
                        (declare (not safe))
                        (cons __tmp180930 '()))))
                 (declare (not safe))
                 (cons __tmp180932 __tmp180929))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp180928 '())))
                                               (__tmp180926
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur175608_
                                                   _body175718_
                                                   _vars175700_
                                                   _$e175831_
                                                   _E175702_
                                                   _k175703_))))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp180927
                                            __tmp180926))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp180933
                                     __tmp180925
                                     _E175702_)))
                                (if (let ()
                                      (declare (not safe))
                                      (eq? 'box _$e175721_))
                                    (let ((_$e175833_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp180942
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _target175701_)))
                                            (__tmp180934
                                             (let ((__tmp180936
                                                    (let ((__tmp180937
                                                           (let ((__tmp180941
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$e175833_ '())))
                         (__tmp180938
                          (let ((__tmp180939
                                 (let ((__tmp180940
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list
                                           _unwrap-e175430_
                                           _target175701_))))
                                   (declare (not safe))
                                   (gx#core-list 'unbox __tmp180940))))
                            (declare (not safe))
                            (cons __tmp180939 '()))))
                     (declare (not safe))
                     (cons __tmp180941 __tmp180938))))
              (declare (not safe))
              (cons __tmp180937 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp180935
                                                    (let ()
                                                      (declare (not safe))
                                                      (_recur175608_
                                                       _body175718_
                                                       _vars175700_
                                                       _$e175833_
                                                       _E175702_
                                                       _k175703_))))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp180936
                                                __tmp180935))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp180942
                                         __tmp180934
                                         _E175702_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (eq? 'datum _$e175721_))
                                        (let ((_$e175835_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp180952
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target175701_)))
                                                (__tmp180943
                                                 (let ((__tmp180947
                                                        (let ((__tmp180948
                                                               (let ((__tmp180951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _$e175835_ '())))
                             (__tmp180949
                              (let ((__tmp180950
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list 'stx-e _target175701_))))
                                (declare (not safe))
                                (cons __tmp180950 '()))))
                         (declare (not safe))
                         (cons __tmp180951 __tmp180949))))
                  (declare (not safe))
                  (cons __tmp180948 '())))
               (__tmp180944
                (let ((__tmp180946
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _$e175835_ _body175718_)))
                      (__tmp180945 (_k175703_ _vars175700_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp180946 __tmp180945 _E175702_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp180947
                                                    __tmp180944))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp180952
                                             __tmp180943
                                             _E175702_)))
                                        (let ()
                                          (declare (not safe))
                                          (_BUG175607_ _e175699_)))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _e175704175711_))
                                      (let ((_hd175708175840_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e175704175711_)))
                                            (_tl175709175842_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e175704175711_))))
                                        (let* ((_tag175845_ _hd175708175840_)
                                               (_body175847_ _tl175709175842_))
                                          (declare (not safe))
                                          (_K175707175837_
                                           _body175847_
                                           _tag175845_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E175706175715_))))))
                             (_splice-rlen175609_
                              (lambda (_e175661_)
                                (let _lp175663_ ((_e175665_ _e175661_)
                                                 (_n175666_ '0))
                                  (let* ((_e175667175674_ _e175665_)
                                         (_E175669175678_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e175667175674_)))
                                         (_K175670175687_
                                          (lambda (_body175681_ _tag175682_)
                                            (let ((_$e175684_ _tag175682_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'splice _$e175684_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _stx175428_
                                                     _where175600_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (eq? 'cons _$e175684_))
                                                      (let ((__tmp180954
                                                             (cdr _body175681_))
                                                            (__tmp180953
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (fx+ _n175666_ '1))))
                (declare (not safe))
                (_lp175663_ __tmp180954 __tmp180953))
              _n175666_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e175667175674_))
                                        (let ((_hd175671175690_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e175667175674_)))
                                              (_tl175672175692_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e175667175674_))))
                                          (let* ((_tag175695_ _hd175671175690_)
                                                 (_body175697_
                                                  _tl175672175692_))
                                            (declare (not safe))
                                            (_K175670175687_
                                             _body175697_
                                             _tag175695_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E175669175678_)))))))
                             (_splice-vars175610_
                              (lambda (_e175617_)
                                (let _recur175619_ ((_e175621_ _e175617_)
                                                    (_vars175622_ '()))
                                  (let* ((_e175623175630_ _e175621_)
                                         (_E175625175634_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _e175623175630_)))
                                         (_K175626175649_
                                          (lambda (_body175637_ _tag175638_)
                                            (let ((_$e175640_ _tag175638_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (eq? 'var _$e175640_))
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _body175637_
                                                          _vars175622_))
                                                  (if (or (let ()
                                                            (declare
                                                              (not safe))
                                                            (eq? 'cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e175640_))
                  (let () (declare (not safe)) (eq? 'splice _$e175640_)))
              (let ((__tmp180957 (cdr _body175637_))
                    (__tmp180955
                     (let ((__tmp180956 (car _body175637_)))
                       (declare (not safe))
                       (_recur175619_ __tmp180956 _vars175622_))))
                (declare (not safe))
                (_recur175619_ __tmp180957 __tmp180955))
              (if (or (let () (declare (not safe)) (eq? 'vector _$e175640_))
                      (let () (declare (not safe)) (eq? 'box _$e175640_)))
                  (let ()
                    (declare (not safe))
                    (_recur175619_ _body175637_ _vars175622_))
                  _vars175622_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _e175623175630_))
                                        (let ((_hd175627175652_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e175623175630_)))
                                              (_tl175628175654_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e175623175630_))))
                                          (let* ((_tag175657_ _hd175627175652_)
                                                 (_body175659_
                                                  _tl175628175654_))
                                            (declare (not safe))
                                            (_K175626175649_
                                             _body175659_
                                             _tag175657_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E175625175634_)))))))
                             (_make-body175611_
                              (lambda (_vars175613_)
                                (let ((__tmp180958
                                       (map (lambda (_mvar175615_)
                                              (let ((__tmp180959
                                                     (car _mvar175615_)))
                                                (declare (not safe))
                                                (assgetq __tmp180959
                                                         _vars175613_
                                                         _BUG175607_)))
                                            _mvars175603_)))
                                  (declare (not safe))
                                  (cons _K175604_ __tmp180958)))))
                      (let ()
                        (declare (not safe))
                        (_recur175608_
                         _hd175602_
                         '()
                         _target175601_
                         _E175605_
                         _make-body175611_)))))
                 (_parse-clause175437_
                  (lambda (_hd175506_ _ids175507_)
                    (let _recur175509_ ((_e175511_ _hd175506_)
                                        (_vars175512_ '())
                                        (_depth175513_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _e175511_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _e175511_))
                              (values '(any) _vars175512_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _e175511_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _stx175428_
                                     _hd175506_))
                                  (if (let ((__tmp180960
                                             (lambda (_id175515_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _e175511_
                                                  _id175515_)))))
                                        (declare (not safe))
                                        (find __tmp180960 _ids175507_))
                                      (values (let ()
                                                (declare (not safe))
                                                (cons 'id _e175511_))
                                              _vars175512_)
                                      (if (let ((__tmp180961
                                                 (lambda (_var175517_)
                                                   (let ((__tmp180962
                                                          (car _var175517_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _e175511_
                                                      __tmp180962)))))
                                            (declare (not safe))
                                            (find __tmp180961 _vars175512_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _stx175428_
                                             _e175511_))
                                          (values (let ()
                                                    (declare (not safe))
                                                    (cons 'var _e175511_))
                                                  (let ((__tmp180963
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _e175511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _depth175513_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp180963
                                                          _vars175512_)))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _e175511_))
                              (let* ((_e175518175525_ _e175511_)
                                     (_E175520175529_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _e175518175525_))))
                                     (_E175519175590_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _e175518175525_))
                                            (let ((_e175521175533_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _e175518175525_))))
                                              (let ((_hd175522175536_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e175521175533_)))
                                                    (_tl175523175538_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e175521175533_))))
                                                (let* ((_hd175541_
                                                        _hd175522175536_)
                                                       (_rest175543_
                                                        _tl175523175538_))
                                                  (if '#t
                                                      (let* ((_make-pair175558_
                                                              (lambda (_tag175545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd175546_
                               _tl175547_)
                        (let* ((_hd-depth175549_
                                (if (let ()
                                      (declare (not safe))
                                      (eq? _tag175545_ 'splice))
                                    (let ()
                                      (declare (not safe))
                                      (fx+ _depth175513_ '1))
                                    _depth175513_))
                               (_g180964_
                                (let ()
                                  (declare (not safe))
                                  (_recur175509_
                                   _hd175546_
                                   _vars175512_
                                   _hd-depth175549_))))
                          (begin
                            (let ((_g180965_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g180964_)
                                         (##vector-length _g180964_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g180965_ 2)))
                                  (error "Context expects 2 values"
                                         _g180965_)))
                            (let ((_hd175551_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g180964_ 0)))
                                  (_vars175552_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g180964_ 1))))
                              (let ((_g180966_
                                     (let ()
                                       (declare (not safe))
                                       (_recur175509_
                                        _tl175547_
                                        _vars175552_
                                        _depth175513_))))
                                (begin
                                  (let ((_g180967_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g180966_)
                                               (##vector-length _g180966_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g180967_ 2)))
                                        (error "Context expects 2 values"
                                               _g180967_)))
                                  (let ((_tl175554_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g180966_ 0)))
                                        (_vars175555_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g180966_ 1))))
                                    (let ()
                                      (values (let ((__tmp180968
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _hd175551_
                                                             _tl175554_))))
                                                (declare (not safe))
                                                (cons _tag175545_ __tmp180968))
                                              _vars175555_))))))))))
                     (_e175559175566_ _rest175543_)
                     (_E175561175570_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (_make-pair175558_ 'cons _hd175541_ _rest175543_))))
                     (_E175560175586_
                      (lambda ()
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _e175559175566_))
                            (let ((_e175562175574_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _e175559175566_))))
                              (let ((_hd175563175577_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e175562175574_)))
                                    (_tl175564175579_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e175562175574_))))
                                (let* ((_rest-hd175582_ _hd175563175577_)
                                       (_rest-tl175584_ _tl175564175579_))
                                  (if '#t
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#ellipsis? _rest-hd175582_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair175558_
                                             'splice
                                             _hd175541_
                                             _rest-tl175584_))
                                          (let ()
                                            (declare (not safe))
                                            (_make-pair175558_
                                             'cons
                                             _hd175541_
                                             _rest175543_)))
                                      (let ()
                                        (declare (not safe))
                                        (_E175561175570_))))))
                            (let () (declare (not safe)) (_E175561175570_))))))
                (let () (declare (not safe)) (_E175560175586_)))
              (let () (declare (not safe)) (_E175520175529_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_E175520175529_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E175519175590_)))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _e175511_))
                                  (values '(null) _vars175512_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _e175511_))
                                      (let ((_g180969_
                                             (let ((__tmp180971
                                                    (vector->list
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _e175511_)))))
                                               (declare (not safe))
                                               (_recur175509_
                                                __tmp180971
                                                _vars175512_
                                                _depth175513_))))
                                        (begin
                                          (let ((_g180970_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g180969_)
                                                       (##vector-length
                                                        _g180969_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g180970_ 2)))
                                                (error "Context expects 2 values"
                                                       _g180970_)))
                                          (let ((_e175594_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g180969_ 0)))
                                                (_vars175595_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g180969_
                                                    1))))
                                            (values (let ()
                                                      (declare (not safe))
                                                      (cons 'vector _e175594_))
                                                    _vars175595_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _e175511_))
                                          (let ((_g180972_
                                                 (let ((__tmp180974
                                                        (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _e175511_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_recur175509_
                                                    __tmp180974
                                                    _vars175512_
                                                    _depth175513_))))
                                            (begin
                                              (let ((_g180973_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g180972_)
                                                           (##vector-length
                                                            _g180972_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g180973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g180973_)))
                                              (let ((_e175597_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g180972_
                                                        0)))
                                                    (_vars175598_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g180972_
                                                        1))))
                                                (values (let ()
                                                          (declare (not safe))
                                                          (cons 'box
                                                                _e175597_))
                                                        _vars175598_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _e175511_))
                                              (values (let ((__tmp180975
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _e175511_))))
                (declare (not safe))
                (cons 'datum __tmp180975))
              _vars175512_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _stx175428_
                                                 _e175511_))))))))))))
          (let* ((_e175438175451_ _stx175428_)
                 (_E175440175455_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _e175438175451_))))
                 (_E175439175502_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _e175438175451_))
                        (let ((_e175441175459_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _e175438175451_))))
                          (let ((_hd175442175462_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e175441175459_)))
                                (_tl175443175464_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e175441175459_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl175443175464_))
                                (let ((_e175444175467_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl175443175464_))))
                                  (let ((_hd175445175470_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e175444175467_)))
                                        (_tl175446175472_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e175444175467_))))
                                    (let ((_expr175475_ _hd175445175470_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl175446175472_))
                                          (let ((_e175447175477_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl175446175472_))))
                                            (let ((_hd175448175480_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e175447175477_)))
                                                  (_tl175449175482_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e175447175477_))))
                                              (let* ((_ids175485_
                                                      _hd175448175480_)
                                                     (_clauses175487_
                                                      _tl175449175482_))
                                                (if '#t
                                                    (if (let ((__tmp180976
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier-list? _ids175485_))))
                  (declare (not safe))
                  (not __tmp180976))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad template identifier list"
                   _stx175428_
                   _ids175485_))
                (if (let ((__tmp180977
                           (let ()
                             (declare (not safe))
                             (gx#stx-list? _clauses175487_))))
                      (declare (not safe))
                      (not __tmp180977))
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; clauses expected"
                       _stx175428_))
                    (let* ((_ids175489_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _ids175485_)))
                           (_clauses175491_
                            (let ()
                              (declare (not safe))
                              (gx#syntax->list _clauses175487_)))
                           (_clause-ids175493_
                            (let ()
                              (declare (not safe))
                              (gx#gentemps _clauses175491_)))
                           (_E175495_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_target175497_
                            (let () (declare (not safe)) (gx#genident__0)))
                           (_first175499_
                            (if (let ()
                                  (declare (not safe))
                                  (null? _clauses175491_))
                                _E175495_
                                (car _clause-ids175493_))))
                      (let ((__tmp180979
                             (let ((__tmp180980
                                    (let ((__tmp180982
                                           (let ((__tmp180987
                                                  (let ((__tmp180988
                                                         (let ((__tmp180993
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _E175495_ '())))
                       (__tmp180989
                        (let ((__tmp180990
                               (let ((__tmp180992
                                      (let ()
                                        (declare (not safe))
                                        (cons _target175497_ '())))
                                     (__tmp180991
                                      (let ()
                                        (declare (not safe))
                                        (gx#core-list
                                         'raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _target175497_))))
                                 (declare (not safe))
                                 (gx#core-list
                                  'lambda%
                                  __tmp180992
                                  __tmp180991))))
                          (declare (not safe))
                          (cons __tmp180990 '()))))
                   (declare (not safe))
                   (cons __tmp180993 __tmp180989))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp180988 '())))
                                                 (__tmp180983
                                                  (let ((__tmp180986
                                                         (let ()
                                                           (declare (not safe))
                                                           (_generate-bindings175433_
                                                            _target175497_
                                                            _ids175489_
                                                            _clauses175491_
                                                            _clause-ids175493_
                                                            _E175495_)))
                                                        (__tmp180984
                                                         (let ((__tmp180985
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _expr175475_ '()))))
                   (declare (not safe))
                   (cons _first175499_ __tmp180985))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-body175434_
                                                     __tmp180986
                                                     __tmp180984))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'let-values
                                              __tmp180987
                                              __tmp180983)))
                                          (__tmp180981
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-source _stx175428_))))
                                      (declare (not safe))
                                      (gx#stx-wrap-source
                                       __tmp180982
                                       __tmp180981))))
                               (declare (not safe))
                               (gx#core-list
                                'begin-annotation
                                '@syntax-case
                                __tmp180980)))
                            (__tmp180978
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx175428_))))
                        (declare (not safe))
                        (gx#stx-wrap-source __tmp180979 __tmp180978)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E175440175455_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_E175440175455_))))))
                                (let ()
                                  (declare (not safe))
                                  (_E175440175455_)))))
                        (let () (declare (not safe)) (_E175440175455_))))))
            (let () (declare (not safe)) (_E175439175502_))))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_stx176138_)
        (let* ((_identifier=?176140_ 'free-identifier=?)
               (_unwrap-e176142_ 'syntax-e)
               (_wrap-e176144_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx176138_
           _identifier=?176140_
           _unwrap-e176142_
           _wrap-e176144_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_stx176146_ _identifier=?176147_)
        (let* ((_unwrap-e176149_ 'syntax-e) (_wrap-e176151_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx176146_
           _identifier=?176147_
           _unwrap-e176149_
           _wrap-e176151_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_stx176153_ _identifier=?176154_ _unwrap-e176155_)
        (let ((_wrap-e176157_ 'quote-syntax))
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _stx176153_
           _identifier=?176154_
           _unwrap-e176155_
           _wrap-e176157_))))
    (define gx#macro-expand-syntax-case
      (lambda _g180995_
        (let ((_g180994_ (let () (declare (not safe)) (##length _g180995_))))
          (cond ((let () (declare (not safe)) (##fx= _g180994_ 1))
                 (apply (lambda (_stx176138_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__0 _stx176138_)))
                        _g180995_))
                ((let () (declare (not safe)) (##fx= _g180994_ 2))
                 (apply (lambda (_stx176146_ _identifier=?176147_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__1
                             _stx176146_
                             _identifier=?176147_)))
                        _g180995_))
                ((let () (declare (not safe)) (##fx= _g180994_ 3))
                 (apply (lambda (_stx176153_
                                 _identifier=?176154_
                                 _unwrap-e176155_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__2
                             _stx176153_
                             _identifier=?176154_
                             _unwrap-e176155_)))
                        _g180995_))
                ((let () (declare (not safe)) (##fx= _g180994_ 4))
                 (apply (lambda (_stx176159_
                                 _identifier=?176160_
                                 _unwrap-e176161_
                                 _wrap-e176162_)
                          (let ()
                            (declare (not safe))
                            (gx#macro-expand-syntax-case__%
                             _stx176159_
                             _identifier=?176160_
                             _unwrap-e176161_
                             _wrap-e176162_)))
                        _g180995_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g180995_))))))
    (define gx#syntax-local-pattern?
      (lambda (_stx175425_)
        (if (let () (declare (not safe)) (gx#identifier? _stx175425_))
            (let ((__tmp180996
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _stx175425_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp180996 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_hd175383_ . _rest175384_)
        (let ((_len175386_ (length _hd175383_)))
          (let _lp175388_ ((_rest175390_ _rest175384_))
            (let* ((_rest175391175399_ _rest175390_)
                   (_else175393175407_ (lambda () '#!void))
                   (_K175395175413_
                    (lambda (_rest175410_ _hd175411_)
                      (if (fx= _len175386_ (length _hd175411_))
                          (let ()
                            (declare (not safe))
                            (_lp175388_ _rest175410_))
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _hd175411_))))))
              (if (let () (declare (not safe)) (##pair? _rest175391175399_))
                  (let ((_hd175396175416_
                         (let ()
                           (declare (not safe))
                           (##car _rest175391175399_)))
                        (_tl175397175418_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest175391175399_))))
                    (let* ((_hd175421_ _hd175396175416_)
                           (_rest175423_ _tl175397175418_))
                      (declare (not safe))
                      (_K175395175413_ _rest175423_ _hd175421_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_stx175341_ _n175342_)
        (let _lp175344_ ((_rest175346_ _stx175341_) (_r175347_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _rest175346_))
              (let* ((_g175348175355_
                      (let () (declare (not safe)) (gx#syntax-e _rest175346_)))
                     (_E175350175359_
                      (lambda ()
                        (error '"No clause matching" _g175348175355_)))
                     (_K175351175365_
                      (lambda (_rest175362_ _hd175363_)
                        (let ((__tmp180997
                               (let ()
                                 (declare (not safe))
                                 (cons _hd175363_ _r175347_))))
                          (declare (not safe))
                          (_lp175344_ _rest175362_ __tmp180997)))))
                (if (let () (declare (not safe)) (##pair? _g175348175355_))
                    (let ((_hd175352175368_
                           (let ()
                             (declare (not safe))
                             (##car _g175348175355_)))
                          (_tl175353175370_
                           (let ()
                             (declare (not safe))
                             (##cdr _g175348175355_))))
                      (let* ((_hd175373_ _hd175352175368_)
                             (_rest175375_ _tl175353175370_))
                        (declare (not safe))
                        (_K175351175365_ _rest175375_ _hd175373_)))
                    (let () (declare (not safe)) (_E175350175359_))))
              (let _lp175377_ ((_n175379_ _n175342_)
                               (_l175380_ _r175347_)
                               (_r175381_ _rest175346_))
                (if (let () (declare (not safe)) (null? _l175380_))
                    (values _l175380_ _r175381_)
                    (if (fxpositive? _n175379_)
                        (let ((__tmp181001
                               (let ()
                                 (declare (not safe))
                                 (fx- _n175379_ '1)))
                              (__tmp181000 (cdr _l175380_))
                              (__tmp180998
                               (let ((__tmp180999 (car _l175380_)))
                                 (declare (not safe))
                                 (cons __tmp180999 _r175381_))))
                          (declare (not safe))
                          (_lp175377_ __tmp181001 __tmp181000 __tmp180998))
                        (values (reverse _l175380_) _r175381_))))))))))
