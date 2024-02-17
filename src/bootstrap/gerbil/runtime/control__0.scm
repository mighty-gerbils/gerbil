(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1708165427)
  (begin
    (define make-promise
      (lambda (_thunk75835_)
        (let () (declare (not safe)) (##make-delay-promise _thunk75835_))))
    (define call-with-parameters
      (lambda (_thunk75783_ . _rest75784_)
        (let* ((_rest7578575796_ _rest75784_)
               (_E7578875800_
                (lambda () (error '"No clause matching" _rest7578575796_))))
          (let ((_K7579075816_
                 (lambda (_rest75811_ _val75812_ _param75813_)
                   (let ((__tmp80415
                          (if (let () (declare (not safe)) (null? _rest75811_))
                              _thunk75783_
                              (lambda ()
                                (apply call-with-parameters
                                       _thunk75783_
                                       _rest75811_)))))
                     (declare (not safe))
                     (##parameterize1 _param75813_ _val75812_ __tmp80415))))
                (_K7578975805_ (lambda () (_thunk75783_))))
            (let ((_try-match7578775808_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##null? _rest7578575796_))
                         (let () (declare (not safe)) (_thunk75783_))
                         (let () (declare (not safe)) (_E7578875800_))))))
              (if (let () (declare (not safe)) (##pair? _rest7578575796_))
                  (let ((_tl7579275821_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7578575796_)))
                        (_hd7579175819_
                         (let ()
                           (declare (not safe))
                           (##car _rest7578575796_))))
                    (if (let () (declare (not safe)) (##pair? _tl7579275821_))
                        (let ((_tl7579475828_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl7579275821_)))
                              (_hd7579375826_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl7579275821_))))
                          (let ((_param75824_ _hd7579175819_)
                                (_val75831_ _hd7579375826_)
                                (_rest75833_ _tl7579475828_))
                            (let ()
                              (declare (not safe))
                              (_K7579075816_
                               _rest75833_
                               _val75831_
                               _param75824_))))
                        (let () (declare (not safe)) (_E7578875800_))))
                  (let () (declare (not safe)) (_try-match7578775808_))))))))
    (define with-unwind-protect
      (lambda (_K75776_ _fini75777_)
        (let ((_once75779_ '#f))
          (dynamic-wind
           (lambda ()
             (declare (not interrupts-enabled))
             (if _once75779_
                 (error '"Cannot re-enter unwind protected block")
                 (set! _once75779_ '#t)))
           _K75776_
           _fini75777_))))
    (define keyword-dispatch
      (lambda (_kwt75673_ _K75674_ . _all-args75675_)
        (if _kwt75673_
            (if (let () (declare (not safe)) (vector? _kwt75673_))
                '#!void
                (error '"expected vector" _kwt75673_))
            '#!void)
        (if (let () (declare (not safe)) (procedure? _K75674_))
            '#!void
            (error '"expected procedure" _K75674_))
        (let ((_keys75677_
               (let ()
                 (declare (not safe))
                 (make-table 'test: eq? 'hash: keyword-hash))))
          (let _lp75679_ ((_rest75681_ _all-args75675_)
                          (_args75682_ '#f)
                          (_tail75683_ '#f))
            (let* ((_rest7568475692_ _rest75681_)
                   (_else7568675700_
                    (lambda ()
                      (if _args75682_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _tail75683_ '()))
                            (let ((__tmp80416
                                   (let ()
                                     (declare (not safe))
                                     (cons _keys75677_ _args75682_))))
                              (declare (not safe))
                              (##apply _K75674_ __tmp80416)))
                          (_K75674_ _keys75677_))))
                   (_K7568875764_
                    (lambda (_hd-rest75703_ _hd75704_)
                      (if (keyword? _hd75704_)
                          (let* ((_hd-rest7570575712_ _hd-rest75703_)
                                 (_E7570775716_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _hd-rest7570575712_)))
                                 (_K7570875724_
                                  (lambda (_rest75719_ _val75720_)
                                    (if _kwt75673_
                                        (let ((_pos75722_
                                               (let ((__tmp80420
                                                      (keyword-hash _hd75704_))
                                                     (__tmp80419
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _kwt75673_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp80420
                                                  __tmp80419))))
                                          (if (let ((__tmp80421
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _kwt75673_
                                                        _pos75722_))))
                                                (declare (not safe))
                                                (eq? _hd75704_ __tmp80421))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _K75674_
                                                     _hd75704_)))
                                        '#!void)
                                    (if (let ()
                                          (declare (not safe))
                                          (hash-key? _keys75677_ _hd75704_))
                                        (error '"Duplicate keyword argument"
                                               _K75674_
                                               _hd75704_)
                                        '#!void)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _keys75677_
                                       _hd75704_
                                       _val75720_))
                                    (let ()
                                      (declare (not safe))
                                      (_lp75679_
                                       _rest75719_
                                       _args75682_
                                       _tail75683_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd-rest7570575712_))
                                (let ((_hd7570975727_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd-rest7570575712_)))
                                      (_tl7571075729_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd-rest7570575712_))))
                                  (let* ((_val75732_ _hd7570975727_)
                                         (_rest75734_ _tl7571075729_))
                                    (declare (not safe))
                                    (_K7570875724_ _rest75734_ _val75732_)))
                                (let () (declare (not safe)) (_E7570775716_))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _hd75704_ '#!key))
                              (let* ((_hd-rest7573575742_ _hd-rest75703_)
                                     (_E7573775746_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _hd-rest7573575742_)))
                                     (_K7573875752_
                                      (lambda (_rest75749_ _val75750_)
                                        (if _args75682_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _tail75683_
                                                 _hd-rest75703_))
                                              (let ()
                                                (declare (not safe))
                                                (_lp75679_
                                                 _rest75749_
                                                 _args75682_
                                                 _hd-rest75703_)))
                                            (let ()
                                              (declare (not safe))
                                              (_lp75679_
                                               _rest75749_
                                               _hd-rest75703_
                                               _hd-rest75703_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd-rest7573575742_))
                                    (let ((_hd7573975755_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd-rest7573575742_)))
                                          (_tl7574075757_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd-rest7573575742_))))
                                      (let* ((_val75760_ _hd7573975755_)
                                             (_rest75762_ _tl7574075757_))
                                        (declare (not safe))
                                        (_K7573875752_
                                         _rest75762_
                                         _val75760_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7573775746_))))
                              (if (let ()
                                    (declare (not safe))
                                    (eq? _hd75704_ '#!rest))
                                  (if _args75682_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _tail75683_
                                           _hd-rest75703_))
                                        (let ((__tmp80418
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _keys75677_
                                                       _args75682_))))
                                          (declare (not safe))
                                          (##apply _K75674_ __tmp80418)))
                                      (let ((__tmp80417
                                             (let ()
                                               (declare (not safe))
                                               (cons _keys75677_
                                                     _hd-rest75703_))))
                                        (declare (not safe))
                                        (##apply _K75674_ __tmp80417)))
                                  (if _args75682_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr! _tail75683_ _rest75681_))
                                        (let ()
                                          (declare (not safe))
                                          (_lp75679_
                                           _hd-rest75703_
                                           _args75682_
                                           _rest75681_)))
                                      (let ()
                                        (declare (not safe))
                                        (_lp75679_
                                         _hd-rest75703_
                                         _rest75681_
                                         _rest75681_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7568475692_))
                  (let ((_hd7568975767_
                         (let ()
                           (declare (not safe))
                           (##car _rest7568475692_)))
                        (_tl7569075769_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7568475692_))))
                    (let* ((_hd75772_ _hd7568975767_)
                           (_hd-rest75774_ _tl7569075769_))
                      (declare (not safe))
                      (_K7568875764_ _hd-rest75774_ _hd75772_)))
                  (let () (declare (not safe)) (_else7568675700_))))))))
    (define keyword-rest
      (lambda (_kwt75664_ . _drop75665_)
        (for-each
         (lambda (_kw75667_)
           (let () (declare (not safe)) (table-set! _kwt75664_ _kw75667_)))
         _drop75665_)
        (let ((__tmp80422
               (lambda (_k75669_ _v75670_ _r75671_)
                 (let ((__tmp80423
                        (let ()
                          (declare (not safe))
                          (cons _v75670_ _r75671_))))
                   (declare (not safe))
                   (cons _k75669_ __tmp80423)))))
          (declare (not safe))
          (hash-fold __tmp80422 '() _kwt75664_))))))
