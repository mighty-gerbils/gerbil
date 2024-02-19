(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1708352923)
  (begin
    (define c4-linearize__%
      (lambda (_g61303_
               _get-precedence-list6097060976_
               _struct?6097160978_
               _eq6097260980_
               _get-name6097360982_
               _rhead60984_
               _supers60985_)
        (let* ((_get-precedence-list60987_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-precedence-list6097060976_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument"
                             'get-precedence-list:))
                    _get-precedence-list6097060976_))
               (_struct?60989_
                (if (let ()
                      (declare (not safe))
                      (eq? _struct?6097160978_ absent-value))
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'struct:))
                    _struct?6097160978_))
               (_eq60991_
                (if (let ()
                      (declare (not safe))
                      (eq? _eq6097260980_ absent-value))
                    eq?
                    _eq6097260980_))
               (_get-name60993_
                (if (let ()
                      (declare (not safe))
                      (eq? _get-name6097360982_ absent-value))
                    identity
                    _get-name6097360982_)))
          (letrec* ((_pls60995_ (map _get-precedence-list60987_ _supers60985_))
                    (_sit60996_ '())
                    (_get-names60997_
                     (lambda (_lst61261_) (map _get-name60993_ _lst61261_)))
                    (_err60998_
                     (lambda _a61259_
                       (apply error
                              '"Inconsistent precedence graph"
                              'head:
                              (let ((__tmp61304 (reverse _rhead60984_)))
                                (declare (not safe))
                                (_get-names60997_ __tmp61304))
                              'precedence-lists:
                              (map _get-names60997_ _pls60995_)
                              'single-inheritance-tail:
                              (let ()
                                (declare (not safe))
                                (_get-names60997_ _sit60996_))
                              _a61259_)))
                    (_merge-sit!60999_
                     (lambda (_sit261249_)
                       (if (let () (declare (not safe)) (null? _sit261249_))
                           '#!void
                           (if (let () (declare (not safe)) (null? _sit60996_))
                               (set! _sit60996_ _sit261249_)
                               (let _loop61251_ ((_t161253_ _sit60996_)
                                                 (_t261254_ _sit261249_))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _t161253_ _sit261249_))
                                     '#!void
                                     (if (let ()
                                           (declare (not safe))
                                           (equal? _t261254_ _sit60996_))
                                         (set! _sit60996_ _sit261249_)
                                         (if (or (let ()
                                                   (declare (not safe))
                                                   (null? _t161253_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (null? _t261254_)))
                                             (let ((__tmp61307
                                                    (let ((__tmp61310
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_get-names60997_
                                                              _sit60996_)))
                                                          (__tmp61308
                                                           (let ((__tmp61309
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_get-names60997_ _sit261249_))))
                     (declare (not safe))
                     (cons __tmp61309 '()))))
              (declare (not safe))
              (cons __tmp61310 __tmp61308))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_err60998_
                                                'single-inheritance-incompatibility:
                                                __tmp61307))
                                             (let ((__tmp61306 (cdr _t161253_))
                                                   (__tmp61305
                                                    (cdr _t261254_)))
                                               (declare (not safe))
                                               (_loop61251_
                                                __tmp61306
                                                __tmp61305))))))))))
                    (_rpls61000_
                     (map (lambda (_pl61244_)
                            (let ((_g61311_
                                   (let ()
                                     (declare (not safe))
                                     (append-reverse-until
                                      _struct?60989_
                                      _pl61244_
                                      '()))))
                              (begin
                                (let ((_g61312_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g61311_)
                                             (##vector-length _g61311_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g61312_ 2)))
                                      (error "Context expects 2 values"
                                             _g61312_)))
                                (let ((_tl61246_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61311_ 0)))
                                      (_rh61247_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g61311_ 1))))
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (_merge-sit!60999_ _tl61246_))
                                    _rh61247_)))))
                          _pls60995_))
                    (_unsitr-rpl61001_
                     (lambda (_rpl61190_)
                       (let _u61192_ ((_pl-rhead61194_ _rpl61190_)
                                      (_pl-tail61195_ '())
                                      (_sit-rhead61196_ (reverse _sit60996_))
                                      (_sit-tail61197_ '()))
                         (let* ((_pl-rhead6119861207_ _pl-rhead61194_)
                                (_E6120161211_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _pl-rhead6119861207_)))))
                           (let ((_K6120561241_ (lambda () _pl-tail61195_))
                                 (_K6120261225_
                                  (lambda (_plrh61215_ _c61216_)
                                    (if (member _c61216_
                                                _sit-tail61197_
                                                _eq60991_)
                                        (let ((__tmp61323
                                               (let ((__tmp61324
                                                      (reverse _pl-rhead61194_)))
                                                 (declare (not safe))
                                                 (_get-names60997_
                                                  __tmp61324)))
                                              (__tmp61322
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names60997_
                                                  _pl-tail61195_)))
                                              (__tmp61320
                                               (let ((__tmp61321
                                                      (reverse _sit-rhead61196_)))
                                                 (declare (not safe))
                                                 (_get-names60997_
                                                  __tmp61321)))
                                              (__tmp61319
                                               (let ()
                                                 (declare (not safe))
                                                 (_get-names60997_
                                                  _sit-tail61197_)))
                                              (__tmp61318
                                               (_get-name60993_ _c61216_)))
                                          (declare (not safe))
                                          (_err60998_
                                           'precedence-list-head:
                                           __tmp61323
                                           'precedence-list-tail:
                                           __tmp61322
                                           'single-inheritance-head:
                                           __tmp61320
                                           'single-inheritance-tail:
                                           __tmp61319
                                           'super-out-of-order-vs-single-inheritance-tail:
                                           __tmp61318))
                                        (let ((_g61313_
                                               (let ((__tmp61315
                                                      (lambda (_g6121761219_)
                                                        (_eq60991_
                                                         _c61216_
                                                         _g6121761219_))))
                                                 (declare (not safe))
                                                 (append-reverse-until
                                                  __tmp61315
                                                  _sit-rhead61196_
                                                  _sit-tail61197_))))
                                          (begin
                                            (let ((_g61314_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g61313_)
                                                         (##vector-length
                                                          _g61313_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g61314_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g61314_)))
                                            (let ((_sit-rh261222_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g61313_
                                                      0)))
                                                  (_sit-tl261223_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g61313_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (null? _sit-rh261222_))
                                                  (let ((__tmp61317
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _c61216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pl-tail61195_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_u61192_
                                                     _plrh61215_
                                                     __tmp61317
                                                     '()
                                                     _sit-tl261223_))
                                                  (let ((__tmp61316
                                                         (cdr _sit-rh261222_)))
                                                    (declare (not safe))
                                                    (_u61192_
                                                     _plrh61215_
                                                     _pl-tail61195_
                                                     __tmp61316
                                                     _sit-tl261223_))))))))))
                             (let ((_try-match6120061237_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _pl-rhead6119861207_))
                                          (let ((_tl6120461230_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _pl-rhead6119861207_)))
                                                (_hd6120361228_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _pl-rhead6119861207_))))
                                            (let ((_c61233_ _hd6120361228_)
                                                  (_plrh61235_ _tl6120461230_))
                                              (let ()
                                                (declare (not safe))
                                                (_K6120261225_
                                                 _plrh61235_
                                                 _c61233_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6120161211_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _pl-rhead6119861207_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6120561241_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6120061237_)))))))))
                    (_g61325_
                     (let ((_g61326_
                            (let ((__tmp61328 (reverse _supers60985_)))
                              (declare (not safe))
                              (append1! _rpls61000_ __tmp61328))))
                       #!void
                       _g61326_))
                    (_g61329_
                     (let ((_g61330_
                            (set! _pls60995_
                                  (map _unsitr-rpl61001_ _rpls61000_))))
                       #!void
                       _g61330_))
                    (_c3-select-next61002_
                     (lambda (_tails61140_)
                       (let ((_candidate?61146_
                              (lambda (_c61142_)
                                (let ((__tmp61332
                                       (lambda (_tail61144_)
                                         (let ((__tmp61333
                                                (member _c61142_
                                                        (cdr _tail61144_)
                                                        _eq60991_)))
                                           (declare (not safe))
                                           (not __tmp61333)))))
                                  (declare (not safe))
                                  (andmap1 __tmp61332 _tails61140_)))))
                         (let _loop61148_ ((_ts61150_ _tails61140_))
                           (let* ((_ts6115161161_ _ts61150_)
                                  (_else6115361169_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (_err60998_))))
                                  (_K6115561175_
                                   (lambda (_rts61172_ _c61173_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_candidate?61146_ _c61173_))
                                         _c61173_
                                         (let ()
                                           (declare (not safe))
                                           (_loop61148_ _rts61172_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _ts6115161161_))
                                 (let ((_hd6115661178_
                                        (let ()
                                          (declare (not safe))
                                          (##car _ts6115161161_)))
                                       (_tl6115761180_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _ts6115161161_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _hd6115661178_))
                                       (let* ((_hd6115861183_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _hd6115661178_)))
                                              (_c61186_ _hd6115861183_)
                                              (_rts61188_ _tl6115761180_))
                                         (declare (not safe))
                                         (_K6115561175_ _rts61188_ _c61186_))
                                       (let ()
                                         (declare (not safe))
                                         (_err60998_))))
                                 (let ()
                                   (declare (not safe))
                                   (_err60998_))))))))
                    (_remove-next!61003_
                     (lambda (_next61085_ _tails61086_)
                       (let _loop61088_ ((_t61090_ _tails61086_))
                         (let* ((_t6109161102_ _t61090_)
                                (_E6109461106_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _t6109161102_)))))
                           (let ((_K6110061137_ (lambda () _tails61086_))
                                 (_K6109561114_
                                  (lambda (_more61110_ _tail61111_ _head61112_)
                                    (if (_eq60991_ _head61112_ _next61085_)
                                        (set-car! _t61090_ _tail61111_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (_loop61088_ _more61110_)))))
                             (let ((_try-match6109361133_
                                    (lambda ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _t6109161102_))
                                          (let ((_tl6109761119_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _t6109161102_)))
                                                (_hd6109661117_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _t6109161102_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _hd6109661117_))
                                                (let ((_tl6109961124_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _hd6109661117_)))
                                                      (_hd6109861122_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _hd6109661117_))))
                                                  (let ((_head61127_
                                                         _hd6109861122_)
                                                        (_tail61129_
                                                         _tl6109961124_)
                                                        (_more61131_
                                                         _tl6109761119_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K6109561114_
                                                       _more61131_
                                                       _tail61129_
                                                       _head61127_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_E6109461106_))))
                                          (let ()
                                            (declare (not safe))
                                            (_E6109461106_))))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _t6109161102_))
                                   (let ()
                                     (declare (not safe))
                                     (_K6110061137_))
                                   (let ()
                                     (declare (not safe))
                                     (_try-match6109361133_)))))))))
                    (_precedence-list61004_
                     (let _c3loop61035_ ((_rhead61037_ _rhead60984_)
                                         (_tails61038_ _pls60995_))
                       (let* ((_tails61040_
                               (let ()
                                 (declare (not safe))
                                 (remove-nulls! _tails61038_)))
                              (_tails6104161051_ _tails61040_)
                              (_else6104461062_
                               (lambda ()
                                 (let ((_next61059_
                                        (let ()
                                          (declare (not safe))
                                          (_c3-select-next61002_
                                           _tails61040_))))
                                   (let ((__tmp61335
                                          (let ()
                                            (declare (not safe))
                                            (cons _next61059_ _rhead61037_)))
                                         (__tmp61334
                                          (let ()
                                            (declare (not safe))
                                            (_remove-next!61003_
                                             _next61059_
                                             _tails61040_))))
                                     (declare (not safe))
                                     (_c3loop61035_ __tmp61335 __tmp61334))))))
                         (let ((_K6104961082_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (append-reverse _rhead61037_ _sit60996_))))
                               (_K6104661068_
                                (lambda (_tail61066_)
                                  (let ((__tmp61336
                                         (append _tail61066_ _sit60996_)))
                                    (declare (not safe))
                                    (append-reverse
                                     _rhead61037_
                                     __tmp61336)))))
                           (let ((_try-match6104361078_
                                  (lambda ()
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tails6104161051_))
                                        (let ((_tl6104861073_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tails6104161051_)))
                                              (_hd6104761071_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tails6104161051_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _tl6104861073_))
                                              (let ((_tail61076_
                                                     _hd6104761071_))
                                                (declare (not safe))
                                                (_K6104661068_ _tail61076_))
                                              (let ()
                                                (declare (not safe))
                                                (_else6104461062_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else6104461062_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tails6104161051_))
                                 (let () (declare (not safe)) (_K6104961082_))
                                 (let ()
                                   (declare (not safe))
                                   (_try-match6104361078_))))))))
                    (_super-struct61005_
                     (let* ((_sit6100661014_ _sit60996_)
                            (_else6100861022_ (lambda () '#f))
                            (_K6101061027_ (lambda (_s61025_) _s61025_)))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _sit6100661014_))
                           (let* ((_hd6101161030_
                                   (let ()
                                     (declare (not safe))
                                     (##car _sit6100661014_)))
                                  (_s61033_ _hd6101161030_))
                             (declare (not safe))
                             (_K6101061027_ _s61033_))
                           (let () (declare (not safe)) (_else6100861022_))))))
            (values _precedence-list61004_ _super-struct61005_)))))
    (define c4-linearize__@
      (lambda (_keys6096961266_ . _args61268_)
        (apply c4-linearize__%
               _keys6096961266_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys6096961266_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6096961266_ 'struct: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6096961266_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys6096961266_ 'get-name: absent-value))
               _args61268_)))
    (define c4-linearize
      (lambda _args6097461274_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _args6097461274_)))))
