(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1707647931)
  (begin
    (define make-promise
      (lambda (_thunk64495_)
        (let () (declare (not safe)) (##make-delay-promise _thunk64495_))))
    (define call-with-parameters
      (lambda (_thunk64443_ . _rest64444_)
        (let* ((_rest6444564456_ _rest64444_)
               (_E6444864460_
                (lambda () (error '"No clause matching" _rest6444564456_))))
          (let ((_K6445064476_
                 (lambda (_rest64471_ _val64472_ _param64473_)
                   (let ((__tmp78201
                          (if (let () (declare (not safe)) (null? _rest64471_))
                              _thunk64443_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk64443_
                                       _rest64471_)))))
                     (declare (not safe))
                     (##parameterize1 _param64473_ _val64472_ __tmp78201))))
                (_K6444964465_ (lambda () (_thunk64443_))))
            (let ((_try-match6444764468_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6444564456_))
                         (let () (declare (not safe)) (_thunk64443_))
                         (let () (declare (not safe)) (_E6444864460_))))))
              (if (let () (declare (not safe)) (##pair? _rest6444564456_))
                  (let ((_tl6445264481_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6444564456_)))
                        (_hd6445164479_
                         (let ()
                           (declare (not safe))
                           (##car _rest6444564456_))))
                    (if (let () (declare (not safe)) (##pair? _tl6445264481_))
                        (let ((_tl6445464488_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6445264481_)))
                              (_hd6445364486_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6445264481_))))
                          (let ((_param64484_ _hd6445164479_)
                                (_val64491_ _hd6445364486_)
                                (_rest64493_ _tl6445464488_))
                            (let ()
                              (declare (not safe))
                              (_K6445064476_
                               _rest64493_
                               _val64491_
                               _param64484_))))
                        (let () (declare (not safe)) (_E6444864460_))))
                  (let () (declare (not safe)) (_try-match6444764468_))))))))
    (define with-unwind-protect
      (lambda (_K64436_ _fini64437_)
        (let ((_once64439_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once64439_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once64439_ '#t)))
           _K64436_
           _fini64437_))))
    (define keyword-dispatch
      (lambda (_kwt64333_ _K64334_ . _all-args64335_)
        (if _kwt64333_
            (if (let () (declare (not safe)) (vector? _kwt64333_))
                '#!void
                (error '"expected vector" _kwt64333_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K64334_))
            '#!void
            (error '"expected procedure" _K64334_))
        (let ((_keys64337_
               (let ()
                 (declare (not safe))
                 (make-table 'test: eq? 'hash: keyword-hash))))
          (let _lp64339_ ((_rest64341_ _all-args64335_)
                          (_args64342_ '#f)
                          (_tail64343_ '#f))
            (let* ((_rest6434464352_ _rest64341_)
                   (_else6434664360_
                    (lambda ()
                      (if _args64342_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail64343_ '()))
                            (let ((__tmp78202
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys64337_ _args64342_))))
                              (declare (not safe))
                              (##apply _K64334_ __tmp78202)))
                          (_K64334_ _keys64337_))))
                   (_K6434864424_
                    (lambda (_hd-rest64363_ _hd64364_)
                      (if (keyword? _hd64364_)
                          (let* ((_hd-rest6436564372_ _hd-rest64363_)
                                 (_E6436764376_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest6436564372_)))
                                 (_K6436864384_
                                  (lambda (_rest64379_ _val64380_)
                                    (if _kwt64333_
                                        (let ((_pos64382_
                                               (let ((__tmp78206
                                                      (keyword-hash _hd64364_))
                                                     (__tmp78205
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt64333_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp78206
                                                  __tmp78205))))
                                          (if (let ((__tmp78207
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt64333_
                                                        _pos64382_))))
                                                (declare (not safe))
                                                (eq? _hd64364_ __tmp78207))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K64334_
                                                     _hd64364_)))
                                        '#!void)
                                    (if (let ()
                                          (declare (not safe))
                                          (hash-key? _keys64337_ _hd64364_))
                                        (error '"Duplicate keyword argument"
                                               _K64334_
                                               _hd64364_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _keys64337_
                                       _hd64364_
                                       _val64380_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp64339_
                                       _rest64379_
                                       _args64342_
                                       _tail64343_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6436564372_))
                                (let ((_hd6436964387_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6436564372_)))
                                      (_tl6437064389_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6436564372_))))
                                  (let* ((_val64392_ _hd6436964387_)
                                         (_rest64394_ _tl6437064389_))
                                    (declare (not safe))
                                    (_K6436864384_ _rest64394_ _val64392_)))
                                (let () (declare (not safe)) (_E6436764376_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd64364_ '#!key))
                              (let* ((_hd-rest6439564402_ _hd-rest64363_)
                                     (_E6439764406_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest6439564402_)))
                                     (_K6439864412_
                                      (lambda (_rest64409_ _val64410_)
                                        (if _args64342_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail64343_
                                                 _hd-rest64363_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp64339_
                                                 _rest64409_
                                                 _args64342_
                                                 _hd-rest64363_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp64339_
                                               _rest64409_
                                               _hd-rest64363_
                                               _hd-rest64363_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6439564402_))
                                    (let ((_hd6439964415_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6439564402_)))
                                          (_tl6440064417_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6439564402_))))
                                      (let* ((_val64420_ _hd6439964415_)
                                             (_rest64422_ _tl6440064417_))
                                        (declare (not safe))
                                        (_K6439864412_
                                         _rest64422_
                                         _val64420_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6439764406_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd64364_ '#!rest))
                                  (if _args64342_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail64343_
                                           _hd-rest64363_))
                                        (let ((__tmp78204
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys64337_
                                                       _args64342_))))
                                          (declare (not safe))
                                          (##apply _K64334_ __tmp78204)))
                                      (let ((__tmp78203
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys64337_
                                                     _hd-rest64363_))))
                                        (declare (not safe))
                                        (##apply _K64334_ __tmp78203)))
                                  (if _args64342_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail64343_ _rest64341_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp64339_
                                           _hd-rest64363_
                                           _args64342_
                                           _rest64341_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp64339_
                                         _hd-rest64363_
                                         _rest64341_
                                         _rest64341_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6434464352_))
                  (let ((_hd6434964427_
                         (let ()
                           (declare (not safe))
                           (##car _rest6434464352_)))
                        (_tl6435064429_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6434464352_))))
                    (let* ((_hd64432_ _hd6434964427_)
                           (_hd-rest64434_ _tl6435064429_))
                      (declare (not safe))
                      (_K6434864424_ _hd-rest64434_ _hd64432_)))
                  (let () (declare (not safe)) (_else6434664360_))))))))
    (define keyword-rest
      (lambda (_kwt64324_ . _drop64325_)
        (for-each
         (lambda (_kw64327_)
           (let () (declare (not safe)) (table-set! _kwt64324_ _kw64327_)))
         _drop64325_)
        (let ((__tmp78208
               (lambda (_k64329_ _v64330_ _r64331_)
                 (let ((__tmp78209
                        (let ()
                          (declare (not safe))
                          (cons _v64330_ _r64331_))))
                   (declare (not safe))
                   (cons _k64329_ __tmp78209)))))
          (declare (not safe))
          (hash-fold __tmp78208 '() _kwt64324_))))))
