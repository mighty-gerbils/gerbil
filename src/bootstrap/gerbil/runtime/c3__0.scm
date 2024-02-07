(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1707346614)
  (begin
    (define c3-linearize__%
      (lambda (_rhead76951_
               _supers76952_
               _get-precedence-list76953_
               _eqpred76954_
               _get-name76955_)
        (let ((_tails76957_ (map _get-precedence-list76953_ _supers76952_)))
          (let () (declare (not safe)) (append1! _tails76957_ _supers76952_))
          (let ()
            (declare (not safe))
            (c3-linearize-loop__%
             _rhead76951_
             _tails76957_
             _eqpred76954_
             _get-name76955_)))))
    (define c3-linearize__0
      (lambda (_rhead76962_ _supers76963_ _get-precedence-list76964_)
        (let* ((_eqpred76966_ eq?) (_get-name76968_ identity))
          (declare (not safe))
          (c3-linearize__%
           _rhead76962_
           _supers76963_
           _get-precedence-list76964_
           _eqpred76966_
           _get-name76968_))))
    (define c3-linearize__1
      (lambda (_rhead76970_
               _supers76971_
               _get-precedence-list76972_
               _eqpred76973_)
        (let ((_get-name76975_ identity))
          (declare (not safe))
          (c3-linearize__%
           _rhead76970_
           _supers76971_
           _get-precedence-list76972_
           _eqpred76973_
           _get-name76975_))))
    (define c3-linearize
      (lambda _g81197_
        (let ((_g81196_ (let () (declare (not safe)) (##length _g81197_))))
          (cond ((let () (declare (not safe)) (##fx= _g81196_ 3))
                 (apply (lambda (_rhead76962_
                                 _supers76963_
                                 _get-precedence-list76964_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__0
                             _rhead76962_
                             _supers76963_
                             _get-precedence-list76964_)))
                        _g81197_))
                ((let () (declare (not safe)) (##fx= _g81196_ 4))
                 (apply (lambda (_rhead76970_
                                 _supers76971_
                                 _get-precedence-list76972_
                                 _eqpred76973_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__1
                             _rhead76970_
                             _supers76971_
                             _get-precedence-list76972_
                             _eqpred76973_)))
                        _g81197_))
                ((let () (declare (not safe)) (##fx= _g81196_ 5))
                 (apply (lambda (_rhead76977_
                                 _supers76978_
                                 _get-precedence-list76979_
                                 _eqpred76980_
                                 _get-name76981_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__%
                             _rhead76977_
                             _supers76978_
                             _get-precedence-list76979_
                             _eqpred76980_
                             _get-name76981_)))
                        _g81197_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  c3-linearize
                  _g81197_))))))
    (define c3-linearize-loop__%
      (lambda (_rhead76867_ _tails76868_ _eqpred76869_ _get-name76870_)
        (let _loop76872_ ((_rhead76874_ _rhead76867_)
                          (_tails76875_ _tails76868_))
          (let* ((_tails76877_
                  (let () (declare (not safe)) (remove-nulls! _tails76875_)))
                 (_tails7687876888_ _tails76877_)
                 (_else7688176906_
                  (lambda ()
                    (let* ((_err76901_
                            (lambda ()
                              (error '"Inconsistent precedence graph"
                                     'head:
                                     (map _get-name76870_
                                          (reverse _rhead76874_))
                                     'tails:
                                     (map (lambda (_g7689676898_)
                                            (map _get-name76870_
                                                 _g7689676898_))
                                          _tails76877_))))
                           (_next76903_
                            (let ()
                              (declare (not safe))
                              (c3-select-next
                               _tails76877_
                               _eqpred76869_
                               _err76901_))))
                      (let ((__tmp81199
                             (let ()
                               (declare (not safe))
                               (cons _next76903_ _rhead76874_)))
                            (__tmp81198
                             (let ()
                               (declare (not safe))
                               (remove-next!__%
                                _next76903_
                                _tails76877_
                                _eqpred76869_))))
                        (declare (not safe))
                        (_loop76872_ __tmp81199 __tmp81198))))))
            (let ((_K7688676926_ (lambda () (reverse _rhead76874_)))
                  (_K7688376912_
                   (lambda (_tail76910_)
                     (let ()
                       (declare (not safe))
                       (append-reverse _rhead76874_ _tail76910_)))))
              (let ((_try-match7688076922_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _tails7687876888_))
                           (let ((_tl7688576917_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _tails7687876888_)))
                                 (_hd7688476915_
                                  (let ()
                                    (declare (not safe))
                                    (##car _tails7687876888_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl7688576917_))
                                 (let ((_tail76920_ _hd7688476915_))
                                   (declare (not safe))
                                   (_K7688376912_ _tail76920_))
                                 (let ()
                                   (declare (not safe))
                                   (_else7688176906_))))
                           (let () (declare (not safe)) (_else7688176906_))))))
                (if (let () (declare (not safe)) (##null? _tails7687876888_))
                    (let () (declare (not safe)) (_K7688676926_))
                    (let ()
                      (declare (not safe))
                      (_try-match7688076922_)))))))))
    (define c3-linearize-loop__0
      (lambda (_rhead76932_ _tails76933_)
        (let* ((_eqpred76935_ eq?) (_get-name76937_ identity))
          (declare (not safe))
          (c3-linearize-loop__%
           _rhead76932_
           _tails76933_
           _eqpred76935_
           _get-name76937_))))
    (define c3-linearize-loop__1
      (lambda (_rhead76939_ _tails76940_ _eqpred76941_)
        (let ((_get-name76943_ identity))
          (declare (not safe))
          (c3-linearize-loop__%
           _rhead76939_
           _tails76940_
           _eqpred76941_
           _get-name76943_))))
    (define c3-linearize-loop
      (lambda _g81201_
        (let ((_g81200_ (let () (declare (not safe)) (##length _g81201_))))
          (cond ((let () (declare (not safe)) (##fx= _g81200_ 2))
                 (apply (lambda (_rhead76932_ _tails76933_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize-loop__0 _rhead76932_ _tails76933_)))
                        _g81201_))
                ((let () (declare (not safe)) (##fx= _g81200_ 3))
                 (apply (lambda (_rhead76939_ _tails76940_ _eqpred76941_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize-loop__1
                             _rhead76939_
                             _tails76940_
                             _eqpred76941_)))
                        _g81201_))
                ((let () (declare (not safe)) (##fx= _g81200_ 4))
                 (apply (lambda (_rhead76945_
                                 _tails76946_
                                 _eqpred76947_
                                 _get-name76948_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize-loop__%
                             _rhead76945_
                             _tails76946_
                             _eqpred76947_
                             _get-name76948_)))
                        _g81201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  c3-linearize-loop
                  _g81201_))))))
    (define c3-select-next
      (lambda (_tails76814_ _eqpred76815_ _err76816_)
        (let ((_candidate?76822_
               (lambda (_c76818_)
                 (let ((__tmp81202
                        (lambda (_tail76820_)
                          (let ((__tmp81203
                                 (member _c76818_
                                         (cdr _tail76820_)
                                         _eqpred76815_)))
                            (declare (not safe))
                            (not __tmp81203)))))
                   (declare (not safe))
                   (andmap1 __tmp81202 _tails76814_)))))
          (let _loop76824_ ((_ts76826_ _tails76814_))
            (let* ((_ts7682776837_ _ts76826_)
                   (_else7682976845_ (lambda () (_err76816_)))
                   (_K7683176851_
                    (lambda (_rts76848_ _c76849_)
                      (if (let ()
                            (declare (not safe))
                            (_candidate?76822_ _c76849_))
                          _c76849_
                          (let ()
                            (declare (not safe))
                            (_loop76824_ _rts76848_))))))
              (if (let () (declare (not safe)) (##pair? _ts7682776837_))
                  (let ((_hd7683276854_
                         (let () (declare (not safe)) (##car _ts7682776837_)))
                        (_tl7683376856_
                         (let () (declare (not safe)) (##cdr _ts7682776837_))))
                    (if (let () (declare (not safe)) (##pair? _hd7683276854_))
                        (let* ((_hd7683476859_
                                (let ()
                                  (declare (not safe))
                                  (##car _hd7683276854_)))
                               (_c76862_ _hd7683476859_)
                               (_rts76864_ _tl7683376856_))
                          (declare (not safe))
                          (_K7683176851_ _rts76864_ _c76862_))
                        (let () (declare (not safe)) (_err76816_))))
                  (let () (declare (not safe)) (_err76816_))))))))
    (define remove-next!__%
      (lambda (_next76746_ _tails76747_ _eqpred76748_)
        (let _loop76750_ ((_t76752_ _tails76747_))
          (let* ((_t7675376764_ _t76752_)
                 (_E7675676768_
                  (lambda () (error '"No clause matching" _t7675376764_))))
            (let ((_K7676276799_ (lambda () _tails76747_))
                  (_K7675776776_
                   (lambda (_more76772_ _tail76773_ _head76774_)
                     (if (_eqpred76748_ _head76774_ _next76746_)
                         (set-car! _t76752_ _tail76773_)
                         '#!void)
                     (let () (declare (not safe)) (_loop76750_ _more76772_)))))
              (let ((_try-match7675576795_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _t7675376764_))
                           (let ((_tl7675976781_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _t7675376764_)))
                                 (_hd7675876779_
                                  (let ()
                                    (declare (not safe))
                                    (##car _t7675376764_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _hd7675876779_))
                                 (let ((_tl7676176786_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _hd7675876779_)))
                                       (_hd7676076784_
                                        (let ()
                                          (declare (not safe))
                                          (##car _hd7675876779_))))
                                   (let ((_head76789_ _hd7676076784_)
                                         (_tail76791_ _tl7676176786_)
                                         (_more76793_ _tl7675976781_))
                                     (let ()
                                       (declare (not safe))
                                       (_K7675776776_
                                        _more76793_
                                        _tail76791_
                                        _head76789_))))
                                 (let ()
                                   (declare (not safe))
                                   (_E7675676768_))))
                           (let () (declare (not safe)) (_E7675676768_))))))
                (if (let () (declare (not safe)) (##null? _t7675376764_))
                    (let () (declare (not safe)) (_K7676276799_))
                    (let ()
                      (declare (not safe))
                      (_try-match7675576795_)))))))))
    (define remove-next!__0
      (lambda (_next76805_ _tails76806_)
        (let ((_eqpred76808_ eq?))
          (declare (not safe))
          (remove-next!__% _next76805_ _tails76806_ _eqpred76808_))))
    (define remove-next!
      (lambda _g81205_
        (let ((_g81204_ (let () (declare (not safe)) (##length _g81205_))))
          (cond ((let () (declare (not safe)) (##fx= _g81204_ 2))
                 (apply (lambda (_next76805_ _tails76806_)
                          (let ()
                            (declare (not safe))
                            (remove-next!__0 _next76805_ _tails76806_)))
                        _g81205_))
                ((let () (declare (not safe)) (##fx= _g81204_ 3))
                 (apply (lambda (_next76810_ _tails76811_ _eqpred76812_)
                          (let ()
                            (declare (not safe))
                            (remove-next!__%
                             _next76810_
                             _tails76811_
                             _eqpred76812_)))
                        _g81205_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  remove-next!
                  _g81205_))))))))
