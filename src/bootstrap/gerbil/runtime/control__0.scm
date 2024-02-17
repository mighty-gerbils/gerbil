(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1708203243)
  (begin
    (define make-promise
      (lambda (_thunk69785_)
        (let () (declare (not safe)) (##make-delay-promise _thunk69785_))))
    (define call-with-parameters
      (lambda (_thunk69733_ . _rest69734_)
        (let* ((_rest6973569746_ _rest69734_)
               (_E6973869750_
                (lambda () (error '"No clause matching" _rest6973569746_))))
          (let ((_K6974069766_
                 (lambda (_rest69761_ _val69762_ _param69763_)
                   (let ((__tmp73864
                          (if (let () (declare (not safe)) (null? _rest69761_))
                              _thunk69733_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk69733_
                                       _rest69761_)))))
                     (declare (not safe))
                     (##parameterize1 _param69763_ _val69762_ __tmp73864))))
                (_K6973969755_ (lambda () (_thunk69733_))))
            (let ((_try-match6973769758_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest6973569746_))
                         (let () (declare (not safe)) (_thunk69733_))
                         (let () (declare (not safe)) (_E6973869750_))))))
              (if (let () (declare (not safe)) (##pair? _rest6973569746_))
                  (let ((_tl6974269771_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6973569746_)))
                        (_hd6974169769_
                         (let ()
                           (declare (not safe))
                           (##car _rest6973569746_))))
                    (if (let () (declare (not safe)) (##pair? _tl6974269771_))
                        (let ((_tl6974469778_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6974269771_)))
                              (_hd6974369776_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6974269771_))))
                          (let ((_param69774_ _hd6974169769_)
                                (_val69781_ _hd6974369776_)
                                (_rest69783_ _tl6974469778_))
                            (let ()
                              (declare (not safe))
                              (_K6974069766_
                               _rest69783_
                               _val69781_
                               _param69774_))))
                        (let () (declare (not safe)) (_E6973869750_))))
                  (let () (declare (not safe)) (_try-match6973769758_))))))))
    (define with-unwind-protect
      (lambda (_K69726_ _fini69727_)
        (let ((_once69729_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once69729_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once69729_ '#t)))
           _K69726_
           _fini69727_))))
    (define keyword-dispatch
      (lambda (_kwt69623_ _K69624_ . _all-args69625_)
        (if _kwt69623_
            (if (let () (declare (not safe)) (vector? _kwt69623_))
                '#!void
                (error '"expected vector" _kwt69623_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K69624_))
            '#!void
            (error '"expected procedure" _K69624_))
        (let ((_keys69627_
               (let () (declare (not safe)) (make-symbolic-table '#f '0))))
          (let _lp69629_ ((_rest69631_ _all-args69625_)
                          (_args69632_ '#f)
                          (_tail69633_ '#f))
            (let* ((_rest6963469642_ _rest69631_)
                   (_else6963669650_
                    (lambda ()
                      (if _args69632_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail69633_ '()))
                            (let ((__tmp73865
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys69627_ _args69632_))))
                              (declare (not safe))
                              (##apply _K69624_ __tmp73865)))
                          (_K69624_ _keys69627_))))
                   (_K6963869714_
                    (lambda (_hd-rest69653_ _hd69654_)
                      (if (keyword? _hd69654_)
                          (let* ((_hd-rest6965569662_ _hd-rest69653_)
                                 (_E6965769666_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest6965569662_)))
                                 (_K6965869674_
                                  (lambda (_rest69669_ _val69670_)
                                    (if _kwt69623_
                                        (let ((_pos69672_
                                               (let ((__tmp73869
                                                      (keyword-hash _hd69654_))
                                                     (__tmp73868
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt69623_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp73869
                                                  __tmp73868))))
                                          (if (let ((__tmp73870
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt69623_
                                                        _pos69672_))))
                                                (declare (not safe))
                                                (eq? _hd69654_ __tmp73870))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K69624_
                                                     _hd69654_)))
                                        '#!void)
                                    (if (let ((__tmp73871
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _keys69627_
                                                  _hd69654_
                                                  absent-value))))
                                          (declare (not safe))
                                          (eq? __tmp73871 absent-value))
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _K69624_
                                               _hd69654_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _keys69627_
                                       _hd69654_
                                       _val69670_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp69629_
                                       _rest69669_
                                       _args69632_
                                       _tail69633_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest6965569662_))
                                (let ((_hd6965969677_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest6965569662_)))
                                      (_tl6966069679_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest6965569662_))))
                                  (let* ((_val69682_ _hd6965969677_)
                                         (_rest69684_ _tl6966069679_))
                                    (declare (not safe))
                                    (_K6965869674_ _rest69684_ _val69682_)))
                                (let () (declare (not safe)) (_E6965769666_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd69654_ '#!key))
                              (let* ((_hd-rest6968569692_ _hd-rest69653_)
                                     (_E6968769696_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest6968569692_)))
                                     (_K6968869702_
                                      (lambda (_rest69699_ _val69700_)
                                        (if _args69632_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail69633_
                                                 _hd-rest69653_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp69629_
                                                 _rest69699_
                                                 _args69632_
                                                 _hd-rest69653_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp69629_
                                               _rest69699_
                                               _hd-rest69653_
                                               _hd-rest69653_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest6968569692_))
                                    (let ((_hd6968969705_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest6968569692_)))
                                          (_tl6969069707_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest6968569692_))))
                                      (let* ((_val69710_ _hd6968969705_)
                                             (_rest69712_ _tl6969069707_))
                                        (declare (not safe))
                                        (_K6968869702_
                                         _rest69712_
                                         _val69710_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E6968769696_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd69654_ '#!rest))
                                  (if _args69632_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail69633_
                                           _hd-rest69653_))
                                        (let ((__tmp73867
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys69627_
                                                       _args69632_))))
                                          (declare (not safe))
                                          (##apply _K69624_ __tmp73867)))
                                      (let ((__tmp73866
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys69627_
                                                     _hd-rest69653_))))
                                        (declare (not safe))
                                        (##apply _K69624_ __tmp73866)))
                                  (if _args69632_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail69633_ _rest69631_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp69629_
                                           _hd-rest69653_
                                           _args69632_
                                           _rest69631_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp69629_
                                         _hd-rest69653_
                                         _rest69631_
                                         _rest69631_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest6963469642_))
                  (let ((_hd6963969717_
                         (let ()
                           (declare (not safe))
                           (##car _rest6963469642_)))
                        (_tl6964069719_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest6963469642_))))
                    (let* ((_hd69722_ _hd6963969717_)
                           (_hd-rest69724_ _tl6964069719_))
                      (declare (not safe))
                      (_K6963869714_ _hd-rest69724_ _hd69722_)))
                  (let () (declare (not safe)) (_else6963669650_))))))))
    (define keyword-rest
      (lambda (_kwt69615_ . _drop69616_)
        (let ((_rest69618_ '()))
          (let ((__tmp73872
                 (lambda (_k69620_ _v69621_)
                   (if (memq _k69620_ _drop69616_)
                       '#!void
                       (set! _rest69618_
                             (let ((__tmp73873
                                    (let ()
                                      (declare (not safe))
                                      (cons _v69621_ _rest69618_))))
                               (declare (not safe))
                               (cons _k69620_ __tmp73873)))))))
            (declare (not safe))
            (raw-table-for-each __tmp73872 _kwt69615_))
          _rest69618_)))))
