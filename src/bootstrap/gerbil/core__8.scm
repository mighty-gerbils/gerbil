(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core$<MOP>$<MOP:4>[1]#_g49428_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core$<MOP>$<MOP:4>[1]#typedef-body?|
      (lambda (_stx21398_)
        (letrec ((_body-opt?21401_
                  (lambda (_key21404_)
                    (memq (gx#stx-e _key21404_)
                          '(id:
                            struct:
                            name:
                            constructor:
                            transparent:
                            final:
                            print:
                            equal:)))))
          (gx#stx-plist? _stx21398_ _body-opt?21401_))))
    (define |gerbil/core$<MOP>$<MOP:4>[1]#generate-defclass|
      (lambda (_stx19260_ _id19262_ _super-ref19263_ _slots19264_ _body19265_)
        (letrec* ((_wrap19267_
                   (lambda (_e-stx21395_)
                     (gx#stx-wrap-source
                      _e-stx21395_
                      (gx#stx-source _stx19260_))))
                  (_make-id19269_
                   (if (uninterned-symbol? (gx#stx-e _id19262_))
                       (lambda _g49089_ (gx#genident _id19262_))
                       (lambda _args21392_
                         (apply gx#stx-identifier _id19262_ _args21392_))))
                  (_get-mixin-slots19270_
                   (lambda (_super21366_ _slots21368_)
                     (letrec* ((_tab21370_
                                (let ()
                                  (declare (not safe))
                                  (make-table 'test: eq?)))
                               (_dedup21372_
                                (lambda (_mixins21377_)
                                  (let _lp21380_ ((_rest21383_ _mixins21377_)
                                                  (_r21385_ '()))
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest21383_))
                                        (let ((_slot21387_ (car _rest21383_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (table-ref
                                                 _tab21370_
                                                 _slot21387_
                                                 '#f))
                                              (let ((__tmp49092
                                                     (cdr _rest21383_)))
                                                (declare (not safe))
                                                (_lp21380_
                                                 __tmp49092
                                                 _r21385_))
                                              (begin
                                                (let ()
                                                  (declare (not safe))
                                                  (table-set!
                                                   _tab21370_
                                                   _slot21387_
                                                   '#t))
                                                (let ((__tmp49091
                                                       (cdr _rest21383_))
                                                      (__tmp49090
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _slot21387_
                                                               _r21385_))))
                                                  (declare (not safe))
                                                  (_lp21380_
                                                   __tmp49091
                                                   __tmp49090)))))
                                        (reverse _r21385_))))))
                       (gx#stx-for-each
                        (lambda (_slot21374_)
                          (let ((__tmp49093 (gx#stx-e _slot21374_)))
                            (declare (not safe))
                            (table-set! _tab21370_ __tmp49093 '#t)))
                        _slots21368_)
                       (if (let () (declare (not safe)) (not _super21366_))
                           '()
                           (if (gx#identifier? _super21366_)
                               (let ((__tmp49095
                                      (let ()
                                        (declare (not safe))
                                        (_get-mixin-slots-r19271_
                                         _super21366_))))
                                 (declare (not safe))
                                 (_dedup21372_ __tmp49095))
                               (let ((__tmp49094
                                      (concatenate
                                       (map _get-mixin-slots-r19271_
                                            _super21366_))))
                                 (declare (not safe))
                                 (_dedup21372_ __tmp49094)))))))
                  (_get-mixin-slots-r19271_
                   (lambda (_type-id21360_)
                     (let ((_info21363_
                            (gx#syntax-local-value _type-id21360_)))
                       (append (let ((__obj47247 _info21363_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj47247
                                        'gerbil.core#class-type-info::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj47247
                                        '4
                                        gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                        '#f))
                                     (class-slot-ref
                                      gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                      __obj47247
                                      'slots)))
                               (concatenate
                                (map _get-mixin-slots-r19271_
                                     (let ((__obj47248 _info21363_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj47248
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj47248
                                              '3
                                              gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                            __obj47248
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
                 (_g1928121356_
                  (lambda (_g1928319294_)
                    ((lambda (_L19297_)
                       (let ()
                         (let* ((_g1931319321_
                                 (lambda (_g1931419317_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g1931419317_)))
                                (_g1931221352_
                                 (lambda (_g1931419325_)
                                   ((lambda (_L19328_)
                                      (let ()
                                        (let* ((_g1934119349_
                                                (lambda (_g1934219345_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g1934219345_)))
                                               (_g1934021348_
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
                      (_g1936821344_
                       (lambda (_g1937019381_)
                         ((lambda (_L19384_)
                            (let ()
                              (let* ((_g1939719405_
                                      (lambda (_g1939819401_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g1939819401_)))
                                     (_g1939621340_
                                      (lambda (_g1939819409_)
                                        ((lambda (_L19412_)
                                           (let ()
                                             (let* ((_g1942519442_
                                                     (lambda (_g1942619438_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g1942619438_)))
                                                    (_g1942421336_
                                                     (lambda (_g1942619446_)
                                                       (if (gx#stx-pair/null?
                                                            _g1942619446_)
                                                           (let ((_g49096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _g1942619446_ '0)))
                     (begin
                       (let ((_g49097_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g49096_)
                                    (##vector-length _g49096_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g49097_ 2)))
                             (error "Context expects 2 values" _g49097_)))
                       (let ((_target1942819449_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g49096_ 0)))
                             (_tl1943019452_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _g49096_ 1))))
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
                                                 (let ((__tmp49367
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _lp-hd1943319469_
                                                                _slot1943519462_))))
                                                   (declare (not safe))
                                                   (_loop1943119455_
                                                    _lp-tl1943419472_
                                                    __tmp49367))))
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
                                                           (_g1949521327_
                                                            (lambda (_g1949719517_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1949719517_)
                          (let ((_g49098_
                                 (gx#syntax-split-splice _g1949719517_ '0)))
                            (begin
                              (let ((_g49099_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g49098_)
                                           (##vector-length _g49098_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g49099_ 2)))
                                    (error "Context expects 2 values"
                                           _g49099_)))
                              (let ((_target1949919520_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g49098_ 0)))
                                    (_tl1950119523_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g49098_ 1))))
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
                (let ((__tmp49365
                       (let ()
                         (declare (not safe))
                         (cons _lp-hd1950419540_ _getf1950619533_))))
                  (declare (not safe))
                  (_loop1950219526_ _lp-tl1950519543_ __tmp49365))))
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
                          (_g1956621318_
                           (lambda (_g1956819588_)
                             (if (gx#stx-pair/null? _g1956819588_)
                                 (let ((_g49100_
                                        (gx#syntax-split-splice
                                         _g1956819588_
                                         '0)))
                                   (begin
                                     (let ((_g49101_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g49100_)
                                                  (##vector-length _g49100_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g49101_ 2)))
                                           (error "Context expects 2 values"
                                                  _g49101_)))
                                     (let ((_target1957019591_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g49100_ 0)))
                                           (_tl1957219594_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref _g49100_ 1))))
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
                       (let ((__tmp49363
                              (let ()
                                (declare (not safe))
                                (cons _lp-hd1957519611_ _setf1957719604_))))
                         (declare (not safe))
                         (_loop1957319597_ _lp-tl1957619614_ __tmp49363))))
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
                                 (_g1964021314_
                                  (lambda (_g1964219662_)
                                    (if (gx#stx-pair/null? _g1964219662_)
                                        (let ((_g49102_
                                               (gx#syntax-split-splice
                                                _g1964219662_
                                                '0)))
                                          (begin
                                            (let ((_g49103_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g49102_)
                                                         (##vector-length
                                                          _g49102_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g49103_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g49103_)))
                                            (let ((_target1964419665_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g49102_
                                                      0)))
                                                  (_tl1964619668_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g49102_
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
                              (let ((__tmp49362
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd1964919685_
                                             _mixin-slot1965119678_))))
                                (declare (not safe))
                                (_loop1964719671_
                                 _lp-tl1965019688_
                                 __tmp49362))))
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
                                        (_g1971221305_
                                         (lambda (_g1971419734_)
                                           (if (gx#stx-pair/null?
                                                _g1971419734_)
                                               (let ((_g49104_
                                                      (gx#syntax-split-splice
                                                       _g1971419734_
                                                       '0)))
                                                 (begin
                                                   (let ((_g49105_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g49104_)
                        (##vector-length _g49104_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g49105_ 2)))
                 (error "Context expects 2 values" _g49105_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target1971619737_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g49104_
                                                             0)))
                                                         (_tl1971819740_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g49104_
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
                                     (let ((__tmp49360
                                            (let ()
                                              (declare (not safe))
                                              (cons _lp-hd1972119757_
                                                    _mixin-getf1972319750_))))
                                       (declare (not safe))
                                       (_loop1971919743_
                                        _lp-tl1972219760_
                                        __tmp49360))))
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
                                               (_g1978321296_
                                                (lambda (_g1978519805_)
                                                  (if (gx#stx-pair/null?
                                                       _g1978519805_)
                                                      (let ((_g49106_
                                                             (gx#syntax-split-splice
                                                              _g1978519805_
                                                              '0)))
                                                        (begin
                                                          (let ((_g49107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g49106_)
                               (##vector-length _g49106_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g49107_ 2)))
                        (error "Context expects 2 values" _g49107_)))
                  (let ((_target1978719808_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g49106_ 0)))
                        (_tl1978919811_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g49106_ 1))))
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
                                            (let ((__tmp49358
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd1979219828_
                                                           _mixin-setf1979419821_))))
                                              (declare (not safe))
                                              (_loop1979019814_
                                               _lp-tl1979319831_
                                               __tmp49358))))
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
                                                      (_g1985421279_
                                                       (lambda (_g1985619876_)
                                                         (if (gx#stx-pair/null?
                                                              _g1985619876_)
                                                             (let ((_g49108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g1985619876_ '0)))
                       (begin
                         (let ((_g49109_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g49108_)
                                      (##vector-length _g49108_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g49109_ 2)))
                               (error "Context expects 2 values" _g49109_)))
                         (let ((_target1985819879_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g49108_ 0)))
                               (_tl1986019882_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g49108_ 1))))
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
                                                   (let ((__tmp49355
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
                                                      __tmp49355))))
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
                     (_g1992521262_
                      (lambda (_g1992719947_)
                        (if (gx#stx-pair/null? _g1992719947_)
                            (let ((_g49110_
                                   (gx#syntax-split-splice _g1992719947_ '0)))
                              (begin
                                (let ((_g49111_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g49110_)
                                             (##vector-length _g49110_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g49111_ 2)))
                                      (error "Context expects 2 values"
                                             _g49111_)))
                                (let ((_target1992919950_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g49110_ 0)))
                                      (_tl1993119953_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g49110_ 1))))
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
                  (let ((__tmp49352
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd1993419970_ _usetf1993619963_))))
                    (declare (not safe))
                    (_loop1993219956_ _lp-tl1993519973_ __tmp49352))))
              (let ((_usetf1993719976_ (reverse _usetf1993619963_)))
                ((lambda (_L19980_)
                   (let ()
                     (let* ((_g1999720014_
                             (lambda (_g1999820010_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g1999820010_)))
                            (_g1999621245_
                             (lambda (_g1999820018_)
                               (if (gx#stx-pair/null? _g1999820018_)
                                   (let ((_g49112_
                                          (gx#syntax-split-splice
                                           _g1999820018_
                                           '0)))
                                     (begin
                                       (let ((_g49113_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g49112_)
                                                    (##vector-length _g49112_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g49113_ 2)))
                                             (error "Context expects 2 values"
                                                    _g49113_)))
                                       (let ((_target2000020021_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g49112_ 0)))
                                             (_tl2000220024_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g49112_ 1))))
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
                         (let ((__tmp49349
                                (let ()
                                  (declare (not safe))
                                  (cons _lp-hd2000520041_
                                        _mixin-ugetf2000720034_))))
                           (declare (not safe))
                           (_loop2000320027_ _lp-tl2000620044_ __tmp49349))))
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
                                   (_g2006721228_
                                    (lambda (_g2006920089_)
                                      (if (gx#stx-pair/null? _g2006920089_)
                                          (let ((_g49114_
                                                 (gx#syntax-split-splice
                                                  _g2006920089_
                                                  '0)))
                                            (begin
                                              (let ((_g49115_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g49114_)
                                                           (##vector-length
                                                            _g49114_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g49115_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g49115_)))
                                              (let ((_target2007120092_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g49114_
                                                        0)))
                                                    (_tl2007320095_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g49114_
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
                                (let ((__tmp49346
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd2007620112_
                                               _mixin-usetf2007820105_))))
                                  (declare (not safe))
                                  (_loop2007420098_
                                   _lp-tl2007720115_
                                   __tmp49346))))
                            (let ((_mixin-usetf2007920118_
                                   (reverse _mixin-usetf2007820105_)))
                              ((lambda (_L20122_)
                                 (let ()
                                   (let* ((_type-slots20153_
                                           (if (gx#stx-null? _slots19264_)
                                               '()
                                               (let ((__tmp49116
                                                      (let ((__tmp49117
                                                             (begin
                                                               (gx#syntax-check-splice-targets
                                                                _L19621_
                                                                _L19550_
                                                                _L19479_)
                                                               (let ((__tmp49118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2013820143_
                                       _g2013920146_
                                       _g2014020148_
                                       _g2014120150_)
                                (let ((__tmp49119
                                       (let ((__tmp49120
                                              (let ((__tmp49121
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2013820143_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g2013920146_
                                                      __tmp49121))))
                                         (declare (not safe))
                                         (cons _g2014020148_ __tmp49120))))
                                  (declare (not safe))
                                  (cons __tmp49119 _g2014120150_)))))
                         (declare (not safe))
                         (foldr* __tmp49118 '() _L19621_ _L19550_ _L19479_)))))
                (declare (not safe))
                (cons __tmp49117 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'slots: __tmp49116))))
                                          (_type-mixin-slots20170_
                                           (if (gx#stx-null?
                                                _mixin-slots19638_)
                                               '()
                                               (let ((__tmp49122
                                                      (let ((__tmp49123
                                                             (begin
                                                               (gx#syntax-check-splice-targets
                                                                _L19838_
                                                                _L19767_
                                                                _L19695_)
                                                               (let ((__tmp49124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2015520160_
                                       _g2015620163_
                                       _g2015720165_
                                       _g2015820167_)
                                (let ((__tmp49125
                                       (let ((__tmp49126
                                              (let ((__tmp49127
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2015520160_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _g2015620163_
                                                      __tmp49127))))
                                         (declare (not safe))
                                         (cons _g2015720165_ __tmp49126))))
                                  (declare (not safe))
                                  (cons __tmp49125 _g2015820167_)))))
                         (declare (not safe))
                         (foldr* __tmp49124 '() _L19838_ _L19767_ _L19695_)))))
                (declare (not safe))
                (cons __tmp49123 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'mixin: __tmp49122))))
                                          (_type-name20177_
                                           (let ((__tmp49128
                                                  (let ((__tmp49129
                                                         (let ((_$e20173_
                                                                (gx#stx-getq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'name:
                         _body19265_)))
                   (if _$e20173_ _$e20173_ _id19262_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49129 '()))))
                                             (declare (not safe))
                                             (cons 'name: __tmp49128)))
                                          (_type-id20184_
                                           (let ((__tmp49130
                                                  (let ((__tmp49131
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
                                                    (cons __tmp49131 '()))))
                                             (declare (not safe))
                                             (cons 'id: __tmp49130)))
                                          (_type-constructor20199_
                                           (let ((_$e20195_
                                                  (let ((_e2018620188_
                                                         (gx#stx-getq
                                                          'constructor:
                                                          _body19265_)))
                                                    (if _e2018620188_
                                                        (let* ((_e20192_
                                                                _e2018620188_)
                                                               (__tmp49132
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _e20192_ '()))))
                  (declare (not safe))
                  (cons 'constructor: __tmp49132))
                '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e20195_ _$e20195_ '())))
                                          (_properties20233_
                                           (let* ((_properties20202_
                                                   (if (gx#stx-e
                                                        (gx#stx-getq
                                                         'transparent:
                                                         _body19265_))
                                                       (let ((__tmp49133
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons 'transparent: '#t))))
                 (declare (not safe))
                 (cons __tmp49133 '()))
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
                           (__tmp49134
                            (let ()
                              (declare (not safe))
                              (cons 'print: _print20212_))))
                      (declare (not safe))
                      (cons __tmp49134 _properties20202_)))
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
                           (__tmp49135
                            (let ()
                              (declare (not safe))
                              (cons 'equal: _equal20225_))))
                      (declare (not safe))
                      (cons __tmp49135 _properties20215_)))
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
                                                              (let ((__tmp49136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp49137
                                    (let ((__tmp49139
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp49138
                                           (let ()
                                             (declare (not safe))
                                             (cons _L20251_ '()))))
                                      (declare (not safe))
                                      (cons __tmp49139 __tmp49138))))
                               (declare (not safe))
                               (cons __tmp49137 '()))))
                        (declare (not safe))
                        (cons 'properties: __tmp49136))))
                  _g2023720248_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2023520270_
                                                  _properties20233_))))
                                          (_final?20277_
                                           (gx#stx-e
                                            (gx#stx-getq 'final: _body19265_)))
                                          (_type-struct20280_
                                           (let ((__tmp49140
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _struct?19279_
                                                          '()))))
                                             (declare (not safe))
                                             (cons 'struct: __tmp49140)))
                                          (_type-final20283_
                                           (let ((__tmp49141
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _final?20277_ '()))))
                                             (declare (not safe))
                                             (cons 'final: __tmp49141)))
                                          (_g2028620303_
                                           (lambda (_g2028720299_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2028720299_)))
                                          (_g2028521224_
                                           (lambda (_g2028720307_)
                                             (if (gx#stx-pair/null?
                                                  _g2028720307_)
                                                 (let ((_g49142_
                                                        (gx#syntax-split-splice
                                                         _g2028720307_
                                                         '0)))
                                                   (begin
                                                     (let ((_g49143_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g49142_)
                          (##vector-length _g49142_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g49143_ 2)))
                   (error "Context expects 2 values" _g49143_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2028920310_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g49142_
                                                               0)))
                                                           (_tl2029120313_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g49142_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl2029120313_)
                                                           (letrec ((_loop2029220316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2029020320_ _type-body2029620323_)
                               (if (gx#stx-pair? _hd2029020320_)
                                   (let ((_e2029320326_
                                          (gx#syntax-e _hd2029020320_)))
                                     (let ((_lp-hd2029420330_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2029320326_)))
                                           (_lp-tl2029520333_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2029320326_))))
                                       (let ((__tmp49338
                                              (let ()
                                                (declare (not safe))
                                                (cons _lp-hd2029420330_
                                                      _type-body2029620323_))))
                                         (declare (not safe))
                                         (_loop2029220316_
                                          _lp-tl2029520333_
                                          __tmp49338))))
                                   (let ((_type-body2029720336_
                                          (reverse _type-body2029620323_)))
                                     ((lambda (_L20340_)
                                        (let ()
                                          (let* ((_g2035920367_
                                                  (lambda (_g2036020363_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2036020363_)))
                                                 (_g2035821212_
                                                  (lambda (_g2036020371_)
                                                    ((lambda (_L20374_)
                                                       (let ()
                                                         (let* ((_g2038720395_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2038820391_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2038820391_)))
                        (_g2038621141_
                         (lambda (_g2038820399_)
                           ((lambda (_L20402_)
                              (let ()
                                (let* ((_g2041520423_
                                        (lambda (_g2041620419_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2041620419_)))
                                       (_g2041421106_
                                        (lambda (_g2041620427_)
                                          ((lambda (_L20430_)
                                             (let ()
                                               (let* ((_g2044320451_
                                                       (lambda (_g2044420447_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2044420447_)))
                                                      (_g2044221020_
                                                       (lambda (_g2044420455_)
                                                         ((lambda (_L20458_)
                                                            (let ()
                                                              (let* ((_g2047120479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2047220475_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2047220475_)))
                             (_g2047021008_
                              (lambda (_g2047220483_)
                                ((lambda (_L20486_)
                                   (let ()
                                     (let* ((_g2049920507_
                                             (lambda (_g2050020503_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2050020503_)))
                                            (_g2049821004_
                                             (lambda (_g2050020511_)
                                               ((lambda (_L20514_)
                                                  (let ()
                                                    (let* ((_g2052720535_
                                                            (lambda (_g2052820531_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2052820531_)))
                                                           (_g2052621000_
                                                            (lambda (_g2052820539_)
                                                              ((lambda (_L20542_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2055520563_
                                   (lambda (_g2055620559_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2055620559_)))
                                  (_g2055420929_
                                   (lambda (_g2055620567_)
                                     ((lambda (_L20570_)
                                        (let ()
                                          (let* ((_g2058320591_
                                                  (lambda (_g2058420587_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2058420587_)))
                                                 (_g2058220925_
                                                  (lambda (_g2058420595_)
                                                    ((lambda (_L20598_)
                                                       (let ()
                                                         (let* ((_g2061120619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2061220615_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g2061220615_)))
                        (_g2061020921_
                         (lambda (_g2061220623_)
                           ((lambda (_L20626_)
                              (let ()
                                (let* ((_g2063920647_
                                        (lambda (_g2064020643_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g2064020643_)))
                                       (_g2063820917_
                                        (lambda (_g2064020651_)
                                          ((lambda (_L20654_)
                                             (let ()
                                               (let* ((_g2066720675_
                                                       (lambda (_g2066820671_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2066820671_)))
                                                      (_g2066620891_
                                                       (lambda (_g2066820679_)
                                                         ((lambda (_L20682_)
                                                            (let ()
                                                              (let* ((_g2069520703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2069620699_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2069620699_)))
                             (_g2069420865_
                              (lambda (_g2069620707_)
                                ((lambda (_L20710_)
                                   (let ()
                                     (let* ((_g2072320731_
                                             (lambda (_g2072420727_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2072420727_)))
                                            (_g2072220839_
                                             (lambda (_g2072420735_)
                                               ((lambda (_L20738_)
                                                  (let ()
                                                    (let* ((_g2075120759_
                                                            (lambda (_g2075220755_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2075220755_)))
                                                           (_g2075020813_
                                                            (lambda (_g2075220763_)
                                                              ((lambda (_L20766_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2077920787_
                                   (lambda (_g2078020783_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2078020783_)))
                                  (_g2077820809_
                                   (lambda (_g2078020791_)
                                     ((lambda (_L20794_)
                                        (let ()
                                          (let ()
                                            (let ((__tmp49144
                                                   (let ((__tmp49147
                                                          (gx#datum->syntax
                                                           '#f
                                                           'begin))
                                                         (__tmp49145
                                                          (let ((__tmp49146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _L20794_ '()))))
                    (declare (not safe))
                    (cons _L20374_ __tmp49146))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49147
                                                           __tmp49145))))
                                              (declare (not safe))
                                              (_wrap19267_ __tmp49144)))))
                                      _g2078020791_)))
                                  (__tmp49148
                                   (let ((__tmp49149
                                          (let ((__tmp49182
                                                 (gx#datum->syntax
                                                  '#f
                                                  'defsyntax))
                                                (__tmp49150
                                                 (let ((__tmp49151
                                                        (let ((__tmp49152
                                                               (let ((__tmp49181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'make-class-type-info))
                             (__tmp49153
                              (let ((__tmp49154
                                     (let ((__tmp49155
                                            (let ((__tmp49156
                                                   (let ((__tmp49157
                                                          (let ((__tmp49158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp49159
                                (let ((__tmp49160
                                       (let ((__tmp49161
                                              (let ((__tmp49162
                                                     (let ((__tmp49163
                                                            (let ((__tmp49164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49165
                                  (let ((__tmp49166
                                         (let ((__tmp49167
                                                (let ((__tmp49168
                                                       (let ((__tmp49169
                                                              (let ((__tmp49170
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp49171
                                    (let ((__tmp49172
                                           (let ((__tmp49173
                                                  (let ((__tmp49174
                                                         (let ((__tmp49175
                                                                (let ((__tmp49176
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49177
                                      (let ((__tmp49178
                                             (let ((__tmp49179
                                                    (let ((__tmp49180
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L20766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons 'unchecked-mutators: __tmp49180))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L20738_ __tmp49179))))
                                        (declare (not safe))
                                        (cons 'unchecked-accessors:
                                              __tmp49178))))
                                 (declare (not safe))
                                 (cons _L20710_ __tmp49177))))
                          (declare (not safe))
                          (cons 'mutators: __tmp49176))))
                   (declare (not safe))
                   (cons _L20682_ __tmp49175))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons 'accessors:
                                                          __tmp49174))))
                                             (declare (not safe))
                                             (cons _L20654_ __tmp49173))))
                                      (declare (not safe))
                                      (cons 'predicate: __tmp49172))))
                               (declare (not safe))
                               (cons _L20626_ __tmp49171))))
                        (declare (not safe))
                        (cons 'constructor: __tmp49170))))
                 (declare (not safe))
                 (cons _L20598_ __tmp49169))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'type-descriptor:
                                                        __tmp49168))))
                                           (declare (not safe))
                                           (cons _L20570_ __tmp49167))))
                                    (declare (not safe))
                                    (cons 'constructor-method: __tmp49166))))
                             (declare (not safe))
                             (cons _L20542_ __tmp49165))))
                      (declare (not safe))
                      (cons 'final?: __tmp49164))))
               (declare (not safe))
               (cons _L20514_ __tmp49163))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'struct?: __tmp49162))))
                                         (declare (not safe))
                                         (cons _L20458_ __tmp49161))))
                                  (declare (not safe))
                                  (cons 'super: __tmp49160))))
                           (declare (not safe))
                           (cons _L20486_ __tmp49159))))
                    (declare (not safe))
                    (cons 'slots: __tmp49158))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L20430_
                                                           __tmp49157))))
                                              (declare (not safe))
                                              (cons 'name: __tmp49156))))
                                       (declare (not safe))
                                       (cons _L20402_ __tmp49155))))
                                (declare (not safe))
                                (cons 'id: __tmp49154))))
                         (declare (not safe))
                         (cons __tmp49181 __tmp49153))))
                  (declare (not safe))
                  (cons __tmp49152 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L19297_
                                                         __tmp49151))))
                                            (declare (not safe))
                                            (cons __tmp49182 __tmp49150))))
                                     (declare (not safe))
                                     (_wrap19267_ __tmp49149))))
                             (declare (not safe))
                             (_g2077820809_ __tmp49148))))
                       _g2075220763_)))
                   (__tmp49183
                    (let ((__tmp49210 (gx#datum->syntax '#f '@list))
                          (__tmp49184
                           (begin
                             (gx#syntax-check-splice-targets _L19980_ _L19479_)
                             (let ((__tmp49198
                                    (lambda (_g2081620823_
                                             _g2081720826_
                                             _g2081820828_)
                                      (let ((__tmp49199
                                             (let ((__tmp49209
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp49200
                                                    (let ((__tmp49206
                                                           (let ((__tmp49208
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp49207
                          (let ()
                            (declare (not safe))
                            (cons _g2081720826_ '()))))
                     (declare (not safe))
                     (cons __tmp49208 __tmp49207)))
                  (__tmp49201
                   (let ((__tmp49202
                          (let ((__tmp49203
                                 (let ((__tmp49205
                                        (gx#datum->syntax '#f 'quote-syntax))
                                       (__tmp49204
                                        (let ()
                                          (declare (not safe))
                                          (cons _g2081620823_ '()))))
                                   (declare (not safe))
                                   (cons __tmp49205 __tmp49204))))
                            (declare (not safe))
                            (cons __tmp49203 '()))))
                     (declare (not safe))
                     (cons ':: __tmp49202))))
              (declare (not safe))
              (cons __tmp49206 __tmp49201))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49209 __tmp49200))))
                                        (declare (not safe))
                                        (cons __tmp49199 _g2081820828_))))
                                   (__tmp49185
                                    (begin
                                      (gx#syntax-check-splice-targets
                                       _L20122_
                                       _L19695_)
                                      (let ((__tmp49186
                                             (lambda (_g2081920831_
                                                      _g2082020834_
                                                      _g2082120836_)
                                               (let ((__tmp49187
                                                      (let ((__tmp49197
                                                             (gx#datum->syntax
                                                              '#f
                                                              '@list))
                                                            (__tmp49188
                                                             (let ((__tmp49194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49196 (gx#datum->syntax '#f 'quote))
                                  (__tmp49195
                                   (let ()
                                     (declare (not safe))
                                     (cons _g2082020834_ '()))))
                              (declare (not safe))
                              (cons __tmp49196 __tmp49195)))
                           (__tmp49189
                            (let ((__tmp49190
                                   (let ((__tmp49191
                                          (let ((__tmp49193
                                                 (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax))
                                                (__tmp49192
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g2081920831_ '()))))
                                            (declare (not safe))
                                            (cons __tmp49193 __tmp49192))))
                                     (declare (not safe))
                                     (cons __tmp49191 '()))))
                              (declare (not safe))
                              (cons ':: __tmp49190))))
                       (declare (not safe))
                       (cons __tmp49194 __tmp49189))))
                (declare (not safe))
                (cons __tmp49197 __tmp49188))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49187
                                                       _g2082120836_)))))
                                        (declare (not safe))
                                        (foldr2 __tmp49186
                                                '()
                                                _L20122_
                                                _L19695_)))))
                               (declare (not safe))
                               (foldr2 __tmp49198
                                       __tmp49185
                                       _L19980_
                                       _L19479_)))))
                      (declare (not safe))
                      (cons __tmp49210 __tmp49184))))
              (declare (not safe))
              (_g2075020813_ __tmp49183))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2072420735_)))
                                            (__tmp49211
                                             (let ((__tmp49238
                                                    (gx#datum->syntax
                                                     '#f
                                                     '@list))
                                                   (__tmp49212
                                                    (begin
                                                      (gx#syntax-check-splice-targets
                                                       _L19909_
                                                       _L19479_)
                                                      (let ((__tmp49226
                                                             (lambda (_g2084220849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2084320852_
                              _g2084420854_)
                       (let ((__tmp49227
                              (let ((__tmp49237 (gx#datum->syntax '#f '@list))
                                    (__tmp49228
                                     (let ((__tmp49234
                                            (let ((__tmp49236
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp49235
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2084320852_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp49236 __tmp49235)))
                                           (__tmp49229
                                            (let ((__tmp49230
                                                   (let ((__tmp49231
                                                          (let ((__tmp49233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'quote-syntax))
                        (__tmp49232
                         (let ()
                           (declare (not safe))
                           (cons _g2084220849_ '()))))
                    (declare (not safe))
                    (cons __tmp49233 __tmp49232))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49231 '()))))
                                              (declare (not safe))
                                              (cons ':: __tmp49230))))
                                       (declare (not safe))
                                       (cons __tmp49234 __tmp49229))))
                                (declare (not safe))
                                (cons __tmp49237 __tmp49228))))
                         (declare (not safe))
                         (cons __tmp49227 _g2084420854_))))
                    (__tmp49213
                     (begin
                       (gx#syntax-check-splice-targets _L20051_ _L19695_)
                       (let ((__tmp49214
                              (lambda (_g2084520857_
                                       _g2084620860_
                                       _g2084720862_)
                                (let ((__tmp49215
                                       (let ((__tmp49225
                                              (gx#datum->syntax '#f '@list))
                                             (__tmp49216
                                              (let ((__tmp49222
                                                     (let ((__tmp49224
                                                            (gx#datum->syntax
                                                             '#f
                                                             'quote))
                                                           (__tmp49223
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _g2084620860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp49224 __tmp49223)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp49217
                                                     (let ((__tmp49218
                                                            (let ((__tmp49219
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49221
                                  (gx#datum->syntax '#f 'quote-syntax))
                                 (__tmp49220
                                  (let ()
                                    (declare (not safe))
                                    (cons _g2084520857_ '()))))
                             (declare (not safe))
                             (cons __tmp49221 __tmp49220))))
                      (declare (not safe))
                      (cons __tmp49219 '()))))
               (declare (not safe))
               (cons ':: __tmp49218))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49222 __tmp49217))))
                                         (declare (not safe))
                                         (cons __tmp49225 __tmp49216))))
                                  (declare (not safe))
                                  (cons __tmp49215 _g2084720862_)))))
                         (declare (not safe))
                         (foldr2 __tmp49214 '() _L20051_ _L19695_)))))
                (declare (not safe))
                (foldr2 __tmp49226 __tmp49213 _L19909_ _L19479_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49238 __tmp49212))))
                                       (declare (not safe))
                                       (_g2072220839_ __tmp49211))))
                                 _g2069620707_)))
                             (__tmp49239
                              (let ((__tmp49266 (gx#datum->syntax '#f '@list))
                                    (__tmp49240
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _L19621_
                                        _L19479_)
                                       (let ((__tmp49254
                                              (lambda (_g2086820875_
                                                       _g2086920878_
                                                       _g2087020880_)
                                                (let ((__tmp49255
                                                       (let ((__tmp49265
                                                              (gx#datum->syntax
                                                               '#f
                                                               '@list))
                                                             (__tmp49256
                                                              (let ((__tmp49262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp49264 (gx#datum->syntax '#f 'quote))
                                   (__tmp49263
                                    (let ()
                                      (declare (not safe))
                                      (cons _g2086920878_ '()))))
                               (declare (not safe))
                               (cons __tmp49264 __tmp49263)))
                            (__tmp49257
                             (let ((__tmp49258
                                    (let ((__tmp49259
                                           (let ((__tmp49261
                                                  (gx#datum->syntax
                                                   '#f
                                                   'quote-syntax))
                                                 (__tmp49260
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g2086820875_ '()))))
                                             (declare (not safe))
                                             (cons __tmp49261 __tmp49260))))
                                      (declare (not safe))
                                      (cons __tmp49259 '()))))
                               (declare (not safe))
                               (cons ':: __tmp49258))))
                        (declare (not safe))
                        (cons __tmp49262 __tmp49257))))
                 (declare (not safe))
                 (cons __tmp49265 __tmp49256))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49255
                                                        _g2087020880_))))
                                             (__tmp49241
                                              (begin
                                                (gx#syntax-check-splice-targets
                                                 _L19838_
                                                 _L19695_)
                                                (let ((__tmp49242
                                                       (lambda (_g2087120883_
                                                                _g2087220886_
                                                                _g2087320888_)
                                                         (let ((__tmp49243
                                                                (let ((__tmp49253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '@list))
                              (__tmp49244
                               (let ((__tmp49250
                                      (let ((__tmp49252
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp49251
                                             (let ()
                                               (declare (not safe))
                                               (cons _g2087220886_ '()))))
                                        (declare (not safe))
                                        (cons __tmp49252 __tmp49251)))
                                     (__tmp49245
                                      (let ((__tmp49246
                                             (let ((__tmp49247
                                                    (let ((__tmp49249
                                                           (gx#datum->syntax
                                                            '#f
                                                            'quote-syntax))
                                                          (__tmp49248
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _g2087120883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp49249 __tmp49248))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49247 '()))))
                                        (declare (not safe))
                                        (cons ':: __tmp49246))))
                                 (declare (not safe))
                                 (cons __tmp49250 __tmp49245))))
                          (declare (not safe))
                          (cons __tmp49253 __tmp49244))))
                   (declare (not safe))
                   (cons __tmp49243 _g2087320888_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr2 __tmp49242
                                                          '()
                                                          _L19838_
                                                          _L19695_)))))
                                         (declare (not safe))
                                         (foldr2 __tmp49254
                                                 __tmp49241
                                                 _L19621_
                                                 _L19479_)))))
                                (declare (not safe))
                                (cons __tmp49266 __tmp49240))))
                        (declare (not safe))
                        (_g2069420865_ __tmp49239))))
                  _g2066820679_)))
              (__tmp49267
               (let ((__tmp49294 (gx#datum->syntax '#f '@list))
                     (__tmp49268
                      (begin
                        (gx#syntax-check-splice-targets _L19550_ _L19479_)
                        (let ((__tmp49282
                               (lambda (_g2089420901_
                                        _g2089520904_
                                        _g2089620906_)
                                 (let ((__tmp49283
                                        (let ((__tmp49293
                                               (gx#datum->syntax '#f '@list))
                                              (__tmp49284
                                               (let ((__tmp49290
                                                      (let ((__tmp49292
                                                             (gx#datum->syntax
                                                              '#f
                                                              'quote))
                                                            (__tmp49291
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _g2089520904_ '()))))
                (declare (not safe))
                (cons __tmp49292 __tmp49291)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp49285
                                                      (let ((__tmp49286
                                                             (let ((__tmp49287
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp49289
                                   (gx#datum->syntax '#f 'quote-syntax))
                                  (__tmp49288
                                   (let ()
                                     (declare (not safe))
                                     (cons _g2089420901_ '()))))
                              (declare (not safe))
                              (cons __tmp49289 __tmp49288))))
                       (declare (not safe))
                       (cons __tmp49287 '()))))
                (declare (not safe))
                (cons ':: __tmp49286))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp49290
                                                       __tmp49285))))
                                          (declare (not safe))
                                          (cons __tmp49293 __tmp49284))))
                                   (declare (not safe))
                                   (cons __tmp49283 _g2089620906_))))
                              (__tmp49269
                               (begin
                                 (gx#syntax-check-splice-targets
                                  _L19767_
                                  _L19695_)
                                 (let ((__tmp49270
                                        (lambda (_g2089720909_
                                                 _g2089820912_
                                                 _g2089920914_)
                                          (let ((__tmp49271
                                                 (let ((__tmp49281
                                                        (gx#datum->syntax
                                                         '#f
                                                         '@list))
                                                       (__tmp49272
                                                        (let ((__tmp49278
                                                               (let ((__tmp49280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'quote))
                             (__tmp49279
                              (let ()
                                (declare (not safe))
                                (cons _g2089820912_ '()))))
                         (declare (not safe))
                         (cons __tmp49280 __tmp49279)))
                      (__tmp49273
                       (let ((__tmp49274
                              (let ((__tmp49275
                                     (let ((__tmp49277
                                            (gx#datum->syntax
                                             '#f
                                             'quote-syntax))
                                           (__tmp49276
                                            (let ()
                                              (declare (not safe))
                                              (cons _g2089720909_ '()))))
                                       (declare (not safe))
                                       (cons __tmp49277 __tmp49276))))
                                (declare (not safe))
                                (cons __tmp49275 '()))))
                         (declare (not safe))
                         (cons ':: __tmp49274))))
                  (declare (not safe))
                  (cons __tmp49278 __tmp49273))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49281
                                                         __tmp49272))))
                                            (declare (not safe))
                                            (cons __tmp49271 _g2089920914_)))))
                                   (declare (not safe))
                                   (foldr2 __tmp49270
                                           '()
                                           _L19767_
                                           _L19695_)))))
                          (declare (not safe))
                          (foldr2 __tmp49282 __tmp49269 _L19550_ _L19479_)))))
                 (declare (not safe))
                 (cons __tmp49294 __tmp49268))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2066620891_ __tmp49267))))
                                           _g2064020651_)))
                                       (__tmp49295
                                        (let ((__tmp49297
                                               (gx#datum->syntax
                                                '#f
                                                'quote-syntax))
                                              (__tmp49296
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L19384_ '()))))
                                          (declare (not safe))
                                          (cons __tmp49297 __tmp49296))))
                                  (declare (not safe))
                                  (_g2063820917_ __tmp49295))))
                            _g2061220623_)))
                        (__tmp49298
                         (let ((__tmp49300
                                (gx#datum->syntax '#f 'quote-syntax))
                               (__tmp49299
                                (let ()
                                  (declare (not safe))
                                  (cons _L19356_ '()))))
                           (declare (not safe))
                           (cons __tmp49300 __tmp49299))))
                   (declare (not safe))
                   (_g2061020921_ __tmp49298))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2058420595_)))
                                                 (__tmp49301
                                                  (let ((__tmp49303
                                                         (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax))
                                                        (__tmp49302
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L19328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp49303
                                                          __tmp49302))))
                                            (declare (not safe))
                                            (_g2058220925_ __tmp49301))))
                                      _g2055620567_)))
                                  (__tmp49304
                                   (if (let ()
                                         (declare (not safe))
                                         (null? _type-constructor20199_))
                                       '#f
                                       (let* ((_g2093320948_
                                               (lambda (_g2093420944_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g2093420944_)))
                                              (_g2093220996_
                                               (lambda (_g2093420952_)
                                                 (if (gx#stx-pair?
                                                      _g2093420952_)
                                                     (let ((_e2093820955_
                                                            (gx#syntax-e
                                                             _g2093420952_)))
                                                       (let ((_hd2093720959_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2093820955_)))
                     (_tl2093620962_
                      (let () (declare (not safe)) (##cdr _e2093820955_))))
                 (if (gx#stx-datum? _hd2093720959_)
                     (let ((_e2093920965_ (gx#stx-e _hd2093720959_)))
                       (if (let ()
                             (declare (not safe))
                             (equal? _e2093920965_ 'constructor:))
                           (if (gx#stx-pair? _tl2093620962_)
                               (let ((_e2094220969_
                                      (gx#syntax-e _tl2093620962_)))
                                 (let ((_hd2094120973_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e2094220969_)))
                                       (_tl2094020976_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e2094220969_))))
                                   (if (gx#stx-null? _tl2094020976_)
                                       ((lambda (_L20979_)
                                          (let ()
                                            (let ((__tmp49306
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp49305
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L20979_ '()))))
                                              (declare (not safe))
                                              (cons __tmp49306 __tmp49305))))
                                        _hd2094120973_)
                                       (let ()
                                         (declare (not safe))
                                         (_g2093320948_ _g2093420952_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g2093320948_ _g2093420952_)))
                           (let ()
                             (declare (not safe))
                             (_g2093320948_ _g2093420952_))))
                     (let ()
                       (declare (not safe))
                       (_g2093320948_ _g2093420952_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2093320948_
                                                        _g2093420952_))))))
                                         (declare (not safe))
                                         (_g2093220996_
                                          _type-constructor20199_)))))
                             (declare (not safe))
                             (_g2055420929_ __tmp49304))))
                       _g2052820539_))))
              (declare (not safe))
              (_g2052621000_ _final?20277_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2050020511_))))
                                       (declare (not safe))
                                       (_g2049821004_ _struct?19279_))))
                                 _g2047220483_)))
                             (__tmp49307
                              (let ((__tmp49311 (gx#datum->syntax '#f 'quote))
                                    (__tmp49308
                                     (let ((__tmp49309
                                            (let ((__tmp49310
                                                   (lambda (_g2101121014_
                                                            _g2101221017_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g2101121014_
                                                             _g2101221017_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp49310
                                                      '()
                                                      _L19479_))))
                                       (declare (not safe))
                                       (cons __tmp49309 '()))))
                                (declare (not safe))
                                (cons __tmp49311 __tmp49308))))
                        (declare (not safe))
                        (_g2047021008_ __tmp49307))))
                  _g2044420455_)))
              (__tmp49312
               (let* ((_g2102421041_
                       (lambda (_g2102521037_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g2102521037_)))
                      (_g2102321102_
                       (lambda (_g2102521045_)
                         (if (gx#stx-pair/null? _g2102521045_)
                             (let ((_g49313_
                                    (gx#syntax-split-splice _g2102521045_ '0)))
                               (begin
                                 (let ((_g49314_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g49313_)
                                              (##vector-length _g49313_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g49314_ 2)))
                                       (error "Context expects 2 values"
                                              _g49314_)))
                                 (let ((_target2102721048_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g49313_ 0)))
                                       (_tl2102921051_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref _g49313_ 1))))
                                   (if (gx#stx-null? _tl2102921051_)
                                       (letrec ((_loop2103021054_
                                                 (lambda (_hd2102821058_
                                                          _super-id2103421061_)
                                                   (if (gx#stx-pair?
                                                        _hd2102821058_)
                                                       (let ((_e2103121064_
                                                              (gx#syntax-e
                                                               _hd2102821058_)))
                                                         (let ((_lp-hd2103221068_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e2103121064_)))
                       (_lp-tl2103321071_
                        (let () (declare (not safe)) (##cdr _e2103121064_))))
                   (let ((__tmp49321
                          (let ()
                            (declare (not safe))
                            (cons _lp-hd2103221068_ _super-id2103421061_))))
                     (declare (not safe))
                     (_loop2103021054_ _lp-tl2103321071_ __tmp49321))))
               (let ((_super-id2103521074_ (reverse _super-id2103421061_)))
                 ((lambda (_L21078_)
                    (let ()
                      (let ((__tmp49320 (gx#datum->syntax '#f '@list))
                            (__tmp49315
                             (let ((__tmp49316
                                    (lambda (_g2109321096_ _g2109421099_)
                                      (let ((__tmp49317
                                             (let ((__tmp49319
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote-syntax))
                                                   (__tmp49318
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _g2109321096_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp49319 __tmp49318))))
                                        (declare (not safe))
                                        (cons __tmp49317 _g2109421099_)))))
                               (declare (not safe))
                               (foldr1 __tmp49316 '() _L21078_))))
                        (declare (not safe))
                        (cons __tmp49320 __tmp49315))))
                  _super-id2103521074_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let ()
                                           (declare (not safe))
                                           (_loop2103021054_
                                            _target2102721048_
                                            '())))
                                       (let ()
                                         (declare (not safe))
                                         (_g2102421041_ _g2102521045_))))))
                             (let ()
                               (declare (not safe))
                               (_g2102421041_ _g2102521045_))))))
                 (declare (not safe))
                 (_g2102321102_ _super-ref19263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g2044221020_ __tmp49312))))
                                           _g2041620427_)))
                                       (__tmp49322
                                        (let* ((_g2111021118_
                                                (lambda (_g2111121114_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g2111121114_)))
                                               (_g2110921137_
                                                (lambda (_g2111121122_)
                                                  ((lambda (_L21125_)
                                                     (let ()
                                                       (let ((__tmp49324
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp49323
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L21125_ '()))))
                 (declare (not safe))
                 (cons __tmp49324 __tmp49323))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g2111121122_)))
                                               (__tmp49325
                                                (cadr _type-name20177_)))
                                          (declare (not safe))
                                          (_g2110921137_ __tmp49325))))
                                  (declare (not safe))
                                  (_g2041421106_ __tmp49322))))
                            _g2038820399_)))
                        (__tmp49326
                         (let* ((_g2114521160_
                                 (lambda (_g2114621156_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _g2114621156_)))
                                (_g2114421208_
                                 (lambda (_g2114621164_)
                                   (if (gx#stx-pair? _g2114621164_)
                                       (let ((_e2115021167_
                                              (gx#syntax-e _g2114621164_)))
                                         (let ((_hd2114921171_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e2115021167_)))
                                               (_tl2114821174_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e2115021167_))))
                                           (if (gx#stx-datum? _hd2114921171_)
                                               (let ((_e2115121177_
                                                      (gx#stx-e
                                                       _hd2114921171_)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (equal? _e2115121177_
                                                               'id:))
                                                     (if (gx#stx-pair?
                                                          _tl2114821174_)
                                                         (let ((_e2115421181_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2114821174_)))
                   (let ((_hd2115321185_
                          (let () (declare (not safe)) (##car _e2115421181_)))
                         (_tl2115221188_
                          (let () (declare (not safe)) (##cdr _e2115421181_))))
                     (if (gx#stx-null? _tl2115221188_)
                         ((lambda (_L21191_)
                            (let ()
                              (let ((__tmp49328 (gx#datum->syntax '#f 'quote))
                                    (__tmp49327
                                     (let ()
                                       (declare (not safe))
                                       (cons _L21191_ '()))))
                                (declare (not safe))
                                (cons __tmp49328 __tmp49327))))
                          _hd2115321185_)
                         (let ()
                           (declare (not safe))
                           (_g2114521160_ _g2114621164_)))))
                 (let () (declare (not safe)) (_g2114521160_ _g2114621164_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g2114521160_
                                                        _g2114621164_))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g2114521160_
                                                  _g2114621164_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g2114521160_ _g2114621164_))))))
                           (declare (not safe))
                           (_g2114421208_ _type-id20184_))))
                   (declare (not safe))
                   (_g2038621141_ __tmp49326))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2036020371_)))
                                                 (__tmp49329
                                                  (let ((__tmp49330
                                                         (let ((__tmp49337
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'defclass-type))
                       (__tmp49331
                        (let ((__tmp49332
                               (let ((__tmp49333
                                      (let ((__tmp49334
                                             (let ((__tmp49335
                                                    (let ((__tmp49336
                                                           (lambda (_g2121521218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2121621221_)
                     (let ()
                       (declare (not safe))
                       (cons _g2121521218_ _g2121621221_)))))
              (declare (not safe))
              (foldr1 __tmp49336 '() _L20340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L19384_ __tmp49335))))
                                        (declare (not safe))
                                        (cons _L19356_ __tmp49334))))
                                 (declare (not safe))
                                 (cons _L19412_ __tmp49333))))
                          (declare (not safe))
                          (cons _L19328_ __tmp49332))))
                   (declare (not safe))
                   (cons __tmp49337 __tmp49331))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_wrap19267_ __tmp49330))))
                                            (declare (not safe))
                                            (_g2035821212_ __tmp49329))))
                                      _type-body2029720336_))))))
                     (let ()
                       (declare (not safe))
                       (_loop2029220316_ _target2028920310_ '())))
                   (let ()
                     (declare (not safe))
                     (_g2028620303_ _g2028720307_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_g2028620303_
                                                    _g2028720307_)))))
                                          (__tmp49339
                                           (let ((__tmp49340
                                                  (let ((__tmp49341
                                                         (let ((__tmp49342
                                                                (let ((__tmp49343
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp49344
                                      (let ((__tmp49345
                                             (let ()
                                               (declare (not safe))
                                               (foldr1 cons
                                                       _type-mixin-slots20170_
                                                       _type-slots20153_))))
                                        (declare (not safe))
                                        (foldr1 cons
                                                __tmp49345
                                                _type-properties20274_))))
                                 (declare (not safe))
                                 (foldr1 cons __tmp49344 _type-final20283_))))
                          (declare (not safe))
                          (foldr1 cons __tmp49343 _type-struct20280_))))
                   (declare (not safe))
                   (foldr1 cons __tmp49342 _type-constructor20199_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 cons
                                                            __tmp49341
                                                            _type-name20177_))))
                                             (declare (not safe))
                                             (foldr1 cons
                                                     __tmp49340
                                                     _type-id20184_))))
                                     (declare (not safe))
                                     (_g2028521224_ __tmp49339))))
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
                                   (__tmp49347
                                    (gx#stx-map
                                     (lambda (_g2123121233_)
                                       (_make-id19269_ '"&" _g2123121233_))
                                     (let ((__tmp49348
                                            (lambda (_g2123621239_
                                                     _g2123721242_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2123621239_
                                                      _g2123721242_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp49348 '() _L19838_)))))
                              (declare (not safe))
                              (_g2006721228_ __tmp49347))))
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
                            (__tmp49350
                             (gx#stx-map
                              (lambda (_g2124821250_)
                                (_make-id19269_ '"&" _g2124821250_))
                              (let ((__tmp49351
                                     (lambda (_g2125321256_ _g2125421259_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g2125321256_ _g2125421259_)))))
                                (declare (not safe))
                                (foldr1 __tmp49351 '() _L19767_)))))
                       (declare (not safe))
                       (_g1999621245_ __tmp49350))))
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
                     (__tmp49353
                      (gx#stx-map
                       (lambda (_g2126521267_)
                         (_make-id19269_ '"&" _g2126521267_))
                       (let ((__tmp49354
                              (lambda (_g2127021273_ _g2127121276_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2127021273_ _g2127121276_)))))
                         (declare (not safe))
                         (foldr1 __tmp49354 '() _L19621_)))))
                (declare (not safe))
                (_g1992521262_ __tmp49353))))
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
              (__tmp49356
               (gx#stx-map
                (lambda (_g2128221284_) (_make-id19269_ '"&" _g2128221284_))
                (let ((__tmp49357
                       (lambda (_g2128721290_ _g2128821293_)
                         (let ()
                           (declare (not safe))
                           (cons _g2128721290_ _g2128821293_)))))
                  (declare (not safe))
                  (foldr1 __tmp49357 '() _L19550_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_g1985421279_ __tmp49356))))
                                           _mixin-setf1979519834_))))))
                          (let ()
                            (declare (not safe))
                            (_loop1979019814_ _target1978719808_ '())))
                        (let ()
                          (declare (not safe))
                          (_g1978419801_ _g1978519805_))))))
              (let () (declare (not safe)) (_g1978419801_ _g1978519805_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp49359
                                                (gx#stx-map
                                                 (lambda (_g2129921301_)
                                                   (_make-id19269_
                                                    _name19273_
                                                    '"-"
                                                    _g2129921301_
                                                    '"-set!"))
                                                 _mixin-slots19638_)))
                                          (declare (not safe))
                                          (_g1978321296_ __tmp49359))))
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
                                        (__tmp49361
                                         (gx#stx-map
                                          (lambda (_g2130821310_)
                                            (_make-id19269_
                                             _name19273_
                                             '"-"
                                             _g2130821310_))
                                          _mixin-slots19638_)))
                                   (declare (not safe))
                                   (_g1971221305_ __tmp49361))))
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
                            (_g1964021314_ _mixin-slots19638_))))
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
                          (__tmp49364
                           (gx#stx-map
                            (lambda (_g2132121323_)
                              (_make-id19269_
                               _name19273_
                               '"-"
                               _g2132121323_
                               '"-set!"))
                            _slots19264_)))
                     (declare (not safe))
                     (_g1956621318_ __tmp49364))))
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
                   (__tmp49366
                    (gx#stx-map
                     (lambda (_g2133021332_)
                       (_make-id19269_ _name19273_ '"-" _g2133021332_))
                     _slots19264_)))
              (declare (not safe))
              (_g1949521327_ __tmp49366))))
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
                                               (_g1942421336_ _slots19264_))))
                                         _g1939819409_)))
                                     (__tmp49368
                                      (map gerbil/core$<MOP>$<MOP:2>#class-type-descriptor
                                           _super19276_)))
                                (declare (not safe))
                                (_g1939621340_ __tmp49368))))
                          _g1937019381_)))
                      (__tmp49369 (_make-id19269_ _name19273_ '"?")))
                 (declare (not safe))
                 (_g1936821344_ __tmp49369))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1934219353_)))
                                               (__tmp49370
                                                (_make-id19269_
                                                 '"make-"
                                                 _name19273_)))
                                          (declare (not safe))
                                          (_g1934021348_ __tmp49370))))
                                    _g1931419325_)))
                                (__tmp49371
                                 (_make-id19269_ _name19273_ '"::t")))
                           (declare (not safe))
                           (_g1931221352_ __tmp49371))))
                     _g1928319294_))))
            (declare (not safe))
            (_g1928121356_ _id19262_)))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#defstruct|
      (lambda (_$stx21420_)
        (let* ((_g2142421443_
                (lambda (_g2142521439_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g2142521439_)))
               (_g2142321500_
                (lambda (_g2142521447_)
                  (if (gx#stx-pair? _g2142521447_)
                      (let ((_e2143121450_ (gx#syntax-e _g2142521447_)))
                        (let ((_hd2143021454_
                               (let ()
                                 (declare (not safe))
                                 (##car _e2143121450_)))
                              (_tl2142921457_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e2143121450_))))
                          (if (gx#stx-pair? _tl2142921457_)
                              (let ((_e2143421460_
                                     (gx#syntax-e _tl2142921457_)))
                                (let ((_hd2143321464_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2143421460_)))
                                      (_tl2143221467_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2143421460_))))
                                  (if (gx#stx-pair? _tl2143221467_)
                                      (let ((_e2143721470_
                                             (gx#syntax-e _tl2143221467_)))
                                        (let ((_hd2143621474_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2143721470_)))
                                              (_tl2143521477_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2143721470_))))
                                          ((lambda (_L21480_ _L21482_ _L21483_)
                                             (let ((__tmp49376
                                                    (gx#datum->syntax
                                                     '#f
                                                     'defclass))
                                                   (__tmp49372
                                                    (let ((__tmp49373
                                                           (let ((__tmp49374
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp49375
                                 (let ()
                                   (declare (not safe))
                                   (cons '#t _L21480_))))
                            (declare (not safe))
                            (cons 'struct: __tmp49375))))
                     (declare (not safe))
                     (cons _L21482_ __tmp49374))))
              (declare (not safe))
              (cons _L21483_ __tmp49373))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp49376 __tmp49372)))
                                           _tl2143521477_
                                           _hd2143621474_
                                           _hd2143321464_)))
                                      (_g2142421443_ _g2142521447_))))
                              (_g2142421443_ _g2142521447_))))
                      (_g2142421443_ _g2142521447_)))))
          (_g2142321500_ _$stx21420_))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#defclass|
      (lambda (_stx21504_)
        (letrec ((_generate21507_
                  (lambda (_hd21591_ _slots21593_ _body21594_)
                    (let* ((___stx4421044211_ _hd21591_)
                           (_g2159721609_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx4421044211_))))
                      (let ((___kont4421344214_
                             (lambda (_L21637_ _L21639_)
                               (let ((__tmp49377 (gx#syntax->list _L21637_)))
                                 (declare (not safe))
                                 (|gerbil/core$<MOP>$<MOP:4>[1]#generate-defclass|
                                  _stx21504_
                                  _L21639_
                                  __tmp49377
                                  _slots21593_
                                  _body21594_))))
                            (___kont4421544216_
                             (lambda ()
                               (if (gx#identifier? _hd21591_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core$<MOP>$<MOP:4>[1]#generate-defclass|
                                      _stx21504_
                                      _hd21591_
                                      '()
                                      _slots21593_
                                      _body21594_))
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; class name should be an identifier"
                                    _stx21504_
                                    _hd21591_)))))
                        (let ((___match4422344224_
                               (lambda (_e2160321627_
                                        _hd2160221631_
                                        _tl2160121634_)
                                 (let ((_L21637_ _tl2160121634_)
                                       (_L21639_ _hd2160221631_))
                                   (if (and (gx#stx-list? _L21637_)
                                            (gx#stx-andmap
                                             gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?
                                             _L21637_))
                                       (___kont4421344214_ _L21637_ _L21639_)
                                       (___kont4421544216_))))))
                          (if (gx#stx-pair? ___stx4421044211_)
                              (let ((_e2160321627_
                                     (gx#syntax-e ___stx4421044211_)))
                                (let ((_tl2160121634_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2160321627_)))
                                      (_hd2160221631_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2160321627_))))
                                  (___match4422344224_
                                   _e2160321627_
                                   _hd2160221631_
                                   _tl2160121634_)))
                              (___kont4421544216_))))))))
          (let* ((_g2151021529_
                  (lambda (_g2151121525_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2151121525_)))
                 (_g2150921587_
                  (lambda (_g2151121533_)
                    (if (gx#stx-pair? _g2151121533_)
                        (let ((_e2151721536_ (gx#syntax-e _g2151121533_)))
                          (let ((_hd2151621540_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2151721536_)))
                                (_tl2151521543_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2151721536_))))
                            (if (gx#stx-pair? _tl2151521543_)
                                (let ((_e2152021546_
                                       (gx#syntax-e _tl2151521543_)))
                                  (let ((_hd2151921550_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2152021546_)))
                                        (_tl2151821553_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2152021546_))))
                                    (if (gx#stx-pair? _tl2151821553_)
                                        (let ((_e2152321556_
                                               (gx#syntax-e _tl2151821553_)))
                                          (let ((_hd2152221560_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2152321556_)))
                                                (_tl2152121563_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2152321556_))))
                                            ((lambda (_L21566_
                                                      _L21568_
                                                      _L21569_)
                                               (if (and (gx#identifier-list?
                                                         _L21568_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (|gerbil/core$<MOP>$<MOP:4>[1]#typedef-body?|
                                                           _L21566_)))
                                                   (_generate21507_
                                                    _L21569_
                                                    _L21568_
                                                    _L21566_)
                                                   (_g2151021529_
                                                    _g2151121533_)))
                                             _tl2152121563_
                                             _hd2152221560_
                                             _hd2151921550_)))
                                        (_g2151021529_ _g2151121533_))))
                                (_g2151021529_ _g2151121533_))))
                        (_g2151021529_ _g2151121533_)))))
            (_g2150921587_ _stx21504_)))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#defmethod|
      (lambda (_stx21656_)
        (letrec ((_wrap21659_
                  (lambda (_e-stx21996_)
                    (gx#stx-wrap-source
                     _e-stx21996_
                     (gx#stx-source _stx21656_))))
                 (_method-opt?21661_
                  (lambda (_x21993_) (memq (gx#stx-e _x21993_) '(rebind:)))))
          (let* ((_g2166321692_
                  (lambda (_g2166421688_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2166421688_)))
                 (_g2166221989_
                  (lambda (_g2166421696_)
                    (if (gx#stx-pair? _g2166421696_)
                        (let ((_e2167121699_ (gx#syntax-e _g2166421696_)))
                          (let ((_hd2167021703_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2167121699_)))
                                (_tl2166921706_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2167121699_))))
                            (if (gx#stx-pair? _tl2166921706_)
                                (let ((_e2167421709_
                                       (gx#syntax-e _tl2166921706_)))
                                  (let ((_hd2167321713_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2167421709_)))
                                        (_tl2167221716_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2167421709_))))
                                    (if (gx#stx-pair? _hd2167321713_)
                                        (let ((_e2167721719_
                                               (gx#syntax-e _hd2167321713_)))
                                          (let ((_hd2167621723_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2167721719_)))
                                                (_tl2167521726_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2167721719_))))
                                            (if (gx#identifier? _hd2167621723_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:4>[1]#_g49428_|
                                                     _hd2167621723_)
                                                    (if (gx#stx-pair?
                                                         _tl2167521726_)
                                                        (let ((_e2168021729_
                                                               (gx#syntax-e
                                                                _tl2167521726_)))
                                                          (let ((_hd2167921733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e2168021729_)))
                        (_tl2167821736_
                         (let () (declare (not safe)) (##cdr _e2168021729_))))
                    (if (gx#stx-pair? _tl2167821736_)
                        (let ((_e2168321739_ (gx#syntax-e _tl2167821736_)))
                          (let ((_hd2168221743_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2168321739_)))
                                (_tl2168121746_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2168321739_))))
                            (if (gx#stx-null? _tl2168121746_)
                                (if (gx#stx-pair? _tl2167221716_)
                                    (let ((_e2168621749_
                                           (gx#syntax-e _tl2167221716_)))
                                      (let ((_hd2168521753_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e2168621749_)))
                                            (_tl2168421756_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e2168621749_))))
                                        ((lambda (_L21759_
                                                  _L21761_
                                                  _L21762_
                                                  _L21763_)
                                           (if (and (gx#identifier? _L21763_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                                                       _L21762_))
                                                    (gx#stx-plist?
                                                     _L21759_
                                                     _method-opt?21661_))
                                               (let* ((_klass21788_
                                                       (gx#syntax-local-value
                                                        _L21762_))
                                                      (_rebind?21791_
                                                       (if (gx#stx-getq
                                                            'rebind:
                                                            _L21759_)
                                                           '#t
                                                           '#f))
                                                      (_g2179421802_
                                                       (lambda (_g2179521798_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g2179521798_)))
                                                      (_g2179321985_
                                                       (lambda (_g2179521806_)
                                                         ((lambda (_L21809_)
                                                            (let ()
                                                              (let* ((_g2182321831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2182421827_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g2182421827_)))
                             (_g2182221981_
                              (lambda (_g2182421835_)
                                ((lambda (_L21838_)
                                   (let ()
                                     (let* ((_g2185121859_
                                             (lambda (_g2185221855_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g2185221855_)))
                                            (_g2185021977_
                                             (lambda (_g2185221863_)
                                               ((lambda (_L21866_)
                                                  (let ()
                                                    (let* ((_g2187921887_
                                                            (lambda (_g2188021883_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g2188021883_)))
                                                           (_g2187821973_
                                                            (lambda (_g2188021891_)
                                                              ((lambda (_L21894_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g2190721915_
                                   (lambda (_g2190821911_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g2190821911_)))
                                  (_g2190621969_
                                   (lambda (_g2190821919_)
                                     ((lambda (_L21922_)
                                        (let ()
                                          (let* ((_g2193521943_
                                                  (lambda (_g2193621939_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g2193621939_)))
                                                 (_g2193421965_
                                                  (lambda (_g2193621947_)
                                                    ((lambda (_L21950_)
                                                       (let ()
                                                         (let ()
                                                           (_wrap21659_
                                                            (let ((__tmp49382
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'begin))
                          (__tmp49380
                           (let ((__tmp49381
                                  (let ()
                                    (declare (not safe))
                                    (cons _L21950_ '()))))
                             (declare (not safe))
                             (cons _L21894_ __tmp49381))))
                      (declare (not safe))
                      (cons __tmp49382 __tmp49380))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g2193621947_))))
                                            (_g2193421965_
                                             (_wrap21659_
                                              (let ((__tmp49390
                                                     (gx#datum->syntax
                                                      '#f
                                                      'bind-method!))
                                                    (__tmp49383
                                                     (let ((__tmp49384
                                                            (let ((__tmp49387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp49389 (gx#datum->syntax '#f 'quote))
                                 (__tmp49388
                                  (let ()
                                    (declare (not safe))
                                    (cons _L21763_ '()))))
                             (declare (not safe))
                             (cons __tmp49389 __tmp49388)))
                          (__tmp49385
                           (let ((__tmp49386
                                  (let ()
                                    (declare (not safe))
                                    (cons _L21922_ '()))))
                             (declare (not safe))
                             (cons _L21838_ __tmp49386))))
                      (declare (not safe))
                      (cons __tmp49387 __tmp49385))))
               (declare (not safe))
               (cons _L21809_ __tmp49384))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49390
                                                      __tmp49383)))))))
                                      _g2190821919_))))
                             (_g2190621969_ _rebind?21791_))))
                       _g2188021891_))))
              (_g2187821973_
               (_wrap21659_
                (let ((__tmp49427 (gx#datum->syntax '#f 'def))
                      (__tmp49391
                       (let ((__tmp49392
                              (let ((__tmp49393
                                     (let ((__tmp49426
                                            (gx#datum->syntax '#f 'let-syntax))
                                           (__tmp49394
                                            (let ((__tmp49396
                                                   (let ((__tmp49397
                                                          (let ((__tmp49398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp49399
                                (let ((__tmp49425
                                       (gx#datum->syntax '#f 'syntax-rules))
                                      (__tmp49400
                                       (let ((__tmp49401
                                              (let ((__tmp49402
                                                     (let ((__tmp49417
                                                            (let ((__tmp49424
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '_))
                          (__tmp49418
                           (let ((__tmp49423 (gx#datum->syntax '#f 'obj))
                                 (__tmp49419
                                  (let ((__tmp49422
                                         (gx#datum->syntax '#f 'arg))
                                        (__tmp49420
                                         (let ((__tmp49421
                                                (gx#datum->syntax '#f '...)))
                                           (declare (not safe))
                                           (cons __tmp49421 '()))))
                                    (declare (not safe))
                                    (cons __tmp49422 __tmp49420))))
                             (declare (not safe))
                             (cons __tmp49423 __tmp49419))))
                      (declare (not safe))
                      (cons __tmp49424 __tmp49418)))
                   (__tmp49403
                    (let ((__tmp49404
                           (let ((__tmp49416
                                  (gx#datum->syntax '#f 'call-next-method))
                                 (__tmp49405
                                  (let ((__tmp49406
                                         (let ((__tmp49415
                                                (gx#datum->syntax '#f 'obj))
                                               (__tmp49407
                                                (let ((__tmp49412
                                                       (let ((__tmp49414
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp49413
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L21763_ '()))))
                 (declare (not safe))
                 (cons __tmp49414 __tmp49413)))
              (__tmp49408
               (let ((__tmp49411 (gx#datum->syntax '#f 'arg))
                     (__tmp49409
                      (let ((__tmp49410 (gx#datum->syntax '#f '...)))
                        (declare (not safe))
                        (cons __tmp49410 '()))))
                 (declare (not safe))
                 (cons __tmp49411 __tmp49409))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp49412
                                                        __tmp49408))))
                                           (declare (not safe))
                                           (cons __tmp49415 __tmp49407))))
                                    (declare (not safe))
                                    (cons _L21809_ __tmp49406))))
                             (declare (not safe))
                             (cons __tmp49416 __tmp49405))))
                      (declare (not safe))
                      (cons __tmp49404 '()))))
               (declare (not safe))
               (cons __tmp49417 __tmp49403))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp49402 '()))))
                                         (declare (not safe))
                                         (cons '() __tmp49401))))
                                  (declare (not safe))
                                  (cons __tmp49425 __tmp49400))))
                           (declare (not safe))
                           (cons __tmp49399 '()))))
                    (declare (not safe))
                    (cons _L21866_ __tmp49398))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49397 '())))
                                                  (__tmp49395
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L21761_ '()))))
                                              (declare (not safe))
                                              (cons __tmp49396 __tmp49395))))
                                       (declare (not safe))
                                       (cons __tmp49426 __tmp49394))))
                                (declare (not safe))
                                (cons __tmp49393 '()))))
                         (declare (not safe))
                         (cons _L21838_ __tmp49392))))
                  (declare (not safe))
                  (cons __tmp49427 __tmp49391)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g2185221863_))))
                                       (_g2185021977_
                                        (gx#stx-identifier
                                         _L21762_
                                         '@next-method)))))
                                 _g2182421835_))))
                        (_g2182221981_
                         (gx#stx-identifier
                          _L21762_
                          _L21762_
                          '"::"
                          _L21763_)))))
                  _g2179521806_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2179321985_
                                                  (let ((__obj47249
                                                         _klass21788_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj47249
                                                           'gerbil.core#class-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj47249
                                                           '8
                                                           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                                                         __obj47249
                                                         'type-descriptor)))))
                                               (if (let ((__tmp49379
                                                          (gx#identifier?
                                                           _L21763_)))
                                                     (declare (not safe))
                                                     (not __tmp49379))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _stx21656_
                                                    _L21763_)
                                                   (if (let ((__tmp49378
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core$<MOP>$<MOP:2>#syntax-local-class-type-info?__0
                         _L21762_))))
                 (declare (not safe))
                 (not __tmp49378))
               (gx#raise-syntax-error
                '#f
                '"bad syntax; expected type identifier"
                _stx21656_
                _L21762_)
               (gx#raise-syntax-error
                '#f
                '"bad syntax; illegal method options"
                _stx21656_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _tl2168421756_
                                         _hd2168521753_
                                         _hd2168221743_
                                         _hd2167921733_)))
                                    (_g2166321692_ _g2166421696_))
                                (_g2166321692_ _g2166421696_))))
                        (_g2166321692_ _g2166421696_))))
                (_g2166321692_ _g2166421696_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2166321692_
                                                     _g2166421696_))
                                                (_g2166321692_
                                                 _g2166421696_))))
                                        (_g2166321692_ _g2166421696_))))
                                (_g2166321692_ _g2166421696_))))
                        (_g2166321692_ _g2166421696_)))))
            (_g2166221989_ _stx21656_)))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#@method|
      (lambda (_stx21999_)
        (letrec ((_dotted-identifier?22002_
                  (lambda (_id22635_)
                    (if (gx#identifier? _id22635_)
                        (let ((_id-str22638_
                               (symbol->string (gx#stx-e _id22635_))))
                          (if (let ()
                                (declare (not safe))
                                (string-index _id-str22638_ '#\.))
                              (let ((_split22641_
                                     (let ()
                                       (declare (not safe))
                                       (string-split _id-str22638_ '#\.))))
                                (fx= (length _split22641_) '2))
                              '#f))
                        '#f)))
                 (_split-dotted22004_
                  (lambda (_id22624_)
                    (let* ((_id-str22627_
                            (symbol->string (gx#stx-e _id22624_)))
                           (_split22630_
                            (let ()
                              (declare (not safe))
                              (string-split _id-str22627_ '#\.))))
                      (let ((__tmp49431
                             (gx#stx-identifier _id22624_ (car _split22630_)))
                            (__tmp49429
                             (let ((__tmp49430
                                    (gx#stx-identifier
                                     _id22624_
                                     (cadr _split22630_))))
                               (declare (not safe))
                               (cons __tmp49430 '()))))
                        (declare (not safe))
                        (cons __tmp49431 __tmp49429))))))
          (let* ((___stx4422644227_ _stx21999_)
                 (_g2200922096_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx4422644227_))))
            (let ((___kont4422944230_
                   (lambda (_L22517_ _L22519_ _L22520_)
                     (let* ((_g2254822563_
                             (lambda (_g2254922559_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2254922559_)))
                            (_g2254722616_
                             (lambda (_g2254922567_)
                               (if (gx#stx-pair? _g2254922567_)
                                   (let ((_e2255422570_
                                          (gx#syntax-e _g2254922567_)))
                                     (let ((_hd2255322574_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2255422570_)))
                                           (_tl2255222577_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2255422570_))))
                                       (if (gx#stx-pair? _tl2255222577_)
                                           (let ((_e2255722580_
                                                  (gx#syntax-e
                                                   _tl2255222577_)))
                                             (let ((_hd2255622584_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2255722580_)))
                                                   (_tl2255522587_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2255722580_))))
                                               (if (gx#stx-null?
                                                    _tl2255522587_)
                                                   ((lambda (_L22590_ _L22592_)
                                                      (let ()
                                                        (let ((__tmp49444
                                                               (gx#datum->syntax
                                                                '#f
                                                                'apply))
                                                              (__tmp49432
                                                               (let ((__tmp49443
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'call-method))
                             (__tmp49433
                              (let ((__tmp49434
                                     (let ((__tmp49440
                                            (let ((__tmp49442
                                                   (gx#datum->syntax
                                                    '#f
                                                    'quote))
                                                  (__tmp49441
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L22590_ '()))))
                                              (declare (not safe))
                                              (cons __tmp49442 __tmp49441)))
                                           (__tmp49435
                                            (let ((__tmp49436
                                                   (let ((__tmp49439
                                                          (gx#datum->syntax
                                                           '#f
                                                           '@list))
                                                         (__tmp49437
                                                          (let ((__tmp49438
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g2260722610_ _g2260822613_)
                           (let ()
                             (declare (not safe))
                             (cons _g2260722610_ _g2260822613_)))))
                    (declare (not safe))
                    (foldr1 __tmp49438 '() _L22519_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp49439
                                                           __tmp49437))))
                                              (declare (not safe))
                                              (cons __tmp49436 '()))))
                                       (declare (not safe))
                                       (cons __tmp49440 __tmp49435))))
                                (declare (not safe))
                                (cons _L22592_ __tmp49434))))
                         (declare (not safe))
                         (cons __tmp49443 __tmp49433))))
                  (declare (not safe))
                  (cons __tmp49444 __tmp49432))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2255622584_
                                                    _hd2255322574_)
                                                   (_g2254822563_
                                                    _g2254922567_))))
                                           (_g2254822563_ _g2254922567_))))
                                   (_g2254822563_ _g2254922567_)))))
                       (_g2254722616_ (_split-dotted22004_ _L22520_)))))
                  (___kont4423344234_
                   (lambda (_L22359_ _L22361_)
                     (let* ((_g2237822393_
                             (lambda (_g2237922389_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g2237922389_)))
                            (_g2237722446_
                             (lambda (_g2237922397_)
                               (if (gx#stx-pair? _g2237922397_)
                                   (let ((_e2238422400_
                                          (gx#syntax-e _g2237922397_)))
                                     (let ((_hd2238322404_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e2238422400_)))
                                           (_tl2238222407_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e2238422400_))))
                                       (if (gx#stx-pair? _tl2238222407_)
                                           (let ((_e2238722410_
                                                  (gx#syntax-e
                                                   _tl2238222407_)))
                                             (let ((_hd2238622414_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e2238722410_)))
                                                   (_tl2238522417_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e2238722410_))))
                                               (if (gx#stx-null?
                                                    _tl2238522417_)
                                                   ((lambda (_L22420_ _L22422_)
                                                      (let ()
                                                        (let ((__tmp49452
                                                               (gx#datum->syntax
                                                                '#f
                                                                'call-method))
                                                              (__tmp49445
                                                               (let ((__tmp49446
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp49449
                                     (let ((__tmp49451
                                            (gx#datum->syntax '#f 'quote))
                                           (__tmp49450
                                            (let ()
                                              (declare (not safe))
                                              (cons _L22420_ '()))))
                                       (declare (not safe))
                                       (cons __tmp49451 __tmp49450)))
                                    (__tmp49447
                                     (let ((__tmp49448
                                            (lambda (_g2243722440_
                                                     _g2243822443_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g2243722440_
                                                      _g2243822443_)))))
                                       (declare (not safe))
                                       (foldr1 __tmp49448 '() _L22359_))))
                                (declare (not safe))
                                (cons __tmp49449 __tmp49447))))
                         (declare (not safe))
                         (cons _L22422_ __tmp49446))))
                  (declare (not safe))
                  (cons __tmp49452 __tmp49445))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd2238622414_
                                                    _hd2238322404_)
                                                   (_g2237822393_
                                                    _g2237922397_))))
                                           (_g2237822393_ _g2237922397_))))
                                   (_g2237822393_ _g2237922397_)))))
                       (_g2237722446_ (_split-dotted22004_ _L22361_)))))
                  (___kont4423744238_
                   (lambda (_L22263_ _L22265_ _L22266_)
                     (let ((__tmp49465 (gx#datum->syntax '#f 'apply))
                           (__tmp49453
                            (let ((__tmp49464
                                   (gx#datum->syntax '#f 'call-method))
                                  (__tmp49454
                                   (let ((__tmp49455
                                          (let ((__tmp49461
                                                 (let ((__tmp49463
                                                        (gx#datum->syntax
                                                         '#f
                                                         'quote))
                                                       (__tmp49462
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L22266_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp49463
                                                         __tmp49462)))
                                                (__tmp49456
                                                 (let ((__tmp49457
                                                        (let ((__tmp49460
                                                               (gx#datum->syntax
                                                                '#f
                                                                '@list))
                                                              (__tmp49458
                                                               (let ((__tmp49459
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g2229322296_ _g2229422299_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g2229322296_ _g2229422299_)))))
                         (declare (not safe))
                         (foldr1 __tmp49459 '() _L22263_))))
                  (declare (not safe))
                  (cons __tmp49460 __tmp49458))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp49457 '()))))
                                            (declare (not safe))
                                            (cons __tmp49461 __tmp49456))))
                                     (declare (not safe))
                                     (cons _L22265_ __tmp49455))))
                              (declare (not safe))
                              (cons __tmp49464 __tmp49454))))
                       (declare (not safe))
                       (cons __tmp49465 __tmp49453))))
                  (___kont4424144242_
                   (lambda (_L22163_ _L22165_ _L22166_)
                     (let ((__tmp49473 (gx#datum->syntax '#f 'call-method))
                           (__tmp49466
                            (let ((__tmp49467
                                   (let ((__tmp49470
                                          (let ((__tmp49472
                                                 (gx#datum->syntax '#f 'quote))
                                                (__tmp49471
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L22166_ '()))))
                                            (declare (not safe))
                                            (cons __tmp49472 __tmp49471)))
                                         (__tmp49468
                                          (let ((__tmp49469
                                                 (lambda (_g2218722190_
                                                          _g2218822193_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g2218722190_
                                                           _g2218822193_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp49469 '() _L22163_))))
                                     (declare (not safe))
                                     (cons __tmp49470 __tmp49468))))
                              (declare (not safe))
                              (cons _L22165_ __tmp49467))))
                       (declare (not safe))
                       (cons __tmp49473 __tmp49466)))))
              (let* ((___match4434544346_
                      (lambda (_e2207522103_
                               _hd2207422107_
                               _tl2207322110_
                               _e2207822113_
                               _hd2207722117_
                               _tl2207622120_
                               _e2208122123_
                               _hd2208022127_
                               _tl2207922130_
                               ___splice4424344244_
                               _target2208222133_
                               _tl2208422136_)
                        (letrec ((_loop2208522139_
                                  (lambda (_hd2208322143_ _arg2208922146_)
                                    (if (gx#stx-pair? _hd2208322143_)
                                        (let ((_e2208622149_
                                               (gx#syntax-e _hd2208322143_)))
                                          (let ((_lp-tl2208822156_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2208622149_)))
                                                (_lp-hd2208722153_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2208622149_))))
                                            (_loop2208522139_
                                             _lp-tl2208822156_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2208722153_
                                                     _arg2208922146_)))))
                                        (let ((_arg2209022159_
                                               (reverse _arg2208922146_)))
                                          (let ((_L22163_ _arg2209022159_)
                                                (_L22165_ _hd2208022127_)
                                                (_L22166_ _hd2207722117_))
                                            (if (gx#identifier? _L22166_)
                                                (___kont4424144242_
                                                 _L22163_
                                                 _L22165_
                                                 _L22166_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2200922096_)))))))))
                          (_loop2208522139_ _target2208222133_ '()))))
                     (___match4431944320_
                      (lambda (_e2205422203_
                               _hd2205322207_
                               _tl2205222210_
                               _e2205722213_
                               _hd2205622217_
                               _tl2205522220_
                               _e2206022223_
                               _hd2205922227_
                               _tl2205822230_
                               ___splice4423944240_
                               _target2206122233_
                               _tl2206322236_)
                        (letrec ((_loop2206422239_
                                  (lambda (_hd2206222243_ _arg2206822246_)
                                    (if (gx#stx-pair? _hd2206222243_)
                                        (let ((_e2206522249_
                                               (gx#syntax-e _hd2206222243_)))
                                          (let ((_lp-tl2206722256_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2206522249_)))
                                                (_lp-hd2206622253_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2206522249_))))
                                            (_loop2206422239_
                                             _lp-tl2206722256_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2206622253_
                                                     _arg2206822246_)))))
                                        (let ((_arg2206922259_
                                               (reverse _arg2206822246_)))
                                          (let ((_L22263_ _arg2206922259_)
                                                (_L22265_ _hd2205922227_)
                                                (_L22266_ _hd2205622217_))
                                            (if (and (gx#identifier? _L22266_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (let ((__tmp49474
                                                             (lambda (_g2228522288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2228622291_)
                       (let ()
                         (declare (not safe))
                         (cons _g2228522288_ _g2228622291_)))))
                (declare (not safe))
                (foldr1 __tmp49474 '() _L22263_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4423744238_
                                                 _L22263_
                                                 _L22265_
                                                 _L22266_)
                                                (___match4434544346_
                                                 _e2205422203_
                                                 _hd2205322207_
                                                 _tl2205222210_
                                                 _e2205722213_
                                                 _hd2205622217_
                                                 _tl2205522220_
                                                 _e2206022223_
                                                 _hd2205922227_
                                                 _tl2205822230_
                                                 ___splice4423944240_
                                                 _target2206122233_
                                                 _tl2206322236_))))))))
                          (_loop2206422239_ _target2206122233_ '()))))
                     (___match4430544306_
                      (lambda (_e2205422203_
                               _hd2205322207_
                               _tl2205222210_
                               _e2205722213_
                               _hd2205622217_
                               _tl2205522220_)
                        (if (gx#stx-pair? _tl2205522220_)
                            (let ((_e2206022223_ (gx#syntax-e _tl2205522220_)))
                              (let ((_tl2205822230_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2206022223_)))
                                    (_hd2205922227_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2206022223_))))
                                (if (gx#stx-pair/null? _tl2205822230_)
                                    (let ((___splice4423944240_
                                           (gx#syntax-split-splice
                                            _tl2205822230_
                                            '0)))
                                      (let ((_tl2206322236_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4423944240_
                                                '1)))
                                            (_target2206122233_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4423944240_
                                                '0))))
                                        (if (gx#stx-null? _tl2206322236_)
                                            (___match4431944320_
                                             _e2205422203_
                                             _hd2205322207_
                                             _tl2205222210_
                                             _e2205722213_
                                             _hd2205622217_
                                             _tl2205522220_
                                             _e2206022223_
                                             _hd2205922227_
                                             _tl2205822230_
                                             ___splice4423944240_
                                             _target2206122233_
                                             _tl2206322236_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2200922096_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2200922096_)))))
                            (let () (declare (not safe)) (_g2200922096_)))))
                     (___match4429344294_
                      (lambda (_e2203622309_
                               _hd2203522313_
                               _tl2203422316_
                               _e2203922319_
                               _hd2203822323_
                               _tl2203722326_
                               ___splice4423544236_
                               _target2204022329_
                               _tl2204222332_)
                        (letrec ((_loop2204322335_
                                  (lambda (_hd2204122339_ _arg2204722342_)
                                    (if (gx#stx-pair? _hd2204122339_)
                                        (let ((_e2204422345_
                                               (gx#syntax-e _hd2204122339_)))
                                          (let ((_lp-tl2204622352_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2204422345_)))
                                                (_lp-hd2204522349_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2204422345_))))
                                            (_loop2204322335_
                                             _lp-tl2204622352_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2204522349_
                                                     _arg2204722342_)))))
                                        (let ((_arg2204822355_
                                               (reverse _arg2204722342_)))
                                          (let ((_L22359_ _arg2204822355_)
                                                (_L22361_ _hd2203822323_))
                                            (if (_dotted-identifier?22002_
                                                 _L22361_)
                                                (___kont4423344234_
                                                 _L22359_
                                                 _L22361_)
                                                (___match4430544306_
                                                 _e2203622309_
                                                 _hd2203522313_
                                                 _tl2203422316_
                                                 _e2203922319_
                                                 _hd2203822323_
                                                 _tl2203722326_))))))))
                          (_loop2204322335_ _target2204022329_ '()))))
                     (___match4429144292_
                      (lambda (_e2203622309_
                               _hd2203522313_
                               _tl2203422316_
                               _e2203922319_
                               _hd2203822323_
                               _tl2203722326_
                               ___splice4423544236_
                               _target2204022329_
                               _tl2204222332_)
                        (if (gx#stx-null? _tl2204222332_)
                            (___match4429344294_
                             _e2203622309_
                             _hd2203522313_
                             _tl2203422316_
                             _e2203922319_
                             _hd2203822323_
                             _tl2203722326_
                             ___splice4423544236_
                             _target2204022329_
                             _tl2204222332_)
                            (if (gx#stx-pair? _tl2203722326_)
                                (let ((_e2206022223_
                                       (gx#syntax-e _tl2203722326_)))
                                  (let ((_tl2205822230_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e2206022223_)))
                                        (_hd2205922227_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e2206022223_))))
                                    (if (gx#stx-pair/null? _tl2205822230_)
                                        (let ((___splice4423944240_
                                               (gx#syntax-split-splice
                                                _tl2205822230_
                                                '0)))
                                          (let ((_tl2206322236_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4423944240_
                                                    '1)))
                                                (_target2206122233_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4423944240_
                                                    '0))))
                                            (if (gx#stx-null? _tl2206322236_)
                                                (___match4431944320_
                                                 _e2203622309_
                                                 _hd2203522313_
                                                 _tl2203422316_
                                                 _e2203922319_
                                                 _hd2203822323_
                                                 _tl2203722326_
                                                 _e2206022223_
                                                 _hd2205922227_
                                                 _tl2205822230_
                                                 ___splice4423944240_
                                                 _target2206122233_
                                                 _tl2206322236_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2200922096_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2200922096_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2200922096_))))))
                     (___match4427344274_
                      (lambda (_e2201622457_
                               _hd2201522461_
                               _tl2201422464_
                               _e2201922467_
                               _hd2201822471_
                               _tl2201722474_
                               ___splice4423144232_
                               _target2202022477_
                               _tl2202222480_
                               _e2203122483_
                               _hd2203022487_
                               _tl2202922490_)
                        (letrec ((_loop2202322493_
                                  (lambda (_hd2202122497_ _arg2202722500_)
                                    (if (gx#stx-pair? _hd2202122497_)
                                        (let ((_e2202422503_
                                               (gx#syntax-e _hd2202122497_)))
                                          (let ((_lp-tl2202622510_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2202422503_)))
                                                (_lp-hd2202522507_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2202422503_))))
                                            (_loop2202322493_
                                             _lp-tl2202622510_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd2202522507_
                                                     _arg2202722500_)))))
                                        (let ((_arg2202822513_
                                               (reverse _arg2202722500_)))
                                          (let ((_L22517_ _hd2203022487_)
                                                (_L22519_ _arg2202822513_)
                                                (_L22520_ _hd2201822471_))
                                            (if (and (_dotted-identifier?22002_
                                                      _L22520_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (let ((__tmp49475
                                                             (lambda (_g2253922542_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2254022545_)
                       (let ()
                         (declare (not safe))
                         (cons _g2253922542_ _g2254022545_)))))
                (declare (not safe))
                (foldr1 __tmp49475 '() _L22519_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4422944230_
                                                 _L22517_
                                                 _L22519_
                                                 _L22520_)
                                                (let ((___splice4423544236_
                                                       (gx#syntax-split-splice
                                                        _tl2201722474_
                                                        '0)))
                                                  (let ((_tl2204222332_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4423544236_
                                                            '1)))
                                                        (_target2204022329_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4423544236_
                                                            '0))))
                                                    (___match4429144292_
                                                     _e2201622457_
                                                     _hd2201522461_
                                                     _tl2201422464_
                                                     _e2201922467_
                                                     _hd2201822471_
                                                     _tl2201722474_
                                                     ___splice4423544236_
                                                     _target2204022329_
                                                     _tl2204222332_))))))))))
                          (_loop2202322493_ _target2202022477_ '())))))
                (if (gx#stx-pair? ___stx4422644227_)
                    (let ((_e2201622457_ (gx#syntax-e ___stx4422644227_)))
                      (let ((_tl2201422464_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2201622457_)))
                            (_hd2201522461_
                             (let ()
                               (declare (not safe))
                               (##car _e2201622457_))))
                        (if (gx#stx-pair? _tl2201422464_)
                            (let ((_e2201922467_ (gx#syntax-e _tl2201422464_)))
                              (let ((_tl2201722474_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2201922467_)))
                                    (_hd2201822471_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2201922467_))))
                                (if (gx#stx-pair/null? _tl2201722474_)
                                    (if (fx>= (gx#stx-length _tl2201722474_)
                                              '1)
                                        (let ((___splice4423144232_
                                               (gx#syntax-split-splice
                                                _tl2201722474_
                                                '1)))
                                          (let ((_tl2202222480_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4423144232_
                                                    '1)))
                                                (_target2202022477_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4423144232_
                                                    '0))))
                                            (if (gx#stx-pair? _tl2202222480_)
                                                (let ((_e2203122483_
                                                       (gx#syntax-e
                                                        _tl2202222480_)))
                                                  (let ((_tl2202922490_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e2203122483_)))
                                                        (_hd2203022487_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e2203122483_))))
                                                    (if (gx#stx-null?
                                                         _tl2202922490_)
                                                        (___match4427344274_
                                                         _e2201622457_
                                                         _hd2201522461_
                                                         _tl2201422464_
                                                         _e2201922467_
                                                         _hd2201822471_
                                                         _tl2201722474_
                                                         ___splice4423144232_
                                                         _target2202022477_
                                                         _tl2202222480_
                                                         _e2203122483_
                                                         _hd2203022487_
                                                         _tl2202922490_)
                                                        (let ((___splice4423544236_
                                                               (gx#syntax-split-splice
                                                                _tl2201722474_
                                                                '0)))
                                                          (let ((_tl2204222332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4423544236_ '1)))
                        (_target2204022329_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4423544236_ '0))))
                    (if (gx#stx-null? _tl2204222332_)
                        (___match4429344294_
                         _e2201622457_
                         _hd2201522461_
                         _tl2201422464_
                         _e2201922467_
                         _hd2201822471_
                         _tl2201722474_
                         ___splice4423544236_
                         _target2204022329_
                         _tl2204222332_)
                        (if (gx#stx-pair? _tl2201722474_)
                            (let ((_e2206022223_ (gx#syntax-e _tl2201722474_)))
                              (let ((_tl2205822230_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e2206022223_)))
                                    (_hd2205922227_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e2206022223_))))
                                (if (gx#stx-pair/null? _tl2205822230_)
                                    (let ((___splice4423944240_
                                           (gx#syntax-split-splice
                                            _tl2205822230_
                                            '0)))
                                      (let ((_tl2206322236_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4423944240_
                                                '1)))
                                            (_target2206122233_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4423944240_
                                                '0))))
                                        (if (gx#stx-null? _tl2206322236_)
                                            (___match4431944320_
                                             _e2201622457_
                                             _hd2201522461_
                                             _tl2201422464_
                                             _e2201922467_
                                             _hd2201822471_
                                             _tl2201722474_
                                             _e2206022223_
                                             _hd2205922227_
                                             _tl2205822230_
                                             ___splice4423944240_
                                             _target2206122233_
                                             _tl2206322236_)
                                            (let ()
                                              (declare (not safe))
                                              (_g2200922096_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2200922096_)))))
                            (let ()
                              (declare (not safe))
                              (_g2200922096_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((___splice4423544236_
                                                       (gx#syntax-split-splice
                                                        _tl2201722474_
                                                        '0)))
                                                  (let ((_tl2204222332_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4423544236_
                                                            '1)))
                                                        (_target2204022329_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4423544236_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2204222332_)
                                                        (___match4429344294_
                                                         _e2201622457_
                                                         _hd2201522461_
                                                         _tl2201422464_
                                                         _e2201922467_
                                                         _hd2201822471_
                                                         _tl2201722474_
                                                         ___splice4423544236_
                                                         _target2204022329_
                                                         _tl2204222332_)
                                                        (if (gx#stx-pair?
                                                             _tl2201722474_)
                                                            (let ((_e2206022223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl2201722474_)))
                      (let ((_tl2205822230_
                             (let ()
                               (declare (not safe))
                               (##cdr _e2206022223_)))
                            (_hd2205922227_
                             (let ()
                               (declare (not safe))
                               (##car _e2206022223_))))
                        (if (gx#stx-pair/null? _tl2205822230_)
                            (let ((___splice4423944240_
                                   (gx#syntax-split-splice _tl2205822230_ '0)))
                              (let ((_tl2206322236_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice4423944240_ '1)))
                                    (_target2206122233_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice4423944240_
                                        '0))))
                                (if (gx#stx-null? _tl2206322236_)
                                    (___match4431944320_
                                     _e2201622457_
                                     _hd2201522461_
                                     _tl2201422464_
                                     _e2201922467_
                                     _hd2201822471_
                                     _tl2201722474_
                                     _e2206022223_
                                     _hd2205922227_
                                     _tl2205822230_
                                     ___splice4423944240_
                                     _target2206122233_
                                     _tl2206322236_)
                                    (let ()
                                      (declare (not safe))
                                      (_g2200922096_)))))
                            (let () (declare (not safe)) (_g2200922096_)))))
                    (let () (declare (not safe)) (_g2200922096_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((___splice4423544236_
                                               (gx#syntax-split-splice
                                                _tl2201722474_
                                                '0)))
                                          (let ((_tl2204222332_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4423544236_
                                                    '1)))
                                                (_target2204022329_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4423544236_
                                                    '0))))
                                            (if (gx#stx-null? _tl2204222332_)
                                                (___match4429344294_
                                                 _e2201622457_
                                                 _hd2201522461_
                                                 _tl2201422464_
                                                 _e2201922467_
                                                 _hd2201822471_
                                                 _tl2201722474_
                                                 ___splice4423544236_
                                                 _target2204022329_
                                                 _tl2204222332_)
                                                (if (gx#stx-pair?
                                                     _tl2201722474_)
                                                    (let ((_e2206022223_
                                                           (gx#syntax-e
                                                            _tl2201722474_)))
                                                      (let ((_tl2205822230_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2206022223_)))
                    (_hd2205922227_
                     (let () (declare (not safe)) (##car _e2206022223_))))
                (if (gx#stx-pair/null? _tl2205822230_)
                    (let ((___splice4423944240_
                           (gx#syntax-split-splice _tl2205822230_ '0)))
                      (let ((_tl2206322236_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4423944240_ '1)))
                            (_target2206122233_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice4423944240_ '0))))
                        (if (gx#stx-null? _tl2206322236_)
                            (___match4431944320_
                             _e2201622457_
                             _hd2201522461_
                             _tl2201422464_
                             _e2201922467_
                             _hd2201822471_
                             _tl2201722474_
                             _e2206022223_
                             _hd2205922227_
                             _tl2205822230_
                             ___splice4423944240_
                             _target2206122233_
                             _tl2206322236_)
                            (let () (declare (not safe)) (_g2200922096_)))))
                    (let () (declare (not safe)) (_g2200922096_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2200922096_)))))))
                                    (if (gx#stx-pair? _tl2201722474_)
                                        (let ((_e2206022223_
                                               (gx#syntax-e _tl2201722474_)))
                                          (let ((_tl2205822230_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e2206022223_)))
                                                (_hd2205922227_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e2206022223_))))
                                            (if (gx#stx-pair/null?
                                                 _tl2205822230_)
                                                (let ((___splice4423944240_
                                                       (gx#syntax-split-splice
                                                        _tl2205822230_
                                                        '0)))
                                                  (let ((_tl2206322236_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4423944240_
                                                            '1)))
                                                        (_target2206122233_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice4423944240_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl2206322236_)
                                                        (___match4431944320_
                                                         _e2201622457_
                                                         _hd2201522461_
                                                         _tl2201422464_
                                                         _e2201922467_
                                                         _hd2201822471_
                                                         _tl2201722474_
                                                         _e2206022223_
                                                         _hd2205922227_
                                                         _tl2205822230_
                                                         ___splice4423944240_
                                                         _target2206122233_
                                                         _tl2206322236_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g2200922096_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g2200922096_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g2200922096_))))))
                            (let () (declare (not safe)) (_g2200922096_)))))
                    (let () (declare (not safe)) (_g2200922096_)))))))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#@|
      (lambda (_$stx22648_)
        (let* ((___stx4434844349_ _$stx22648_)
               (_g2265322693_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4434844349_))))
          (let ((___kont4435144352_
                 (lambda (_L22831_ _L22833_)
                   (let ((__tmp49481 (gx#datum->syntax '#f 'slot-ref))
                         (__tmp49476
                          (let ((__tmp49477
                                 (let ((__tmp49478
                                        (let ((__tmp49480
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp49479
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L22831_ '()))))
                                          (declare (not safe))
                                          (cons __tmp49480 __tmp49479))))
                                   (declare (not safe))
                                   (cons __tmp49478 '()))))
                            (declare (not safe))
                            (cons _L22833_ __tmp49477))))
                     (declare (not safe))
                     (cons __tmp49481 __tmp49476))))
                (___kont4435344354_
                 (lambda (_L22760_ _L22762_ _L22763_ _L22764_)
                   (let ((__tmp49482
                          (let ((__tmp49485
                                 (let ((__tmp49486
                                        (let ((__tmp49487
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L22762_ '()))))
                                          (declare (not safe))
                                          (cons _L22763_ __tmp49487))))
                                   (declare (not safe))
                                   (cons _L22764_ __tmp49486)))
                                (__tmp49483
                                 (let ((__tmp49484
                                        (lambda (_g2278522788_ _g2278622791_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g2278522788_
                                                  _g2278622791_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp49484 '() _L22760_))))
                            (declare (not safe))
                            (cons __tmp49485 __tmp49483))))
                     (declare (not safe))
                     (cons _L22764_ __tmp49482)))))
            (let* ((___match4440344404_
                    (lambda (_e2267222700_
                             _hd2267122704_
                             _tl2267022707_
                             _e2267522710_
                             _hd2267422714_
                             _tl2267322717_
                             _e2267822720_
                             _hd2267722724_
                             _tl2267622727_
                             ___splice4435544356_
                             _target2267922730_
                             _tl2268122733_)
                      (letrec ((_loop2268222736_
                                (lambda (_hd2268022740_ _rest2268622743_)
                                  (if (gx#stx-pair? _hd2268022740_)
                                      (let ((_e2268322746_
                                             (gx#syntax-e _hd2268022740_)))
                                        (let ((_lp-tl2268522753_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2268322746_)))
                                              (_lp-hd2268422750_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2268322746_))))
                                          (_loop2268222736_
                                           _lp-tl2268522753_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd2268422750_
                                                   _rest2268622743_)))))
                                      (let ((_rest2268722756_
                                             (reverse _rest2268622743_)))
                                        (___kont4435344354_
                                         _rest2268722756_
                                         _hd2267722724_
                                         _hd2267422714_
                                         _hd2267122704_))))))
                        (_loop2268222736_ _target2267922730_ '()))))
                   (___match4437744378_
                    (lambda (_e2265922801_
                             _hd2265822805_
                             _tl2265722808_
                             _e2266222811_
                             _hd2266122815_
                             _tl2266022818_
                             _e2266522821_
                             _hd2266422825_
                             _tl2266322828_)
                      (let ((_L22831_ _hd2266422825_)
                            (_L22833_ _hd2266122815_))
                        (if (gx#identifier? _L22831_)
                            (___kont4435144352_ _L22831_ _L22833_)
                            (if (gx#stx-pair/null? _tl2266322828_)
                                (let ((___splice4435544356_
                                       (gx#syntax-split-splice
                                        _tl2266322828_
                                        '0)))
                                  (let ((_tl2268122733_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice4435544356_
                                            '1)))
                                        (_target2267922730_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice4435544356_
                                            '0))))
                                    (if (gx#stx-null? _tl2268122733_)
                                        (___match4440344404_
                                         _e2265922801_
                                         _hd2265822805_
                                         _tl2265722808_
                                         _e2266222811_
                                         _hd2266122815_
                                         _tl2266022818_
                                         _e2266522821_
                                         _hd2266422825_
                                         _tl2266322828_
                                         ___splice4435544356_
                                         _target2267922730_
                                         _tl2268122733_)
                                        (let ()
                                          (declare (not safe))
                                          (_g2265322693_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g2265322693_))))))))
              (if (gx#stx-pair? ___stx4434844349_)
                  (let ((_e2265922801_ (gx#syntax-e ___stx4434844349_)))
                    (let ((_tl2265722808_
                           (let () (declare (not safe)) (##cdr _e2265922801_)))
                          (_hd2265822805_
                           (let ()
                             (declare (not safe))
                             (##car _e2265922801_))))
                      (if (gx#stx-pair? _tl2265722808_)
                          (let ((_e2266222811_ (gx#syntax-e _tl2265722808_)))
                            (let ((_tl2266022818_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2266222811_)))
                                  (_hd2266122815_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2266222811_))))
                              (if (gx#stx-pair? _tl2266022818_)
                                  (let ((_e2266522821_
                                         (gx#syntax-e _tl2266022818_)))
                                    (let ((_tl2266322828_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2266522821_)))
                                          (_hd2266422825_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2266522821_))))
                                      (if (gx#stx-null? _tl2266322828_)
                                          (___match4437744378_
                                           _e2265922801_
                                           _hd2265822805_
                                           _tl2265722808_
                                           _e2266222811_
                                           _hd2266122815_
                                           _tl2266022818_
                                           _e2266522821_
                                           _hd2266422825_
                                           _tl2266322828_)
                                          (if (gx#stx-pair/null?
                                               _tl2266322828_)
                                              (let ((___splice4435544356_
                                                     (gx#syntax-split-splice
                                                      _tl2266322828_
                                                      '0)))
                                                (let ((_tl2268122733_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4435544356_
                                                          '1)))
                                                      (_target2267922730_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice4435544356_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl2268122733_)
                                                      (___match4440344404_
                                                       _e2265922801_
                                                       _hd2265822805_
                                                       _tl2265722808_
                                                       _e2266222811_
                                                       _hd2266122815_
                                                       _tl2266022818_
                                                       _e2266522821_
                                                       _hd2266422825_
                                                       _tl2266322828_
                                                       ___splice4435544356_
                                                       _target2267922730_
                                                       _tl2268122733_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g2265322693_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g2265322693_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2265322693_)))))
                          (let () (declare (not safe)) (_g2265322693_)))))
                  (let () (declare (not safe)) (_g2265322693_))))))))
    (define |gerbil/core$<MOP>$<MOP:4>[:0:]#@-set!|
      (lambda (_$stx22853_)
        (let* ((___stx4440644407_ _$stx22853_)
               (_g2285822910_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx4440644407_))))
          (let ((___kont4440944410_
                 (lambda (_L23086_ _L23088_ _L23089_)
                   (let ((__tmp49494 (gx#datum->syntax '#f 'slot-set!))
                         (__tmp49488
                          (let ((__tmp49489
                                 (let ((__tmp49491
                                        (let ((__tmp49493
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp49492
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L23088_ '()))))
                                          (declare (not safe))
                                          (cons __tmp49493 __tmp49492)))
                                       (__tmp49490
                                        (let ()
                                          (declare (not safe))
                                          (cons _L23086_ '()))))
                                   (declare (not safe))
                                   (cons __tmp49491 __tmp49490))))
                            (declare (not safe))
                            (cons _L23089_ __tmp49489))))
                     (declare (not safe))
                     (cons __tmp49494 __tmp49488))))
                (___kont4441144412_
                 (lambda (_L22997_
                          _L22999_
                          _L23000_
                          _L23001_
                          _L23002_
                          _L23003_)
                   (let ((__tmp49495
                          (let ((__tmp49498
                                 (let ((__tmp49503 (gx#datum->syntax '#f '@))
                                       (__tmp49499
                                        (let ((__tmp49500
                                               (let ((__tmp49501
                                                      (let ((__tmp49502
                                                             (lambda (_g2303023033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g2303123036_)
                       (let ()
                         (declare (not safe))
                         (cons _g2303023033_ _g2303123036_)))))
                (declare (not safe))
                (foldr1 __tmp49502 '() _L23000_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L23001_ __tmp49501))))
                                          (declare (not safe))
                                          (cons _L23002_ __tmp49500))))
                                   (declare (not safe))
                                   (cons __tmp49503 __tmp49499)))
                                (__tmp49496
                                 (let ((__tmp49497
                                        (let ()
                                          (declare (not safe))
                                          (cons _L22997_ '()))))
                                   (declare (not safe))
                                   (cons _L22999_ __tmp49497))))
                            (declare (not safe))
                            (cons __tmp49498 __tmp49496))))
                     (declare (not safe))
                     (cons _L23003_ __tmp49495)))))
            (let* ((___match4448144482_
                    (lambda (_e2288322917_
                             _hd2288222921_
                             _tl2288122924_
                             _e2288622927_
                             _hd2288522931_
                             _tl2288422934_
                             _e2288922937_
                             _hd2288822941_
                             _tl2288722944_
                             ___splice4441344414_
                             _target2289022947_
                             _tl2289222950_
                             _e2290122953_
                             _hd2290022957_
                             _tl2289922960_
                             _e2290422963_
                             _hd2290322967_
                             _tl2290222970_)
                      (letrec ((_loop2289322973_
                                (lambda (_hd2289122977_ _path2289722980_)
                                  (if (gx#stx-pair? _hd2289122977_)
                                      (let ((_e2289422983_
                                             (gx#syntax-e _hd2289122977_)))
                                        (let ((_lp-tl2289622990_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e2289422983_)))
                                              (_lp-hd2289522987_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e2289422983_))))
                                          (_loop2289322973_
                                           _lp-tl2289622990_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd2289522987_
                                                   _path2289722980_)))))
                                      (let ((_path2289822993_
                                             (reverse _path2289722980_)))
                                        (___kont4441144412_
                                         _hd2290322967_
                                         _hd2290022957_
                                         _path2289822993_
                                         _hd2288822941_
                                         _hd2288522931_
                                         _hd2288222921_))))))
                        (_loop2289322973_ _target2289022947_ '()))))
                   (___match4444144442_
                    (lambda (_e2286523046_
                             _hd2286423050_
                             _tl2286323053_
                             _e2286823056_
                             _hd2286723060_
                             _tl2286623063_
                             _e2287123066_
                             _hd2287023070_
                             _tl2286923073_
                             _e2287423076_
                             _hd2287323080_
                             _tl2287223083_)
                      (let ((_L23086_ _hd2287323080_)
                            (_L23088_ _hd2287023070_)
                            (_L23089_ _hd2286723060_))
                        (if (gx#identifier? _L23088_)
                            (___kont4440944410_ _L23086_ _L23088_ _L23089_)
                            (if (gx#stx-pair/null? _tl2286923073_)
                                (if (fx>= (gx#stx-length _tl2286923073_) '2)
                                    (let ((___splice4441344414_
                                           (gx#syntax-split-splice
                                            _tl2286923073_
                                            '2)))
                                      (let ((_tl2289222950_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4441344414_
                                                '1)))
                                            (_target2289022947_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice4441344414_
                                                '0))))
                                        (if (gx#stx-pair? _tl2289222950_)
                                            (let ((_e2290122953_
                                                   (gx#syntax-e
                                                    _tl2289222950_)))
                                              (let ((_tl2289922960_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e2290122953_)))
                                                    (_hd2290022957_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e2290122953_))))
                                                (if (gx#stx-pair?
                                                     _tl2289922960_)
                                                    (let ((_e2290422963_
                                                           (gx#syntax-e
                                                            _tl2289922960_)))
                                                      (let ((_tl2290222970_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e2290422963_)))
                    (_hd2290322967_
                     (let () (declare (not safe)) (##car _e2290422963_))))
                (if (gx#stx-null? _tl2290222970_)
                    (___match4448144482_
                     _e2286523046_
                     _hd2286423050_
                     _tl2286323053_
                     _e2286823056_
                     _hd2286723060_
                     _tl2286623063_
                     _e2287123066_
                     _hd2287023070_
                     _tl2286923073_
                     ___splice4441344414_
                     _target2289022947_
                     _tl2289222950_
                     _e2290122953_
                     _hd2290022957_
                     _tl2289922960_
                     _e2290422963_
                     _hd2290322967_
                     _tl2290222970_)
                    (let () (declare (not safe)) (_g2285822910_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g2285822910_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g2285822910_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g2285822910_)))
                                (let ()
                                  (declare (not safe))
                                  (_g2285822910_))))))))
              (if (gx#stx-pair? ___stx4440644407_)
                  (let ((_e2286523046_ (gx#syntax-e ___stx4440644407_)))
                    (let ((_tl2286323053_
                           (let () (declare (not safe)) (##cdr _e2286523046_)))
                          (_hd2286423050_
                           (let ()
                             (declare (not safe))
                             (##car _e2286523046_))))
                      (if (gx#stx-pair? _tl2286323053_)
                          (let ((_e2286823056_ (gx#syntax-e _tl2286323053_)))
                            (let ((_tl2286623063_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2286823056_)))
                                  (_hd2286723060_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2286823056_))))
                              (if (gx#stx-pair? _tl2286623063_)
                                  (let ((_e2287123066_
                                         (gx#syntax-e _tl2286623063_)))
                                    (let ((_tl2286923073_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2287123066_)))
                                          (_hd2287023070_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2287123066_))))
                                      (if (gx#stx-pair? _tl2286923073_)
                                          (let ((_e2287423076_
                                                 (gx#syntax-e _tl2286923073_)))
                                            (let ((_tl2287223083_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2287423076_)))
                                                  (_hd2287323080_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2287423076_))))
                                              (if (gx#stx-null? _tl2287223083_)
                                                  (___match4444144442_
                                                   _e2286523046_
                                                   _hd2286423050_
                                                   _tl2286323053_
                                                   _e2286823056_
                                                   _hd2286723060_
                                                   _tl2286623063_
                                                   _e2287123066_
                                                   _hd2287023070_
                                                   _tl2286923073_
                                                   _e2287423076_
                                                   _hd2287323080_
                                                   _tl2287223083_)
                                                  (if (gx#stx-pair/null?
                                                       _tl2286923073_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2286923073_)
                        '2)
                  (let ((___splice4441344414_
                         (gx#syntax-split-splice _tl2286923073_ '2)))
                    (let ((_tl2289222950_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4441344414_ '1)))
                          (_target2289022947_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice4441344414_ '0))))
                      (if (gx#stx-pair? _tl2289222950_)
                          (let ((_e2290122953_ (gx#syntax-e _tl2289222950_)))
                            (let ((_tl2289922960_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2290122953_)))
                                  (_hd2290022957_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2290122953_))))
                              (if (gx#stx-pair? _tl2289922960_)
                                  (let ((_e2290422963_
                                         (gx#syntax-e _tl2289922960_)))
                                    (let ((_tl2290222970_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e2290422963_)))
                                          (_hd2290322967_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e2290422963_))))
                                      (if (gx#stx-null? _tl2290222970_)
                                          (___match4448144482_
                                           _e2286523046_
                                           _hd2286423050_
                                           _tl2286323053_
                                           _e2286823056_
                                           _hd2286723060_
                                           _tl2286623063_
                                           _e2287123066_
                                           _hd2287023070_
                                           _tl2286923073_
                                           ___splice4441344414_
                                           _target2289022947_
                                           _tl2289222950_
                                           _e2290122953_
                                           _hd2290022957_
                                           _tl2289922960_
                                           _e2290422963_
                                           _hd2290322967_
                                           _tl2290222970_)
                                          (let ()
                                            (declare (not safe))
                                            (_g2285822910_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2285822910_)))))
                          (let () (declare (not safe)) (_g2285822910_)))))
                  (let () (declare (not safe)) (_g2285822910_)))
              (let () (declare (not safe)) (_g2285822910_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl2286923073_)
                                              (if (fx>= (gx#stx-length
                                                         _tl2286923073_)
                                                        '2)
                                                  (let ((___splice4441344414_
                                                         (gx#syntax-split-splice
                                                          _tl2286923073_
                                                          '2)))
                                                    (let ((_tl2289222950_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4441344414_
                                                              '1)))
                                                          (_target2289022947_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice4441344414_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _tl2289222950_)
                                                          (let ((_e2290122953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2289222950_)))
                    (let ((_tl2289922960_
                           (let () (declare (not safe)) (##cdr _e2290122953_)))
                          (_hd2290022957_
                           (let ()
                             (declare (not safe))
                             (##car _e2290122953_))))
                      (if (gx#stx-pair? _tl2289922960_)
                          (let ((_e2290422963_ (gx#syntax-e _tl2289922960_)))
                            (let ((_tl2290222970_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2290422963_)))
                                  (_hd2290322967_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2290422963_))))
                              (if (gx#stx-null? _tl2290222970_)
                                  (___match4448144482_
                                   _e2286523046_
                                   _hd2286423050_
                                   _tl2286323053_
                                   _e2286823056_
                                   _hd2286723060_
                                   _tl2286623063_
                                   _e2287123066_
                                   _hd2287023070_
                                   _tl2286923073_
                                   ___splice4441344414_
                                   _target2289022947_
                                   _tl2289222950_
                                   _e2290122953_
                                   _hd2290022957_
                                   _tl2289922960_
                                   _e2290422963_
                                   _hd2290322967_
                                   _tl2290222970_)
                                  (let ()
                                    (declare (not safe))
                                    (_g2285822910_)))))
                          (let () (declare (not safe)) (_g2285822910_)))))
                  (let () (declare (not safe)) (_g2285822910_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g2285822910_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g2285822910_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g2285822910_)))))
                          (let () (declare (not safe)) (_g2285822910_)))))
                  (let () (declare (not safe)) (_g2285822910_))))))))))
