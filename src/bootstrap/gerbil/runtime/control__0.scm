(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1708168067)
  (begin
    (define make-promise
      (lambda (_thunk76276_)
        (let () (declare (not safe)) (##make-delay-promise _thunk76276_))))
    (define call-with-parameters
      (lambda (_thunk76224_ . _rest76225_)
        (let* ((_rest7622676237_ _rest76225_)
               (_E7622976241_
                (lambda () (error '"No clause matching" _rest7622676237_))))
          (let ((_K7623176257_
                 (lambda (_rest76252_ _val76253_ _param76254_)
                   (let ((__tmp80856
                          (if (let () (declare (not safe)) (null? _rest76252_))
                              _thunk76224_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk76224_
                                       _rest76252_)))))
                     (declare (not safe))
                     (##parameterize1 _param76254_ _val76253_ __tmp80856))))
                (_K7623076246_ (lambda () (_thunk76224_))))
            (let ((_try-match7622876249_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest7622676237_))
                         (let () (declare (not safe)) (_thunk76224_))
                         (let () (declare (not safe)) (_E7622976241_))))))
              (if (let () (declare (not safe)) (##pair? _rest7622676237_))
                  (let ((_tl7623376262_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7622676237_)))
                        (_hd7623276260_
                         (let ()
                           (declare (not safe))
                           (##car _rest7622676237_))))
                    (if (let () (declare (not safe)) (##pair? _tl7623376262_))
                        (let ((_tl7623576269_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl7623376262_)))
                              (_hd7623476267_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl7623376262_))))
                          (let ((_param76265_ _hd7623276260_)
                                (_val76272_ _hd7623476267_)
                                (_rest76274_ _tl7623576269_))
                            (let ()
                              (declare (not safe))
                              (_K7623176257_
                               _rest76274_
                               _val76272_
                               _param76265_))))
                        (let () (declare (not safe)) (_E7622976241_))))
                  (let () (declare (not safe)) (_try-match7622876249_))))))))
    (define with-unwind-protect
      (lambda (_K76217_ _fini76218_)
        (let ((_once76220_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once76220_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once76220_ '#t)))
           _K76217_
           _fini76218_))))
    (define keyword-dispatch
      (lambda (_kwt76114_ _K76115_ . _all-args76116_)
        (if _kwt76114_
            (if (let () (declare (not safe)) (vector? _kwt76114_))
                '#!void
                (error '"expected vector" _kwt76114_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K76115_))
            '#!void
            (error '"expected procedure" _K76115_))
        (let ((_keys76118_
               (let ()
                 (declare (not safe))
                 (make-table 'test: eq? 'hash: keyword-hash))))
          (let _lp76120_ ((_rest76122_ _all-args76116_)
                          (_args76123_ '#f)
                          (_tail76124_ '#f))
            (let* ((_rest7612576133_ _rest76122_)
                   (_else7612776141_
                    (lambda ()
                      (if _args76123_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail76124_ '()))
                            (let ((__tmp80857
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys76118_ _args76123_))))
                              (declare (not safe))
                              (##apply _K76115_ __tmp80857)))
                          (_K76115_ _keys76118_))))
                   (_K7612976205_
                    (lambda (_hd-rest76144_ _hd76145_)
                      (if (keyword? _hd76145_)
                          (let* ((_hd-rest7614676153_ _hd-rest76144_)
                                 (_E7614876157_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest7614676153_)))
                                 (_K7614976165_
                                  (lambda (_rest76160_ _val76161_)
                                    (if _kwt76114_
                                        (let ((_pos76163_
                                               (let ((__tmp80861
                                                      (keyword-hash _hd76145_))
                                                     (__tmp80860
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt76114_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp80861
                                                  __tmp80860))))
                                          (if (let ((__tmp80862
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt76114_
                                                        _pos76163_))))
                                                (declare (not safe))
                                                (eq? _hd76145_ __tmp80862))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K76115_
                                                     _hd76145_)))
                                        '#!void)
                                    (if (let ()
                                          (declare (not safe))
                                          (hash-key? _keys76118_ _hd76145_))
                                        (error '"Duplicate keyword argument"
                                               _K76115_
                                               _hd76145_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _keys76118_
                                       _hd76145_
                                       _val76161_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp76120_
                                       _rest76160_
                                       _args76123_
                                       _tail76124_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest7614676153_))
                                (let ((_hd7615076168_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest7614676153_)))
                                      (_tl7615176170_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest7614676153_))))
                                  (let* ((_val76173_ _hd7615076168_)
                                         (_rest76175_ _tl7615176170_))
                                    (declare (not safe))
                                    (_K7614976165_ _rest76175_ _val76173_)))
                                (let () (declare (not safe)) (_E7614876157_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd76145_ '#!key))
                              (let* ((_hd-rest7617676183_ _hd-rest76144_)
                                     (_E7617876187_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest7617676183_)))
                                     (_K7617976193_
                                      (lambda (_rest76190_ _val76191_)
                                        (if _args76123_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail76124_
                                                 _hd-rest76144_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp76120_
                                                 _rest76190_
                                                 _args76123_
                                                 _hd-rest76144_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp76120_
                                               _rest76190_
                                               _hd-rest76144_
                                               _hd-rest76144_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest7617676183_))
                                    (let ((_hd7618076196_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest7617676183_)))
                                          (_tl7618176198_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest7617676183_))))
                                      (let* ((_val76201_ _hd7618076196_)
                                             (_rest76203_ _tl7618176198_))
                                        (declare (not safe))
                                        (_K7617976193_
                                         _rest76203_
                                         _val76201_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7617876187_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd76145_ '#!rest))
                                  (if _args76123_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail76124_
                                           _hd-rest76144_))
                                        (let ((__tmp80859
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys76118_
                                                       _args76123_))))
                                          (declare (not safe))
                                          (##apply _K76115_ __tmp80859)))
                                      (let ((__tmp80858
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys76118_
                                                     _hd-rest76144_))))
                                        (declare (not safe))
                                        (##apply _K76115_ __tmp80858)))
                                  (if _args76123_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail76124_ _rest76122_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp76120_
                                           _hd-rest76144_
                                           _args76123_
                                           _rest76122_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp76120_
                                         _hd-rest76144_
                                         _rest76122_
                                         _rest76122_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7612576133_))
                  (let ((_hd7613076208_
                         (let ()
                           (declare (not safe))
                           (##car _rest7612576133_)))
                        (_tl7613176210_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7612576133_))))
                    (let* ((_hd76213_ _hd7613076208_)
                           (_hd-rest76215_ _tl7613176210_))
                      (declare (not safe))
                      (_K7612976205_ _hd-rest76215_ _hd76213_)))
                  (let () (declare (not safe)) (_else7612776141_))))))))
    (define keyword-rest
      (lambda (_kwt76105_ . _drop76106_)
        (for-each
         (lambda (_kw76108_)
           (let () (declare (not safe)) (table-set! _kwt76105_ _kw76108_)))
         _drop76106_)
        (let ((__tmp80863
               (lambda (_k76110_ _v76111_ _r76112_)
                 (let ((__tmp80864
                        (let ()
                          (declare (not safe))
                          (cons _v76111_ _r76112_))))
                   (declare (not safe))
                   (cons _k76110_ __tmp80864)))))
          (declare (not safe))
          (hash-fold __tmp80863 '() _kwt76105_))))))
