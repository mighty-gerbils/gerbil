(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1707573210)
  (begin
    (define c3-linearize__%
      (lambda (_rhead78600_
               _supers78601_
               _get-precedence-list78602_
               _eqpred78603_
               _get-name78604_)
        (let ((_tails78606_ (map _get-precedence-list78602_ _supers78601_)))
          (let () (declare (not safe)) (append1! _tails78606_ _supers78601_))
          (let ()
            (declare (not safe))
            (c3-linearize-loop__%
             _rhead78600_
             _tails78606_
             _eqpred78603_
             _get-name78604_)))))
    (define c3-linearize__0
      (lambda (_rhead78611_ _supers78612_ _get-precedence-list78613_)
        (let* ((_eqpred78615_ eq?) (_get-name78617_ identity))
          (declare (not safe))
          (c3-linearize__%
           _rhead78611_
           _supers78612_
           _get-precedence-list78613_
           _eqpred78615_
           _get-name78617_))))
    (define c3-linearize__1
      (lambda (_rhead78619_
               _supers78620_
               _get-precedence-list78621_
               _eqpred78622_)
        (let ((_get-name78624_ identity))
          (declare (not safe))
          (c3-linearize__%
           _rhead78619_
           _supers78620_
           _get-precedence-list78621_
           _eqpred78622_
           _get-name78624_))))
    (define c3-linearize
      (lambda _g83120_
        (let ((_g83119_ (let () (declare (not safe)) (##length _g83120_))))
          (cond ((let () (declare (not safe)) (##fx= _g83119_ 3))
                 (apply (lambda (_rhead78611_
                                 _supers78612_
                                 _get-precedence-list78613_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__0
                             _rhead78611_
                             _supers78612_
                             _get-precedence-list78613_)))
                        _g83120_))
                ((let () (declare (not safe)) (##fx= _g83119_ 4))
                 (apply (lambda (_rhead78619_
                                 _supers78620_
                                 _get-precedence-list78621_
                                 _eqpred78622_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__1
                             _rhead78619_
                             _supers78620_
                             _get-precedence-list78621_
                             _eqpred78622_)))
                        _g83120_))
                ((let () (declare (not safe)) (##fx= _g83119_ 5))
                 (apply (lambda (_rhead78626_
                                 _supers78627_
                                 _get-precedence-list78628_
                                 _eqpred78629_
                                 _get-name78630_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize__%
                             _rhead78626_
                             _supers78627_
                             _get-precedence-list78628_
                             _eqpred78629_
                             _get-name78630_)))
                        _g83120_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  c3-linearize
                  _g83120_))))))
    (define c3-linearize-loop__%
      (lambda (_rhead78516_ _tails78517_ _eqpred78518_ _get-name78519_)
        (let _loop78521_ ((_rhead78523_ _rhead78516_)
                          (_tails78524_ _tails78517_))
          (let* ((_tails78526_
                  (let () (declare (not safe)) (remove-nulls! _tails78524_)))
                 (_tails7852778537_ _tails78526_)
                 (_else7853078555_
                  (lambda ()
                    (let* ((_err78550_
                            (lambda ()
                              (error '"Inconsistent precedence graph"
                                     'head:
                                     (map _get-name78519_
                                          (reverse _rhead78523_))
                                     'tails:
                                     (map (lambda (_g7854578547_)
                                            (map _get-name78519_
                                                 _g7854578547_))
                                          _tails78526_))))
                           (_next78552_
                            (let ()
                              (declare (not safe))
                              (c3-select-next
                               _tails78526_
                               _eqpred78518_
                               _err78550_))))
                      (let ((__tmp83122
                             (let ()
                               (declare (not safe))
                               (cons _next78552_ _rhead78523_)))
                            (__tmp83121
                             (let ()
                               (declare (not safe))
                               (remove-next!__%
                                _next78552_
                                _tails78526_
                                _eqpred78518_))))
                        (declare (not safe))
                        (_loop78521_ __tmp83122 __tmp83121))))))
            (let ((_K7853578575_ (lambda () (reverse _rhead78523_)))
                  (_K7853278561_
                   (lambda (_tail78559_)
                     (let ()
                       (declare (not safe))
                       (append-reverse _rhead78523_ _tail78559_)))))
              (let ((_try-match7852978571_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _tails7852778537_))
                           (let ((_tl7853478566_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _tails7852778537_)))
                                 (_hd7853378564_
                                  (let ()
                                    (declare (not safe))
                                    (##car _tails7852778537_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl7853478566_))
                                 (let ((_tail78569_ _hd7853378564_))
                                   (declare (not safe))
                                   (_K7853278561_ _tail78569_))
                                 (let ()
                                   (declare (not safe))
                                   (_else7853078555_))))
                           (let () (declare (not safe)) (_else7853078555_))))))
                (if (let () (declare (not safe)) (##null? _tails7852778537_))
                    (let () (declare (not safe)) (_K7853578575_))
                    (let ()
                      (declare (not safe))
                      (_try-match7852978571_)))))))))
    (define c3-linearize-loop__0
      (lambda (_rhead78581_ _tails78582_)
        (let* ((_eqpred78584_ eq?) (_get-name78586_ identity))
          (declare (not safe))
          (c3-linearize-loop__%
           _rhead78581_
           _tails78582_
           _eqpred78584_
           _get-name78586_))))
    (define c3-linearize-loop__1
      (lambda (_rhead78588_ _tails78589_ _eqpred78590_)
        (let ((_get-name78592_ identity))
          (declare (not safe))
          (c3-linearize-loop__%
           _rhead78588_
           _tails78589_
           _eqpred78590_
           _get-name78592_))))
    (define c3-linearize-loop
      (lambda _g83124_
        (let ((_g83123_ (let () (declare (not safe)) (##length _g83124_))))
          (cond ((let () (declare (not safe)) (##fx= _g83123_ 2))
                 (apply (lambda (_rhead78581_ _tails78582_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize-loop__0 _rhead78581_ _tails78582_)))
                        _g83124_))
                ((let () (declare (not safe)) (##fx= _g83123_ 3))
                 (apply (lambda (_rhead78588_ _tails78589_ _eqpred78590_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize-loop__1
                             _rhead78588_
                             _tails78589_
                             _eqpred78590_)))
                        _g83124_))
                ((let () (declare (not safe)) (##fx= _g83123_ 4))
                 (apply (lambda (_rhead78594_
                                 _tails78595_
                                 _eqpred78596_
                                 _get-name78597_)
                          (let ()
                            (declare (not safe))
                            (c3-linearize-loop__%
                             _rhead78594_
                             _tails78595_
                             _eqpred78596_
                             _get-name78597_)))
                        _g83124_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  c3-linearize-loop
                  _g83124_))))))
    (define c3-select-next
      (lambda (_tails78463_ _eqpred78464_ _err78465_)
        (let ((_candidate?78471_
               (lambda (_c78467_)
                 (let ((__tmp83125
                        (lambda (_tail78469_)
                          (let ((__tmp83126
                                 (member _c78467_
                                         (cdr _tail78469_)
                                         _eqpred78464_)))
                            (declare (not safe))
                            (not __tmp83126)))))
                   (declare (not safe))
                   (andmap1 __tmp83125 _tails78463_)))))
          (let _loop78473_ ((_ts78475_ _tails78463_))
            (let* ((_ts7847678486_ _ts78475_)
                   (_else7847878494_ (lambda () (_err78465_)))
                   (_K7848078500_
                    (lambda (_rts78497_ _c78498_)
                      (if (let ()
                            (declare (not safe))
                            (_candidate?78471_ _c78498_))
                          _c78498_
                          (let ()
                            (declare (not safe))
                            (_loop78473_ _rts78497_))))))
              (if (let () (declare (not safe)) (##pair? _ts7847678486_))
                  (let ((_hd7848178503_
                         (let () (declare (not safe)) (##car _ts7847678486_)))
                        (_tl7848278505_
                         (let () (declare (not safe)) (##cdr _ts7847678486_))))
                    (if (let () (declare (not safe)) (##pair? _hd7848178503_))
                        (let* ((_hd7848378508_
                                (let ()
                                  (declare (not safe))
                                  (##car _hd7848178503_)))
                               (_c78511_ _hd7848378508_)
                               (_rts78513_ _tl7848278505_))
                          (declare (not safe))
                          (_K7848078500_ _rts78513_ _c78511_))
                        (let () (declare (not safe)) (_err78465_))))
                  (let () (declare (not safe)) (_err78465_))))))))
    (define remove-next!__%
      (lambda (_next78395_ _tails78396_ _eqpred78397_)
        (let _loop78399_ ((_t78401_ _tails78396_))
          (let* ((_t7840278413_ _t78401_)
                 (_E7840578417_
                  (lambda () (error '"No clause matching" _t7840278413_))))
            (let ((_K7841178448_ (lambda () _tails78396_))
                  (_K7840678425_
                   (lambda (_more78421_ _tail78422_ _head78423_)
                     (if (_eqpred78397_ _head78423_ _next78395_)
                         (set-car! _t78401_ _tail78422_)
                         '#!void)
                     (let () (declare (not safe)) (_loop78399_ _more78421_)))))
              (let ((_try-match7840478444_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##pair? _t7840278413_))
                           (let ((_tl7840878430_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _t7840278413_)))
                                 (_hd7840778428_
                                  (let ()
                                    (declare (not safe))
                                    (##car _t7840278413_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _hd7840778428_))
                                 (let ((_tl7841078435_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _hd7840778428_)))
                                       (_hd7840978433_
                                        (let ()
                                          (declare (not safe))
                                          (##car _hd7840778428_))))
                                   (let ((_head78438_ _hd7840978433_)
                                         (_tail78440_ _tl7841078435_)
                                         (_more78442_ _tl7840878430_))
                                     (let ()
                                       (declare (not safe))
                                       (_K7840678425_
                                        _more78442_
                                        _tail78440_
                                        _head78438_))))
                                 (let ()
                                   (declare (not safe))
                                   (_E7840578417_))))
                           (let () (declare (not safe)) (_E7840578417_))))))
                (if (let () (declare (not safe)) (##null? _t7840278413_))
                    (let () (declare (not safe)) (_K7841178448_))
                    (let ()
                      (declare (not safe))
                      (_try-match7840478444_)))))))))
    (define remove-next!__0
      (lambda (_next78454_ _tails78455_)
        (let ((_eqpred78457_ eq?))
          (declare (not safe))
          (remove-next!__% _next78454_ _tails78455_ _eqpred78457_))))
    (define remove-next!
      (lambda _g83128_
        (let ((_g83127_ (let () (declare (not safe)) (##length _g83128_))))
          (cond ((let () (declare (not safe)) (##fx= _g83127_ 2))
                 (apply (lambda (_next78454_ _tails78455_)
                          (let ()
                            (declare (not safe))
                            (remove-next!__0 _next78454_ _tails78455_)))
                        _g83128_))
                ((let () (declare (not safe)) (##fx= _g83127_ 3))
                 (apply (lambda (_next78459_ _tails78460_ _eqpred78461_)
                          (let ()
                            (declare (not safe))
                            (remove-next!__%
                             _next78459_
                             _tails78460_
                             _eqpred78461_)))
                        _g83128_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  remove-next!
                  _g83128_))))))))
