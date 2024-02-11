(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:4>[1]#_g49666_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<MOP>$<MOP:4>[1]#typedef-body?|
      (lambda (_stx21394_)
        (letrec ((_body-opt?21397_
                  (lambda (_key21400_)
                    (memq (gx#stx-e _key21400_)
                          '(id:
                            struct:
                            name:
                            constructor:
                            transparent:
                            final:
                            print:
                            equal:)))))
          (gx#stx-plist? _stx21394_ _body-opt?21397_))))
    (define |gerbil/core$<MOP>$<MOP:4>[1]#generate-defclass|
      (lambda (_stx19260_ _id19262_ _super-ref19263_ _slots19264_ _body19265_)
        (letrec* ((_wrap19267_
                   (lambda (_e-stx21391_)
                     (gx#stx-wrap-source
                      _e-stx21391_
                      (gx#stx-source _stx19260_))))
                  (_make-id19269_
                   (if (uninterned-symbol? (gx#stx-e _id19262_))
                       (lambda _g49329_ (gx#genident _id19262_))
                       (lambda _args21388_
                         (apply gx#stx-identifier _id19262_ _args21388_))))
                  (_get-mixin-slots19270_
                   (lambda (_super21362_ _slots21364_)
                     (letrec* ((_tab21366_
                                (let ()
                                  (declare (not safe))
                                  (make-table 'test: eq?)))
                               (_dedup21368_
                                (lambda (_mixins21373_)
                                  (let _lp21376_ ((_rest21379_ _mixins21373_)
                                                  (_r21381_ '()))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest21379_))
                                        (let ((_slot21383_ (car _rest21379_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (table-ref
                                                 _tab21366_
                                                 _slot21383_
                                                 '#f))
                                              (let ((__tmp49332
                                                     (cdr _rest21379_)))
                                                (declare (not safe))
                                                (_lp21376_
                                                 __tmp49332
                                                 _r21381_))
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (table-set!
                                                   _tab21366_
                                                   _slot21383_
                                                   '#t))
                                                (let ((__tmp49331
                                                       (cdr _rest21379_))
                                                      (__tmp49330
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _slot21383_
                                                               _r21381_))))
                                                  (declare (not safe))
                                                  (_lp21376_
                                                   __tmp49331
                                                   __tmp49330)))))
                                        (reverse _r21381_))))))
                       (gx#stx-for-each
                        (lambda (_slot21370_)
                          (let ((__tmp49333 (gx#stx-e _slot21370_)))
                            (declare (not safe))
                            (table-set! _tab21366_ __tmp49333 '#t)))
                        _slots21364_)
                       (if (let () (declare (not safe)) (not _super21362_))
                           '()
                           (if (gx#identifier? _super21362_)
                               (let ((__tmp49335
                                      (let ()
                                        (declare (not safe))
                                        (_get-mixin-slots-r19271_
                                         _super21362_))))
                                 (declare (not safe))
                                 (_dedup21368_ __tmp49335))
                               (let ((__tmp49334
                                      (concatenate
                                       (map _get-mixin-slots-r19271_
                                            _super21362_))))
                                 (declare (not safe))
                                 (_dedup21368_ __tmp49334)))))))
                  (_get-mixin-slots-r19271_
                   (lambda (_type-id21356_)
                     (let ((_info21359_
                            (gx#syntax-local-value _type-id21356_)))
                       (append (let ((__obj47242 _info21359_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj47242
                                        'gerbil.core#class-type-info::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj47242
                                        '4
                                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                        '#f))
                                     (class-slot-ref
                                      gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                      __obj47242
                                      'slots)))
                               (concatenate
                                (map _get-mixin-slots-r19271_
                                     (let ((__obj47243 _info21359_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj47243
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj47243
                                              '3
                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                            __obj47243
                                            'super))))))))))
          (gx#check-duplicate-identifiers _slots19264_ _stx19260_)
          (let* ((_name19273_ (symbol->string (gx#stx-e _id19262_)))
                 (_super19276_ (map gx#syntax-local-value _super-ref19263_))
                 (_struct?19279_ (gx#stx-getq 'struct: _body19265_))
                 (_g1928219290_
                  (lambda (_g1928319286_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1928319286_)))
                 (_g1928121352_
                  (lambda (_g1928319294_)
                    ((lambda (_L19297_)
                       (let ()
                         (let* ((_g1931319321_
                                 (lambda (_g1931419317_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g1931419317_)))
                                (_g1931221348_
                                 (lambda (_g1931419325_)
                                   ((lambda (_L19328_)
                                      (let ()
                                        (let* ((_g1934119349_
                                                (lambda (_g1934219345_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g1934219345_)))
                                               (_g1934021344_
                                                (lambda (_g1934219353_)
                                                  ((lambda (_L19356_)
                                                     (let ()
                                                       (let* ((_g1936919377_
                                                               (lambda (_g1937019373_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g1937019373_)))
                      (_g1936821340_
                       (lambda (_g1937019381_)
                         ((lambda (_L19384_)
                            (let ()
                              (let* ((_g1939719405_
                                      (lambda (_g1939819401_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g1939819401_)))
                                     (_g1939621336_
                                      (lambda (_g1939819409_)
                                        ((lambda (_L19412_)
                                           (let ()
                                             (let* ((_g1942519442_
                                                     (lambda (_g1942619438_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g1942619438_)))
                                                    (_g1942421332_
                                                     (lambda (_g1942619446_)
                                                       (if (gx#stx-pair/null?
                                                            _g1942619446_)
                                                           (let ((_g49336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _g1942619446_ '0)))
                     (begin
                       (let ((_g49337_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g49336_)
                                    (##vector-length _g49336_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g49337_ 2)))
                             (error "Context expects 2 values" _g49337_)))
                       (let ((_target1942819449_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g49336_ 0)))
                             (_tl1943019452_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g49336_ 1))))
                         (if (gx#stx-null? _tl1943019452_)
                             (letrec ((_loop1943119455_
                                       (lambda (_hd1942919459_
                                                _slot1943519462_)
                                         (if (gx#stx-pair? _hd1942919459_)
                                             (let ((_e1943219465_
                                                    (gx#syntax-e
                                                     _hd1942919459_)))
                                               (let ((_lp-hd1943319469_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1943219465_)))
                                                     (_lp-tl1943419472_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1943219465_))))
                                                 (let ((__tmp49605
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _lp-hd1943319469_
                                                                _slot1943519462_))))
                                                   (declare (not safe))
                                                   (_loop1943119455_
                                                    _lp-tl1943419472_
                                                    __tmp49605))))
                                             (let ((_slot1943619475_
                                                    (reverse _slot1943519462_)))
                                               ((lambda (_L19479_)
                                                  (let ()
                                                    (let* ((_g1949619513_
                                                            (lambda (_g1949719509_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g1949719509_)))
                                                           (_g1949521323_
                                                            (lambda (_g1949719517_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1949719517_)
                          (let ((_g49338_
                                 (gx#syntax-split-splice _g1949719517_ '0)))
                            (begin
                              (let ((_g49339_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g49338_)
                                           (##vector-length _g49338_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g49339_ 2)))
                                    (error "Context expects 2 values"
                                           _g49339_)))
                              (let ((_target1949919520_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g49338_ 0)))
                                    (_tl1950119523_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g49338_ 1))))
                                (if (gx#stx-null? _tl1950119523_)
                                    (letrec ((_loop1950219526_
                                              (lambda (_hd1950019530_
                                                       _getf1950619533_)
                                                (if (gx#stx-pair?
                                                     _hd1950019530_)
                                                    (let ((_e1950319536_
                                                           (gx#syntax-e
                                                            _hd1950019530_)))
                                                      (let ((_lp-hd1950419540_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1950319536_)))
                    (_lp-tl1950519543_
                     (let () (declare (not safe)) (##cdr _e1950319536_))))
                (let ((__tmp49603
                       (let ()
                         (declare (not safe))
                         (cons _lp-hd1950419540_ _getf1950619533_))))
                  (declare (not safe))
                  (_loop1950219526_ _lp-tl1950519543_ __tmp49603))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_getf1950719546_
                                                           (reverse _getf1950619533_)))
                                                      ((lambda (_L19550_)
                                                         (let ()
                                                           (let* ((_g1956719584_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g1956819580_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g1956819580_)))
                          (_g1956621314_
                           (lambda (_g1956819588_)
                             (if (gx#stx-pair/null? _g1956819588_)
                                 (let ((_g49340_
                                        (gx#syntax-split-splice
                                         _g1956819588_
                                         '0)))
                                   (begin
                                     (let ((_g49341_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g49340_)
                                                  (##vector-length _g49340_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g49341_ 2)))
                                           (error "Context expects 2 values"
                                                  _g49341_)))
                                     (let ((_target1957019591_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g49340_ 0)))
                                           (_tl1957219594_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g49340_ 1))))
                                       (if (gx#stx-null? _tl1957219594_)
                                           (letrec ((_loop1957319597_
                                                     (lambda (_hd1957119601_
                                                              _setf1957719604_)
                                                       (if (gx#stx-pair?
                                                            _hd1957119601_)
                                                           (let ((_e1957419607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1957119601_)))
                     (let ((_lp-hd1957519611_
                            (let ()
                              (declare (not safe))
                              (##car _e1957419607_)))
                           (_lp-tl1957619614_
                            (let ()
                              (declare (not safe))
                              (##cdr _e1957419607_))))
                       (let ((__tmp49601
                              (let ()
                                (declare (not safe))
                                (cons _lp-hd1957519611_ _setf1957719604_))))
                         (declare (not safe))
                         (_loop1957319597_ _lp-tl1957619614_ __tmp49601))))
                   (let ((_setf1957819617_ (reverse _setf1957719604_)))
                     ((lambda (_L19621_)
                        (let ()
                          (let* ((_mixin-slots19638_
                                  (let ()
                                    (declare (not safe))
                                    (_get-mixin-slots19270_
                                     _super-ref19263_
                                     _slots19264_)))
                                 (_g1964119658_
                                  (lambda (_g1964219654_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1964219654_)))
                                 (_g1964021310_
                                  (lambda (_g1964219662_)
                                    (if (gx#stx-pair/null? _g1964219662_)
                                        (let ((_g49342_
                                               (gx#syntax-split-splice
                                                _g1964219662_
                                                '0)))
                                          (begin
                                            (let ((_g49343_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g49342_)
                                                         (##vector-length
                                                          _g49342_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g49343_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g49343_)))
                                            (let ((_target1964419665_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g49342_
                                                      0)))
                                                  (_tl1964619668_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g49342_
                                                      1))))
                                              (if (gx#stx-null? _tl1964619668_)
                                                  (letrec ((_loop1964719671_
                                                            (lambda (_hd1964519675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _mixin-slot1965119678_)
                      (if (gx#stx-pair? _hd1964519675_)
                          (let ((_e1964819681_ (gx#syntax-e _hd1964519675_)))
                            (let ((_lp-hd1964919685_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1964819681_)))
                                  (_lp-tl1965019688_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1964819681_))))
                              (let ((__tmp49600
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd1964919685_
                                             _mixin-slot1965119678_))))
                                (declare (not safe))
                                (_loop1964719671_
                                 _lp-tl1965019688_
                                 __tmp49600))))
                          (let ((_mixin-slot1965219691_
                                 (reverse _mixin-slot1965119678_)))
                            ((lambda (_L19695_)
                               (let ()
                                 (let* ((_g1971319730_
                                         (lambda (_g1971419726_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g1971419726_)))
                                        (_g1971221301_
                                         (lambda (_g1971419734_)
                                           (if (gx#stx-pair/null?
                                                _g1971419734_)
                                               (let ((_g49344_
                                                      (gx#syntax-split-splice
                                                       _g1971419734_
                                                       '0)))
                                                 (begin
                                                   (let ((_g49345_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g49344_)
                        (##vector-length _g49344_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g49345_ 2)))
                 (error "Context expects 2 values" _g49345_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target1971619737_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g49344_
                                                             0)))
                                                         (_tl1971819740_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g49344_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl1971819740_)
                                                         (letrec ((_loop1971919743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd1971719747_ _mixin-getf1972319750_)
                             (if (gx#stx-pair? _hd1971719747_)
                                 (let ((_e1972019753_
                                        (gx#syntax-e _hd1971719747_)))
                                   (let ((_lp-hd1972119757_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e1972019753_)))
                                         (_lp-tl1972219760_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e1972019753_))))
                                     (let ((__tmp49598
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd1972119757_
                                                    _mixin-getf1972319750_))))
                                       (declare (not safe))
                                       (_loop1971919743_
                                        _lp-tl1972219760_
                                        __tmp49598))))
                                 (let ((_mixin-getf1972419763_
                                        (reverse _mixin-getf1972319750_)))
                                   ((lambda (_L19767_)
                                      (let ()
                                        (let* ((_g1978419801_
                                                (lambda (_g1978519797_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g1978519797_)))
                                               (_g1978321292_
                                                (lambda (_g1978519805_)
                                                  (if (gx#stx-pair/null?
                                                       _g1978519805_)
                                                      (let ((_g49346_
                                                             (gx#syntax-split-splice
                                                              _g1978519805_
                                                              '0)))
                                                        (begin
                                                          (let ((_g49347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g49346_)
                               (##vector-length _g49346_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g49347_ 2)))
                        (error "Context expects 2 values" _g49347_)))
                  (let ((_target1978719808_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g49346_ 0)))
                        (_tl1978919811_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g49346_ 1))))
                    (if (gx#stx-null? _tl1978919811_)
                        (letrec ((_loop1979019814_
                                  (lambda (_hd1978819818_
                                           _mixin-setf1979419821_)
                                    (if (gx#stx-pair? _hd1978819818_)
                                        (let ((_e1979119824_
                                               (gx#syntax-e _hd1978819818_)))
                                          (let ((_lp-hd1979219828_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1979119824_)))
                                                (_lp-tl1979319831_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1979119824_))))
                                            (let ((__tmp49596
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd1979219828_
                                                           _mixin-setf1979419821_))))
                                              (declare (not safe))
                                              (_loop1979019814_
                                               _lp-tl1979319831_
                                               __tmp49596))))
                                        (let ((_mixin-setf1979519834_
                                               (reverse _mixin-setf1979419821_)))
                                          ((lambda (_L19838_)
                                             (let ()
                                               (let* ((_g1985519872_
                                                       (lambda (_g1985619868_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1985619868_)))
                                                      (_g1985421275_
                                                       (lambda (_g1985619876_)
                                                         (if (gx#stx-pair/null?
                                                              _g1985619876_)
                                                             (let ((_g49348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g1985619876_ '0)))
                       (begin
                         (let ((_g49349_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g49348_)
                                      (##vector-length _g49348_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g49349_ 2)))
                               (error "Context expects 2 values" _g49349_)))
                         (let ((_target1985819879_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g49348_ 0)))
                               (_tl1986019882_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g49348_ 1))))
                           (if (gx#stx-null? _tl1986019882_)
                               (letrec ((_loop1986119885_
                                         (lambda (_hd1985919889_
                                                  _ugetf1986519892_)
                                           (if (gx#stx-pair? _hd1985919889_)
                                               (let ((_e1986219895_
                                                      (gx#syntax-e
                                                       _hd1985919889_)))
                                                 (let ((_lp-hd1986319899_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1986219895_)))
                                                       (_lp-tl1986419902_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1986219895_))))
                                                   (let ((__tmp49593
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _lp-hd1986319899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _ugetf1986519892_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_loop1986119885_
                                                      _lp-tl1986419902_
                                                      __tmp49593))))
                                               (let ((_ugetf1986619905_
                                                      (reverse _ugetf1986519892_)))
                                                 ((lambda (_L19909_)
                                                    (let ()
                                                      (let* ((_g1992619943_
                                                              (lambda (_g1992719939_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g1992719939_)))
                     (_g1992521258_
                      (lambda (_g1992719947_)
                        (if (gx#stx-pair/null? _g1992719947_)
                            (let ((_g49350_
                                   (gx#syntax-split-splice _g1992719947_ '0)))
                              (begin
                                (let ((_g49351_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g49350_)
                                             (##vector-length _g49350_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g49351_ 2)))
                                      (error "Context expects 2 values"
                                             _g49351_)))
                                (let ((_target1992919950_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g49350_ 0)))
                                      (_tl1993119953_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g49350_ 1))))
                                  (if (gx#stx-null? _tl1993119953_)
                                      (letrec ((_loop1993219956_
                                                (lambda (_hd1993019960_
                                                         _usetf1993619963_)
                                                  (if (gx#stx-pair?
                                                       _hd1993019960_)
                                                      (let ((_e1993319966_
                                                             (gx#syntax-e
                                                              _hd1993019960_)))
                                                        (let ((_lp-hd1993419970_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1993319966_)))
                      (_lp-tl1993519973_
                       (let () (declare (not safe)) (##cdr _e1993319966_))))
                  (let ((__tmp49590
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd1993419970_ _usetf1993619963_))))
                    (declare (not safe))
                    (_loop1993219956_ _lp-tl1993519973_ __tmp49590))))
              (let ((_usetf1993719976_ (reverse _usetf1993619963_)))
                ((lambda (_L19980_)
                   (let ()
                     (let* ((_g1999720014_
                             (lambda (_g1999820010_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g1999820010_)))
                            (_g1999621241_
                             (lambda (_g1999820018_)
                               (if (gx#stx-pair/null? _g1999820018_)
                                   (let ((_g49352_
                                          (gx#syntax-split-splice
                                           _g1999820018_
                                           '0)))
                                     (begin
                                       (let ((_g49353_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g49352_)
                                                    (##vector-length _g49352_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g49353_ 2)))
                                             (error "Context expects 2 values"
                                                    _g49353_)))
                                       (let ((_target2000020021_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g49352_ 0)))
                                             (_tl2000220024_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g49352_ 1))))
                                         (if (gx#stx-null? _tl2000220024_)
                                             (letrec ((_loop2000320027_
                                                       (lambda (_hd2000120031_
                                                                _mixin-ugetf2000720034_)
                                                         (if (gx#stx-pair?
                                                              _hd2000120031_)
                                                             (let ((_e2000420037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd2000120031_)))
                       (let ((_lp-hd2000520041_
                              (let ()
                                (declare (not safe))
                                (##car _e2000420037_)))
                             (_lp-tl2000620044_
                              (let ()
                                (declare (not safe))
                                (##cdr _e2000420037_))))
                         (let ((__tmp49587
                                (let ()
                                  (declare (not safe))
                                  (cons _lp-hd2000520041_
                                        _mixin-ugetf2000720034_))))
                           (declare (not safe))
                           (_loop2000320027_ _lp-tl2000620044_ __tmp49587))))
                     (let ((_mixin-ugetf2000820047_
                            (reverse _mixin-ugetf2000720034_)))
                       ((lambda (_L20051_)
                          (let ()
                            (let* ((_g2006820085_
                                    (lambda (_g2006920081_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g2006920081_)))
                                   (_g2006721224_
                                    (lambda (_g2006920089_)
                                      (if (gx#stx-pair/null? _g2006920089_)
                                          (let ((_g49354_
                                                 (gx#syntax-split-splice
                                                  _g2006920089_
                                                  '0)))
                                            (begin
                                              (let ((_g49355_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g49354_)
                                                           (##vector-length
                                                            _g49354_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g49355_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g49355_)))
                                              (let ((_target2007120092_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g49354_
                                                        0)))
                                                    (_tl2007320095_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g49354_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl2007320095_)
                                                    (letrec ((_loop2007420098_
                                                              (lambda (_hd2007220102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _mixin-usetf2007820105_)
                        (if (gx#stx-pair? _hd2007220102_)
                            (let ((_e2007520108_ (gx#syntax-e _hd2007220102_)))
                              (let ((_lp-hd2007620112_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2007520108_)))
                                    (_lp-tl2007720115_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2007520108_))))
                                (let ((__tmp49584
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd2007620112_
                                               _mixin-usetf2007820105_))))
                                  (declare (not safe))
                                  (_loop2007420098_
                                   _lp-tl2007720115_
                                   __tmp49584))))
                            (let ((_mixin-usetf2007920118_
                                   (reverse _mixin-usetf2007820105_)))
                              ((lambda (_L20122_)
                                 (let ()
                                   (let* ((_type-slots20153_
                                           (if (gx#stx-null? _slots19264_)
                                               '()
                                               (let ((__tmp49356
                                                      (let ((__tmp49357
                                                             (begin
                                                               (gx#syntax-check-splice-targets
                                                                _L19621_
                                                                _L19550_
                                                                _L19479_)
                                                               (let ((__tmp49358
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2013820143_
                                       _g2013920146_
                                       _g2014020148_
                                       _g2014120150_)
                                (let ((__tmp49359
                                       (let ((__tmp49360
                                              (let ((__tmp49361
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2013820143_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g2013920146_
                                                      __tmp49361))))
                                         (declare (not safe))
                                         (cons _g2014020148_ __tmp49360))))
                                  (declare (not safe))
                                  (cons __tmp49359 _g2014120150_)))))
                         (declare (not safe))
                         (foldr* __tmp49358 '() _L19621_ _L19550_ _L19479_)))))
                (declare (not safe))
                (cons __tmp49357 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'slots: __tmp49356))))
                                          (_type-mixin-slots20170_
                                           (if (gx#stx-null?
                                                _mixin-slots19638_)
                                               '()
                                               (let ((__tmp49362
                                                      (let ((__tmp49363
                                                             (begin
                                                               (gx#syntax-check-splice-targets
                                                                _L19838_
                                                                _L19767_
                                                                _L19695_)
                                                               (let ((__tmp49364
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2015520160_
                                       _g2015620163_
                                       _g2015720165_
                                       _g2015820167_)
                                (let ((__tmp49365
                                       (let ((__tmp49366
                                              (let ((__tmp49367
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2015520160_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g2015620163_
                                                      __tmp49367))))
                                         (declare (not safe))
                                         (cons _g2015720165_ __tmp49366))))
                                  (declare (not safe))
                                  (cons __tmp49365 _g2015820167_)))))
                         (declare (not safe))
                         (foldr* __tmp49364 '() _L19838_ _L19767_ _L19695_)))))
                (declare (not safe))
                (cons __tmp49363 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'mixin: __tmp49362))))
                                          (_type-name20177_
                                           (let ((__tmp49368
                                                  (let ((__tmp49369
                                                         (let ((_$e20173_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'name:
                         _body19265_)))
                   (if _$e20173_ _$e20173_ _id19262_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49369 '()))))
                                             (declare (not safe))
                                             (cons 'name: __tmp49368)))
                                          (_type-id20184_
                                           (let ((__tmp49370
                                                  (let ((__tmp49371
                                                         (let ((_$e20180_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'id:
                         _body19265_)))
                   (if _$e20180_
                       _$e20180_
                       (let ()
                         (declare (not safe))
                         (|gerbil/core$<MOP>$<MOP:1>[1]#make-class-type-id|
                          _L19297_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49371 '()))))
                                             (declare (not safe))
                                             (cons 'id: __tmp49370)))
                                          (_type-constructor20199_
                                           (let ((_$e20195_
                                                  (let ((_e2018620188_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _body19265_)))
                                                    (if _e2018620188_
                                                        (let* ((_e20192_
                                                                _e2018620188_)
                                                               (__tmp49372
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _e20192_ '()))))
                  (declare (not safe))
                  (cons 'constructor: __tmp49372))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e20195_ _$e20195_ '())))
                                          (_properties20233_
                                           (let* ((_properties20202_
                                                   (if (gx#stx-e
                                                        (gx#stx-getq
                                                         'transparent:
                                                         _body19265_))
                                                       (let ((__tmp49373
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'transparent: '#t))))
                 (declare (not safe))
                 (cons __tmp49373 '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_properties20215_
                                                   (let ((_$e20205_
                                                          (gx#stx-e
                                                           (gx#stx-getq
                                                            'print:
                                                            _body19265_))))
                                                     (if _$e20205_
                                                         ((lambda (_print20209_)
                                                            (let* ((_print20212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (if (let ()
                                  (declare (not safe))
                                  (eq? _print20209_ '#t))
                                _slots19264_
                                _print20209_))
                           (__tmp49374
                            (let ()
                              (declare (not safe))
                              (cons 'print: _print20212_))))
                      (declare (not safe))
                      (cons __tmp49374 _properties20202_)))
                  _$e20205_)
                 _properties20202_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_properties20228_
                                                   (let ((_$e20218_
                                                          (gx#stx-e
                                                           (gx#stx-getq
                                                            'equal:
                                                            _body19265_))))
                                                     (if _$e20218_
                                                         ((lambda (_equal20222_)
                                                            (let* ((_equal20225_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (if (let ()
                                  (declare (not safe))
                                  (eq? _equal20222_ '#t))
                                _slots19264_
                                _equal20222_))
                           (__tmp49375
                            (let ()
                              (declare (not safe))
                              (cons 'equal: _equal20225_))))
                      (declare (not safe))
                      (cons __tmp49375 _properties20215_)))
                  _$e20218_)
                 _properties20215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _properties20228_))
                                          (_type-properties20274_
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _properties20233_))
                                               '()
                                               (let* ((_g2023620244_
                                                       (lambda (_g2023720240_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2023720240_)))
                                                      (_g2023520270_
                                                       (lambda (_g2023720248_)
                                                         ((lambda (_L20251_)
                                                            (let ()
                                                              (let ((__tmp49376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp49377
                                    (let ((__tmp49379
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp49378
                                           (let ()
                                             (declare (not safe))
                                             (cons _L20251_ '()))))
                                      (declare (not safe))
                                      (cons __tmp49379 __tmp49378))))
                               (declare (not safe))
                               (cons __tmp49377 '()))))
                        (declare (not safe))
                        (cons 'properties: __tmp49376))))
                  _g2023720248_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2023520270_
                                                  _properties20233_))))
                                          (_final?20277_
                                           (gx#stx-e
                                            (gx#stx-getq 'final: _body19265_)))
                                          (_type-final20280_
                                           (let ((__tmp49380
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _final?20277_ '()))))
                                             (declare (not safe))
                                             (cons 'final: __tmp49380)))
                                          (_g2028320300_
                                           (lambda (_g2028420296_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2028420296_)))
                                          (_g2028221220_
                                           (lambda (_g2028420304_)
                                             (if (gx#stx-pair/null?
                                                  _g2028420304_)
                                                 (let ((_g49381_
                                                        (gx#syntax-split-splice
                                                         _g2028420304_
                                                         '0)))
                                                   (begin
                                                     (let ((_g49382_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g49381_)
                          (##vector-length _g49381_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g49382_ 2)))
                   (error "Context expects 2 values" _g49382_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2028620307_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g49381_
                                                               0)))
                                                           (_tl2028820310_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g49381_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl2028820310_)
                                                           (letrec ((_loop2028920313_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2028720317_ _type-body2029320320_)
                               (if (gx#stx-pair? _hd2028720317_)
                                   (let ((_e2029020323_
                                          (gx#syntax-e _hd2028720317_)))
                                     (let ((_lp-hd2029120327_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2029020323_)))
                                           (_lp-tl2029220330_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2029020323_))))
                                       (let ((__tmp49577
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd2029120327_
                                                      _type-body2029320320_))))
                                         (declare (not safe))
                                         (_loop2028920313_
                                          _lp-tl2029220330_
                                          __tmp49577))))
                                   (let ((_type-body2029420333_
                                          (reverse _type-body2029320320_)))
                                     ((lambda (_L20337_)
                                        (let ()
                                          (let* ((_g2035520363_
                                                  (lambda (_g2035620359_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2035620359_)))
                                                 (_g2035421208_
                                                  (lambda (_g2035620367_)
                                                    ((lambda (_L20370_)
                                                       (let ()
                                                         (let* ((_g2038320391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2038420387_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2038420387_)))
                        (_g2038221137_
                         (lambda (_g2038420395_)
                           ((lambda (_L20398_)
                              (let ()
                                (let* ((_g2041120419_
                                        (lambda (_g2041220415_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2041220415_)))
                                       (_g2041021102_
                                        (lambda (_g2041220423_)
                                          ((lambda (_L20426_)
                                             (let ()
                                               (let* ((_g2043920447_
                                                       (lambda (_g2044020443_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2044020443_)))
                                                      (_g2043821016_
                                                       (lambda (_g2044020451_)
                                                         ((lambda (_L20454_)
                                                            (let ()
                                                              (let* ((_g2046720475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2046820471_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2046820471_)))
                             (_g2046621004_
                              (lambda (_g2046820479_)
                                ((lambda (_L20482_)
                                   (let ()
                                     (let* ((_g2049520503_
                                             (lambda (_g2049620499_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2049620499_)))
                                            (_g2049421000_
                                             (lambda (_g2049620507_)
                                               ((lambda (_L20510_)
                                                  (let ()
                                                    (let* ((_g2052320531_
                                                            (lambda (_g2052420527_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2052420527_)))
                                                           (_g2052220996_
                                                            (lambda (_g2052420535_)
                                                              ((lambda (_L20538_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2055120559_
                                   (lambda (_g2055220555_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2055220555_)))
                                  (_g2055020925_
                                   (lambda (_g2055220563_)
                                     ((lambda (_L20566_)
                                        (let ()
                                          (let* ((_g2057920587_
                                                  (lambda (_g2058020583_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2058020583_)))
                                                 (_g2057820921_
                                                  (lambda (_g2058020591_)
                                                    ((lambda (_L20594_)
                                                       (let ()
                                                         (let* ((_g2060720615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2060820611_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2060820611_)))
                        (_g2060620917_
                         (lambda (_g2060820619_)
                           ((lambda (_L20622_)
                              (let ()
                                (let* ((_g2063520643_
                                        (lambda (_g2063620639_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2063620639_)))
                                       (_g2063420913_
                                        (lambda (_g2063620647_)
                                          ((lambda (_L20650_)
                                             (let ()
                                               (let* ((_g2066320671_
                                                       (lambda (_g2066420667_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2066420667_)))
                                                      (_g2066220887_
                                                       (lambda (_g2066420675_)
                                                         ((lambda (_L20678_)
                                                            (let ()
                                                              (let* ((_g2069120699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2069220695_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2069220695_)))
                             (_g2069020861_
                              (lambda (_g2069220703_)
                                ((lambda (_L20706_)
                                   (let ()
                                     (let* ((_g2071920727_
                                             (lambda (_g2072020723_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2072020723_)))
                                            (_g2071820835_
                                             (lambda (_g2072020731_)
                                               ((lambda (_L20734_)
                                                  (let ()
                                                    (let* ((_g2074720755_
                                                            (lambda (_g2074820751_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2074820751_)))
                                                           (_g2074620809_
                                                            (lambda (_g2074820759_)
                                                              ((lambda (_L20762_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2077520783_
                                   (lambda (_g2077620779_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2077620779_)))
                                  (_g2077420805_
                                   (lambda (_g2077620787_)
                                     ((lambda (_L20790_)
                                        (let ()
                                          (let ()
                                            (let ((__tmp49383
                                                   (let ((__tmp49386
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin))
                                                         (__tmp49384
                                                          (let ((__tmp49385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L20790_ '()))))
                    (declare (not safe))
                    (cons _L20370_ __tmp49385))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49386
                                                           __tmp49384))))
                                              (declare (not safe))
                                              (_wrap19267_ __tmp49383)))))
                                      _g2077620787_)))
                                  (__tmp49387
                                   (let ((__tmp49388
                                          (let ((__tmp49421
                                                 (gx#datum->syntax
                                                  '#f
                                                  'defsyntax))
                                                (__tmp49389
                                                 (let ((__tmp49390
                                                        (let ((__tmp49391
                                                               (let ((__tmp49420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'make-class-type-info))
                             (__tmp49392
                              (let ((__tmp49393
                                     (let ((__tmp49394
                                            (let ((__tmp49395
                                                   (let ((__tmp49396
                                                          (let ((__tmp49397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp49398
                                (let ((__tmp49399
                                       (let ((__tmp49400
                                              (let ((__tmp49401
                                                     (let ((__tmp49402
                                                            (let ((__tmp49403
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49404
                                  (let ((__tmp49405
                                         (let ((__tmp49406
                                                (let ((__tmp49407
                                                       (let ((__tmp49408
                                                              (let ((__tmp49409
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp49410
                                    (let ((__tmp49411
                                           (let ((__tmp49412
                                                  (let ((__tmp49413
                                                         (let ((__tmp49414
                                                                (let ((__tmp49415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49416
                                      (let ((__tmp49417
                                             (let ((__tmp49418
                                                    (let ((__tmp49419
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L20762_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons 'unchecked-mutators: __tmp49419))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L20734_ __tmp49418))))
                                        (declare (not safe))
                                        (cons 'unchecked-accessors:
                                              __tmp49417))))
                                 (declare (not safe))
                                 (cons _L20706_ __tmp49416))))
                          (declare (not safe))
                          (cons 'mutators: __tmp49415))))
                   (declare (not safe))
                   (cons _L20678_ __tmp49414))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'accessors:
                                                          __tmp49413))))
                                             (declare (not safe))
                                             (cons _L20650_ __tmp49412))))
                                      (declare (not safe))
                                      (cons 'predicate: __tmp49411))))
                               (declare (not safe))
                               (cons _L20622_ __tmp49410))))
                        (declare (not safe))
                        (cons 'constructor: __tmp49409))))
                 (declare (not safe))
                 (cons _L20594_ __tmp49408))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'type-descriptor:
                                                        __tmp49407))))
                                           (declare (not safe))
                                           (cons _L20566_ __tmp49406))))
                                    (declare (not safe))
                                    (cons 'constructor-method: __tmp49405))))
                             (declare (not safe))
                             (cons _L20538_ __tmp49404))))
                      (declare (not safe))
                      (cons 'final?: __tmp49403))))
               (declare (not safe))
               (cons _L20510_ __tmp49402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'struct?: __tmp49401))))
                                         (declare (not safe))
                                         (cons _L20454_ __tmp49400))))
                                  (declare (not safe))
                                  (cons 'super: __tmp49399))))
                           (declare (not safe))
                           (cons _L20482_ __tmp49398))))
                    (declare (not safe))
                    (cons 'slots: __tmp49397))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L20426_
                                                           __tmp49396))))
                                              (declare (not safe))
                                              (cons 'name: __tmp49395))))
                                       (declare (not safe))
                                       (cons _L20398_ __tmp49394))))
                                (declare (not safe))
                                (cons 'id: __tmp49393))))
                         (declare (not safe))
                         (cons __tmp49420 __tmp49392))))
                  (declare (not safe))
                  (cons __tmp49391 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L19297_
                                                         __tmp49390))))
                                            (declare (not safe))
                                            (cons __tmp49421 __tmp49389))))
                                     (declare (not safe))
                                     (_wrap19267_ __tmp49388))))
                             (declare (not safe))
                             (_g2077420805_ __tmp49387))))
                       _g2074820759_)))
                   (__tmp49422
                    (let ((__tmp49449 (gx#datum->syntax '#f '@list))
                          (__tmp49423
                           (begin
                             (gx#syntax-check-splice-targets _L19980_ _L19479_)
                             (let ((__tmp49437
                                    (lambda (_g2081220819_
                                             _g2081320822_
                                             _g2081420824_)
                                      (let ((__tmp49438
                                             (let ((__tmp49448
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp49439
                                                    (let ((__tmp49445
                                                           (let ((__tmp49447
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp49446
                          (let ()
                            (declare (not safe))
                            (cons _g2081320822_ '()))))
                     (declare (not safe))
                     (cons __tmp49447 __tmp49446)))
                  (__tmp49440
                   (let ((__tmp49441
                          (let ((__tmp49442
                                 (let ((__tmp49444
                                        (gx#datum->syntax '#f 'quote-syntax))
                                       (__tmp49443
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2081220819_ '()))))
                                   (declare (not safe))
                                   (cons __tmp49444 __tmp49443))))
                            (declare (not safe))
                            (cons __tmp49442 '()))))
                     (declare (not safe))
                     (cons ':: __tmp49441))))
              (declare (not safe))
              (cons __tmp49445 __tmp49440))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49448 __tmp49439))))
                                        (declare (not safe))
                                        (cons __tmp49438 _g2081420824_))))
                                   (__tmp49424
                                    (begin
                                      (gx#syntax-check-splice-targets
                                       _L20122_
                                       _L19695_)
                                      (let ((__tmp49425
                                             (lambda (_g2081520827_
                                                      _g2081620830_
                                                      _g2081720832_)
                                               (let ((__tmp49426
                                                      (let ((__tmp49436
                                                             (gx#datum->syntax
                                                              '#f
                                                              '@list))
                                                            (__tmp49427
                                                             (let ((__tmp49433
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49435 (gx#datum->syntax '#f 'quote))
                                  (__tmp49434
                                   (let ()
                                     (declare (not safe))
                                     (cons _g2081620830_ '()))))
                              (declare (not safe))
                              (cons __tmp49435 __tmp49434)))
                           (__tmp49428
                            (let ((__tmp49429
                                   (let ((__tmp49430
                                          (let ((__tmp49432
                                                 (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax))
                                                (__tmp49431
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g2081520827_ '()))))
                                            (declare (not safe))
                                            (cons __tmp49432 __tmp49431))))
                                     (declare (not safe))
                                     (cons __tmp49430 '()))))
                              (declare (not safe))
                              (cons ':: __tmp49429))))
                       (declare (not safe))
                       (cons __tmp49433 __tmp49428))))
                (declare (not safe))
                (cons __tmp49436 __tmp49427))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49426
                                                       _g2081720832_)))))
                                        (declare (not safe))
                                        (foldr2 __tmp49425
                                                '()
                                                _L20122_
                                                _L19695_)))))
                               (declare (not safe))
                               (foldr2 __tmp49437
                                       __tmp49424
                                       _L19980_
                                       _L19479_)))))
                      (declare (not safe))
                      (cons __tmp49449 __tmp49423))))
              (declare (not safe))
              (_g2074620809_ __tmp49422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2072020731_)))
                                            (__tmp49450
                                             (let ((__tmp49477
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp49451
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L19909_
                                                       _L19479_)
                                                      (let ((__tmp49465
                                                             (lambda (_g2083820845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2083920848_
                              _g2084020850_)
                       (let ((__tmp49466
                              (let ((__tmp49476 (gx#datum->syntax '#f '@list))
                                    (__tmp49467
                                     (let ((__tmp49473
                                            (let ((__tmp49475
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp49474
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2083920848_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp49475 __tmp49474)))
                                           (__tmp49468
                                            (let ((__tmp49469
                                                   (let ((__tmp49470
                                                          (let ((__tmp49472
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote-syntax))
                        (__tmp49471
                         (let ()
                           (declare (not safe))
                           (cons _g2083820845_ '()))))
                    (declare (not safe))
                    (cons __tmp49472 __tmp49471))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49470 '()))))
                                              (declare (not safe))
                                              (cons ':: __tmp49469))))
                                       (declare (not safe))
                                       (cons __tmp49473 __tmp49468))))
                                (declare (not safe))
                                (cons __tmp49476 __tmp49467))))
                         (declare (not safe))
                         (cons __tmp49466 _g2084020850_))))
                    (__tmp49452
                     (begin
                       (gx#syntax-check-splice-targets _L20051_ _L19695_)
                       (let ((__tmp49453
                              (lambda (_g2084120853_
                                       _g2084220856_
                                       _g2084320858_)
                                (let ((__tmp49454
                                       (let ((__tmp49464
                                              (gx#datum->syntax '#f '@list))
                                             (__tmp49455
                                              (let ((__tmp49461
                                                     (let ((__tmp49463
                                                            (gx#datum->syntax
                                                             '#f
                                                             'quote))
                                                           (__tmp49462
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _g2084220856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp49463 __tmp49462)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp49456
                                                     (let ((__tmp49457
                                                            (let ((__tmp49458
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49460
                                  (gx#datum->syntax '#f 'quote-syntax))
                                 (__tmp49459
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2084120853_ '()))))
                             (declare (not safe))
                             (cons __tmp49460 __tmp49459))))
                      (declare (not safe))
                      (cons __tmp49458 '()))))
               (declare (not safe))
               (cons ':: __tmp49457))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49461 __tmp49456))))
                                         (declare (not safe))
                                         (cons __tmp49464 __tmp49455))))
                                  (declare (not safe))
                                  (cons __tmp49454 _g2084320858_)))))
                         (declare (not safe))
                         (foldr2 __tmp49453 '() _L20051_ _L19695_)))))
                (declare (not safe))
                (foldr2 __tmp49465 __tmp49452 _L19909_ _L19479_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49477 __tmp49451))))
                                       (declare (not safe))
                                       (_g2071820835_ __tmp49450))))
                                 _g2069220703_)))
                             (__tmp49478
                              (let ((__tmp49505 (gx#datum->syntax '#f '@list))
                                    (__tmp49479
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _L19621_
                                        _L19479_)
                                       (let ((__tmp49493
                                              (lambda (_g2086420871_
                                                       _g2086520874_
                                                       _g2086620876_)
                                                (let ((__tmp49494
                                                       (let ((__tmp49504
                                                              (gx#datum->syntax
                                                               '#f
                                                               '@list))
                                                             (__tmp49495
                                                              (let ((__tmp49501
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp49503 (gx#datum->syntax '#f 'quote))
                                   (__tmp49502
                                    (let ()
                                      (declare (not safe))
                                      (cons _g2086520874_ '()))))
                               (declare (not safe))
                               (cons __tmp49503 __tmp49502)))
                            (__tmp49496
                             (let ((__tmp49497
                                    (let ((__tmp49498
                                           (let ((__tmp49500
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote-syntax))
                                                 (__tmp49499
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g2086420871_ '()))))
                                             (declare (not safe))
                                             (cons __tmp49500 __tmp49499))))
                                      (declare (not safe))
                                      (cons __tmp49498 '()))))
                               (declare (not safe))
                               (cons ':: __tmp49497))))
                        (declare (not safe))
                        (cons __tmp49501 __tmp49496))))
                 (declare (not safe))
                 (cons __tmp49504 __tmp49495))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49494
                                                        _g2086620876_))))
                                             (__tmp49480
                                              (begin
                                                (gx#syntax-check-splice-targets
                                                 _L19838_
                                                 _L19695_)
                                                (let ((__tmp49481
                                                       (lambda (_g2086720879_
                                                                _g2086820882_
                                                                _g2086920884_)
                                                         (let ((__tmp49482
                                                                (let ((__tmp49492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp49483
                               (let ((__tmp49489
                                      (let ((__tmp49491
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp49490
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2086820882_ '()))))
                                        (declare (not safe))
                                        (cons __tmp49491 __tmp49490)))
                                     (__tmp49484
                                      (let ((__tmp49485
                                             (let ((__tmp49486
                                                    (let ((__tmp49488
                                                           (gx#datum->syntax
                                                            '#f
                                                            'quote-syntax))
                                                          (__tmp49487
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _g2086720879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp49488 __tmp49487))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49486 '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp49485))))
                                 (declare (not safe))
                                 (cons __tmp49489 __tmp49484))))
                          (declare (not safe))
                          (cons __tmp49492 __tmp49483))))
                   (declare (not safe))
                   (cons __tmp49482 _g2086920884_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr2 __tmp49481
                                                          '()
                                                          _L19838_
                                                          _L19695_)))))
                                         (declare (not safe))
                                         (foldr2 __tmp49493
                                                 __tmp49480
                                                 _L19621_
                                                 _L19479_)))))
                                (declare (not safe))
                                (cons __tmp49505 __tmp49479))))
                        (declare (not safe))
                        (_g2069020861_ __tmp49478))))
                  _g2066420675_)))
              (__tmp49506
               (let ((__tmp49533 (gx#datum->syntax '#f '@list))
                     (__tmp49507
                      (begin
                        (gx#syntax-check-splice-targets _L19550_ _L19479_)
                        (let ((__tmp49521
                               (lambda (_g2089020897_
                                        _g2089120900_
                                        _g2089220902_)
                                 (let ((__tmp49522
                                        (let ((__tmp49532
                                               (gx#datum->syntax '#f '@list))
                                              (__tmp49523
                                               (let ((__tmp49529
                                                      (let ((__tmp49531
                                                             (gx#datum->syntax
                                                              '#f
                                                              'quote))
                                                            (__tmp49530
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _g2089120900_ '()))))
                (declare (not safe))
                (cons __tmp49531 __tmp49530)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49524
                                                      (let ((__tmp49525
                                                             (let ((__tmp49526
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49528
                                   (gx#datum->syntax '#f 'quote-syntax))
                                  (__tmp49527
                                   (let ()
                                     (declare (not safe))
                                     (cons _g2089020897_ '()))))
                              (declare (not safe))
                              (cons __tmp49528 __tmp49527))))
                       (declare (not safe))
                       (cons __tmp49526 '()))))
                (declare (not safe))
                (cons ':: __tmp49525))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49529
                                                       __tmp49524))))
                                          (declare (not safe))
                                          (cons __tmp49532 __tmp49523))))
                                   (declare (not safe))
                                   (cons __tmp49522 _g2089220902_))))
                              (__tmp49508
                               (begin
                                 (gx#syntax-check-splice-targets
                                  _L19767_
                                  _L19695_)
                                 (let ((__tmp49509
                                        (lambda (_g2089320905_
                                                 _g2089420908_
                                                 _g2089520910_)
                                          (let ((__tmp49510
                                                 (let ((__tmp49520
                                                        (gx#datum->syntax
                                                         '#f
                                                         '@list))
                                                       (__tmp49511
                                                        (let ((__tmp49517
                                                               (let ((__tmp49519
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'quote))
                             (__tmp49518
                              (let ()
                                (declare (not safe))
                                (cons _g2089420908_ '()))))
                         (declare (not safe))
                         (cons __tmp49519 __tmp49518)))
                      (__tmp49512
                       (let ((__tmp49513
                              (let ((__tmp49514
                                     (let ((__tmp49516
                                            (gx#datum->syntax
                                             '#f
                                             'quote-syntax))
                                           (__tmp49515
                                            (let ()
                                              (declare (not safe))
                                              (cons _g2089320905_ '()))))
                                       (declare (not safe))
                                       (cons __tmp49516 __tmp49515))))
                                (declare (not safe))
                                (cons __tmp49514 '()))))
                         (declare (not safe))
                         (cons ':: __tmp49513))))
                  (declare (not safe))
                  (cons __tmp49517 __tmp49512))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49520
                                                         __tmp49511))))
                                            (declare (not safe))
                                            (cons __tmp49510 _g2089520910_)))))
                                   (declare (not safe))
                                   (foldr2 __tmp49509
                                           '()
                                           _L19767_
                                           _L19695_)))))
                          (declare (not safe))
                          (foldr2 __tmp49521 __tmp49508 _L19550_ _L19479_)))))
                 (declare (not safe))
                 (cons __tmp49533 __tmp49507))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2066220887_ __tmp49506))))
                                           _g2063620647_)))
                                       (__tmp49534
                                        (let ((__tmp49536
                                               (gx#datum->syntax
                                                '#f
                                                'quote-syntax))
                                              (__tmp49535
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L19384_ '()))))
                                          (declare (not safe))
                                          (cons __tmp49536 __tmp49535))))
                                  (declare (not safe))
                                  (_g2063420913_ __tmp49534))))
                            _g2060820619_)))
                        (__tmp49537
                         (let ((__tmp49539
                                (gx#datum->syntax '#f 'quote-syntax))
                               (__tmp49538
                                (let ()
                                  (declare (not safe))
                                  (cons _L19356_ '()))))
                           (declare (not safe))
                           (cons __tmp49539 __tmp49538))))
                   (declare (not safe))
                   (_g2060620917_ __tmp49537))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2058020591_)))
                                                 (__tmp49540
                                                  (let ((__tmp49542
                                                         (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax))
                                                        (__tmp49541
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L19328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49542
                                                          __tmp49541))))
                                            (declare (not safe))
                                            (_g2057820921_ __tmp49540))))
                                      _g2055220563_)))
                                  (__tmp49543
                                   (if (let ()
                                         (declare (not safe))
                                         (null? _type-constructor20199_))
                                       '#f
                                       (let* ((_g2092920944_
                                               (lambda (_g2093020940_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g2093020940_)))
                                              (_g2092820992_
                                               (lambda (_g2093020948_)
                                                 (if (gx#stx-pair?
                                                      _g2093020948_)
                                                     (let ((_e2093420951_
                                                            (gx#syntax-e
                                                             _g2093020948_)))
                                                       (let ((_hd2093320955_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2093420951_)))
                     (_tl2093220958_
                      (let () (declare (not safe)) (##cdr _e2093420951_))))
                 (if (gx#stx-datum? _hd2093320955_)
                     (let ((_e2093520961_ (gx#stx-e _hd2093320955_)))
                       (if (let ()
                             (declare (not safe))
                             (equal? _e2093520961_ 'constructor:))
                           (if (gx#stx-pair? _tl2093220958_)
                               (let ((_e2093820965_
                                      (gx#syntax-e _tl2093220958_)))
                                 (let ((_hd2093720969_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e2093820965_)))
                                       (_tl2093620972_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e2093820965_))))
                                   (if (gx#stx-null? _tl2093620972_)
                                       ((lambda (_L20975_)
                                          (let ()
                                            (let ((__tmp49545
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp49544
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L20975_ '()))))
                                              (declare (not safe))
                                              (cons __tmp49545 __tmp49544))))
                                        _hd2093720969_)
                                       (let ()
                                         (declare (not safe))
                                         (_g2092920944_ _g2093020948_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g2092920944_ _g2093020948_)))
                           (let ()
                             (declare (not safe))
                             (_g2092920944_ _g2093020948_))))
                     (let ()
                       (declare (not safe))
                       (_g2092920944_ _g2093020948_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2092920944_
                                                        _g2093020948_))))))
                                         (declare (not safe))
                                         (_g2092820992_
                                          _type-constructor20199_)))))
                             (declare (not safe))
                             (_g2055020925_ __tmp49543))))
                       _g2052420535_))))
              (declare (not safe))
              (_g2052220996_ _final?20277_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2049620507_))))
                                       (declare (not safe))
                                       (_g2049421000_ _struct?19279_))))
                                 _g2046820479_)))
                             (__tmp49546
                              (let ((__tmp49550 (gx#datum->syntax '#f 'quote))
                                    (__tmp49547
                                     (let ((__tmp49548
                                            (let ((__tmp49549
                                                   (lambda (_g2100721010_
                                                            _g2100821013_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2100721010_
                                                             _g2100821013_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp49549
                                                      '()
                                                      _L19479_))))
                                       (declare (not safe))
                                       (cons __tmp49548 '()))))
                                (declare (not safe))
                                (cons __tmp49550 __tmp49547))))
                        (declare (not safe))
                        (_g2046621004_ __tmp49546))))
                  _g2044020451_)))
              (__tmp49551
               (let* ((_g2102021037_
                       (lambda (_g2102121033_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g2102121033_)))
                      (_g2101921098_
                       (lambda (_g2102121041_)
                         (if (gx#stx-pair/null? _g2102121041_)
                             (let ((_g49552_
                                    (gx#syntax-split-splice _g2102121041_ '0)))
                               (begin
                                 (let ((_g49553_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g49552_)
                                              (##vector-length _g49552_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g49553_ 2)))
                                       (error "Context expects 2 values"
                                              _g49553_)))
                                 (let ((_target2102321044_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g49552_ 0)))
                                       (_tl2102521047_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g49552_ 1))))
                                   (if (gx#stx-null? _tl2102521047_)
                                       (letrec ((_loop2102621050_
                                                 (lambda (_hd2102421054_
                                                          _super-id2103021057_)
                                                   (if (gx#stx-pair?
                                                        _hd2102421054_)
                                                       (let ((_e2102721060_
                                                              (gx#syntax-e
                                                               _hd2102421054_)))
                                                         (let ((_lp-hd2102821064_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2102721060_)))
                       (_lp-tl2102921067_
                        (let () (declare (not safe)) (##cdr _e2102721060_))))
                   (let ((__tmp49560
                          (let ()
                            (declare (not safe))
                            (cons _lp-hd2102821064_ _super-id2103021057_))))
                     (declare (not safe))
                     (_loop2102621050_ _lp-tl2102921067_ __tmp49560))))
               (let ((_super-id2103121070_ (reverse _super-id2103021057_)))
                 ((lambda (_L21074_)
                    (let ()
                      (let ((__tmp49559 (gx#datum->syntax '#f '@list))
                            (__tmp49554
                             (let ((__tmp49555
                                    (lambda (_g2108921092_ _g2109021095_)
                                      (let ((__tmp49556
                                             (let ((__tmp49558
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote-syntax))
                                                   (__tmp49557
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g2108921092_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp49558 __tmp49557))))
                                        (declare (not safe))
                                        (cons __tmp49556 _g2109021095_)))))
                               (declare (not safe))
                               (foldr1 __tmp49555 '() _L21074_))))
                        (declare (not safe))
                        (cons __tmp49559 __tmp49554))))
                  _super-id2103121070_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let ()
                                           (declare (not safe))
                                           (_loop2102621050_
                                            _target2102321044_
                                            '())))
                                       (let ()
                                         (declare (not safe))
                                         (_g2102021037_ _g2102121041_))))))
                             (let ()
                               (declare (not safe))
                               (_g2102021037_ _g2102121041_))))))
                 (declare (not safe))
                 (_g2101921098_ _super-ref19263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2043821016_ __tmp49551))))
                                           _g2041220423_)))
                                       (__tmp49561
                                        (let* ((_g2110621114_
                                                (lambda (_g2110721110_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g2110721110_)))
                                               (_g2110521133_
                                                (lambda (_g2110721118_)
                                                  ((lambda (_L21121_)
                                                     (let ()
                                                       (let ((__tmp49563
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp49562
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L21121_ '()))))
                 (declare (not safe))
                 (cons __tmp49563 __tmp49562))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g2110721118_)))
                                               (__tmp49564
                                                (cadr _type-name20177_)))
                                          (declare (not safe))
                                          (_g2110521133_ __tmp49564))))
                                  (declare (not safe))
                                  (_g2041021102_ __tmp49561))))
                            _g2038420395_)))
                        (__tmp49565
                         (let* ((_g2114121156_
                                 (lambda (_g2114221152_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2114221152_)))
                                (_g2114021204_
                                 (lambda (_g2114221160_)
                                   (if (gx#stx-pair? _g2114221160_)
                                       (let ((_e2114621163_
                                              (gx#syntax-e _g2114221160_)))
                                         (let ((_hd2114521167_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2114621163_)))
                                               (_tl2114421170_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2114621163_))))
                                           (if (gx#stx-datum? _hd2114521167_)
                                               (let ((_e2114721173_
                                                      (gx#stx-e
                                                       _hd2114521167_)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (equal? _e2114721173_
                                                               'id:))
                                                     (if (gx#stx-pair?
                                                          _tl2114421170_)
                                                         (let ((_e2115021177_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2114421170_)))
                   (let ((_hd2114921181_
                          (let () (declare (not safe)) (##car _e2115021177_)))
                         (_tl2114821184_
                          (let () (declare (not safe)) (##cdr _e2115021177_))))
                     (if (gx#stx-null? _tl2114821184_)
                         ((lambda (_L21187_)
                            (let ()
                              (let ((__tmp49567 (gx#datum->syntax '#f 'quote))
                                    (__tmp49566
                                     (let ()
                                       (declare (not safe))
                                       (cons _L21187_ '()))))
                                (declare (not safe))
                                (cons __tmp49567 __tmp49566))))
                          _hd2114921181_)
                         (let ()
                           (declare (not safe))
                           (_g2114121156_ _g2114221160_)))))
                 (let () (declare (not safe)) (_g2114121156_ _g2114221160_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2114121156_
                                                        _g2114221160_))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2114121156_
                                                  _g2114221160_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g2114121156_ _g2114221160_))))))
                           (declare (not safe))
                           (_g2114021204_ _type-id20184_))))
                   (declare (not safe))
                   (_g2038221137_ __tmp49565))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2035620367_)))
                                                 (__tmp49568
                                                  (let ((__tmp49569
                                                         (let ((__tmp49576
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defclass-type))
                       (__tmp49570
                        (let ((__tmp49571
                               (let ((__tmp49572
                                      (let ((__tmp49573
                                             (let ((__tmp49574
                                                    (let ((__tmp49575
                                                           (lambda (_g2121121214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2121221217_)
                     (let ()
                       (declare (not safe))
                       (cons _g2121121214_ _g2121221217_)))))
              (declare (not safe))
              (foldr1 __tmp49575 '() _L20337_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L19384_ __tmp49574))))
                                        (declare (not safe))
                                        (cons _L19356_ __tmp49573))))
                                 (declare (not safe))
                                 (cons _L19412_ __tmp49572))))
                          (declare (not safe))
                          (cons _L19328_ __tmp49571))))
                   (declare (not safe))
                   (cons __tmp49576 __tmp49570))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap19267_ __tmp49569))))
                                            (declare (not safe))
                                            (_g2035421208_ __tmp49568))))
                                      _type-body2029420333_))))))
                     (let ()
                       (declare (not safe))
                       (_loop2028920313_ _target2028620307_ '())))
                   (let ()
                     (declare (not safe))
                     (_g2028320300_ _g2028420304_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2028320300_
                                                    _g2028420304_)))))
                                          (__tmp49578
                                           (let ((__tmp49579
                                                  (let ((__tmp49580
                                                         (let ((__tmp49581
                                                                (let ((__tmp49582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49583
                                      (let ()
                                        (declare (not safe))
                                        (foldr1 cons
                                                _type-mixin-slots20170_
                                                _type-slots20153_))))
                                 (declare (not safe))
                                 (foldr1 cons
                                         __tmp49583
                                         _type-properties20274_))))
                          (declare (not safe))
                          (foldr1 cons __tmp49582 _type-final20280_))))
                   (declare (not safe))
                   (foldr1 cons __tmp49581 _type-constructor20199_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 cons
                                                            __tmp49580
                                                            _type-name20177_))))
                                             (declare (not safe))
                                             (foldr1 cons
                                                     __tmp49579
                                                     _type-id20184_))))
                                     (declare (not safe))
                                     (_g2028221220_ __tmp49578))))
                               _mixin-usetf2007920118_))))))
              (let ()
                (declare (not safe))
                (_loop2007420098_ _target2007120092_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2006820085_
                                                       _g2006920089_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g2006820085_ _g2006920089_)))))
                                   (__tmp49585
                                    (gx#stx-map
                                     (lambda (_g2122721229_)
                                       (_make-id19269_ '"&" _g2122721229_))
                                     (let ((__tmp49586
                                            (lambda (_g2123221235_
                                                     _g2123321238_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2123221235_
                                                      _g2123321238_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp49586 '() _L19838_)))))
                              (declare (not safe))
                              (_g2006721224_ __tmp49585))))
                        _mixin-ugetf2000820047_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_loop2000320027_
                                                  _target2000020021_
                                                  '())))
                                             (let ()
                                               (declare (not safe))
                                               (_g1999720014_
                                                _g1999820018_))))))
                                   (let ()
                                     (declare (not safe))
                                     (_g1999720014_ _g1999820018_)))))
                            (__tmp49588
                             (gx#stx-map
                              (lambda (_g2124421246_)
                                (_make-id19269_ '"&" _g2124421246_))
                              (let ((__tmp49589
                                     (lambda (_g2124921252_ _g2125021255_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g2124921252_ _g2125021255_)))))
                                (declare (not safe))
                                (foldr1 __tmp49589 '() _L19767_)))))
                       (declare (not safe))
                       (_g1999621241_ __tmp49588))))
                 _usetf1993719976_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop1993219956_
                                           _target1992919950_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g1992619943_ _g1992719947_))))))
                            (let ()
                              (declare (not safe))
                              (_g1992619943_ _g1992719947_)))))
                     (__tmp49591
                      (gx#stx-map
                       (lambda (_g2126121263_)
                         (_make-id19269_ '"&" _g2126121263_))
                       (let ((__tmp49592
                              (lambda (_g2126621269_ _g2126721272_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2126621269_ _g2126721272_)))))
                         (declare (not safe))
                         (foldr1 __tmp49592 '() _L19621_)))))
                (declare (not safe))
                (_g1992521258_ __tmp49591))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _ugetf1986619905_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_loop1986119885_ _target1985819879_ '())))
                               (let ()
                                 (declare (not safe))
                                 (_g1985519872_ _g1985619876_))))))
                     (let ()
                       (declare (not safe))
                       (_g1985519872_ _g1985619876_)))))
              (__tmp49594
               (gx#stx-map
                (lambda (_g2127821280_) (_make-id19269_ '"&" _g2127821280_))
                (let ((__tmp49595
                       (lambda (_g2128321286_ _g2128421289_)
                         (let ()
                           (declare (not safe))
                           (cons _g2128321286_ _g2128421289_)))))
                  (declare (not safe))
                  (foldr1 __tmp49595 '() _L19550_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1985421275_ __tmp49594))))
                                           _mixin-setf1979519834_))))))
                          (let ()
                            (declare (not safe))
                            (_loop1979019814_ _target1978719808_ '())))
                        (let ()
                          (declare (not safe))
                          (_g1978419801_ _g1978519805_))))))
              (let () (declare (not safe)) (_g1978419801_ _g1978519805_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp49597
                                                (gx#stx-map
                                                 (lambda (_g2129521297_)
                                                   (_make-id19269_
                                                    _name19273_
                                                    '"-"
                                                    _g2129521297_
                                                    '"-set!"))
                                                 _mixin-slots19638_)))
                                          (declare (not safe))
                                          (_g1978321292_ __tmp49597))))
                                    _mixin-getf1972419763_))))))
                   (let ()
                     (declare (not safe))
                     (_loop1971919743_ _target1971619737_ '())))
                 (let ()
                   (declare (not safe))
                   (_g1971319730_ _g1971419734_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1971319730_
                                                  _g1971419734_)))))
                                        (__tmp49599
                                         (gx#stx-map
                                          (lambda (_g2130421306_)
                                            (_make-id19269_
                                             _name19273_
                                             '"-"
                                             _g2130421306_))
                                          _mixin-slots19638_)))
                                   (declare (not safe))
                                   (_g1971221301_ __tmp49599))))
                             _mixin-slot1965219691_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop1964719671_
                                                       _target1964419665_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1964119658_
                                                     _g1964219662_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1964119658_ _g1964219662_))))))
                            (declare (not safe))
                            (_g1964021310_ _mixin-slots19638_))))
                      _setf1957819617_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (declare (not safe))
                                               (_loop1957319597_
                                                _target1957019591_
                                                '())))
                                           (let ()
                                             (declare (not safe))
                                             (_g1956719584_ _g1956819588_))))))
                                 (let ()
                                   (declare (not safe))
                                   (_g1956719584_ _g1956819588_)))))
                          (__tmp49602
                           (gx#stx-map
                            (lambda (_g2131721319_)
                              (_make-id19269_
                               _name19273_
                               '"-"
                               _g2131721319_
                               '"-set!"))
                            _slots19264_)))
                     (declare (not safe))
                     (_g1956621314_ __tmp49602))))
               _getf1950719546_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ()
                                        (declare (not safe))
                                        (_loop1950219526_
                                         _target1949919520_
                                         '())))
                                    (let ()
                                      (declare (not safe))
                                      (_g1949619513_ _g1949719517_))))))
                          (let ()
                            (declare (not safe))
                            (_g1949619513_ _g1949719517_)))))
                   (__tmp49604
                    (gx#stx-map
                     (lambda (_g2132621328_)
                       (_make-id19269_ _name19273_ '"-" _g2132621328_))
                     _slots19264_)))
              (declare (not safe))
              (_g1949521323_ __tmp49604))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _slot1943619475_))))))
                               (let ()
                                 (declare (not safe))
                                 (_loop1943119455_ _target1942819449_ '())))
                             (let ()
                               (declare (not safe))
                               (_g1942519442_ _g1942619446_))))))
                   (let ()
                     (declare (not safe))
                     (_g1942519442_ _g1942619446_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_g1942421332_ _slots19264_))))
                                         _g1939819409_)))
                                     (__tmp49606
                                      (map gerbil/core$<MOP>$<MOP:2>#class-type-descriptor
                                           _super19276_)))
                                (declare (not safe))
                                (_g1939621336_ __tmp49606))))
                          _g1937019381_)))
                      (__tmp49607 (_make-id19269_ _name19273_ '"?")))
                 (declare (not safe))
                 (_g1936821340_ __tmp49607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1934219353_)))
                                               (__tmp49608
                                                (_make-id19269_
                                                 '"make-"
                                                 _name19273_)))
                                          (declare (not safe))
                                          (_g1934021344_ __tmp49608))))
                                    _g1931419325_)))
                                (__tmp49609
                                 (_make-id19269_ _name19273_ '"::t")))
                           (declare (not safe))
                           (_g1931221348_ __tmp49609))))
                     _g1928319294_))))
            (declare (not safe))
            (_g1928121352_ _id19262_)))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#defstruct|
      (lambda (_$stx21416_)
        (let* ((_g2142021439_
                (lambda (_g2142121435_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2142121435_)))
               (_g2141921496_
                (lambda (_g2142121443_)
                  (if (gx#stx-pair? _g2142121443_)
                      (let ((_e2142721446_ (gx#syntax-e _g2142121443_)))
                        (let ((_hd2142621450_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2142721446_)))
                              (_tl2142521453_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2142721446_))))
                          (if (gx#stx-pair? _tl2142521453_)
                              (let ((_e2143021456_
                                     (gx#syntax-e _tl2142521453_)))
                                (let ((_hd2142921460_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2143021456_)))
                                      (_tl2142821463_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2143021456_))))
                                  (if (gx#stx-pair? _tl2142821463_)
                                      (let ((_e2143321466_
                                             (gx#syntax-e _tl2142821463_)))
                                        (let ((_hd2143221470_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2143321466_)))
                                              (_tl2143121473_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2143321466_))))
                                          ((lambda (_L21476_ _L21478_ _L21479_)
                                             (let ((__tmp49614
                                                    (gx#datum->syntax
                                                     '#f
                                                     'defclass))
                                                   (__tmp49610
                                                    (let ((__tmp49611
                                                           (let ((__tmp49612
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp49613
                                 (let ()
                                   (declare (not safe))
                                   (cons '#t _L21476_))))
                            (declare (not safe))
                            (cons 'struct: __tmp49613))))
                     (declare (not safe))
                     (cons _L21478_ __tmp49612))))
              (declare (not safe))
              (cons _L21479_ __tmp49611))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49614 __tmp49610)))
                                           _tl2143121473_
                                           _hd2143221470_
                                           _hd2142921460_)))
                                      (_g2142021439_ _g2142121443_))))
                              (_g2142021439_ _g2142121443_))))
                      (_g2142021439_ _g2142121443_)))))
          (_g2141921496_ _$stx21416_))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#defclass|
      (lambda (_stx21500_)
        (letrec ((_generate21503_
                  (lambda (_hd21587_ _slots21589_ _body21590_)
                    (let* ((___stx4420544206_ _hd21587_)
                           (_g2159321605_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4420544206_))))
                      (let ((___kont4420844209_
                             (lambda (_L21633_ _L21635_)
                               (let ((__tmp49615 (gx#syntax->list _L21633_)))
                                 (declare (not safe))
                                 (|gerbil/core$<MOP>$<MOP:4>[1]#generate-defclass|
                                  _stx21500_
                                  _L21635_
                                  __tmp49615
                                  _slots21589_
                                  _body21590_))))
                            (___kont4421044211_
                             (lambda ()
                               (if (gx#identifier? _hd21587_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core$<MOP>$<MOP:4>[1]#generate-defclass|
                                      _stx21500_
                                      _hd21587_
                                      '()
                                      _slots21589_
                                      _body21590_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; class name should be an identifier"
                                    _stx21500_
                                    _hd21587_)))))
                        (let ((___match4421844219_
                               (lambda (_e2159921623_
                                        _hd2159821627_
                                        _tl2159721630_)
                                 (let ((_L21633_ _tl2159721630_)
                                       (_L21635_ _hd2159821627_))
                                   (if (and (gx#stx-list? _L21633_)
                                            (gx#stx-andmap
                                             gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?
                                             _L21633_))
                                       (___kont4420844209_ _L21633_ _L21635_)
                                       (___kont4421044211_))))))
                          (if (gx#stx-pair? ___stx4420544206_)
                              (let ((_e2159921623_
                                     (gx#syntax-e ___stx4420544206_)))
                                (let ((_tl2159721630_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2159921623_)))
                                      (_hd2159821627_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2159921623_))))
                                  (___match4421844219_
                                   _e2159921623_
                                   _hd2159821627_
                                   _tl2159721630_)))
                              (___kont4421044211_))))))))
          (let* ((_g2150621525_
                  (lambda (_g2150721521_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2150721521_)))
                 (_g2150521583_
                  (lambda (_g2150721529_)
                    (if (gx#stx-pair? _g2150721529_)
                        (let ((_e2151321532_ (gx#syntax-e _g2150721529_)))
                          (let ((_hd2151221536_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2151321532_)))
                                (_tl2151121539_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2151321532_))))
                            (if (gx#stx-pair? _tl2151121539_)
                                (let ((_e2151621542_
                                       (gx#syntax-e _tl2151121539_)))
                                  (let ((_hd2151521546_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2151621542_)))
                                        (_tl2151421549_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2151621542_))))
                                    (if (gx#stx-pair? _tl2151421549_)
                                        (let ((_e2151921552_
                                               (gx#syntax-e _tl2151421549_)))
                                          (let ((_hd2151821556_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2151921552_)))
                                                (_tl2151721559_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2151921552_))))
                                            ((lambda (_L21562_
                                                      _L21564_
                                                      _L21565_)
                                               (if (and (gx#identifier-list?
                                                         _L21564_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (|gerbil/core$<MOP>$<MOP:4>[1]#typedef-body?|
                                                           _L21562_)))
                                                   (_generate21503_
                                                    _L21565_
                                                    _L21564_
                                                    _L21562_)
                                                   (_g2150621525_
                                                    _g2150721529_)))
                                             _tl2151721559_
                                             _hd2151821556_
                                             _hd2151521546_)))
                                        (_g2150621525_ _g2150721529_))))
                                (_g2150621525_ _g2150721529_))))
                        (_g2150621525_ _g2150721529_)))))
            (_g2150521583_ _stx21500_)))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#defmethod|
      (lambda (_stx21652_)
        (letrec ((_wrap21655_
                  (lambda (_e-stx21992_)
                    (gx#stx-wrap-source
                     _e-stx21992_
                     (gx#stx-source _stx21652_))))
                 (_method-opt?21657_
                  (lambda (_x21989_) (memq (gx#stx-e _x21989_) '(rebind:)))))
          (let* ((_g2165921688_
                  (lambda (_g2166021684_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2166021684_)))
                 (_g2165821985_
                  (lambda (_g2166021692_)
                    (if (gx#stx-pair? _g2166021692_)
                        (let ((_e2166721695_ (gx#syntax-e _g2166021692_)))
                          (let ((_hd2166621699_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2166721695_)))
                                (_tl2166521702_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2166721695_))))
                            (if (gx#stx-pair? _tl2166521702_)
                                (let ((_e2167021705_
                                       (gx#syntax-e _tl2166521702_)))
                                  (let ((_hd2166921709_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2167021705_)))
                                        (_tl2166821712_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2167021705_))))
                                    (if (gx#stx-pair? _hd2166921709_)
                                        (let ((_e2167321715_
                                               (gx#syntax-e _hd2166921709_)))
                                          (let ((_hd2167221719_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2167321715_)))
                                                (_tl2167121722_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2167321715_))))
                                            (if (gx#identifier? _hd2167221719_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:4>[1]#_g49666_|
                                                     _hd2167221719_)
                                                    (if (gx#stx-pair?
                                                         _tl2167121722_)
                                                        (let ((_e2167621725_
                                                               (gx#syntax-e
                                                                _tl2167121722_)))
                                                          (let ((_hd2167521729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e2167621725_)))
                        (_tl2167421732_
                         (let () (declare (not safe)) (##cdr _e2167621725_))))
                    (if (gx#stx-pair? _tl2167421732_)
                        (let ((_e2167921735_ (gx#syntax-e _tl2167421732_)))
                          (let ((_hd2167821739_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2167921735_)))
                                (_tl2167721742_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2167921735_))))
                            (if (gx#stx-null? _tl2167721742_)
                                (if (gx#stx-pair? _tl2166821712_)
                                    (let ((_e2168221745_
                                           (gx#syntax-e _tl2166821712_)))
                                      (let ((_hd2168121749_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2168221745_)))
                                            (_tl2168021752_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2168221745_))))
                                        ((lambda (_L21755_
                                                  _L21757_
                                                  _L21758_
                                                  _L21759_)
                                           (if (and (gx#identifier? _L21759_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                                                       _L21758_))
                                                    (gx#stx-plist?
                                                     _L21755_
                                                     _method-opt?21657_))
                                               (let* ((_klass21784_
                                                       (gx#syntax-local-value
                                                        _L21758_))
                                                      (_rebind?21787_
                                                       (if (gx#stx-getq
                                                            'rebind:
                                                            _L21755_)
                                                           '#t
                                                           '#f))
                                                      (_g2179021798_
                                                       (lambda (_g2179121794_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2179121794_)))
                                                      (_g2178921981_
                                                       (lambda (_g2179121802_)
                                                         ((lambda (_L21805_)
                                                            (let ()
                                                              (let* ((_g2181921827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2182021823_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2182021823_)))
                             (_g2181821977_
                              (lambda (_g2182021831_)
                                ((lambda (_L21834_)
                                   (let ()
                                     (let* ((_g2184721855_
                                             (lambda (_g2184821851_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2184821851_)))
                                            (_g2184621973_
                                             (lambda (_g2184821859_)
                                               ((lambda (_L21862_)
                                                  (let ()
                                                    (let* ((_g2187521883_
                                                            (lambda (_g2187621879_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2187621879_)))
                                                           (_g2187421969_
                                                            (lambda (_g2187621887_)
                                                              ((lambda (_L21890_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2190321911_
                                   (lambda (_g2190421907_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2190421907_)))
                                  (_g2190221965_
                                   (lambda (_g2190421915_)
                                     ((lambda (_L21918_)
                                        (let ()
                                          (let* ((_g2193121939_
                                                  (lambda (_g2193221935_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2193221935_)))
                                                 (_g2193021961_
                                                  (lambda (_g2193221943_)
                                                    ((lambda (_L21946_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap21655_
                                                            (let ((__tmp49620
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'begin))
                          (__tmp49618
                           (let ((__tmp49619
                                  (let ()
                                    (declare (not safe))
                                    (cons _L21946_ '()))))
                             (declare (not safe))
                             (cons _L21890_ __tmp49619))))
                      (declare (not safe))
                      (cons __tmp49620 __tmp49618))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2193221943_))))
                                            (_g2193021961_
                                             (_wrap21655_
                                              (let ((__tmp49628
                                                     (gx#datum->syntax
                                                      '#f
                                                      'bind-method!))
                                                    (__tmp49621
                                                     (let ((__tmp49622
                                                            (let ((__tmp49625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49627 (gx#datum->syntax '#f 'quote))
                                 (__tmp49626
                                  (let ()
                                    (declare (not safe))
                                    (cons _L21759_ '()))))
                             (declare (not safe))
                             (cons __tmp49627 __tmp49626)))
                          (__tmp49623
                           (let ((__tmp49624
                                  (let ()
                                    (declare (not safe))
                                    (cons _L21918_ '()))))
                             (declare (not safe))
                             (cons _L21834_ __tmp49624))))
                      (declare (not safe))
                      (cons __tmp49625 __tmp49623))))
               (declare (not safe))
               (cons _L21805_ __tmp49622))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49628
                                                      __tmp49621)))))))
                                      _g2190421915_))))
                             (_g2190221965_ _rebind?21787_))))
                       _g2187621887_))))
              (_g2187421969_
               (_wrap21655_
                (let ((__tmp49665 (gx#datum->syntax '#f 'def))
                      (__tmp49629
                       (let ((__tmp49630
                              (let ((__tmp49631
                                     (let ((__tmp49664
                                            (gx#datum->syntax '#f 'let-syntax))
                                           (__tmp49632
                                            (let ((__tmp49634
                                                   (let ((__tmp49635
                                                          (let ((__tmp49636
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp49637
                                (let ((__tmp49663
                                       (gx#datum->syntax '#f 'syntax-rules))
                                      (__tmp49638
                                       (let ((__tmp49639
                                              (let ((__tmp49640
                                                     (let ((__tmp49655
                                                            (let ((__tmp49662
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '_))
                          (__tmp49656
                           (let ((__tmp49661 (gx#datum->syntax '#f 'obj))
                                 (__tmp49657
                                  (let ((__tmp49660
                                         (gx#datum->syntax '#f 'arg))
                                        (__tmp49658
                                         (let ((__tmp49659
                                                (gx#datum->syntax '#f '...)))
                                           (declare (not safe))
                                           (cons __tmp49659 '()))))
                                    (declare (not safe))
                                    (cons __tmp49660 __tmp49658))))
                             (declare (not safe))
                             (cons __tmp49661 __tmp49657))))
                      (declare (not safe))
                      (cons __tmp49662 __tmp49656)))
                   (__tmp49641
                    (let ((__tmp49642
                           (let ((__tmp49654
                                  (gx#datum->syntax '#f 'call-next-method))
                                 (__tmp49643
                                  (let ((__tmp49644
                                         (let ((__tmp49653
                                                (gx#datum->syntax '#f 'obj))
                                               (__tmp49645
                                                (let ((__tmp49650
                                                       (let ((__tmp49652
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp49651
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L21759_ '()))))
                 (declare (not safe))
                 (cons __tmp49652 __tmp49651)))
              (__tmp49646
               (let ((__tmp49649 (gx#datum->syntax '#f 'arg))
                     (__tmp49647
                      (let ((__tmp49648 (gx#datum->syntax '#f '...)))
                        (declare (not safe))
                        (cons __tmp49648 '()))))
                 (declare (not safe))
                 (cons __tmp49649 __tmp49647))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49650
                                                        __tmp49646))))
                                           (declare (not safe))
                                           (cons __tmp49653 __tmp49645))))
                                    (declare (not safe))
                                    (cons _L21805_ __tmp49644))))
                             (declare (not safe))
                             (cons __tmp49654 __tmp49643))))
                      (declare (not safe))
                      (cons __tmp49642 '()))))
               (declare (not safe))
               (cons __tmp49655 __tmp49641))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49640 '()))))
                                         (declare (not safe))
                                         (cons '() __tmp49639))))
                                  (declare (not safe))
                                  (cons __tmp49663 __tmp49638))))
                           (declare (not safe))
                           (cons __tmp49637 '()))))
                    (declare (not safe))
                    (cons _L21862_ __tmp49636))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49635 '())))
                                                  (__tmp49633
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L21757_ '()))))
                                              (declare (not safe))
                                              (cons __tmp49634 __tmp49633))))
                                       (declare (not safe))
                                       (cons __tmp49664 __tmp49632))))
                                (declare (not safe))
                                (cons __tmp49631 '()))))
                         (declare (not safe))
                         (cons _L21834_ __tmp49630))))
                  (declare (not safe))
                  (cons __tmp49665 __tmp49629)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2184821859_))))
                                       (_g2184621973_
                                        (gx#stx-identifier
                                         _L21758_
                                         '@next-method)))))
                                 _g2182021831_))))
                        (_g2181821977_
                         (gx#stx-identifier
                          _L21758_
                          _L21758_
                          '"::"
                          _L21759_)))))
                  _g2179121802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2178921981_
                                                  (let ((__obj47244
                                                         _klass21784_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj47244
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj47244
                                                           '8
                                                           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                         __obj47244
                                                         'type-descriptor)))))
                                               (if (let ((__tmp49617
                                                          (gx#identifier?
                                                           _L21759_)))
                                                     (declare (not safe))
                                                     (not __tmp49617))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _stx21652_
                                                    _L21759_)
                                                   (if (let ((__tmp49616
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                         _L21758_))))
                 (declare (not safe))
                 (not __tmp49616))
               (gx#raise-syntax-error
                '#f
                '"bad syntax; expected type identifier"
                _stx21652_
                _L21758_)
               (gx#raise-syntax-error
                '#f
                '"bad syntax; illegal method options"
                _stx21652_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _tl2168021752_
                                         _hd2168121749_
                                         _hd2167821739_
                                         _hd2167521729_)))
                                    (_g2165921688_ _g2166021692_))
                                (_g2165921688_ _g2166021692_))))
                        (_g2165921688_ _g2166021692_))))
                (_g2165921688_ _g2166021692_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2165921688_
                                                     _g2166021692_))
                                                (_g2165921688_
                                                 _g2166021692_))))
                                        (_g2165921688_ _g2166021692_))))
                                (_g2165921688_ _g2166021692_))))
                        (_g2165921688_ _g2166021692_)))))
            (_g2165821985_ _stx21652_)))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#@method|
      (lambda (_stx21995_)
        (letrec ((_dotted-identifier?21998_
                  (lambda (_id22631_)
                    (if (gx#identifier? _id22631_)
                        (let ((_id-str22634_
                               (symbol->string (gx#stx-e _id22631_))))
                          (if (let ()
                                (declare (not safe))
                                (string-index _id-str22634_ '#\.))
                              (let ((_split22637_
                                     (let ()
                                       (declare (not safe))
                                       (string-split _id-str22634_ '#\.))))
                                (fx= (length _split22637_) '2))
                              '#f))
                        '#f)))
                 (_split-dotted22000_
                  (lambda (_id22620_)
                    (let* ((_id-str22623_
                            (symbol->string (gx#stx-e _id22620_)))
                           (_split22626_
                            (let ()
                              (declare (not safe))
                              (string-split _id-str22623_ '#\.))))
                      (let ((__tmp49669
                             (gx#stx-identifier _id22620_ (car _split22626_)))
                            (__tmp49667
                             (let ((__tmp49668
                                    (gx#stx-identifier
                                     _id22620_
                                     (cadr _split22626_))))
                               (declare (not safe))
                               (cons __tmp49668 '()))))
                        (declare (not safe))
                        (cons __tmp49669 __tmp49667))))))
          (let* ((___stx4422144222_ _stx21995_)
                 (_g2200522092_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx4422144222_))))
            (let ((___kont4422444225_
                   (lambda (_L22513_ _L22515_ _L22516_)
                     (let* ((_g2254422559_
                             (lambda (_g2254522555_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2254522555_)))
                            (_g2254322612_
                             (lambda (_g2254522563_)
                               (if (gx#stx-pair? _g2254522563_)
                                   (let ((_e2255022566_
                                          (gx#syntax-e _g2254522563_)))
                                     (let ((_hd2254922570_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2255022566_)))
                                           (_tl2254822573_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2255022566_))))
                                       (if (gx#stx-pair? _tl2254822573_)
                                           (let ((_e2255322576_
                                                  (gx#syntax-e
                                                   _tl2254822573_)))
                                             (let ((_hd2255222580_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2255322576_)))
                                                   (_tl2255122583_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2255322576_))))
                                               (if (gx#stx-null?
                                                    _tl2255122583_)
                                                   ((lambda (_L22586_ _L22588_)
                                                      (let ()
                                                        (let ((__tmp49682
                                                               (gx#datum->syntax
                                                                '#f
                                                                'apply))
                                                              (__tmp49670
                                                               (let ((__tmp49681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'call-method))
                             (__tmp49671
                              (let ((__tmp49672
                                     (let ((__tmp49678
                                            (let ((__tmp49680
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp49679
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L22586_ '()))))
                                              (declare (not safe))
                                              (cons __tmp49680 __tmp49679)))
                                           (__tmp49673
                                            (let ((__tmp49674
                                                   (let ((__tmp49677
                                                          (gx#datum->syntax
                                                           '#f
                                                           '@list))
                                                         (__tmp49675
                                                          (let ((__tmp49676
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2260322606_ _g2260422609_)
                           (let ()
                             (declare (not safe))
                             (cons _g2260322606_ _g2260422609_)))))
                    (declare (not safe))
                    (foldr1 __tmp49676 '() _L22515_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49677
                                                           __tmp49675))))
                                              (declare (not safe))
                                              (cons __tmp49674 '()))))
                                       (declare (not safe))
                                       (cons __tmp49678 __tmp49673))))
                                (declare (not safe))
                                (cons _L22588_ __tmp49672))))
                         (declare (not safe))
                         (cons __tmp49681 __tmp49671))))
                  (declare (not safe))
                  (cons __tmp49682 __tmp49670))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2255222580_
                                                    _hd2254922570_)
                                                   (_g2254422559_
                                                    _g2254522563_))))
                                           (_g2254422559_ _g2254522563_))))
                                   (_g2254422559_ _g2254522563_)))))
                       (_g2254322612_ (_split-dotted22000_ _L22516_)))))
                  (___kont4422844229_
                   (lambda (_L22355_ _L22357_)
                     (let* ((_g2237422389_
                             (lambda (_g2237522385_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2237522385_)))
                            (_g2237322442_
                             (lambda (_g2237522393_)
                               (if (gx#stx-pair? _g2237522393_)
                                   (let ((_e2238022396_
                                          (gx#syntax-e _g2237522393_)))
                                     (let ((_hd2237922400_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2238022396_)))
                                           (_tl2237822403_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2238022396_))))
                                       (if (gx#stx-pair? _tl2237822403_)
                                           (let ((_e2238322406_
                                                  (gx#syntax-e
                                                   _tl2237822403_)))
                                             (let ((_hd2238222410_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2238322406_)))
                                                   (_tl2238122413_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2238322406_))))
                                               (if (gx#stx-null?
                                                    _tl2238122413_)
                                                   ((lambda (_L22416_ _L22418_)
                                                      (let ()
                                                        (let ((__tmp49690
                                                               (gx#datum->syntax
                                                                '#f
                                                                'call-method))
                                                              (__tmp49683
                                                               (let ((__tmp49684
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49687
                                     (let ((__tmp49689
                                            (gx#datum->syntax '#f 'quote))
                                           (__tmp49688
                                            (let ()
                                              (declare (not safe))
                                              (cons _L22416_ '()))))
                                       (declare (not safe))
                                       (cons __tmp49689 __tmp49688)))
                                    (__tmp49685
                                     (let ((__tmp49686
                                            (lambda (_g2243322436_
                                                     _g2243422439_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2243322436_
                                                      _g2243422439_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp49686 '() _L22355_))))
                                (declare (not safe))
                                (cons __tmp49687 __tmp49685))))
                         (declare (not safe))
                         (cons _L22418_ __tmp49684))))
                  (declare (not safe))
                  (cons __tmp49690 __tmp49683))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2238222410_
                                                    _hd2237922400_)
                                                   (_g2237422389_
                                                    _g2237522393_))))
                                           (_g2237422389_ _g2237522393_))))
                                   (_g2237422389_ _g2237522393_)))))
                       (_g2237322442_ (_split-dotted22000_ _L22357_)))))
                  (___kont4423244233_
                   (lambda (_L22259_ _L22261_ _L22262_)
                     (let ((__tmp49703 (gx#datum->syntax '#f 'apply))
                           (__tmp49691
                            (let ((__tmp49702
                                   (gx#datum->syntax '#f 'call-method))
                                  (__tmp49692
                                   (let ((__tmp49693
                                          (let ((__tmp49699
                                                 (let ((__tmp49701
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp49700
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L22262_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp49701
                                                         __tmp49700)))
                                                (__tmp49694
                                                 (let ((__tmp49695
                                                        (let ((__tmp49698
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@list))
                                                              (__tmp49696
                                                               (let ((__tmp49697
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2228922292_ _g2229022295_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2228922292_ _g2229022295_)))))
                         (declare (not safe))
                         (foldr1 __tmp49697 '() _L22259_))))
                  (declare (not safe))
                  (cons __tmp49698 __tmp49696))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49695 '()))))
                                            (declare (not safe))
                                            (cons __tmp49699 __tmp49694))))
                                     (declare (not safe))
                                     (cons _L22261_ __tmp49693))))
                              (declare (not safe))
                              (cons __tmp49702 __tmp49692))))
                       (declare (not safe))
                       (cons __tmp49703 __tmp49691))))
                  (___kont4423644237_
                   (lambda (_L22159_ _L22161_ _L22162_)
                     (let ((__tmp49711 (gx#datum->syntax '#f 'call-method))
                           (__tmp49704
                            (let ((__tmp49705
                                   (let ((__tmp49708
                                          (let ((__tmp49710
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp49709
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L22162_ '()))))
                                            (declare (not safe))
                                            (cons __tmp49710 __tmp49709)))
                                         (__tmp49706
                                          (let ((__tmp49707
                                                 (lambda (_g2218322186_
                                                          _g2218422189_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2218322186_
                                                           _g2218422189_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp49707 '() _L22159_))))
                                     (declare (not safe))
                                     (cons __tmp49708 __tmp49706))))
                              (declare (not safe))
                              (cons _L22161_ __tmp49705))))
                       (declare (not safe))
                       (cons __tmp49711 __tmp49704)))))
              (let* ((___match4434044341_
                      (lambda (_e2207122099_
                               _hd2207022103_
                               _tl2206922106_
                               _e2207422109_
                               _hd2207322113_
                               _tl2207222116_
                               _e2207722119_
                               _hd2207622123_
                               _tl2207522126_
                               ___splice4423844239_
                               _target2207822129_
                               _tl2208022132_)
                        (letrec ((_loop2208122135_
                                  (lambda (_hd2207922139_ _arg2208522142_)
                                    (if (gx#stx-pair? _hd2207922139_)
                                        (let ((_e2208222145_
                                               (gx#syntax-e _hd2207922139_)))
                                          (let ((_lp-tl2208422152_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2208222145_)))
                                                (_lp-hd2208322149_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2208222145_))))
                                            (_loop2208122135_
                                             _lp-tl2208422152_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2208322149_
                                                     _arg2208522142_)))))
                                        (let ((_arg2208622155_
                                               (reverse _arg2208522142_)))
                                          (let ((_L22159_ _arg2208622155_)
                                                (_L22161_ _hd2207622123_)
                                                (_L22162_ _hd2207322113_))
                                            (if (gx#identifier? _L22162_)
                                                (___kont4423644237_
                                                 _L22159_
                                                 _L22161_
                                                 _L22162_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2200522092_)))))))))
                          (_loop2208122135_ _target2207822129_ '()))))
                     (___match4431444315_
                      (lambda (_e2205022199_
                               _hd2204922203_
                               _tl2204822206_
                               _e2205322209_
                               _hd2205222213_
                               _tl2205122216_
                               _e2205622219_
                               _hd2205522223_
                               _tl2205422226_
                               ___splice4423444235_
                               _target2205722229_
                               _tl2205922232_)
                        (letrec ((_loop2206022235_
                                  (lambda (_hd2205822239_ _arg2206422242_)
                                    (if (gx#stx-pair? _hd2205822239_)
                                        (let ((_e2206122245_
                                               (gx#syntax-e _hd2205822239_)))
                                          (let ((_lp-tl2206322252_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2206122245_)))
                                                (_lp-hd2206222249_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2206122245_))))
                                            (_loop2206022235_
                                             _lp-tl2206322252_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2206222249_
                                                     _arg2206422242_)))))
                                        (let ((_arg2206522255_
                                               (reverse _arg2206422242_)))
                                          (let ((_L22259_ _arg2206522255_)
                                                (_L22261_ _hd2205522223_)
                                                (_L22262_ _hd2205222213_))
                                            (if (and (gx#identifier? _L22262_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (let ((__tmp49712
                                                             (lambda (_g2228122284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2228222287_)
                       (let ()
                         (declare (not safe))
                         (cons _g2228122284_ _g2228222287_)))))
                (declare (not safe))
                (foldr1 __tmp49712 '() _L22259_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4423244233_
                                                 _L22259_
                                                 _L22261_
                                                 _L22262_)
                                                (___match4434044341_
                                                 _e2205022199_
                                                 _hd2204922203_
                                                 _tl2204822206_
                                                 _e2205322209_
                                                 _hd2205222213_
                                                 _tl2205122216_
                                                 _e2205622219_
                                                 _hd2205522223_
                                                 _tl2205422226_
                                                 ___splice4423444235_
                                                 _target2205722229_
                                                 _tl2205922232_))))))))
                          (_loop2206022235_ _target2205722229_ '()))))
                     (___match4430044301_
                      (lambda (_e2205022199_
                               _hd2204922203_
                               _tl2204822206_
                               _e2205322209_
                               _hd2205222213_
                               _tl2205122216_)
                        (if (gx#stx-pair? _tl2205122216_)
                            (let ((_e2205622219_ (gx#syntax-e _tl2205122216_)))
                              (let ((_tl2205422226_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2205622219_)))
                                    (_hd2205522223_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2205622219_))))
                                (if (gx#stx-pair/null? _tl2205422226_)
                                    (let ((___splice4423444235_
                                           (gx#syntax-split-splice
                                            _tl2205422226_
                                            '0)))
                                      (let ((_tl2205922232_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4423444235_
                                                '1)))
                                            (_target2205722229_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4423444235_
                                                '0))))
                                        (if (gx#stx-null? _tl2205922232_)
                                            (___match4431444315_
                                             _e2205022199_
                                             _hd2204922203_
                                             _tl2204822206_
                                             _e2205322209_
                                             _hd2205222213_
                                             _tl2205122216_
                                             _e2205622219_
                                             _hd2205522223_
                                             _tl2205422226_
                                             ___splice4423444235_
                                             _target2205722229_
                                             _tl2205922232_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2200522092_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2200522092_)))))
                            (let () (declare (not safe)) (_g2200522092_)))))
                     (___match4428844289_
                      (lambda (_e2203222305_
                               _hd2203122309_
                               _tl2203022312_
                               _e2203522315_
                               _hd2203422319_
                               _tl2203322322_
                               ___splice4423044231_
                               _target2203622325_
                               _tl2203822328_)
                        (letrec ((_loop2203922331_
                                  (lambda (_hd2203722335_ _arg2204322338_)
                                    (if (gx#stx-pair? _hd2203722335_)
                                        (let ((_e2204022341_
                                               (gx#syntax-e _hd2203722335_)))
                                          (let ((_lp-tl2204222348_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2204022341_)))
                                                (_lp-hd2204122345_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2204022341_))))
                                            (_loop2203922331_
                                             _lp-tl2204222348_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2204122345_
                                                     _arg2204322338_)))))
                                        (let ((_arg2204422351_
                                               (reverse _arg2204322338_)))
                                          (let ((_L22355_ _arg2204422351_)
                                                (_L22357_ _hd2203422319_))
                                            (if (_dotted-identifier?21998_
                                                 _L22357_)
                                                (___kont4422844229_
                                                 _L22355_
                                                 _L22357_)
                                                (___match4430044301_
                                                 _e2203222305_
                                                 _hd2203122309_
                                                 _tl2203022312_
                                                 _e2203522315_
                                                 _hd2203422319_
                                                 _tl2203322322_))))))))
                          (_loop2203922331_ _target2203622325_ '()))))
                     (___match4428644287_
                      (lambda (_e2203222305_
                               _hd2203122309_
                               _tl2203022312_
                               _e2203522315_
                               _hd2203422319_
                               _tl2203322322_
                               ___splice4423044231_
                               _target2203622325_
                               _tl2203822328_)
                        (if (gx#stx-null? _tl2203822328_)
                            (___match4428844289_
                             _e2203222305_
                             _hd2203122309_
                             _tl2203022312_
                             _e2203522315_
                             _hd2203422319_
                             _tl2203322322_
                             ___splice4423044231_
                             _target2203622325_
                             _tl2203822328_)
                            (if (gx#stx-pair? _tl2203322322_)
                                (let ((_e2205622219_
                                       (gx#syntax-e _tl2203322322_)))
                                  (let ((_tl2205422226_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2205622219_)))
                                        (_hd2205522223_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2205622219_))))
                                    (if (gx#stx-pair/null? _tl2205422226_)
                                        (let ((___splice4423444235_
                                               (gx#syntax-split-splice
                                                _tl2205422226_
                                                '0)))
                                          (let ((_tl2205922232_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4423444235_
                                                    '1)))
                                                (_target2205722229_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4423444235_
                                                    '0))))
                                            (if (gx#stx-null? _tl2205922232_)
                                                (___match4431444315_
                                                 _e2203222305_
                                                 _hd2203122309_
                                                 _tl2203022312_
                                                 _e2203522315_
                                                 _hd2203422319_
                                                 _tl2203322322_
                                                 _e2205622219_
                                                 _hd2205522223_
                                                 _tl2205422226_
                                                 ___splice4423444235_
                                                 _target2205722229_
                                                 _tl2205922232_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2200522092_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2200522092_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2200522092_))))))
                     (___match4426844269_
                      (lambda (_e2201222453_
                               _hd2201122457_
                               _tl2201022460_
                               _e2201522463_
                               _hd2201422467_
                               _tl2201322470_
                               ___splice4422644227_
                               _target2201622473_
                               _tl2201822476_
                               _e2202722479_
                               _hd2202622483_
                               _tl2202522486_)
                        (letrec ((_loop2201922489_
                                  (lambda (_hd2201722493_ _arg2202322496_)
                                    (if (gx#stx-pair? _hd2201722493_)
                                        (let ((_e2202022499_
                                               (gx#syntax-e _hd2201722493_)))
                                          (let ((_lp-tl2202222506_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2202022499_)))
                                                (_lp-hd2202122503_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2202022499_))))
                                            (_loop2201922489_
                                             _lp-tl2202222506_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2202122503_
                                                     _arg2202322496_)))))
                                        (let ((_arg2202422509_
                                               (reverse _arg2202322496_)))
                                          (let ((_L22513_ _hd2202622483_)
                                                (_L22515_ _arg2202422509_)
                                                (_L22516_ _hd2201422467_))
                                            (if (and (_dotted-identifier?21998_
                                                      _L22516_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (let ((__tmp49713
                                                             (lambda (_g2253522538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2253622541_)
                       (let ()
                         (declare (not safe))
                         (cons _g2253522538_ _g2253622541_)))))
                (declare (not safe))
                (foldr1 __tmp49713 '() _L22515_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4422444225_
                                                 _L22513_
                                                 _L22515_
                                                 _L22516_)
                                                (let ((___splice4423044231_
                                                       (gx#syntax-split-splice
                                                        _tl2201322470_
                                                        '0)))
                                                  (let ((_tl2203822328_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4423044231_
                                                            '1)))
                                                        (_target2203622325_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4423044231_
                                                            '0))))
                                                    (___match4428644287_
                                                     _e2201222453_
                                                     _hd2201122457_
                                                     _tl2201022460_
                                                     _e2201522463_
                                                     _hd2201422467_
                                                     _tl2201322470_
                                                     ___splice4423044231_
                                                     _target2203622325_
                                                     _tl2203822328_))))))))))
                          (_loop2201922489_ _target2201622473_ '())))))
                (if (gx#stx-pair? ___stx4422144222_)
                    (let ((_e2201222453_ (gx#syntax-e ___stx4422144222_)))
                      (let ((_tl2201022460_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2201222453_)))
                            (_hd2201122457_
                             (let ()
                               (declare (not safe))
                               (##car _e2201222453_))))
                        (if (gx#stx-pair? _tl2201022460_)
                            (let ((_e2201522463_ (gx#syntax-e _tl2201022460_)))
                              (let ((_tl2201322470_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2201522463_)))
                                    (_hd2201422467_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2201522463_))))
                                (if (gx#stx-pair/null? _tl2201322470_)
                                    (if (fx>= (gx#stx-length _tl2201322470_)
                                              '1)
                                        (let ((___splice4422644227_
                                               (gx#syntax-split-splice
                                                _tl2201322470_
                                                '1)))
                                          (let ((_tl2201822476_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4422644227_
                                                    '1)))
                                                (_target2201622473_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4422644227_
                                                    '0))))
                                            (if (gx#stx-pair? _tl2201822476_)
                                                (let ((_e2202722479_
                                                       (gx#syntax-e
                                                        _tl2201822476_)))
                                                  (let ((_tl2202522486_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2202722479_)))
                                                        (_hd2202622483_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2202722479_))))
                                                    (if (gx#stx-null?
                                                         _tl2202522486_)
                                                        (___match4426844269_
                                                         _e2201222453_
                                                         _hd2201122457_
                                                         _tl2201022460_
                                                         _e2201522463_
                                                         _hd2201422467_
                                                         _tl2201322470_
                                                         ___splice4422644227_
                                                         _target2201622473_
                                                         _tl2201822476_
                                                         _e2202722479_
                                                         _hd2202622483_
                                                         _tl2202522486_)
                                                        (let ((___splice4423044231_
                                                               (gx#syntax-split-splice
                                                                _tl2201322470_
                                                                '0)))
                                                          (let ((_tl2203822328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4423044231_ '1)))
                        (_target2203622325_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4423044231_ '0))))
                    (if (gx#stx-null? _tl2203822328_)
                        (___match4428844289_
                         _e2201222453_
                         _hd2201122457_
                         _tl2201022460_
                         _e2201522463_
                         _hd2201422467_
                         _tl2201322470_
                         ___splice4423044231_
                         _target2203622325_
                         _tl2203822328_)
                        (if (gx#stx-pair? _tl2201322470_)
                            (let ((_e2205622219_ (gx#syntax-e _tl2201322470_)))
                              (let ((_tl2205422226_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2205622219_)))
                                    (_hd2205522223_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2205622219_))))
                                (if (gx#stx-pair/null? _tl2205422226_)
                                    (let ((___splice4423444235_
                                           (gx#syntax-split-splice
                                            _tl2205422226_
                                            '0)))
                                      (let ((_tl2205922232_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4423444235_
                                                '1)))
                                            (_target2205722229_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4423444235_
                                                '0))))
                                        (if (gx#stx-null? _tl2205922232_)
                                            (___match4431444315_
                                             _e2201222453_
                                             _hd2201122457_
                                             _tl2201022460_
                                             _e2201522463_
                                             _hd2201422467_
                                             _tl2201322470_
                                             _e2205622219_
                                             _hd2205522223_
                                             _tl2205422226_
                                             ___splice4423444235_
                                             _target2205722229_
                                             _tl2205922232_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2200522092_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2200522092_)))))
                            (let ()
                              (declare (not safe))
                              (_g2200522092_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___splice4423044231_
                                                       (gx#syntax-split-splice
                                                        _tl2201322470_
                                                        '0)))
                                                  (let ((_tl2203822328_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4423044231_
                                                            '1)))
                                                        (_target2203622325_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4423044231_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2203822328_)
                                                        (___match4428844289_
                                                         _e2201222453_
                                                         _hd2201122457_
                                                         _tl2201022460_
                                                         _e2201522463_
                                                         _hd2201422467_
                                                         _tl2201322470_
                                                         ___splice4423044231_
                                                         _target2203622325_
                                                         _tl2203822328_)
                                                        (if (gx#stx-pair?
                                                             _tl2201322470_)
                                                            (let ((_e2205622219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl2201322470_)))
                      (let ((_tl2205422226_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2205622219_)))
                            (_hd2205522223_
                             (let ()
                               (declare (not safe))
                               (##car _e2205622219_))))
                        (if (gx#stx-pair/null? _tl2205422226_)
                            (let ((___splice4423444235_
                                   (gx#syntax-split-splice _tl2205422226_ '0)))
                              (let ((_tl2205922232_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice4423444235_ '1)))
                                    (_target2205722229_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice4423444235_
                                        '0))))
                                (if (gx#stx-null? _tl2205922232_)
                                    (___match4431444315_
                                     _e2201222453_
                                     _hd2201122457_
                                     _tl2201022460_
                                     _e2201522463_
                                     _hd2201422467_
                                     _tl2201322470_
                                     _e2205622219_
                                     _hd2205522223_
                                     _tl2205422226_
                                     ___splice4423444235_
                                     _target2205722229_
                                     _tl2205922232_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2200522092_)))))
                            (let () (declare (not safe)) (_g2200522092_)))))
                    (let () (declare (not safe)) (_g2200522092_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((___splice4423044231_
                                               (gx#syntax-split-splice
                                                _tl2201322470_
                                                '0)))
                                          (let ((_tl2203822328_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4423044231_
                                                    '1)))
                                                (_target2203622325_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4423044231_
                                                    '0))))
                                            (if (gx#stx-null? _tl2203822328_)
                                                (___match4428844289_
                                                 _e2201222453_
                                                 _hd2201122457_
                                                 _tl2201022460_
                                                 _e2201522463_
                                                 _hd2201422467_
                                                 _tl2201322470_
                                                 ___splice4423044231_
                                                 _target2203622325_
                                                 _tl2203822328_)
                                                (if (gx#stx-pair?
                                                     _tl2201322470_)
                                                    (let ((_e2205622219_
                                                           (gx#syntax-e
                                                            _tl2201322470_)))
                                                      (let ((_tl2205422226_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2205622219_)))
                    (_hd2205522223_
                     (let () (declare (not safe)) (##car _e2205622219_))))
                (if (gx#stx-pair/null? _tl2205422226_)
                    (let ((___splice4423444235_
                           (gx#syntax-split-splice _tl2205422226_ '0)))
                      (let ((_tl2205922232_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4423444235_ '1)))
                            (_target2205722229_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4423444235_ '0))))
                        (if (gx#stx-null? _tl2205922232_)
                            (___match4431444315_
                             _e2201222453_
                             _hd2201122457_
                             _tl2201022460_
                             _e2201522463_
                             _hd2201422467_
                             _tl2201322470_
                             _e2205622219_
                             _hd2205522223_
                             _tl2205422226_
                             ___splice4423444235_
                             _target2205722229_
                             _tl2205922232_)
                            (let () (declare (not safe)) (_g2200522092_)))))
                    (let () (declare (not safe)) (_g2200522092_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2200522092_)))))))
                                    (if (gx#stx-pair? _tl2201322470_)
                                        (let ((_e2205622219_
                                               (gx#syntax-e _tl2201322470_)))
                                          (let ((_tl2205422226_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2205622219_)))
                                                (_hd2205522223_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2205622219_))))
                                            (if (gx#stx-pair/null?
                                                 _tl2205422226_)
                                                (let ((___splice4423444235_
                                                       (gx#syntax-split-splice
                                                        _tl2205422226_
                                                        '0)))
                                                  (let ((_tl2205922232_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4423444235_
                                                            '1)))
                                                        (_target2205722229_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4423444235_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2205922232_)
                                                        (___match4431444315_
                                                         _e2201222453_
                                                         _hd2201122457_
                                                         _tl2201022460_
                                                         _e2201522463_
                                                         _hd2201422467_
                                                         _tl2201322470_
                                                         _e2205622219_
                                                         _hd2205522223_
                                                         _tl2205422226_
                                                         ___splice4423444235_
                                                         _target2205722229_
                                                         _tl2205922232_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g2200522092_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2200522092_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2200522092_))))))
                            (let () (declare (not safe)) (_g2200522092_)))))
                    (let () (declare (not safe)) (_g2200522092_)))))))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#@|
      (lambda (_$stx22644_)
        (let* ((___stx4434344344_ _$stx22644_)
               (_g2264922689_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4434344344_))))
          (let ((___kont4434644347_
                 (lambda (_L22827_ _L22829_)
                   (let ((__tmp49719 (gx#datum->syntax '#f 'slot-ref))
                         (__tmp49714
                          (let ((__tmp49715
                                 (let ((__tmp49716
                                        (let ((__tmp49718
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp49717
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L22827_ '()))))
                                          (declare (not safe))
                                          (cons __tmp49718 __tmp49717))))
                                   (declare (not safe))
                                   (cons __tmp49716 '()))))
                            (declare (not safe))
                            (cons _L22829_ __tmp49715))))
                     (declare (not safe))
                     (cons __tmp49719 __tmp49714))))
                (___kont4434844349_
                 (lambda (_L22756_ _L22758_ _L22759_ _L22760_)
                   (let ((__tmp49720
                          (let ((__tmp49723
                                 (let ((__tmp49724
                                        (let ((__tmp49725
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L22758_ '()))))
                                          (declare (not safe))
                                          (cons _L22759_ __tmp49725))))
                                   (declare (not safe))
                                   (cons _L22760_ __tmp49724)))
                                (__tmp49721
                                 (let ((__tmp49722
                                        (lambda (_g2278122784_ _g2278222787_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g2278122784_
                                                  _g2278222787_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp49722 '() _L22756_))))
                            (declare (not safe))
                            (cons __tmp49723 __tmp49721))))
                     (declare (not safe))
                     (cons _L22760_ __tmp49720)))))
            (let* ((___match4439844399_
                    (lambda (_e2266822696_
                             _hd2266722700_
                             _tl2266622703_
                             _e2267122706_
                             _hd2267022710_
                             _tl2266922713_
                             _e2267422716_
                             _hd2267322720_
                             _tl2267222723_
                             ___splice4435044351_
                             _target2267522726_
                             _tl2267722729_)
                      (letrec ((_loop2267822732_
                                (lambda (_hd2267622736_ _rest2268222739_)
                                  (if (gx#stx-pair? _hd2267622736_)
                                      (let ((_e2267922742_
                                             (gx#syntax-e _hd2267622736_)))
                                        (let ((_lp-tl2268122749_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2267922742_)))
                                              (_lp-hd2268022746_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2267922742_))))
                                          (_loop2267822732_
                                           _lp-tl2268122749_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd2268022746_
                                                   _rest2268222739_)))))
                                      (let ((_rest2268322752_
                                             (reverse _rest2268222739_)))
                                        (___kont4434844349_
                                         _rest2268322752_
                                         _hd2267322720_
                                         _hd2267022710_
                                         _hd2266722700_))))))
                        (_loop2267822732_ _target2267522726_ '()))))
                   (___match4437244373_
                    (lambda (_e2265522797_
                             _hd2265422801_
                             _tl2265322804_
                             _e2265822807_
                             _hd2265722811_
                             _tl2265622814_
                             _e2266122817_
                             _hd2266022821_
                             _tl2265922824_)
                      (let ((_L22827_ _hd2266022821_)
                            (_L22829_ _hd2265722811_))
                        (if (gx#identifier? _L22827_)
                            (___kont4434644347_ _L22827_ _L22829_)
                            (if (gx#stx-pair/null? _tl2265922824_)
                                (let ((___splice4435044351_
                                       (gx#syntax-split-splice
                                        _tl2265922824_
                                        '0)))
                                  (let ((_tl2267722729_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice4435044351_
                                            '1)))
                                        (_target2267522726_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice4435044351_
                                            '0))))
                                    (if (gx#stx-null? _tl2267722729_)
                                        (___match4439844399_
                                         _e2265522797_
                                         _hd2265422801_
                                         _tl2265322804_
                                         _e2265822807_
                                         _hd2265722811_
                                         _tl2265622814_
                                         _e2266122817_
                                         _hd2266022821_
                                         _tl2265922824_
                                         ___splice4435044351_
                                         _target2267522726_
                                         _tl2267722729_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2264922689_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2264922689_))))))))
              (if (gx#stx-pair? ___stx4434344344_)
                  (let ((_e2265522797_ (gx#syntax-e ___stx4434344344_)))
                    (let ((_tl2265322804_
                           (let () (declare (not safe)) (##cdr _e2265522797_)))
                          (_hd2265422801_
                           (let ()
                             (declare (not safe))
                             (##car _e2265522797_))))
                      (if (gx#stx-pair? _tl2265322804_)
                          (let ((_e2265822807_ (gx#syntax-e _tl2265322804_)))
                            (let ((_tl2265622814_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2265822807_)))
                                  (_hd2265722811_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2265822807_))))
                              (if (gx#stx-pair? _tl2265622814_)
                                  (let ((_e2266122817_
                                         (gx#syntax-e _tl2265622814_)))
                                    (let ((_tl2265922824_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2266122817_)))
                                          (_hd2266022821_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2266122817_))))
                                      (if (gx#stx-null? _tl2265922824_)
                                          (___match4437244373_
                                           _e2265522797_
                                           _hd2265422801_
                                           _tl2265322804_
                                           _e2265822807_
                                           _hd2265722811_
                                           _tl2265622814_
                                           _e2266122817_
                                           _hd2266022821_
                                           _tl2265922824_)
                                          (if (gx#stx-pair/null?
                                               _tl2265922824_)
                                              (let ((___splice4435044351_
                                                     (gx#syntax-split-splice
                                                      _tl2265922824_
                                                      '0)))
                                                (let ((_tl2267722729_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4435044351_
                                                          '1)))
                                                      (_target2267522726_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4435044351_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl2267722729_)
                                                      (___match4439844399_
                                                       _e2265522797_
                                                       _hd2265422801_
                                                       _tl2265322804_
                                                       _e2265822807_
                                                       _hd2265722811_
                                                       _tl2265622814_
                                                       _e2266122817_
                                                       _hd2266022821_
                                                       _tl2265922824_
                                                       ___splice4435044351_
                                                       _target2267522726_
                                                       _tl2267722729_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2264922689_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2264922689_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2264922689_)))))
                          (let () (declare (not safe)) (_g2264922689_)))))
                  (let () (declare (not safe)) (_g2264922689_))))))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#@-set!|
      (lambda (_$stx22849_)
        (let* ((___stx4440144402_ _$stx22849_)
               (_g2285422906_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4440144402_))))
          (let ((___kont4440444405_
                 (lambda (_L23082_ _L23084_ _L23085_)
                   (let ((__tmp49732 (gx#datum->syntax '#f 'slot-set!))
                         (__tmp49726
                          (let ((__tmp49727
                                 (let ((__tmp49729
                                        (let ((__tmp49731
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp49730
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L23084_ '()))))
                                          (declare (not safe))
                                          (cons __tmp49731 __tmp49730)))
                                       (__tmp49728
                                        (let ()
                                          (declare (not safe))
                                          (cons _L23082_ '()))))
                                   (declare (not safe))
                                   (cons __tmp49729 __tmp49728))))
                            (declare (not safe))
                            (cons _L23085_ __tmp49727))))
                     (declare (not safe))
                     (cons __tmp49732 __tmp49726))))
                (___kont4440644407_
                 (lambda (_L22993_
                          _L22995_
                          _L22996_
                          _L22997_
                          _L22998_
                          _L22999_)
                   (let ((__tmp49733
                          (let ((__tmp49736
                                 (let ((__tmp49741 (gx#datum->syntax '#f '@))
                                       (__tmp49737
                                        (let ((__tmp49738
                                               (let ((__tmp49739
                                                      (let ((__tmp49740
                                                             (lambda (_g2302623029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2302723032_)
                       (let ()
                         (declare (not safe))
                         (cons _g2302623029_ _g2302723032_)))))
                (declare (not safe))
                (foldr1 __tmp49740 '() _L22996_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L22997_ __tmp49739))))
                                          (declare (not safe))
                                          (cons _L22998_ __tmp49738))))
                                   (declare (not safe))
                                   (cons __tmp49741 __tmp49737)))
                                (__tmp49734
                                 (let ((__tmp49735
                                        (let ()
                                          (declare (not safe))
                                          (cons _L22993_ '()))))
                                   (declare (not safe))
                                   (cons _L22995_ __tmp49735))))
                            (declare (not safe))
                            (cons __tmp49736 __tmp49734))))
                     (declare (not safe))
                     (cons _L22999_ __tmp49733)))))
            (let* ((___match4447644477_
                    (lambda (_e2287922913_
                             _hd2287822917_
                             _tl2287722920_
                             _e2288222923_
                             _hd2288122927_
                             _tl2288022930_
                             _e2288522933_
                             _hd2288422937_
                             _tl2288322940_
                             ___splice4440844409_
                             _target2288622943_
                             _tl2288822946_
                             _e2289722949_
                             _hd2289622953_
                             _tl2289522956_
                             _e2290022959_
                             _hd2289922963_
                             _tl2289822966_)
                      (letrec ((_loop2288922969_
                                (lambda (_hd2288722973_ _path2289322976_)
                                  (if (gx#stx-pair? _hd2288722973_)
                                      (let ((_e2289022979_
                                             (gx#syntax-e _hd2288722973_)))
                                        (let ((_lp-tl2289222986_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2289022979_)))
                                              (_lp-hd2289122983_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2289022979_))))
                                          (_loop2288922969_
                                           _lp-tl2289222986_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd2289122983_
                                                   _path2289322976_)))))
                                      (let ((_path2289422989_
                                             (reverse _path2289322976_)))
                                        (___kont4440644407_
                                         _hd2289922963_
                                         _hd2289622953_
                                         _path2289422989_
                                         _hd2288422937_
                                         _hd2288122927_
                                         _hd2287822917_))))))
                        (_loop2288922969_ _target2288622943_ '()))))
                   (___match4443644437_
                    (lambda (_e2286123042_
                             _hd2286023046_
                             _tl2285923049_
                             _e2286423052_
                             _hd2286323056_
                             _tl2286223059_
                             _e2286723062_
                             _hd2286623066_
                             _tl2286523069_
                             _e2287023072_
                             _hd2286923076_
                             _tl2286823079_)
                      (let ((_L23082_ _hd2286923076_)
                            (_L23084_ _hd2286623066_)
                            (_L23085_ _hd2286323056_))
                        (if (gx#identifier? _L23084_)
                            (___kont4440444405_ _L23082_ _L23084_ _L23085_)
                            (if (gx#stx-pair/null? _tl2286523069_)
                                (if (fx>= (gx#stx-length _tl2286523069_) '2)
                                    (let ((___splice4440844409_
                                           (gx#syntax-split-splice
                                            _tl2286523069_
                                            '2)))
                                      (let ((_tl2288822946_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4440844409_
                                                '1)))
                                            (_target2288622943_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4440844409_
                                                '0))))
                                        (if (gx#stx-pair? _tl2288822946_)
                                            (let ((_e2289722949_
                                                   (gx#syntax-e
                                                    _tl2288822946_)))
                                              (let ((_tl2289522956_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2289722949_)))
                                                    (_hd2289622953_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2289722949_))))
                                                (if (gx#stx-pair?
                                                     _tl2289522956_)
                                                    (let ((_e2290022959_
                                                           (gx#syntax-e
                                                            _tl2289522956_)))
                                                      (let ((_tl2289822966_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2290022959_)))
                    (_hd2289922963_
                     (let () (declare (not safe)) (##car _e2290022959_))))
                (if (gx#stx-null? _tl2289822966_)
                    (___match4447644477_
                     _e2286123042_
                     _hd2286023046_
                     _tl2285923049_
                     _e2286423052_
                     _hd2286323056_
                     _tl2286223059_
                     _e2286723062_
                     _hd2286623066_
                     _tl2286523069_
                     ___splice4440844409_
                     _target2288622943_
                     _tl2288822946_
                     _e2289722949_
                     _hd2289622953_
                     _tl2289522956_
                     _e2290022959_
                     _hd2289922963_
                     _tl2289822966_)
                    (let () (declare (not safe)) (_g2285422906_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2285422906_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g2285422906_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2285422906_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2285422906_))))))))
              (if (gx#stx-pair? ___stx4440144402_)
                  (let ((_e2286123042_ (gx#syntax-e ___stx4440144402_)))
                    (let ((_tl2285923049_
                           (let () (declare (not safe)) (##cdr _e2286123042_)))
                          (_hd2286023046_
                           (let ()
                             (declare (not safe))
                             (##car _e2286123042_))))
                      (if (gx#stx-pair? _tl2285923049_)
                          (let ((_e2286423052_ (gx#syntax-e _tl2285923049_)))
                            (let ((_tl2286223059_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2286423052_)))
                                  (_hd2286323056_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2286423052_))))
                              (if (gx#stx-pair? _tl2286223059_)
                                  (let ((_e2286723062_
                                         (gx#syntax-e _tl2286223059_)))
                                    (let ((_tl2286523069_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2286723062_)))
                                          (_hd2286623066_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2286723062_))))
                                      (if (gx#stx-pair? _tl2286523069_)
                                          (let ((_e2287023072_
                                                 (gx#syntax-e _tl2286523069_)))
                                            (let ((_tl2286823079_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2287023072_)))
                                                  (_hd2286923076_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2287023072_))))
                                              (if (gx#stx-null? _tl2286823079_)
                                                  (___match4443644437_
                                                   _e2286123042_
                                                   _hd2286023046_
                                                   _tl2285923049_
                                                   _e2286423052_
                                                   _hd2286323056_
                                                   _tl2286223059_
                                                   _e2286723062_
                                                   _hd2286623066_
                                                   _tl2286523069_
                                                   _e2287023072_
                                                   _hd2286923076_
                                                   _tl2286823079_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2286523069_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2286523069_)
                        '2)
                  (let ((___splice4440844409_
                         (gx#syntax-split-splice _tl2286523069_ '2)))
                    (let ((_tl2288822946_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4440844409_ '1)))
                          (_target2288622943_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4440844409_ '0))))
                      (if (gx#stx-pair? _tl2288822946_)
                          (let ((_e2289722949_ (gx#syntax-e _tl2288822946_)))
                            (let ((_tl2289522956_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2289722949_)))
                                  (_hd2289622953_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2289722949_))))
                              (if (gx#stx-pair? _tl2289522956_)
                                  (let ((_e2290022959_
                                         (gx#syntax-e _tl2289522956_)))
                                    (let ((_tl2289822966_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2290022959_)))
                                          (_hd2289922963_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2290022959_))))
                                      (if (gx#stx-null? _tl2289822966_)
                                          (___match4447644477_
                                           _e2286123042_
                                           _hd2286023046_
                                           _tl2285923049_
                                           _e2286423052_
                                           _hd2286323056_
                                           _tl2286223059_
                                           _e2286723062_
                                           _hd2286623066_
                                           _tl2286523069_
                                           ___splice4440844409_
                                           _target2288622943_
                                           _tl2288822946_
                                           _e2289722949_
                                           _hd2289622953_
                                           _tl2289522956_
                                           _e2290022959_
                                           _hd2289922963_
                                           _tl2289822966_)
                                          (let ()
                                            (declare (not safe))
                                            (_g2285422906_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2285422906_)))))
                          (let () (declare (not safe)) (_g2285422906_)))))
                  (let () (declare (not safe)) (_g2285422906_)))
              (let () (declare (not safe)) (_g2285422906_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl2286523069_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2286523069_)
                                                        '2)
                                                  (let ((___splice4440844409_
                                                         (gx#syntax-split-splice
                                                          _tl2286523069_
                                                          '2)))
                                                    (let ((_tl2288822946_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4440844409_
                                                              '1)))
                                                          (_target2288622943_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4440844409_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _tl2288822946_)
                                                          (let ((_e2289722949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2288822946_)))
                    (let ((_tl2289522956_
                           (let () (declare (not safe)) (##cdr _e2289722949_)))
                          (_hd2289622953_
                           (let ()
                             (declare (not safe))
                             (##car _e2289722949_))))
                      (if (gx#stx-pair? _tl2289522956_)
                          (let ((_e2290022959_ (gx#syntax-e _tl2289522956_)))
                            (let ((_tl2289822966_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2290022959_)))
                                  (_hd2289922963_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2290022959_))))
                              (if (gx#stx-null? _tl2289822966_)
                                  (___match4447644477_
                                   _e2286123042_
                                   _hd2286023046_
                                   _tl2285923049_
                                   _e2286423052_
                                   _hd2286323056_
                                   _tl2286223059_
                                   _e2286723062_
                                   _hd2286623066_
                                   _tl2286523069_
                                   ___splice4440844409_
                                   _target2288622943_
                                   _tl2288822946_
                                   _e2289722949_
                                   _hd2289622953_
                                   _tl2289522956_
                                   _e2290022959_
                                   _hd2289922963_
                                   _tl2289822966_)
                                  (let ()
                                    (declare (not safe))
                                    (_g2285422906_)))))
                          (let () (declare (not safe)) (_g2285422906_)))))
                  (let () (declare (not safe)) (_g2285422906_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2285422906_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2285422906_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2285422906_)))))
                          (let () (declare (not safe)) (_g2285422906_)))))
                  (let () (declare (not safe)) (_g2285422906_))))))))))
