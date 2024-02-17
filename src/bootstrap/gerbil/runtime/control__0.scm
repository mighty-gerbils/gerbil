(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1708194416)
  (begin
    (define make-promise
      (lambda (_thunk69613_)
        (let () (declare (not safe)) (##make-delay-promise _thunk69613_))))
    (define call-with-parameters
      (lambda (_thunk69561_ . _rest69562_)
        (let* ((_rest6956369574_ _rest69562_)
               (_E6956669578_
                (lambda () (error '"No clause matching" _rest6956369574_))))
          (let ((_K6956869594_
                 (lambda (_rest69589_ _val69590_ _param69591_)
                   (let ((__tmp73692
                          (if (let () (declare (not safe)) (null? _rest69589_))
                              _thunk69561_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk69561_
                                       _rest69589_)))))
                     (declare (not safe))
                     (##parameterize1 _param69591_ _val69590_ __tmp73692))))
                (_K6956769583_ (lambda () (_thunk69561_))))
            (let ((_try-match6956569586_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6956369574_))
                         (let () (declare (not safe)) (_thunk69561_))
                         (let () (declare (not safe)) (_E6956669578_))))))
              (if (let () (declare (not safe)) (##pair? _rest6956369574_))
                  (let ((_tl6957069599_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6956369574_)))
                        (_hd6956969597_
                         (let ()
                           (declare (not safe))
                           (##car _rest6956369574_))))
                    (if (let () (declare (not safe)) (##pair? _tl6957069599_))
                        (let ((_tl6957269606_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6957069599_)))
                              (_hd6957169604_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6957069599_))))
                          (let ((_param69602_ _hd6956969597_)
                                (_val69609_ _hd6957169604_)
                                (_rest69611_ _tl6957269606_))
                            (let ()
                              (declare (not safe))
                              (_K6956869594_
                               _rest69611_
                               _val69609_
                               _param69602_))))
                        (let () (declare (not safe)) (_E6956669578_))))
                  (let () (declare (not safe)) (_try-match6956569586_))))))))
    (define with-unwind-protect
      (lambda (_K69554_ _fini69555_)
        (let ((_once69557_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once69557_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once69557_ '#t)))
           _K69554_
           _fini69555_))))
    (define keyword-dispatch
      (lambda (_kwt69451_ _K69452_ . _all-args69453_)
        (if _kwt69451_
            (if (let () (declare (not safe)) (vector? _kwt69451_))
                '#!void
                (error '"expected vector" _kwt69451_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K69452_))
            '#!void
            (error '"expected procedure" _K69452_))
        (let ((_keys69455_
               (let () (declare (not safe)) (make-symbolic-table '#f))))
          (let _lp69457_ ((_rest69459_ _all-args69453_)
                          (_args69460_ '#f)
                          (_tail69461_ '#f))
            (let* ((_rest6946269470_ _rest69459_)
                   (_else6946469478_
                    (lambda ()
                      (if _args69460_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail69461_ '()))
                            (let ((__tmp73693
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys69455_ _args69460_))))
                              (declare (not safe))
                              (##apply _K69452_ __tmp73693)))
                          (_K69452_ _keys69455_))))
                   (_K6946669542_
                    (lambda (_hd-rest69481_ _hd69482_)
                      (if (keyword? _hd69482_)
                          (let* ((_hd-rest6948369490_ _hd-rest69481_)
                                 (_E6948569494_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest6948369490_)))
                                 (_K6948669502_
                                  (lambda (_rest69497_ _val69498_)
                                    (if _kwt69451_
                                        (let ((_pos69500_
                                               (let ((__tmp73695
                                                      (keyword-hash _hd69482_))
                                                     (__tmp73694
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt69451_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp73695
                                                  __tmp73694))))
                                          (if (let ((__tmp73696
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt69451_
                                                        _pos69500_))))
                                                (declare (not safe))
                                                (eq? _hd69482_ __tmp73696))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K69452_
                                                     _hd69482_)))
                                        '#!void)
                                    (if (let ((__tmp73697
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _keys69455_
                                                  _hd69482_
                                                  absent-value))))
                                          (declare (not safe))
                                          (eq? __tmp73697 absent-value))
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _K69452_
                                               _hd69482_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys69455_
                                       _hd69482_
                                       _val69498_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp69457_
                                       _rest69497_
                                       _args69460_
                                       _tail69461_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6948369490_))
                                (let ((_hd6948769505_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6948369490_)))
                                      (_tl6948869507_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6948369490_))))
                                  (let* ((_val69510_ _hd6948769505_)
                                         (_rest69512_ _tl6948869507_))
                                    (declare (not safe))
                                    (_K6948669502_ _rest69512_ _val69510_)))
                                (let () (declare (not safe)) (_E6948569494_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd69482_ '#!key))
                              (let* ((_hd-rest6951369520_ _hd-rest69481_)
                                     (_E6951569524_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest6951369520_)))
                                     (_K6951669530_
                                      (lambda (_rest69527_ _val69528_)
                                        (if _args69460_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail69461_
                                                 _hd-rest69481_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp69457_
                                                 _rest69527_
                                                 _args69460_
                                                 _hd-rest69481_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp69457_
                                               _rest69527_
                                               _hd-rest69481_
                                               _hd-rest69481_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6951369520_))
                                    (let ((_hd6951769533_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6951369520_)))
                                          (_tl6951869535_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6951369520_))))
                                      (let* ((_val69538_ _hd6951769533_)
                                             (_rest69540_ _tl6951869535_))
                                        (declare (not safe))
                                        (_K6951669530_
                                         _rest69540_
                                         _val69538_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6951569524_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd69482_ '#!rest))
                                  (if _args69460_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail69461_
                                           _hd-rest69481_))
                                        (let ((__tmp73698
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys69455_
                                                       _args69460_))))
                                          (declare (not safe))
                                          (##apply _K69452_ __tmp73698)))
                                      (let ((__tmp73699
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys69455_
                                                     _hd-rest69481_))))
                                        (declare (not safe))
                                        (##apply _K69452_ __tmp73699)))
                                  (if _args69460_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail69461_ _rest69459_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp69457_
                                           _hd-rest69481_
                                           _args69460_
                                           _rest69459_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp69457_
                                         _hd-rest69481_
                                         _rest69459_
                                         _rest69459_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6946269470_))
                  (let ((_hd6946769545_
                         (let ()
                           (declare (not safe))
                           (##car _rest6946269470_)))
                        (_tl6946869547_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6946269470_))))
                    (let* ((_hd69550_ _hd6946769545_)
                           (_hd-rest69552_ _tl6946869547_))
                      (declare (not safe))
                      (_K6946669542_ _hd-rest69552_ _hd69550_)))
                  (let () (declare (not safe)) (_else6946469478_))))))))
    (define keyword-rest
      (lambda (_kwt69443_ . _drop69444_)
        (let ((_rest69446_ '()))
          (let ((__tmp73700
                 (lambda (_k69448_ _v69449_)
                   (if (memq _k69448_ _drop69444_)
                       '#!void
                       (set! _rest69446_
                             (let ((__tmp73701
                                    (let ()
                                      (declare (not safe))
                                      (cons _v69449_ _rest69446_))))
                               (declare (not safe))
                               (cons _k69448_ __tmp73701)))))))
            (declare (not safe))
            (raw-table-for-each __tmp73700 _kwt69443_))
          _rest69446_)))))
